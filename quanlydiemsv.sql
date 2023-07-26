Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);

-- 1. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh
-- viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã
-- sinh viên tăng dần
create view danhsachsv as (select dmsv.masv, dmsv.hosv, dmsv.tensv,dmsv.hocbong from dmsv);
-- 2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên,
-- Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
select masv, concat(hosv,"",tensv) "Ho Ten",phai,ngaysinh from dmsv order by phai;
-- 3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông
-- tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
select concat(hosv,"",tensv) "Ho Ten", ngaysinh, hocbong from dmsv order by ngaysinh asc, hocbong desc; 
-- 4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã
-- môn, Tên môn, Số tiết.
select mamh,tenmh,sotiet from dmmh where tenmh like "T%";
-- 5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm
-- các thông tin: Họ tên sinh viên, Ngày sinh, Phái.
select concat(hosv," ",tensv) "Ho Ten", ngaysinh, phai from dmsv where tensv like "%I";
-- 6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm
-- các thông tin: Mã khoa, Tên khoa.
select makhoa, tenkhoa from dmkhoa where  SUBSTRING(tenkhoa, 2, 1) = 'N';
-- 7. Liệt kê những sinh viên mà họ có chứa chữ Thị.
select concat(hosv," ",tensv) "Ho Ten" from dmsv where hosv like "%Thị%";
-- 8. Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các
-- thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
-- được sắp xếp theo thứ tự Mã khoa giảm dần
select dmsv.masv,concat(dmsv.hosv," ",dmsv.tensv) "Ho Ten" , dmkhoa.makhoa, dmsv.hocbong from dmsv 
join dmkhoa on dmsv.makhoa = dmkhoa.makhoa where dmsv.hocbong > 100000;
-- 9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm
-- các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
select concat(dmsv.hosv," ",dmsv.tensv) "Ho Ten" , dmkhoa.makhoa,dmsv.noisinh, dmsv.hocbong from dmsv 
join dmkhoa on dmsv.makhoa = dmkhoa.makhoa where dmsv.hocbong > 100000 and noisinh like "Hà Nội";
-- 10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông
-- tin: Mã sinh viên, Mã khoa, Phái.
delimiter //
create procedure dsvl_ta()
begin
select masv,makhoa,phai from dmsv where makhoa like "AV" or makhoa like "VL"; 
end
// delimiter ;
 call dsvl_ta();
-- 11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày
-- 05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học
-- bổng.
select masv,ngaysinh,noisinh,hocbong from dmsv where date(ngaysinh) between "1991/01/01" and "1992/06/05";
-- 12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các
-- thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.
delimiter //
create procedure dshb(min float, max float)
begin
select masv,ngaysinh,phai, makhoa,hocbong from dmsv where dmsv.hocbong between  min and  max;
end
// delimiter ;
call dshb(80000,150000);
-- 13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông
-- tin: Mã môn học, Tên môn học, Số tiết.
select mamh, tenmh, sotiet from dmmh where sotiet between 30 and 45;
-- 14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các
-- thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
select dmsv.masv,  concat(dmsv.hosv," ",dmsv.tensv) "Ho Ten",dmkhoa.tenkhoa, dmsv.phai from dmsv 
join dmkhoa on dmsv.makhoa = dmkhoa.makhoa where dmsv.phai like "Nam" and (dmkhoa.makhoa like "AV" or dmkhoa.makhoa like "TH"); 
-- 15.Liệt kê những sinh viên nữ, tên có chứa chữ N
select * from dmsv where phai like "Nữ" and tensv like "%n%";
-- 16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các
-- thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
SELECT concat(dmsv.hosv," ",dmsv.tensv) "Ho Ten", noisinh, ngaysinh
FROM dmsv
WHERE noisinh = 'Hà Nội' AND MONTH(ngaysinh) = 3;
-- 17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh
-- viên, Tuổi,Học bổng.
SELECT CONCAT(HoSV, ' ', TenSV) AS "Họ tên sinh viên",
       TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) AS "Tuổi",
       HocBong AS "Học bổng"
FROM DMSV
WHERE TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) > 20;

-- 18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh
-- viên, Tuổi, Tên khoa.
SELECT CONCAT(HoSV, ' ', TenSV) AS "Họ tên sinh viên",
       TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) AS "Tuổi",
       (SELECT TenKhoa FROM DMKhoa WHERE MaKhoa = DMSV.MaKhoa) AS "Tên khoa"
