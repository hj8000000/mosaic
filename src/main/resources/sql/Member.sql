DROP TABLE Member CASCADE CONSTRAINTS;

CREATE TABLE Member (
	membersrl Number(10) NOT NULL,
	userid VARCHAR(80) NOT NULL,
	email VARCHAR(250) NOT NULL,
	username VARCHAR(40) NOT NULL,
	password VARCHAR(32) NOT NULL,
	isadmin char(1) NOT NULL,
	PRIMARY KEY (membersrl),
	UNIQUE (userid, email)
);

insert into Member values( 1, 'admin', 'admin@noreply.com', 'Admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'Y' );

select count(*) from Member;