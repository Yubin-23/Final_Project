# CLOUD PT
<img src="https://github.com/Yubin-23/Final_Project/assets/137861704/1bb286f0-5990-49fa-a5ec-6fe1de923dfe" width="300px">

## 📁프로젝트 개요

> **프로젝트**: 헬스장 그룹웨어
>
> **기획 및 제작**: 김동찬, 박채연, 왕유빈, 윤소영, 이재혁
>
> **분류**: 팀 프로젝트
>
> **제작 기간**: 2023.10.04~2023.11.20

 <br>

## 🧑‍🤝‍🧑팀원소개

> **팀원**: 김동찬
>
>  결재 관리 및 휴가 페이지

> **팀원**: 박채연
>
> 로그인, 직원 및 회원 관리 페이지, 운동기구 관리 페이지 

> **팀원**: 왕유빈
>
> 근태 관리 페이지, 이용권 관리 페이지

> **팀원**: 윤소영
>
> 메인 페이지, 메신저, 공지사항 페이지

> **팀장**: 이재혁
>
> 수업 관리 페이지, 락커 관리 페이지 

<br>

## 🛠️개발 환경 및 도구

<img src="https://img.shields.io/badge/FRAMEWORK-%23121011?style=for-the-badge"> ![springboot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white) <br/>

<img src="https://img.shields.io/badge/LIBRARY-%23121011?style=for-the-badge"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/LOMBOK-FF5722?style=for-the-badge&logo=LOMBOK&logoColor=white"><br/>

