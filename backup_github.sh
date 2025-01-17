#!/bin/bash

# 백업할 GitHub 리포지토리 URL
REPO_URL="https://github.com/sw-dreamer/programmers.git"

# 백업이 저장될 디렉터리 경로
BACKUP_DIR="/home/master/github/backup"

# 로그 파일 경로 (날짜별 디렉터리 없이 바로 log.txt로 저장)
LOG_PATH="$BACKUP_DIR/log/github_backup.log"

# 로그 디렉터리 생성 (존재하지 않으면)
sudo mkdir -p "$(dirname $LOG_PATH)"

# 로그 기록 함수
log_message() {
    echo "$1" | tee -a "$LOG_PATH"
}

# 날짜 기반으로 백업 디렉터리 이름 생성
DATE=$(date +'%Y-%m-%d')  # '2025-01-08' 형식
BACKUP_PATH="$BACKUP_DIR/backup_$DATE"

# 로그 시작
log_message "-----------------------------------------"
log_message "Backup process started at $(date +'%Y-%m-%d %H:%M:%S')"
log_message "-----------------------------------------"

# GitHub 서버 통신 확인
log_message "Checking GitHub server connectivity..."

# GitHub 서버에 ping을 보내 통신 확인 (혹은 curl을 사용할 수 있음)
ping -c 4 github.com &>/dev/null
if [ $? -ne 0 ]; then
    log_message "Error: Unable to reach GitHub server. Please check your network connection."
    exit 1
else
    log_message "GitHub server is reachable."
fi

# 백업 디렉터리 확인 및 생성
log_message "Checking if backup directory '$BACKUP_PATH' exists..."
if [ -d "$BACKUP_PATH" ]; then
    log_message "Backup directory '$BACKUP_PATH' already exists."
else
    log_message "Backup directory '$BACKUP_PATH' does not exist. Creating it..."
    sudo mkdir -p "$BACKUP_PATH"
    if [ $? -ne 0 ]; then
        log_message "Error: Failed to create backup directory '$BACKUP_PATH'. Exiting."
        exit 1
    fi
    log_message "Backup directory '$BACKUP_PATH' created."
fi

# Git 리포지토리 클론 또는 pull
if [ -d "$BACKUP_PATH/.git" ]; then
    # 이미 리포지토리가 있으면 git fetch 후 diff 비교
    log_message "Git repository found in '$BACKUP_PATH'. Checking for updates..."

    cd "$BACKUP_PATH"
    
    # 원격 리포지토리의 최신 상태를 가져오기
    sudo git fetch origin

    # 로컬과 원격 상태 비교 (변경 사항이 있을 경우에만 pull)
    LOCAL_COMMIT=$(git rev-parse HEAD)
    REMOTE_COMMIT=$(git rev-parse origin/main)

    if [ "$LOCAL_COMMIT" != "$REMOTE_COMMIT" ]; then
        log_message "Changes detected. Creating a new backup folder..."

        # 새로운 날짜와 시간을 포함한 새로운 백업 디렉터리 생성
        NEW_BACKUP_PATH="$BACKUP_DIR/backup_$DATE-$(date +'%H-%M-%S')"
        sudo mkdir -p "$NEW_BACKUP_PATH"
        if [ $? -ne 0 ]; then
            log_message "Error: Failed to create new backup directory '$NEW_BACKUP_PATH'. Exiting."
            exit 1
        fi
        log_message "New backup directory '$NEW_BACKUP_PATH' created."

        # 새로운 디렉터리로 리포지토리 클론
        log_message "Cloning repository into new backup directory..."
        sudo git clone $REPO_URL "$NEW_BACKUP_PATH"
        if [ $? -ne 0 ]; then
            log_message "Error: Git clone failed in new directory."
            exit 1
        else
            log_message "Git clone successful into '$NEW_BACKUP_PATH'."
        fi
    else
        log_message "No changes detected. Skipping git pull."
    fi
else
    # Git 리포지토리가 없으면 git clone 수행
    log_message "Git repository not found in '$BACKUP_PATH'. Cloning repository..."
    sudo git clone $REPO_URL "$BACKUP_PATH"
    if [ $? -ne 0 ]; then
        log_message "Error: Git clone failed. Please check repository URL or permissions."
        exit 1
    else
        log_message "Git clone successful."
    fi
fi

log_message "Backup process finished at $(date +'%Y-%m-%d %H:%M:%S')."
log_message "-----------------------------------------"
