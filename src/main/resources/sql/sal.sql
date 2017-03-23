drop table sal;

drop sequence sal_salno_seq;
create sequence sal_salno_seq start with 10;

create table sal(
	salno      		number(3)   	constraint pk_sal primary key,
   	basic_sal   	number(7,2)   	not null,
   	overtime_sal   	number(7,2),
   	comm      		number(7,2),
   	aid_sal      	number(7,2),
   	saldate   		number(2)		not null,
   	membersrl      	number(10)    	constraint fk_membersrl0 references member(membersrl) on delete set null
);

insert into sal values (sal_salno_seq.nextval, 500, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 600, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 700, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 800, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 900, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 100, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 200, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 300, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 400, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 500, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 600, null, null, null, 20, 1);
insert into sal values (sal_salno_seq.nextval, 700, null, null, null, 20, 1);

commit;