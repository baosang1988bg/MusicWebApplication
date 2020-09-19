Create database QL_NHAC
use QL_NHAC
go

create table CASI(
	 maCaSi char(10) not null primary key,
	 tenCaSi nvarchar(50),
	 queQuan nvarchar(50),
	 Phai nchar(3),
	 link_Anh_Ngan nvarchar(50),
	 link_Anh_Dai nvarchar(50),
)
select * from casi
insert into CASI values
('CS0001',N'Sơn Tùng M-TP',N'Thái Bình',N'Nam','Son_Tung_MTP_800x800.jpg','Son_Tung_MTP_1200x800.jpg'),
('CS0002',N'Noo Phước Thịnh',N'Hồ Chí Minh',N'Nam','Noo_Phuoc_Thinh_800x800.jpg','Noo_Phuoc_Thinh_1200x800.jpg'),
('CS0003',N'Hương Tràm',N'TP Vinh',N'Nữ','Huong_Tram_800x800.jpg','Huong_Tram_1200x800.jpg'),
('CS0004',N'Đông Nhi',N'Hà Nội',N'Nữ','Dong_Nhi_800x800.jpg','Dong_Nhi_1200x800.jpg'),
('CS0005',N'Bảo Anh',N'Hồ Chí Minh',N'Nữ','Bao_Anh_800x800.jpg','Bao_Anh_1200x800.jpg'),
('CS0006',N'Hồ Ngọc Hà',N'TP Huế',N'Nữ','Ho_Ngoc_Ha_800x800.jpg','Ho_Ngoc_Ha_1200x800.jpg'),
('CS0007',N'Hồ Quang Hiếu',N'TP Buôn Ma Thuột',N'Nam','Ho_Quang_Hieu_800x800.jpg','Ho_Quang_Hieu_1200x800.jpg'),
('CS0008',N'Tóc Tiên',N'Hồ Chí Minh',N'Nữ','Toc_Tien_800x800.jpg','Toc_Tien_1200x800.jpg'),
('CS009',N'Khắc Việt',N'Yên Bái',N'Nam','Khac_Viet_800x800.jpg','Khac_Viet_1200x800.jpg'),
('CS0010',N'Đức Phúc',N'Hà Nội',N'Nam','Duc_Phuc_800x800.jpg','Duc_Phuc_1200x800.jpg'),
('CS0011',N'Mỹ Tâm',N'Đà Nẵng',N'Nữ','My_Tam_800x800.jpg','My_Tam_1200x800.jpg'),
('CS0012',N'Tuấn Hưng',N'Hà Nội',N'Nam','Tuan_Hung_800x800.jpg','Tuan_Hung_1200x800.jpg'),
('CS0013',N'Ưng Hoàng Phúc',N'An Giang',N'Nam','Ung_Hoang_Phuc_800x800.jpg','Ung_Hoang_Phuc_1200x800.jpg'),
('CS0014',N'Soobin Hoàng Sơn',N'Hà Nội',N'Nam','Soobin_Hoang_Son_800x800.jpg','Soobin_Hoang_Son_1200x800.jpg'),
('CS0015',N'Miu Lê',N'Hồ Chí Minh',N'Nữ','Miu_Le_800x800.jpg','Miu_Le_1200x800.jpg'),
('CS0016',N'Trung Quân',N'TP Đà Lạt',N'Nam','Trung_Quan_800x800.jpg','Trung_Quan_1200x800.jpg'),
('CS0017',N'Đàm Vĩnh Hưng',N'Điện Bàn',N'Nam','Dam_Vinh_Hung_800x800.jpg','Dam_Vinh_Hung_1200x800.jpg'),
('CS0018',N'Bảo Thy',N'Hồ Chí Minh',N'Nữ','Bao_Thy_800x800.jpg','Bao_Thy_1200x800.jpg'),
('CS0019',N'Bích Phương',N'Tp Hạ Long',N'Nữ','Bich_Phuong_800x800.jpg','Bich_Phuong_1200x800.jpg'),
('CS0020',N'Lou Hoàng',N'Hà Nội',N'Nam','Lou_Hoang_800x800.jpg','Lou_Hoang_1200x800.jpg'),
('CS0021',N'Lam Trường',N'Hồ Chí Minh',N'Nam','Lam_Truong_800x800.jpg','Lam_Truong_1200x800.jpg'),
('CS0022',N'Thùy Chi',N'TP Hải Dương',N'Nữ','Thuy_Chi_800x800.jpg','Thuy_Chi_1200x800.jpg'),
('CS0023',N'Only C',N'Hồ Chí Minh',N'Nam','Only_C_800x800.jpg','Only_C_1200x800.jpg'),
('CS0024',N'Cao Thái Sơn',N'Hà Nội',N'Nam','Cao_Thai_Son_800x800.jpg','Cao_Thai_Son_1200x800.jpg'),
('CS0025',N'Ngô Kiến Huy',N'Hồ Chí Minh',N'Nam','Ngo_Kien_Huy_800x800.jpg','Ngo_Kien_Huy_1200x800.jpg'),
('CS0026',N'Trấn Thành',N'Hồ Chí Minh',N'Nam','Tran_Thanh_800x800.jpg','Tran_Thanh_1200x800.jpg'),
('CS0027',N'Thanh Thảo',N'Hồ Chí Minh',N'Nữ','Thanh_Thao_800x800.jpg','Thanh_Thao_1200x800.jpg'),
('CS0028',N'Văn Mai Hương',N'Hà Nội',N'Nữ','Van_Mai_Huong_800x800.jpg','Van_Mai_Huong_1200x800.jpg'),
('CS0029',N'Minh Hằng',N'Hồ Chí Minh',N'Nữ','Minh_Hang_800x800.jpg','Minh_Hang_1200x800.jpg')

