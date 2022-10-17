show databases;
use strokedb;
show tables;
alter table stroke1 rename to stroke;
select *from stroke;
desc stroke;

# pasien yang terkena stroke akibat merokok 
select distinct smoking_status, count(id) from stroke where stroke = 1
group by smoking_status;

# status pernikahan pasien yang terkena stroke 
select distinct ever_married, count(id) from stroke where stroke = 1;
select distinct ever_married, count(id) from stroke where stroke = 0;

# jumlah kategory gender yang terkena stroke
select distinct gender, count(id) from stroke where stroke = 1 group by gender;

# rata-rata gender pasien terkena stroke 
select avg(age) from stroke where stroke = 1;

# rata-rata nilai bmi pasien terkena stroke
select avg(bmi) from stroke where stroke = 1;

# rata-rata penyakit gula pasien terkena stroke
select avg(avg_glucose_level) as rata_rata from stroke where stroke = 1;

# jumlah gejala hypertensi yang terkena stroke
select hypertension,count(id) from stroke where stroke = 1 group by hypertension;

# jumlah tempat tinggal yang terkena stroke 
select residence_type, count(id) from stroke where stroke = 1 group by residence_type;

#perbandingan pasien yang terkena stroke dan tidak terkena stroke 
select stroke, count(id) as jumlah from stroke group by stroke;

