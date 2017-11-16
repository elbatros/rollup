CREATE database IF NOT EXISTS rollup;

use rollup;

create table IF NOT EXISTS roll3(y string, m string, d string, value string) row format delimited fields terminated by '\t'  lines terminated by '\n' TBLPROPERTIES ("skip.header.line.count"="1");

load data local inpath '/home/edureka/InputData.txt' overwrite into table roll3;

set hive.cli.print.header=true;

insert overwrite local directory 'Result' 
row format delimited 
fields terminated by '\t'
lines terminated by '\n'
stored as textfile
select COALESCE(y,'')as y, COALESCE(m,'')as m, COALESCE(d,'') as d, sum(value) as v from roll3 group by y,m,d with rollup sort by y desc;

set hive.cli.print.header=false;