select * from CASI

/*insert into CASI values
('CS0033',N'Hà Anh Tuấn',N'Hồ Chí Minh',N'Nam',NULL),
('CS0034',N'Minh Vương',N'Hà Nội',N'Nam',NULL),
('CS0035',N'Đan Trường',N'Hà Nội',N'Nam',NULL),
('CS0036',N'Khánh Phương',N'Hà Nội',N'Nam',NULL),
('CS0037',N'Phạm Quỳnh Anh',N'Hồ Chí Minh',N'Nữ',NULL),
('CS0038',N'Erik',N'Hà Nội',N'Nam',NULL),
('CS0039',N'Lệ Quên',N'Hà Nội',N'Nữ',NULL),
('CS0040',N'Duy Khánh',N'Hà Nội',N'Nam',NULL),
('CS0041',N'Nhật Kim Anh',N'Hà Nội',N'Nữ',NULL),
('CS0042',N'Phạm Trưởng',N'Hồ Chí Minh',N'Nam',NULL),
('CS0043',N'Trịnh Thanh Bình',N'Hà Nội',N'Nam',NULL),
('CS0044',N'Táo',N'Hồ Chí Minhi',N'Nam',NULL),
('CS0045',N'Đen',N'Hồ Chí Minh',N'Nam',NULL),
('CS0046',N'Bùi Anh Tuấn',N'v',N'Nam',NULL),
('CS0047',N'Mr.siro',N'Hà Nội',N'Nam',NULL),
('CS0048',N'Quang Lê',N'Hà Nội',N'Nam',NULL),
('CS0049',N'Thu Thủy',N'Hà Nội',N'Nữ',NULL),
('CS0050',N'Lý Hải',N'Hồ Chí Minh',N'Nam',NULL)*/

Create table BAIHAT(
	MaBH char(10) not null primary key,
	maCaSi char(10),
	tenBH nvarchar(50),
	Link_BH nvarchar(50),
	Link_Anh nvarchar(50),
	Constraint FK_GB_CS foreign key (maCaSi)  references CASI(maCaSi)
)

