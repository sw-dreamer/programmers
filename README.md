# 프로그래머스 문제 풀이

매주 **빅데이터 19기 집각코 모임**에서 함께 공부하며 성장하는 것을 목표로, 각자 풀이한 문제를 정리하고 공유합니다.  

**모임 목표**는 문제 해결 능력 배양과 함께 협업 능력 향상입니다.

이 문서에서는 풀었던 문제들에 대한 풀이와 함께 모임의 활동을 기록하고 있습니다.

---

## 💡 문제 설명

**프로그래머스**의 레벨별 문제를 풀면서 기초적인 문제 해결 능력을 키우는 데 도움을 주는 문제들입니다.  

> 저작권은 프로그래머스([https://school.programmers.co.kr](https://programmers.co.kr/))에 있습니다.

### 문제 출처
> [프로그래머스 공식 사이트](https://school.programmers.co.kr)

---

## 🗂️ GitHub 리포지토리 백업

모임 활동 중에 코드 작성 및 문제 풀이의 중요성과 함께, **파일 백업**을 위한 작업을 병행하고 있습니다. 

모임 활동 중에 **GitHub 리포지토리 백업**을 위해 자동화된 스크립트를 사용하고 있습니다.

현재 파일 백업 작업은 **WSL2(Windows Subsystem for Linux 2)** 환경에서 **Ubuntu 22.04**를 사용하여 진행되고 있습니다.

GitHub에서 관리하는 리포지토리를 주기적으로 백업하고, 변경 사항을 체크하여 백업을 진행하고 있으며 문제가 발생하는 경우를 대비해서 로그 파일을 만들어서 오류를 확인하고 있습니다.

주기적인 백업은 `crontab`을 통해 설정하고 있습니다.

※ 백업은 ubuntu 서버가 켜질때만 진행이 됩니다.

 - 백업 폴더
   
 ![image](https://github.com/user-attachments/assets/f5cc968b-8f8e-4f12-b3d5-8f344511854b)



 - 로그 파일 예시
   
 ![image](https://github.com/user-attachments/assets/4b1d640f-0734-4dcc-a497-4daf59242378)




 - 백업 작업의 주요 목적은 다음과 같습니다:

1. **문제 풀이 파일 백업**: 각자 풀었던 문제들의 코드 및 관련 파일을 안전하게 보관하여 언제든지 복습하고 참고할 수 있도록 합니다.
2. **버전 관리**: 파일의 이전 버전이나 변경 사항을 추적하기 위해 Git을 활용하여 백업하고 관리합니다.
3. **데이터 안전성**: 서버에서 주기적으로 백업을 수행하여 실수로 인한 데이터 손실을 방지합니다.