FROM DMSV
WHERE TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) BETWEEN 20 AND 25;
-- 19.Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ
-- tên sinh viên,Phái, Ngày sinh.
SELECT CONCAT(HoSV, ' ', TenSV) AS "Họ tên sinh viên",
       Phai AS "Phái",
       NgaySinh AS "Ngày sinh"
FROM DMSV
WHERE YEAR(NgaySinh) = 1990 AND MONTH(NgaySinh) BETWEEN 3 AND 5;

-- 20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên,
-- Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học
-- bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển
-- thị là “Mức trung bình”
SELECT MaSV,
       Phai,
       MaKhoa,
       CASE
           WHEN HocBong > 500000 THEN 'Học bổng cao'
           ELSE 'Mức trung bình'
       END AS "Mức học bổng"
FROM DMSV;
-- 21.Cho biết tổng số sinh viên của toàn trường
SELECT COUNT(*) AS "Tổng số sinh viên"
FROM DMSV;
-- 22.Cho biết tổng sinh viên và tổng sinh viên nữ.
SELECT COUNT(*) AS "Tổng số sinh viên",
       COUNT(CASE WHEN Phai = 'Nữ' THEN 6 END) AS "Tổng sinh viên nữ"
FROM DMSV;

-- 23.Cho biết tổng số sinh viên của từng khoa.
SELECT MaKhoa,
       COUNT(*) AS "Tổng số sinh viên"
FROM DMSV
GROUP BY MaKhoa;

-- 24.Cho biết số lượng sinh viên học từng môn.
SELECT MaMH,
       COUNT(*) AS "Số lượng sinh viên học"
FROM KetQua
GROUP BY MaMH;

-- 25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có
-- trong bảng kq)
SELECT MaSV,
       COUNT(*) AS "Số lượng môn học đã học"
FROM KetQua
GROUP BY MaSV;

-- 26.Cho biết tổng số học bổng của mỗi khoa.
SELECT MaKhoa, SUM(HocBong) AS "Tổng học bổng của khoa"
FROM DMSV
GROUP BY MaKhoa;

-- 27.Cho biết học bổng cao nhất của mỗi khoa.
SELECT MaKhoa, MAX(HocBong) AS "Học bổng cao nhất của khoa"
FROM DMSV
GROUP BY MaKhoa;

-- 28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa.
SELECT MaKhoa,
       COUNT(CASE WHEN Phai = N'Nam' THEN 1 END) AS "Tổng sinh viên nam",
       COUNT(CASE WHEN Phai = N'Nữ' THEN 1 END) AS "Tổng sinh viên nữ"
FROM DMSV
GROUP BY MaKhoa;

-- 29.Cho biết số lượng sinh viên theo từng độ tuổi.
SELECT CASE 
           WHEN TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) BETWEEN 0 AND 20 THEN 'Dưới 20 tuổi'
           WHEN TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) BETWEEN 21 AND 25 THEN 'Từ 21 đến 25 tuổi'
           WHEN TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) BETWEEN 26 AND 30 THEN 'Từ 26 đến 30 tuổi'
           ELSE 'Trên 30 tuổi'
       END AS "Độ tuổi",
       COUNT(*) AS "Số lượng sinh viên"
FROM DMSV
GROUP BY "Độ tuổi";
-- 30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường.
SELECT YEAR(NgaySinh) AS "Năm sinh",
       COUNT(*) AS "Số lượng sinh viên"
FROM DMSV
GROUP BY YEAR(NgaySinh)
HAVING COUNT(*) = 2;
-- 31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường.
SELECT NoiSinh AS "Nơi sinh",
       COUNT(*) AS "Số lượng sinh viên"
FROM DMSV
GROUP BY NoiSinh
HAVING COUNT(*) > 2;
-- 32.Cho biết những môn nào có trên 3 sinh viên dự thi.
SELECT MaMH AS "Mã môn học",
       COUNT(*) AS "Số lượng sinh viên dự thi"
FROM KetQua
GROUP BY MaMH
HAVING COUNT(*) > 3;
-- 33.Cho biết những sinh viên thi lại trên 2 lần.
SELECT MaSV AS "Mã sinh viên",
       COUNT(*) AS "Số lần thi lại"
