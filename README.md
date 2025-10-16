# 소개(Introduce)
- test_amr_emulator는 차량없이 FMS-AMR의 연결 테스트 가능하도록 함
  
# 사용법(Usage)
- Terminal 실행
- 파라메터(amr_params.yaml) 수정
```
$vim ~/test_amr_emulator/config/amr_params.yaml
```

  - 서버주소
    - mqtt브로커 서버 주소 설정
```
mqtt:
  server_address: "tcp://localhost:1883"
```

  - 차량크기
    - factsheet에 기재될 차량의 크기 설정
```
amr_params:
  width: 2.9
  length : 15.0
```

  - 차량 초기위치
    - 에뮬레이터 실행 후 초기 차량 위치 설정
    - order에서 초기에지의 시작노드 위치(x,y,theta)와 일치해야 함
```
initial_pose:
  x: 0.0
  y: 0.0
  heading: 0.0 
```

  - 토픽전송주기
    - 차량에서 보내는 비동기토픽(visualization, state) 전송주기 설정
```
mqtt:
  visualization_publish_period : 1  # 1[sec]
  state_publish_period : 30         # 30[sec]
```

- emulator 실행
```
$./run.sh
```

# 토픽명(topic name)
- 토픽형태는 interfaceName / majorVersion / manufacturer / serialNumber / topic 이며, 차량번호는 0000부터 시작합니다.
- ex) 0번차량 토픽명
  - vda5050/v1/ZENIXROBOTICS/0000/visualization
  - vda5050/v1/ZENIXROBOTICS/0000/order
  - vda5050/v1/ZENIXROBOTICS/0000/state
  - vda5050/v1/ZENIXROBOTICS/0000/instantActions
  - vda5050/v1/ZENIXROBOTICS/0000/connection


# 통신 시퀀스(protocol sequence)
![Diagram](images/fms_amr_sequence.png)

# ToDO
- 통신인터페이스 - done
- 주행
- 안전
- 진단도구
- 멀티 인스턴스

# Q&A
- 궁금한 부분 또는 이슈 공유는 아래 문서에 추가해주세요.
  - https://docs.google.com/spreadsheets/d/17JYczG-rZVLQ3X0q1K-b3GDb2ZMyI-NT3-7OrI3WKLs/edit?gid=0#gid=0

# 문의처(Contact)
질문이나 피드백이 있으시면 아래 e-mail로 연락주세요.
- jcw561@zenixrobotics.com


