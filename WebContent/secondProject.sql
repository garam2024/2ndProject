create table secondcolor_client(
    email varchar2(50),
    pw varchar2(50),
    gender varchar2(10),
    nick varchar2(50),
    birthday date);
    
  
    
    
create table secondcolor_admin(
    id varchar2(50),
    pw varchar2(50));
    
    
create table secondcolor_clientAttribute(
    skincolor varchar2(20),
    skintype varchar2(20),
    skinsun varchar2(20),
    hair varchar2(20),
    eyes varchar2(20),
    accessory varchar2(20));
     
    
	create table secondcolor_board(
	num varchar2(10),
	title varchar2(100),
	content varchar2(500),
	date date,
	nick varchar2(50),
	color varchar2(50)
	
	);
   
create sequence sequence_num;    
    
    