FROM KetQua
WHERE LanThi > 1
GROUP BY MaSV
HAVING COUNT(*) > 2;
-- 34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên",
       ROUND(AVG(Diem), 2) AS "Điểm trung bình lần 1"
FROM KetQua K
JOIN DMSV S ON K.MaSV = S.MaSV
WHERE Phai = N'Nam' AND LanThi = 1
GROUP BY MaSV, HoSV, TenSV
HAVING AVG(Diem) > 7.0;
-- 35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1.
SELECT K.MaSV AS "Mã sinh viên",
       S.HoSV AS "Họ",
       S.TenSV AS "Tên",
       COUNT(*) AS "Số môn rớt"
FROM KetQua K
JOIN DMSV S ON K.MaSV = S.MaSV
WHERE Diem < 5.0 AND LanThi = 1
GROUP BY K.MaSV, S.HoSV, S.TenSV
HAVING COUNT(*) > 2;
-- 36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
SELECT K.MaKhoa,
       COUNT(CASE WHEN S.Phai = N'Nam' THEN 1 END) AS "Số lượng sinh viên nam"
FROM DMKhoa K
JOIN DMSV S ON K.MaKhoa = S.MaKhoa
GROUP BY K.MaKhoa
HAVING COUNT(CASE WHEN S.Phai = N'Nam' THEN 1 END) > 2;
-- 37.Cho biết những khoa có 2 sinh đạt học bổng từ 200.000 đến 300.000.
SELECT K.MaKhoa,
       COUNT(CASE WHEN S.HocBong BETWEEN 200000 AND 300000 THEN 1 END) AS "Số lượng sinh viên học bổng từ 200.000 đến 300.000"
FROM DMKhoa K
JOIN DMSV S ON K.MaKhoa = S.MaKhoa
GROUP BY K.MaKhoa
HAVING COUNT(CASE WHEN S.HocBong BETWEEN 200000 AND 300000 THEN 1 END) = 2;
-- 38.Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn
-- trong lần thi 1.
SELECT K.MaMH AS "Mã môn học",
       COUNT(CASE WHEN K.Diem >= 5.0 THEN "Pass" END) AS "Số lượng sinh viên đậu",
       COUNT(CASE WHEN K.Diem < 5.0 THEN 3 END) AS "Số lượng sinh viên rớt"
FROM KetQua K
WHERE K.LanThi = 1
GROUP BY K.MaMH;
-- 39.Cho biết sinh viên nào có học bổng cao nhất.
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên",
       HocBong AS "Học bổng"
FROM DMSV
ORDER BY HocBong DESC
LIMIT 1;
-- 40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất.
SELECT S.MaSV AS "Mã sinh viên",
       S.HoSV AS "Họ",
       S.TenSV AS "Tên",
       K.Diem AS "Điểm thi lần 1 môn cơ sở dữ liệu"
FROM KetQua K
JOIN DMSV S ON K.MaSV = S.MaSV
WHERE K.MaMH = 'CD' AND K.LanThi = 1
ORDER BY K.Diem DESC
LIMIT 1;
-- 41.Cho biết sinh viên khoa anh văn có tuổi lớn nhất.
SELECT S.MaSV AS "Mã sinh viên",
       S.HoSV AS "Họ",
       S.TenSV AS "Tên",
       TIMESTAMPDIFF(YEAR, S.NgaySinh, CURDATE()) AS "Tuổi"
FROM DMSV S
JOIN DMKhoa K ON S.MaKhoa = K.MaKhoa
WHERE K.TenKhoa = N'Khoa Anh Văn'
ORDER BY TIMESTAMPDIFF(YEAR, S.NgaySinh, CURDATE()) DESC
LIMIT 1;
-- 42.Cho biết khoa nào có đông sinh viên nhất.
SELECT MaKhoa,
       COUNT(*) AS "Số lượng sinh viên"
FROM DMSV
GROUP BY MaKhoa
ORDER BY COUNT(*) DESC
LIMIT 1;
-- 43.Cho biết khoa nào có đông nữ nhất.
SELECT K.MaKhoa,
       COUNT(CASE WHEN S.Phai = N'Nữ' THEN 1 END) AS "Số lượng sinh viên nữ"
