
--sq_1_brv_201516
drop sequence if exists sq_1_brv_201516;
CREATE SEQUENCE  sq_1_brv_201516;
select setval('sq_1_brv_201516',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%brv%2015-16') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%brv%2015-16') end as integer)+1));


--sq_1_cjv_201516
drop sequence if exists sq_1_cjv_201516;
CREATE SEQUENCE  sq_1_cjv_201516;
select setval('sq_1_cjv_201516',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%cjv%2015-16') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%cjv%2015-16') end as integer)+1));


--sq_1_csl_201516
drop sequence if exists sq_1_csl_201516;
CREATE SEQUENCE  sq_1_csl_201516;
select setval('sq_1_csl_201516',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2015-16') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2015-16') end as integer)+1));


--sq_1_csl_201617
drop sequence if exists sq_1_csl_201617;
CREATE SEQUENCE  sq_1_csl_201617;
select setval('sq_1_csl_201617',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2016-17') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2016-17') end as integer)+1));



--sq_1_gjv_201516
drop sequence if exists sq_1_gjv_201516;
CREATE SEQUENCE  sq_1_gjv_201516;
select setval('sq_1_gjv_201516',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%gjv%2015-16') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%gjv%2015-16') end as integer)+1));

--sq_1_csl_cgvn_201516
drop sequence if exists sq_1_csl_cgvn_201516;
CREATE SEQUENCE  sq_1_csl_cgvn_201516;
select setval('sq_1_csl_cgvn_201516',(cast((case when (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%csl%2015-16') is null then '0' else (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%csl%2015-16') end) as integer)+1));


---- Year 2019-20
--sq_1_brv_201920
drop sequence if exists sq_1_brv_201920;
CREATE SEQUENCE  sq_1_brv_201920;
select setval('sq_1_brv_201920',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%brv%2019-20') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%brv%2019-20') end as integer)+1));


--sq_1_cjv_201920
drop sequence if exists sq_1_cjv_201920;
CREATE SEQUENCE  sq_1_cjv_201920;
select setval('sq_1_cjv_201920',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%cjv%2019-20') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%cjv%2019-20') end as integer)+1));


--sq_1_csl_201920
drop sequence if exists sq_1_csl_201920;
CREATE SEQUENCE  sq_1_csl_201920;
select setval('sq_1_csl_201920',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2019-20') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2019-20') end as integer)+1));



--sq_1_gjv_201920
drop sequence if exists sq_1_gjv_201920;
CREATE SEQUENCE  sq_1_gjv_201920;
select setval('sq_1_gjv_201920',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%gjv%2019-20') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%gjv%2019-20') end as integer)+1));

--sq_1_csl_cgvn_201920
drop sequence if exists sq_1_csl_cgvn_201920;
CREATE SEQUENCE  sq_1_csl_cgvn_201920;
select setval('sq_1_csl_cgvn_201920',(cast((case when (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%csl%2019-20') is null then '0' else (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%csl%2019-20') end) as integer)+1));



---- Year 2020-21


--sq_1_brv_202021
drop sequence if exists sq_1_brv_202021;
CREATE SEQUENCE  sq_1_brv_202021;
select setval('sq_1_brv_202021',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%brv%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%brv%2020-21') end as integer)+1));


--sq_1_cjv_202021
drop sequence if exists sq_1_cjv_202021;
CREATE SEQUENCE  sq_1_cjv_202021;
select setval('sq_1_cjv_202021',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%cjv%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%cjv%2020-21') end as integer)+1));


--sq_1_csl_202021
drop sequence if exists sq_1_csl_202021;
CREATE SEQUENCE  sq_1_csl_202021;
select setval('sq_1_csl_202021',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2020-21') end as integer)+1));


--sq_1_csl_202122
drop sequence if exists sq_1_csl_202122;
CREATE SEQUENCE  sq_1_csl_202122;
select setval('sq_1_csl_202122',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2021-22') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2021-22') end as integer)+1));



--sq_1_gjv_202021
drop sequence if exists sq_1_gjv_202021;
CREATE SEQUENCE  sq_1_gjv_202021;
select setval('sq_1_gjv_202021',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%gjv%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%gjv%2020-21') end as integer)+1));

--sq_1_csl_cgvn_202021
drop sequence if exists sq_1_csl_cgvn_202021;
CREATE SEQUENCE  sq_1_csl_cgvn_202021;
select setval('sq_1_csl_cgvn_202021',(cast((case when (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%csl%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%csl%2020-21') end) as integer)+1));


---- Year 2021-22


--sq_1_brv_202122
drop sequence if exists sq_1_brv_202122;
CREATE SEQUENCE  sq_1_brv_202122;
select setval('sq_1_brv_202122',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%brv%2021-22') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%brv%2020-21') end as integer)+1));


--sq_1_cjv_202122
drop sequence if exists sq_1_cjv_202122;
CREATE SEQUENCE  sq_1_cjv_202122;
select setval('sq_1_cjv_202122',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%cjv%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%cjv%2021-22') end as integer)+1));


--sq_1_csl_202122
drop sequence if exists sq_1_csl_202122;
CREATE SEQUENCE  sq_1_csl_202122;
select setval('sq_1_csl_202122',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2021-22') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2020-21') end as integer)+1));


--sq_1_csl_202223
drop sequence if exists sq_1_csl_202223;
CREATE SEQUENCE  sq_1_csl_202223;
select setval('sq_1_csl_202223',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2022-23') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%csl%2021-22') end as integer)+1));



--sq_1_gjv_202122
drop sequence if exists sq_1_gjv_202122;
CREATE SEQUENCE  sq_1_gjv_202122;
select setval('sq_1_gjv_202122',(cast(case when (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%gjv%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(vouchernumber,7,8)))) from voucherheader   where lower(vouchernumber) like '1%gjv%2021-22') end as integer)+1));

--sq_1_csl_cgvn_202122
drop sequence if exists sq_1_csl_cgvn_202122;
CREATE SEQUENCE  sq_1_csl_cgvn_202122;
select setval('sq_1_csl_cgvn_202122',(cast((case when (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%csl%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%csl%2021-22') end) as integer)+1));

--sq_1_msr_cgvn_202122
drop sequence if exists sq_1_msr_cgvn_202122;
CREATE SEQUENCE  sq_1_msr_cgvn_202122;
select setval('sq_1_msr_cgvn_202122',(cast((case when (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%msr%2020-21') is null then '0' else (select (TRIM (LEADING '0' from max(substring(cgvn,11,10))))  from voucherheader   where lower(vouchernumber) like '1%msr%2021-22') end) as integer)+1));