insert into BAIHAT values
('BH0001','CS0001',N'Buông đôi tay nhau ra','BH0001.mp3', 'Son_Tung_MTP_800x800.jpg'),
('BH0002','CS0001',N'Chúng ta không thuộc về nhau','BH0002.mp3', 'Son_Tung_MTP_800x800.jpg'),
('BH0003','CS0001',N'Nắng ấm xa dần','BH0003.mp3', 'Son_Tung_MTP_800x800.jpg'),
('BH0004','CS0001',N'Nơi này có anh','BH0004.mp3', 'Son_Tung_MTP_800x800.jpg'),
('BH0005','CS0001',N'Lạc trôi','BH0005.mp3', 'Son_Tung_MTP_800x800.jpg'),
('BH0006','CS0002',N'Nếu','BH0006.mp3', 'Noo_Phuoc_Thinh_800x800.jpg'),
('BH0007','CS0002',N'Ba Chấm','BH0007.mp3', 'Noo_Phuoc_Thinh_800x800.jpg'),
('BH0008','CS0002',N'Đừng nhìn lại','BH0008.mp3', 'Noo_Phuoc_Thinh_800x800.jpg'),
('BH0009','CS0002',N'Lạc bước trong đêm','BH0009.mp3', 'Noo_Phuoc_Thinh_800x800.jpg'),
('BH0010','CS0002',N'Thương em là điều anh không thể ngờ','BH0010.mp3', 'Noo_Phuoc_Thinh_800x800.jpg'),
('BH0011','CS0004',N'Ta là của nhau','BH0011.mp3', 'Dong_Nhi_800x800.jpg'),
('BH0012','CS0004',N'Xin anh đừng','BH0012.mp3', 'Dong_Nhi_800x800.jpg'),
('BH0013','CS0004',N'Vì ai vì anh','BH0013.mp3', 'Dong_Nhi_800x800.jpg'),
('BH0014','CS0006',N'Xuân đã về','BH0014.mp3', 'Ho_Ngoc_Ha_800x800.jpg'),
('BH0015','CS0006',N'Cả một trời thương nhớ','BH0015.mp3', 'Ho_Ngoc_Ha_800x800.jpg'),
('BH0016','CS0003',N'Cho em gần anh thêm chút nữa','BH0016.mp3', 'Huong_Tram_800x800.jpg'),
('BH0017','CS0003',N'Anh thế giới và em','BH0017.mp3', 'Huong_Tram_800x800.jpg'),
('BH0018','CS0003',N'Cánh hoa tàn','BH0018.mp3', 'Huong_Tram_800x800.jpg'),
('BH0019','CS0005',N'Trái tim anh cũng biết đau','BH0018.mp3', 'Bao_Anh_800x800.jpg'),
('BH0020','CS0005',N'Sống xa anh chẳng dễ dàng','BH0019.mp3', 'Bao_Anh_800x800.jpg')

select * from BAIHAT

delete  from BAIHAT

insert into BAIHAT values
('BH0021','CS0020',N'Cảm giác lúc ấy sẽ ra sao','demo.mp3', 'Lou_Hoang_800x800.jpg'),
('BH0022','CS0020',N'Mình là gì của nhau','demo.mp3', 'Lou_Hoang_800x800.jpg'),
('BH0023','CS0020',N'Đến ngày xa em','demo.mp3', 'Lou_Hoang_800x800.jpg'),
('BH0024','CS0020',N'Yêu một người có lẽ','demo.mp3', 'Lou_Hoang_800x800.jpg'),
('BH0025','CS0020',N'Yêu em dại khờ','demo.mp3', 'Lou_Hoang_800x800.jpg')
/*('BH0026','CS0038',N'Chạm đáy nổi đau',Null, null),
('BH0027','CS0038',N'Anh ta sao?',Null, null),
('BH0028','CS0038',N'Mình chia tay đi',Null, null),
('BH0029','CS0038',N'Lạc nhau có phải muôn đời',Null, null),
('BH0030','CS0038',N'Màu nước mắt',Null, null),
('BH0031','CS0015',N'Phía sau một cô gái',Null, null),
('BH0032','CS0015',N'Đi để trờ về',Null, null),
('BH0033','CS0015',N'Anh đã quen với cô đơn',Null, null),
('BH0034','CS0026',N'Yêu là Tha Thu',Null, null),
('BH0035','CS0045',N'Bài này Chill phết',Null, null),
('BH0036','CS0045',N'mười năm',Null, null),
('BH0037','CS0045',N'Đố em biết anh đang nghĩ gì',Null, null),
('BH0038','CS0045',N'Anh đếch cần gì ngoài em',Null, null),
('BH0039','CS0046',N'Cưới nhau đi',Null, null),
('BH0040','CS0046',N'Hẹn một mai',Null, null),
('BH0041','CS0046',N'Nơi tình yêu kết thúc',Null, null),
('BH0042','CS0046',N'Nơi tình yêu bắt đầu',Null, null),
('BH0043','CS0044',N'25',Null, null),
('BH0044','CS0044',N'Vẫn',Null, null),
('BH0045','CS0033',N'Tháng tư là lời nói dối của em',Null, null),
('BH0046','CS0018',N'Thành phố buồn',Null, null),
('BH0047','CS0047',N'Tự lau nước mắt',Null, null),
('BH0048','CS0047',N'Tìm được nhau khó thế nào',Null, null),
('BH0049','CS0047',N'Càng níu giữ càng dễ mất',Null, null),
('BH0050','CS0047',N'Một bước yêu vạn dặm đau',Null, null)*/
Declare @myString char(20)
set @myString = 'BH0001'
SELECT * FROM BAIHAT, CASI WHERE MABH = @myString AND BAIHAT.MACASI = CASI.MACASI
SELECT MABH, TENBH FROM BAIHAT	

Select * from casi where macasi = 'cs0006'
select * from baihat

alter table baihat
add namsx char(4)

SELECT * FROM	BAIHAT, CASI WHERE BAIHAT.MACASI = CASI.MACASI AND baihat.MACASI = 'cs0010'