FROM DMKhoa K
JOIN DMSV S ON K.MaKhoa = S.MaKhoa
GROUP BY K.MaKhoa
ORDER BY COUNT(CASE WHEN S.Phai = N'Nữ' THEN 1 END) DESC
LIMIT 1;
-- 44.Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất.
SELECT MaMH AS "Mã môn học",
       COUNT(CASE WHEN Diem < 5.0 THEN 1 END) AS "Số lượng sinh viên rớt lần 1 nhiều nhất"
FROM KetQua
WHERE LanThi = 1
GROUP BY MaMH
ORDER BY COUNT(CASE WHEN Diem < 5.0 THEN 1 END) DESC
LIMIT 1;
-- 45.Cho biết sinh viên không học khoa anh văn có điểm thi môn phạm lớn hơn
-- điểm thi văncủa sinh viên học khoa anh văn.
SELECT S.MaSV AS "Mã sinh viên",
       S.HoSV AS "Họ",
       S.TenSV AS "Tên",
       K.Diem AS "Điểm môn phạm",
       K1.Diem AS "Điểm môn văn"
FROM KetQua K
JOIN DMSV S ON K.MaSV = S.MaSV
JOIN KetQua K1 ON S.MaSV = K1.MaSV AND K1.MaMH = 'Văn'
JOIN DMKhoa D ON S.MaKhoa = D.MaKhoa
WHERE D.TenKhoa <> N'Khoa Anh Văn' AND K.MaMH = 'Phạm'
AND K.Diem > K1.Diem;

-- 46.Cho biết sinh viên có nơi sinh cùng với Hải.
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên",
       NoiSinh AS "Nơi sinh"
FROM DMSV
WHERE NoiSinh = (SELECT NoiSinh FROM DMSV WHERE HoSV = 'Hải' LIMIT 1);

-- 47.Cho biết những sinh viên nào có học bổng lớn hơn tất cả học bổng của
-- sinh viên thuộc khoa anh văn
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên",
       HocBong AS "Học bổng"
FROM DMSV
WHERE HocBong > (SELECT MAX(HocBong) FROM DMSV WHERE MaKhoa = 'KV');

-- 48.Cho biết những sinh viên có học bổng lớn hơn bất kỳ học bổng của sinh viên
-- học khóa anh văn
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên",
       HocBong AS "Học bổng"
FROM DMSV S1
WHERE HocBong > ALL (SELECT HocBong FROM DMSV S2 WHERE S2.MaKhoa = 'KV');

-- 49. ho biết sinh viên nào có điểm thi môn cơ sở dữ liệu lần 2 lớn hơn tất cả điểm
-- thi lần 1 môn cơ sở dữ liệu của những sinh viên khác.
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên",
       Diem AS "Điểm thi lần 2 môn cơ sở dữ liệu"
FROM KetQua
WHERE MaMH = 'CD' AND LanThi = 2 AND Diem > ALL (SELECT Diem FROM KetQua WHERE MaMH = 'CD' AND LanThi = 1 AND MaSV != KetQua.MaSV);
-- 50.Cho biết những sinh viên đạt điểm cao nhất trong từng môn.
SELECT K.MaMH AS "Mã môn học",
       S.MaSV AS "Mã sinh viên",
       S.HoSV AS "Họ",
       S.TenSV AS "Tên",
       K.Diem AS "Điểm cao nhất"
