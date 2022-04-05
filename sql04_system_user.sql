-- 새 접속 만들기
-- (1) Name: system
-- (2) 사용자 이름(U): system
-- (3) 비밀번호(P): oracle
-- (4) 호스트 이름(A): localhost
-- (5) 포트(R): 1521
-- (3) SID(I): xe
-- 테스트(성공) -> 저장 -> 접속

-- Oracle 11g XE 데이터베이스 시스템에 설치된 연습용 계정(hr) 활성화
alter user hr account unlock; 

-- 사용자 계정 hr의 비밀번호를 hr로 설정
alter user hr identified by hr;

-- (참고) 데이터베이스에 새 계정 생성
-- create user 사용자이름 identified by 비밀번호;

-- 새 접속 생성: 사용자 이름(hr)/비밀번호(hr)