<img src="https://img.shields.io/badge/IDE-%23121011?style=for-the-badge"> ![Spring Tool Suite 4](https://img.shields.io/badge/Spring%20Tool%20Suite%204-6DB33F?style=for-the-badge&logo=Spring&logoColor=white) ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white) ![DBeaver](https://img.shields.io/badge/DBeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=white)<br/>

<img src="https://img.shields.io/badge/DB-%23121011?style=for-the-badge"> ![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white) <br/>

<img src="https://img.shields.io/badge/Language-%23121011?style=for-the-badge"> ![Java](https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white) ![HTML5](https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/css3-1572B6?style=for-the-badge&logo=css3&logoColor=white) <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> <br/>

<img src="https://img.shields.io/badge/OS-%23121011?style=for-the-badge"> ![Windows](https://img.shields.io/badge/Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white) <br/>

<img src="https://img.shields.io/badge/Server-%23121011?style=for-the-badge"> ![Apache Tomcat](https://img.shields.io/badge/apache%20tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black) <br/>

<img src="https://img.shields.io/badge/Hosting-%23121011?style=for-the-badge"> ![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white) <br/>

<img src="https://img.shields.io/badge/Other-%23121011?style=for-the-badge"> ![Docker](https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=white) ![Notion](https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=notion&logoColor=white) ![GitHub](https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white) 

<br>

## 🖥️기능 구현

### 메인 페이지

#### - 출/퇴근하기 버튼

![출퇴근버튼](https://github.com/Yubin-23/Final_Project/assets/137861704/c3b945c5-b551-435c-b68c-573ad04b5d6a)

- 출/퇴근하기 버튼 클릭 시 DB에 출/퇴근 시간 INSERT
- 출/퇴근 시간 화면에 표시

------

### 직원: 근태 관리

#### - 내 근태 조회

![내근태조회](https://github.com/Yubin-23/Final_Project/assets/137861704/c7c088e0-be89-49af-bcc6-b82873b7437c)

- 당일 출/퇴근 시간 표시 
- FullCalendar API를 사용하여 매월 근태 상태 확인 가능 - 정상(초록), 조퇴(주황), 지각(노랑), 결근(빨강)
- 근태 상태를 클릭 시 모달창으로 해당 날짜의 근태 기록 확인 가능 
- 근태 수정 요청 버튼을 누르면 근태 수정 요청서 페이지로 이동

#### - 근태 수정 요청서

![근태수정요청서](https://github.com/Yubin-23/Final_Project/assets/137861704/490a5114-6d3e-4045-aa3a-05a6078878ee)

- 해당 날짜에 제출 기록이 없거나 반려 상태일 때만 요청서 체출 가능 
- 모든 항목을 입력하고 제출 버튼을 클릭 시 근태 수정 요청 목록 페이지로 이동 

#### - 근태 수정 요청 목록 및 상세

![근태수정요청목록상세](https://github.com/Yubin-23/Final_Project/assets/137861704/b45f67a4-26ca-4306-bd19-10f1a7b25332)

- 본인의 근태 수정 요청을 확인하는 페이지 
- 상세 아이콘을 클릭시 근태 수정 요청서의 상세 페이지로 이동 

------

### 관리자(인사 매니저) - 근태 관리

#### - 전체 직원 근태 조회(월별)

![관리자_월별근태](https://github.com/Yubin-23/Final_Project/assets/137861704/406b3c94-d648-45d1-ab60-82a46e59c540)

- FullCalendar API를 사용하여 전체 직원의 월별 근태 현황 확인 가능 - 정상(초록), 조퇴(주황), 지각(노랑), 결근(빨강)
- 당일 근태 확인 버튼을 누르면 전체 직원의 일별 근태 현황 확인 가능

#### - 전체 직원 근태 조회(일별)

![관리자_일별근태](https://github.com/Yubin-23/Final_Project/assets/137861704/72fc2dc8-a075-4922-beaa-94bbc66278c7)

- 화살표 버튼으로 전날, 다음날 이동 가능 
- 이름 또는 상태로 검색 가능 

#### - 근태 수정 요청 목록 및 상세 

![관리자_근태수정요청목록상세](https://github.com/Yubin-23/Final_Project/assets/137861704/8071c04b-1f87-4b8f-acfb-7dc11e8413e1)

- 전체 직원의 근태 수정 요청을 확인하는 페이지 
- 이름 또는 상태로 검색 가능
- 상세 아이콘을 클릭 시 근태 수정 요청안의 상세 페이지로 이동 
- 상태가 요청인 것을 누르면 근태 수정 요청안 페이지로 이동

#### - 근태 수정 요청안

![관리자_근태수정요청안](https://github.com/Yubin-23/Final_Project/assets/137861704/4cf7e066-5ee3-495e-b31f-45e24e586c9a)

- 근태 수정을 요청한 직원의 수정요청일의 근태 정보 확인 가능
- 승인 버튼 클릭 시 작성자의 근태 정보가 수정되며 해당 요청의 상태가 승인으로 변경됨

------

### 관리자(고객관리 매니저) - 이용권 관리

#### - 이용권 목록

![관리자_이용권목록](https://github.com/Yubin-23/Final_Project/assets/137861704/73916423-9e6f-4d4f-ace5-b6161197a8f3)

- 헬스장의 이용권 목록을 확인하는 페이지 
- 이용권 등록 버튼 클릭 시 이용권 등록 페이지로 이동
- 삭제 버튼을 클릭 시 해당 이용권을 등록한 회원이 없는 경우에만 삭제됨 

#### - 이용권 등록

![관리자_이용권등록](https://github.com/Yubin-23/Final_Project/assets/137861704/cad4d04b-9eb4-4ddd-b129-bf987eae0f77)

- 종류에서 헬스를 선택하면 이용개월 입력 가능, PT를 선택하면 피티횟수 입력 가능
- 모든 항목을 다 입력하고 등록 버튼을 클릭 시 이용권 목록 페이지로 이동 

#### - 회원의 이용권 등록 

![관리자_회원이용권등록](https://github.com/Yubin-23/Final_Project/assets/137861704/884008cb-0583-492f-95bb-b1de263c1b17)

- 등록 버튼을 클릭 시 이용권 등록 모달창이 나타남
- 이용권 항목에서는 헬스장의 전체 이용권 중 하나 선택 가능 
- PT 이용권을 선택한 경우만 담당 트레이너 선택 가능

  