FROM KetQua K
JOIN DMSV S ON K.MaSV = S.MaSV
WHERE (K.MaMH, K.Diem) IN (SELECT MaMH, MAX(Diem) FROM KetQua GROUP BY MaMH);
-- 51.Cho biết những khoa không có sinh viên học.
SELECT MaKhoa AS "Mã khoa"
FROM DMKhoa
WHERE MaKhoa NOT IN (SELECT DISTINCT MaKhoa FROM DMSV);
-- 52.Cho biết sinh viên chưa thi môn cơ sở dữ liệu.
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên"
FROM DMSV
WHERE MaSV NOT IN (SELECT MaSV FROM KetQua WHERE MaMH = 'CD');
-- 53.Cho biết sinh viên nào không thi lần 1 mà có dự thi lần 2.
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên"
FROM DMSV
WHERE MaSV IN (SELECT MaSV FROM KetQua WHERE LanThi = 2) AND MaSV NOT IN (SELECT MaSV FROM KetQua WHERE LanThi = 1);
-- 54.Cho biết môn nào không có sinh viên khoa anh văn học.
SELECT MaMH AS "Mã môn học"
FROM DMMH
WHERE MaMH NOT IN (SELECT DISTINCT MaMH FROM KetQua WHERE MaSV IN (SELECT MaSV FROM DMSV WHERE MaKhoa = 'KV'));
-- 55.Cho biết những sinh viên khoa anh văn chưa học môn văn phạm.
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên"
FROM DMSV
WHERE MaKhoa = 'KV' AND MaSV NOT IN (SELECT MaSV FROM KetQua WHERE MaMH = 'Văn');
-- 56.Cho biết những sinh viên không rớt môn nào.
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên"
FROM DMSV
WHERE MaSV NOT IN (SELECT MaSV FROM KetQua WHERE Diem < 5.0);
-- 57.Cho biết những sinh viên học khoa anh văn có học bổng và những sinh viên
-- chưa bao giờ rớt.
SELECT MaKhoa AS "Mã khoa",
       COUNT(*) AS "Số lượng sinh viên nhận học bổng"
FROM DMSV
WHERE HocBong IS NOT NULL
GROUP BY MaKhoa
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT MaKhoa AS "Mã khoa",
       COUNT(*) AS "Số lượng sinh viên nhận học bổng"
FROM DMSV
WHERE HocBong IS NOT NULL
GROUP BY MaKhoa
ORDER BY COUNT(*) ASC
LIMIT 1;
-- 58.Cho biết khoa nào có đông sinh viên nhận học bổng nhất và khoa nào khoa
-- nào có ít sinh viên nhận học bổng nhất.
SELECT MaKhoa AS "Mã khoa",
       COUNT(*) AS "Số lượng sinh viên nhận học bổng"
FROM DMSV
WHERE HocBong IS NOT NULL
GROUP BY MaKhoa
ORDER BY COUNT(*) DESC
LIMIT 1;
SELECT MaKhoa AS "Mã khoa",
       COUNT(*) AS "Số lượng sinh viên nhận học bổng"
FROM DMSV
WHERE HocBong IS NOT NULL
GROUP BY MaKhoa
ORDER BY COUNT(*) ASC
LIMIT 1;
-- 59.Cho biết 3 sinh viên có học nhiều môn nhất.
SELECT MaSV AS "Mã sinh viên",
       HoSV AS "Họ",
       TenSV AS "Tên",
       COUNT(*) AS "Số lượng môn học"
FROM KetQua
JOIN DMSV ON KetQua.MaSV = DMSV.MaSV
GROUP BY MaSV
ORDER BY COUNT(*) DESC
LIMIT 3;

-- 60.Cho biết những môn được tất cả các sinh viên theo học.
SELECT MaMH AS "Mã môn học"
FROM DMMH
WHERE MaMH NOT IN (SELECT MaMH FROM KetQua
                   GROUP BY MaMH
                   HAVING COUNT(DISTINCT MaSV) < (SELECT COUNT(*) FROM DMSV));

-- 61.Cho biết những sinh viên học những môn giống sinh viên có mã số A02 học.
SELECT DISTINCT S.MaSV AS "Mã sinh viên",
                S.HoSV AS "Họ",
                S.TenSV AS "Tên"
FROM DMSV S
JOIN KetQua K ON S.MaSV = K.MaSV
WHERE K.MaMH IN (SELECT MaMH FROM KetQua WHERE MaSV = 'A02');

-- 62.Cho biết những sinh viên học những môn bằng đúng những môn mà sinh
-- viên A02 học.

-- 0 Tao procedure cho phep lay so sinh vien va danh sach sinh vien
delimiter //
create procedure showcount()
begin
select count(masv) as "so luong sv" from dmsv;
end;
// delimiter ;

call showcount();

-- 1. Tạo procedure cho phép lấy tất cả thông tin các khoa
delimiter //
create procedure selectkhoa(search varchar(2))
begin
select dmkhoa.*, concat(dmsv.hosv," ",dmsv.tensv) "Ho Ten" from dmkhoa join dmsv on dmkhoa.makhoa = dmsv.makhoa where dmkhoa.makhoa like search  ;
end;
// delimiter ;

