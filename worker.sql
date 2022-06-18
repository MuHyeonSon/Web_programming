/*손무현 웹프로그래밍 실습10*/



/*요구사항1*/
create table worker(
	num int not null auto_increment,
	id char(20) not null,
	name char(10) not null,
	gender char(1) not null,
	age int not null,
	department char(20) not null,
	phone char(20) not null,
	address char(100),
	primary key(num)
);

/*요구사항2*/
insert into worker (id, name, gender, age, department, phone, address) values ('chkim', '김창훈',
 'M', 28, '총무부', '010-3838-8577', '경기도 용인시' );
insert into worker (id, name, gender, age, department, phone, address) values ('jhjang', '장종훈',
 'M', 38, '총무부', '010-3347-7474', '서울시 강동구' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('jek98', '안달훈',
 'M', 25, '인사부', '010-3744-4747', '강원도 정선군' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('lms2', '이세영',
 'F', 48, '경리부', '010-3736-4784', '전라북도 전주시' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('apple3', '김소영',
 'F', 52, '총무부', '010-2845-8978','전라남도 순천시' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('sub093', '김수정',
 'M', 53, '홍보부', '010-3834-1248', '경상북도 상주시' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('chulsu', '김철수',
 'M', 23, '홍보부', '010-1235-3788', '경기도 오산시' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('yckim', '김영철',
 'M', 32, '인사부', '010-2222-3334', '경기도 용인시' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('yerin99', '김예린',
 'F', 25, '총무부', '010-7777-9999', '서울시 강서구' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('sjjung', '정수정',
 'F', 35, '경리부', '010-3636-3563', '충청남도 아산시' ); 
insert into worker (id, name, gender, age, department, phone, address) values ('tuttle7', '이예린',
 'F', 21, '연구소', '010-3756-9823', '경기도 성남시' );  
 
/*요구사항3*/
 
/*1  20대(20~29세) 사원의 아이디, 이름, 집 주소를 검색*/
select id, name, address from worker where age>=20 and age<=29;

/*2 경리부에 근무하고 이름에 '정'이 들어간 사원의 이름, 성별, 근무 부서, 휴대전화 번호를 검색
*/
select name, gender, department, phone from worker where name LIKE '%정%';

/*3 경기도에 사는 사원을 나이순으로 오름차순 정렬한 뒤 이름, 집 주소, 성별, 휴대전화 번호를 검색
*/
select name, address, gender, phone from worker where address LIKE '%경기도%' order by age;

/*4 여성 사원을 나이순으로 내림차순 정렬한 뒤 이름, 성별, 아이디, 휴대전화 번호, 집 주소를 검색*/
select name, gender, id, phone, address from worker where gender='F' order by age desc;

/*5 홍보부에 근무하는 남성 사원의 이름과 휴대전화 번호를 검색*/
select name, phone from worker where gender='M' and department='홍보부';

/*6 용인시에 사는 사원의 이름과 휴대전화 번호를 검색
*/
select name, phone from worker where address LIKE '%용인시%';

/*7 '김영철'의 휴대전화 번호를 '010-2222-3333'으로 수정
*/
update worker set phone='010-2222-3333' where name='김영철';

/*8  아이디가 'chulsu'인 사원의 나이를 '33'으로 수정
*/
update worker set age=33 where id='chulsu';

/*9 아이디가 'jhjang'인 레코드를 삭제*/
delete from worker where id='jhjang';

/*10 경리부에서 근무하는 '이세영'의 레코드를 삭제*/
delete from worker where department='경리부' and name='이세영';

