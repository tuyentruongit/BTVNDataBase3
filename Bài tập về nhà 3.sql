select * from Person;
-- 1. Lấy ra danh sách các nghề nghiệp (job) duy nhất mà người trong bảng không làm trùng lặp.
select distinct(job) from Person;
-- 2. Lấy ra danh sách các người có nghề nghiệp (job) là ‘Manager’ và lương (salary) lớn hơn 70000. 
select * from Person
where job = 'Manager' AND salary > 7000 ;
-- 3. Lấy ra người có tuổi (dựa trên ngày sinh) từ 25 đến 35.
select * from Person
where (year(curdate())-year(birthday))>25 and (year(curdate())-year(birthday))<35;
-- 4. Lấy ra danh sách các quốc gia (country) và tổng số lượng người từng quốc gia.
select count(*),country from Person group by country;
-- 5. Tính số lượng nam (gender = ‘Male’) và nữ (gender = ‘Female’) trong bảng.
select count(*),gender from Person group by gender;
-- 6. Lấy ra danh sách người có cùng nghề nghiệp (job) và quốc gia (country).
select count(*), job , country from Person group by job, country;
-- 7. Lấy ra danh sách người theo thứ tự giảm dần của ngày sinh (birthday).
select * from Person order by birthday asc;
-- 8. Lấy ra các nghề nghiệp (job) và tổng số lượng người làm nghề đó, nhưng chỉ hiển thị những nghề nghiệp có ít nhất 3 người làm.
select count(*),job from Person group by job having count(*) >3;