call selectkhoa("AV");
-- 2. Tạo procedure cho phép thêm mới 1 khoa
delimiter //
create procedure insertdmkhoa(newmakhoa varchar(2),newtenkhoa varchar(30))
begin
insert into dmkhoa values (newmakhoa,newtenkhoa);
end
// delimiter ;

call insertdmkhoa("HH", "Hóa Học")

-- 3. Tạo procedure cho phép thêm mới 1 khoa và trả ra số lượng của khoa hiện tại
delimiter //
create procedure inoutkhoa(newmakhoa varchar(2),newtenkhoa varchar(30))
begin
insert into dmkhoa values (newmakhoa,newtenkhoa);
select count(makhoa) from dmkhoa;
end
// delimiter ;

call inoutkhoa("TD"," Thể Dục")

-- 4. Viết procedure cho phép cập nhật dữ liệu 1 khoa
delimiter //
create procedure editkhoa(macheck varchar(2), newtenkhoa varchar(30))
begin
update dmkhoa set  tenkhoa = newtenkhoa where makhoa = macheck;
end
// delimiter ;
call editkhoa("VL", "Giải Tích");
-- 5. In danh sách các sinh viên theo khoa
delimiter //
create procedure dssvkhoa(search varchar(2))
begin
select  concat(dmsv.hosv," ",dmsv.tensv) "Ho Ten" from  dmsv  where makhoa like search  ;
end;
// delimiter ;

call dssvkhoa("AV");
-- 6. Nhập vào 2 mã sinh viên và 1 mã môn học, trả ra thông tin sinh viên có điểm 
-- cao nhất trong lần thi 1
DELIMITER //
CREATE PROCEDURE sosanhdiem(mahs1 VARCHAR(3), mahs2 VARCHAR(3), mh VARCHAR(2))
BEGIN
    DECLARE max_diem FLOAT;
    SELECT MAX(kq.diem) INTO max_diem
    FROM ketqua kq
    WHERE kq.lanthi = 1 AND kq.mamh = mh AND (kq.masv = mahs1 OR kq.masv = mahs2);

    SELECT dmsv.*, kq.diem AS "Điểm"
    FROM dmsv
    JOIN ketqua kq ON dmsv.masv = kq.masv
    WHERE kq.lanthi = 1 AND kq.mamh = mh AND kq.diem = max_diem;
END
//
DELIMITER ;

call sosanhdiem("A01","A02","01");


-- 7. Nhập vào 1 môn học và 1 mã sinh viên, kiểm tra xem sinh viên có đậu môn
-- này hay không trong lần thi đầu tiên. Nếu đậu thì trả ra “PASS”, không đậu 
-- trả ra “FAIL”, Chưa có điểm trả ra “NOT MARK”
delimiter //
create procedure testpass(mh varchar(2),hs varchar(3))
begin
select case when kq.diem >= 4.50 then "Pass" when kq.diem < 4.50 then "FAIL" when kq.diem is null then "NOT MARK"  end  as "Kết Quả"
 from ketqua kq where kq.masv = hs and kq.mamh = mh;
end
// delimiter ;

call testpass("01","A01");
-- 8. Nhập vào mã sinh viên và môn học, trả ra các điểm thi của sinh viên môn 
-- học đó
delimiter //
create procedure getkq(sv varchar(3), mh varchar(2))
begin
select dmmh.tenmh,kq.lanthi, kq.diem from ketqua kq join dmmh on kq.mamh = dmmh.mamh where kq.mamh = mh and kq.masv = sv;
end
// delimiter ;

call getkq("A01","01");
-- 9. Nhập vào mã sinh viên, in ra các môn học sinh viên đã học
delimiter //
create procedure getmh(hs varchar(3))
begin
select distinct(tenmh) from ketqua kq join dmmh on kq.mamh = dmmh.mamh where kq.masv = hs;
end
// delimiter ;

call getmh("A01");
-- 10.Nhập vào mã môn học, in ra các sinh viên đã học môn đó
delimiter //
create procedure geths(mh varchar(2))
begin
select concat(dmsv.hosv," ",dmsv.tensv) "Họ Và Tên" from ketqua kq join dmsv on kq.masv = dmsv.masv where kq.mamh = mh;
end
// delimiter ;

call geths("05");

