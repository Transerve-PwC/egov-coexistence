INSERT INTO financialyear (id, financialyear, startingdate, endingdate, isactive, createddate, lastmodifieddate,lastmodifiedby,createdby,version, isactiveforposting, isclosed, transferclosingbalance) 
SELECT nextval('seq_financialyear'), '2018-19', '01-Apr-2018', '31-Mar-2019', true, current_date, current_date, 1,1,0, false, false, false 
WHERE NOT EXISTS (SELECT 1 FROM financialyear WHERE financialyear='2018-19');

INSERT INTO fiscalperiod (id,name, startingdate, endingdate,isactiveforposting, isactive, createddate, lastmodifieddate,lastmodifiedby,createdby,version, financialyearid) 
SELECT nextval('seq_fiscalperiod'),'201819', '01-Apr-2018', '31-Mar-2019',false, true, current_date, current_date,1,1,0, (select id from financialyear where financialyear='2018-19') 
WHERE NOT EXISTS (SELECT 1 FROM fiscalperiod WHERE name='201819');

INSERT INTO fiscalperiod (id,name, startingdate, endingdate,isactiveforposting, isactive, createddate, lastmodifieddate,lastmodifiedby,createdby,version, financialyearid) 
SELECT nextval('seq_fiscalperiod'),'201920', '01-Apr-2019', '31-Mar-2020',false, true, current_date, current_date,1,1,0, (select id from financialyear where financialyear='2019-20') 
WHERE NOT EXISTS (SELECT 1 FROM fiscalperiod WHERE name='201920');

INSERT INTO fiscalperiod (id,name, startingdate, endingdate,isactiveforposting, isactive, createddate, lastmodifieddate,lastmodifiedby,createdby,version, financialyearid) 
SELECT nextval('seq_fiscalperiod'),'202021', '01-Apr-2020', '31-Mar-2021',false, true, current_date, current_date,1,1,0, (select id from financialyear where financialyear='2020-21') 
WHERE NOT EXISTS (SELECT 1 FROM fiscalperiod WHERE name='202021');

INSERT INTO fiscalperiod (id,name, startingdate, endingdate,isactiveforposting, isactive, createddate, lastmodifieddate,lastmodifiedby,createdby,version, financialyearid) 
SELECT nextval('seq_fiscalperiod'),'202122', '01-Apr-2021', '31-Mar-2022',false, true, current_date, current_date,1,1,0, (select id from financialyear where financialyear='2021-22') 
WHERE NOT EXISTS (SELECT 1 FROM fiscalperiod WHERE name='202122');
