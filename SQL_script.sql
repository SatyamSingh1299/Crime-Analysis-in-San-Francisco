SELECT COUNT(*) from incidents;

Select * from incidents;

select count(distinct `Incident Category`) from incidents;
DESC incidents;
select `Incident Day of Week`,count(*) as "NUM" from incidents where `Incident Year` = '2021' group by `Incident Day of Week`;
select `Incident Category`,`Analysis Neighborhood`,`Filed Online`,`Incident Year`,`Incident Time`,`Police District` from incidents where `Incident Day of Week`='Monday';

Select count(*) as 'No of Open&Active Cases' from incidents Where `Resolution` = 'Open or Active';


select `Incident Category`,count(*) as "NUM" from incidents where `Resolution` = 'Open or Active' group by `Incident Category`;

select distinct `Resolution` from incidents;

select `Incident Day of Week`,count(*) as "NUM" from incidents group by `Incident Day of Week`;
select `Incident Category`,count(*) as "NUM" from incidents group by `Incident Category`;