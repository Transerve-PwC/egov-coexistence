drop sequence if exists seq_expense_billnumber_2015_16;

drop sequence if exists seq_expense_billnumber_2016_17;
drop sequence if exists seq_expense_billnumber_2017_18;
drop sequence if exists seq_expense_billnumber_2018_19;
drop sequence if exists seq_expense_billnumber_2019_20;
drop sequence if exists seq_expense_billnumber_2020_21;
drop sequence if exists seq_expense_billnumber_2021_22;
drop sequence if exists sq_bill_ejv;


create sequence seq_expense_billnumber_2015_16;
create sequence seq_expense_billnumber_2016_17;
create sequence seq_expense_billnumber_2017_18;
create sequence seq_expense_billnumber_2018_19;
create sequence seq_expense_billnumber_2019_20;
create sequence seq_expense_billnumber_2020_21;
create sequence  seq_expense_billnumber_2021_22;
DO $$
	DECLARE
	 v_seq1516 bigint;
	 v_seq1617 bigint;
	 v_seq1718 bigint;
	 v_seq1819 bigint;
	 v_seq1920 bigint;
	 v_seq2021 bigint;
	 v_seq2122 bigint;

	 v_count1516 bigint;
	 v_count1617 bigint;
	 v_count1718 bigint;
	 v_count1819 bigint;
	 v_count1920 bigint;
	 v_count2021 bigint;
	 v_count2122 bigint;

	BEGIN
	select count(id) into v_count1516 from eg_billregister where billnumber like '%/EJV/%2015-16' ;
	select count(id) into v_count1617 from eg_billregister where billnumber like '%/EJV/%2016-17' ;

	select count(id) into v_count1718 from eg_billregister where billnumber like '%/EJV/%2017-18' ;
	select count(id) into v_count1819 from eg_billregister where billnumber like '%/EJV/%2018-19' ;
	select count(id) into v_count1920 from eg_billregister where billnumber like '%/EJV/%2019-20' ;
	select count(id) into v_count2021 from eg_billregister where billnumber like '%/EJV/%2020-21' ;
	select count(id) into v_count2122 from eg_billregister where billnumber like '%/EJV/%2021-22' ;
    if v_count1516 > 0 then 
	        select trim(LEADING '0' FROM trim(both '/' from substring(billnumber from '%#"/0_*/#"%' for '#'))) into v_seq1516 from eg_billregister where BILLNUMBER LIKE '%/EJV/%2015-16' ORDER BY id DESC LIMIT 1;
		PERFORM setval('seq_expense_billnumber_2015_16',v_seq1516);
	else
		PERFORM setval('seq_expense_billnumber_2015_16',1);
	end if;

	if v_count1718 > 0 then 
	        select trim(LEADING '0' FROM trim(both '/' from substring(billnumber from '%#"/0_*/#"%' for '#'))) into v_seq1718 from eg_billregister where BILLNUMBER LIKE '%/EJV/%2017-18' ORDER BY id DESC LIMIT 1;
		PERFORM setval('seq_expense_billnumber_2017_18',v_seq1718);
	else
		PERFORM setval('seq_expense_billnumber_2017_18',1);
	end if;

		if v_count1819 > 0 then 
	        select trim(LEADING '0' FROM trim(both '/' from substring(billnumber from '%#"/0_*/#"%' for '#'))) into v_seq1819 from eg_billregister where BILLNUMBER LIKE '%/EJV/%2018-19' ORDER BY id DESC LIMIT 1;
		PERFORM setval('seq_expense_billnumber_2018_19',v_seq1819);
	else
		PERFORM setval('seq_expense_billnumber_2018_19',1);
	end if;

	if v_count1920 > 0 then 
	        select trim(LEADING '0' FROM trim(both '/' from substring(billnumber from '%#"/0_*/#"%' for '#'))) into v_seq1920 from eg_billregister where BILLNUMBER LIKE '%/EJV/%2019-20' ORDER BY id DESC LIMIT 1;
		PERFORM setval('seq_expense_billnumber_2019_20',v_seq1920);
	else
		PERFORM setval('seq_expense_billnumber_2019_20',1);
	end if;

	if v_count2021 > 0 then 
	        select trim(LEADING '0' FROM trim(both '/' from substring(billnumber from '%#"/0_*/#"%' for '#'))) into v_seq2021 from eg_billregister where BILLNUMBER LIKE '%/EJV/%2020-21' ORDER BY id DESC LIMIT 1;
		PERFORM setval('seq_expense_billnumber_2020_21',v_seq2021);
	else
		PERFORM setval('seq_expense_billnumber_2020_21',1);
	end if;

	if v_count2122 > 0 then 
	        select trim(LEADING '0' FROM trim(both '/' from substring(billnumber from '%#"/0_*/#"%' for '#'))) into v_seq2122 from eg_billregister where BILLNUMBER LIKE '%/EJV/%2021-22' ORDER BY id DESC LIMIT 1;
		PERFORM setval('seq_expense_billnumber_2021_22',v_seq2122);
	else
		PERFORM setval('seq_expense_billnumber_2021_22',1);
	end if;
END$$;

delete from eg_script where name = 'egf.bill.number.generator';

