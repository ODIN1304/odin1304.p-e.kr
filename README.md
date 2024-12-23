odin1304.p-e.kr 관련 진행 및 여러가지


# 1. 도메인 구매 및 설정
   ## 1) https://내도메인.한국 에서 도메인 구매
![image](https://github.com/user-attachments/assets/1b040c64-b0a1-45d2-a39b-28326f98132b)
# 2. 서버 목록
   ## 1) 서버 목록
| hostname | IP | OS | ROLE |
| -------- | ----------- | ------------------- | ---------------- |
| SVR-AD01 | 10.10.56.11 | Windows Server 2022 | Active Directory |
| SVR-AD01 | 10.10.56.12 | Windows Server 2022 | Active Directory |
| SVR-IIS01 | 10.10.56.21 | Windows Server 2022 | Internet Information Service |
| SVR-SQL01 | 10.10.56.31 | Windows Server 2022 | SQL Server |
| SVR-EXC01 | 10.10.56.41 | Windows Server 2019 | Exchange Server |
# 3. 비즈니스 로직
1) www.odin1304.p-e.kr 접속
2) 로그인
3) 새로운 사용자(alpha) 추가
4) 6시간 간격으로 Active Directory 새로운 사용자 생성
5) alpha 사용자 exchange 사서함 생성
6) 새로운 사용자로 www.odin1304.p-e.kr 접속 가능
# 4. ㅁㄴㅇ
