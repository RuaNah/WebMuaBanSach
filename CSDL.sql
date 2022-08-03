CREATE DATABASE QL_BS
GO
USE QL_BS
GO 

CREATE TABLE TACGIA
(
	MATG  NVARCHAR(10) NOT NULL PRIMARY KEY,
	TENTG NVARCHAR(50),
	GHICHU NVARCHAR(300)
)
CREATE TABLE THELOAI
(
	MATL NVARCHAR(10) NOT NULL PRIMARY KEY,
	TENTL NVARCHAR(50)
)
CREATE TABLE SACH
(
	MASH NVARCHAR(10) PRIMARY KEY,
	TENSH NVARCHAR(100),
	MATG NVARCHAR(10),
	MATL NVARCHAR(10),	
	NAMXB INT,
	SOLUONG INT,
	DuongDan CHAR(100),
	DonGiaBan float check(DonGiaBan >= 0),
	MoTa NVARCHAR(1000)
	CONSTRAINT FK_SACH_TACGIA FOREIGN KEY(MATG) REFERENCES TACGIA(MATG),
	CONSTRAINT FK_SACH_THELOAI FOREIGN KEY(MATL) REFERENCES THELOAI(MATL)	
)
go
create table taikhoan
(
	tendn char(30) not null primary key, 
	matkhau char(30),
	hoten nvarchar(50),
	email varchar(30),
	sodt char(10),
	diachi nvarchar (50),
	quyen bit
)
CREATE TABLE HOADON
(
	MAHD INT IDENTITY(1,1) PRIMARY KEY,
	MASH NVARCHAR(10) ,
	TENDN CHAR(30),
	THANHTIEN INT,
)
CREATE TABLE CHITIETHD
(
	MAHD INT ,
	MASH NVARCHAR(10) ,
	SOLUONG INT
	CONSTRAINT PK_CHITIETHD PRIMARY KEY (MAHD,MASH),
	CONSTRAINT FK_CTHD_HOADON FOREIGN KEY (MAHD) REFERENCES HOADON (MAHD),
	CONSTRAINT FK_CTHD_SACH FOREIGN KEY (MASH) REFERENCES SACH (MASH)
)
go
INSERT INTO HOADON VALUES (GETDATE(),'user1',10000)
INSERT INTO TACGIA
VALUES('TG001',N'Nguyễn Văn Hiên',null),
('TG002',N'Nguyễn Nguyên Khang',N'(2001-2023), là một tác giả...'),
('TG003',N'Nguyễn Phương Hạc',null),
('TG004',N'Isayama Hajime',null),
('TG005',N'Aoyama Gōshō',null),
('TG006',N'Fujiko Fujio',null),
('TG007',N'Toriyama Akira',null),
('TG008',N'Kishimoto Masashi',null),
('TG009',N'Oda Eiichiro',null),
('TG010',N'Hiroki Adachi',null),
('TG011',N'Usui Yoshito',null),
('TG012',N'Inagaki Riichiro',null),
('TG013',N'Hideaki Sorachi',null),
('TG014',N'Tabata Yuki',null),
('TG015',N'ONE',null),
('TG016',N'Gotouge Koyoharu',null),
('TG017',N'Watsuki Nobuhiro',null),
('TG018',N'Adachi Toka',null),
('TG019',N'Ohtaka Shinobu',null),
('TG020',N'Kamio Yoko',null),
('TG021',N'Takahashi Yōichi',null),
('TG022',N'Kugane Maruyama',null),
('TG023',N'Kubo Taito',null),
('TG024',N'Tappei Nagatsuki',null),
('TG025',N'Asō Shūichi',null),
('TG026',N'Takashi Shiina',null),
('TG027',N'Kaiu Shirai',null),
('TG028',N'Iro Aida',null),
('TG029',N'Kousuke Oono',null),
('TG030',N'Vũ Trọng Phụng',null),
('TG031',N'Tô Hoài',null),
('TG032',N'Lê Nghĩa Thành',null),
('TG033',N'Quế Hương',null),
('TG034',N'Nguyễn Chí Ngoan',null),
('TG035',N'Nguyễn Luân',null),
('TG036',N'Lê Vũ Trường Giang',null),
('TG037',N'Trần Hoàng Trâm',null),
('TG038',N'Lê Luynh',null),
('TG039',N'Phan Thị Thanh Nhàn',null),
('TG040',N'Phạm Ngọc Tiến',null),
('TG041',N'Nguyễn Huy Tưởng',null),
('TG042',N'Cố Quỳnh Dao',null),
('TG043',N'Cao Nguyệt Nguyên',null),
('TG044',N'Nguyên Hồng',null),
('TG045',N'Lê Toán',null),
('TG046',N'Lê Minh Hà',null),
('TG047',N'Bùi Minh Quốc',null),
('TG048',N'Nguyễn Trí',null),
('TG049',N'Mai Bửu Minh',null),
('TG050',N'Nguyễn Thi',null),
('TG051',N'Nguyễn Nhật Ánh',null),
('TG052',N'Võ Quảng',null),
('TG053',N'Hoàng Mai Quyên',null),
('TG054',N'Xuân Quỳnh',null),
('TG055',N'Huy Hải',null),
('TG056',N'Đoàn Giỏi',null),
('TG057',N'Charles Dickens',null),
('TG058',N'Phạm Hổ',null),
('TG059',N'Hoàng Đạo Thuý',null),
('TG060',N'Thái Kim Lan',null),
('TG061',N'Trần Quốc Toàn',null),
('TG062',N'Trần Tùng Chinh',null),
('TG063',N'Doãn Kế Thiện',null),
('TG064',N'Nguyễn Ngọc Thuần',null),
('TG065',N'Phùng Quán',null),
('TG066',N'Bùi Tự Lực',null),
('TG067',N'Trần Băng Khuê',null),
('TG068',N'Maurice Maeterlinck',null),
('TG069',N'Hồ Chí Minh',null),
('TG070',N'Nguyễn Công Hoan',null),
('TG071',N'Trần Đức Tiến',null),
('TG072',N'Ma Văn Kháng',null),
('TG073',N'Cao Khải An',null),
('TG074',N'Đoàn Bảo Châu',null),
('TG075',N'Lê Phương Liên',null),
('TG076',N'Phan Việt Lâm',null),
('TG077',N'Jared Diamond',null),
('TG078',N'Phong Điệp',null),
('TG079',N'Châu Hoài Thanh',null),
('TG080',N'Ôn Như Nguyễn Văn Ngọc',null),
('TG081',N'Nguyễn Thị Kim Hòa',null),
('TG082',N'Phạm Hải Đăng',null),
('TG083',N'Trương Chí Hùng',null),
('TG084',N'Trần Thiên Hương',null),
('TG085',N'Nguyễn Quỳnh',null),
('TG086',N'Yuval Noah Harari',null),
('TG087',N'Nam Cao',null),
('TG088',N'Nguyễn Quang Thân',null),
('TG089',N'Bill Bryson',null),
('TG090',N'Phạm Tuyết Hường',null),
('TG091',N'Nguyễn Thị Hồng Ngát',null),
('TG092',N'Vũ Bằng',null),
('TG093',N'Trần Đăng Khoa',null)

INSERT INTO THELOAI
VALUES('TL01',N'Truyện Tranh/Comic'),
('TL02',N'Văn Học'),
('TL03',N'Lịch Sử'),
('TL04',N'Chính Trị'),
('TL05',N'Giáo Trình'),
('TL06',N'Khoa Học Công Nghệ')



SET DATEFORMAT DMY
INSERT INTO SACH
VALUES('S0001',N'Shingeki no kyojin','TG004','TL02',2021,33,'~/images/Shingeki_no_kyojin.jpg',20000,N'Shingeki no Kyojin diễn ra ở một thế giới giả tưởng mà con người đã bị diệt vong gần hết bởi titan, một chủng loại quái vật khổng lồ dạng người không biết đến từ đâu và thích ăn thịt người. Để bảo vệ chính mình, con người đã co cụm lại và xây dựng nên những bức tường khổng lồ và sống trong đó để né tránh các titan. Một ngày kia, một con titan to lớn bất thường cao trên 50m bỗng dưng xuất hiện và phá vỡ bức tường bảo vệ bên ngoài. Những ngày yên bình chấm dứt! Một cuộc chiến mới đã bắt đầu!'),
('S0002',N'Conan','TG005','TL01',2021,24,'~/images/conan-tap-35.jpg',21000,N'Kudo Shinichi, 17 tuổi, là một thám tử trung học phổ thông rất nổi tiếng, thường xuyên giúp cảnh sát phá án các vụ án khó khăn. Trong một lần khi đang theo dõi một vụ tống tiền, cậu đã bị thành viên của Tổ chức Áo đen phát hiện. Chúng đánh gục và ép cậu uống loại thuốc độc nhằm bịt đầu mối. Tuy vậy, thứ thuốc ấy không giết chết cậu mà lại khiến cậu teo nhỏ thành một đứa trẻ 6 tuổi. Sau đó, cậu tự xưng là Edogawa Conan và được Mori Ran - bạn gái của cậu khi còn là Kudo Shinichi - nhận nuôi. Conan đã âm thầm hỗ trợ ông Mori phá các vụ án. Đồng thời cậu cũng phải nhập học lớp 1 Tiểu học.'),
('S0003',N'Doraemon','TG006','TL01',2021,35,'~/images/Doraemon.jpg',25000,N'Doraemon là một chú mèo máy được Sewashi, cháu năm đời của Nobita, gửi từ thế kỷ 22 về quá khứ của ông mình để giúp đỡ Nobita trở nên tiến bộ và giàu có, tức là cũng sẽ cải thiện hoàn cảnh của con cháu Nobita sau này. Còn ở hiện tại, Nobita là một cậu bé luôn thất bại ở trường học, và sau đó công ty phá sản, thất bại trong công việc, đẩy gia đình và con cháu sau này vào cảnh nợ nần.'),
('S0004',N'Dragon ball','TG007','TL01',2021,20,'~/images/DragonBall.jpg',30000,N'Một cậu bé có đuôi khỉ được tìm thấy bởi một ông lão sống một mình trong rừng, ông đặt tên là Son Goku và xem đứa bé như là cháu của mình. Một ngày nọ Goku tình cờ gặp một cô gái tên là Bulma trên đường đi bắt cá về, Goku và Bulma đã cùng nhau truy tìm bảy viên ngọc rồng. Các viên ngọc rồng này chứa đựng một bí mật có thể triệu hồi một con rồng và ban điều ước cho ai sở hữu chúng.'),
('S0005',N'Naruto','TG008','TL01',20121,30,'~/images/Naruto.jpg',30000,N'Chuyện xảy ra ở làng Lá với nhân vật chính là Naruto, học sinh trường đào tạo Ninja, chuyên đi quấy rối khắp làng!! Naruto có một ước mơ to lớn là đạt được danh hiệu Hokage - Một vị trí dành cho Ninja ưu tú nhất - Và vượt qua các Ninja tiền nhiệm. Tuy nhiên, bí mật về thân thế của Naruto là…!?'),
('S0006',N'One piece','TG009','TL01',20121,15,'~/images/One_Piece.jpg.jpg',26000,N'Câu chuyện kể về Monkey D. Luffy, một chàng trai trẻ tuổi, được thần tượng thời thơ ấu của mình là Shanks "Tóc Đỏ" truyền cảm hứng trở thành một hải tặc, bắt đầu cuộc hành trình tại East Blue tìm kiếm kho báu danh giá và trở thành Tân Vua Hải Tặc.'),
('S0007',N'Boruto','TG008','TL01',2021,35,'~/images/Borutp.jpg',31000,N'Đại chiến Ninja đã là chuyện của quá khứ! Giờ là thời điểm mà những cư dân làng Lá được hưởng thụ hòa bình! Thế nhưng lại có một cậu bé phải trải qua những ngày tháng u sầu vì ảnh hưởng quá lớn từ người cha Hokage đệ Thất vĩ đại của cậu. Tên cậu là Boruto! Trong khi đó, không một ai nhận ra bóng đen tai họa đang dần tiến đến gần… Đã đến lúc bắt đầu truyền thuyết về thế hệ kế tiếp!!'),
('S0008',N'Horimiya','TG010','TL01',2021,18,'~/images/Horimiya.jpg',34000,N'Câu chuyện thanh xuân nhẹ nhàng, giản đơn mà thú vị! Hori, nữ sinh cấp ba nhìn qua tưởng điệu đà nhưng thật ra lại giản dị, đảm đang việc nhà. Miyamura, anh chàng bốn mắt tầm thường khi ở trường, nhưng ra ngoài thì đẹp trai ngời ngời, khuyên đeo đầy người. Hai người vừa trái ngược vừa tương đồng, chuyện gì sẽ xảy ra khi họ gặp nhau!?'),
('S0009',N'Shin cậu bé bút chì','TG011','TL01',2021,19,'~/images/shin.jpg',29000,N'Có thể Shin là một cậu bé cá tính, hiếu động. Có thể những trò tinh nghịch của Shin đôi khi quá trớn, chẳng chừa một ai. Nhưng sau những sự cố do Shin gây ra, người lớn thấy mình cần quan tâm đến trẻ con nhiều hơn nữa, các bạn đọc nhỏ tuổi chắc hẳn cũng được dịp nhìn nhận lại bản thân, để phân biệt điều tốt điều xấu trong cuộc sống.'),
('S0010',N'Dr.Stone','TG012','TL01',2021,21,'~/images/Dr_Stone.jpg',32000,N'Ngày nọ, cậu học sinh cấp Ba Taiju bị cuốn vào một hiện tượng kì bí khiến toàn nhân loại hóa đá. Khoảng 3.700 năm sau, Taiju tỉnh dậy và hội ngộ người bạn thân Senku đã hồi sinh trước đó. Bằng “sức trâu” của Taiju và “đầu óc” của Senku, cả hai người đã cùng nhau bắt tay vào xây dựng lại nền văn minh từ con số 0 ở thế giới đá...'),
('S0011',N'Gintama','TG013','TL01',2021,39,'~/images/Gintama.jpg',31000,N'Ở Edo, trước sức mạnh áp đảo của những dị nhân “người ngoài hành tinh” và lệnh phế đao của Mạc Phủ, thời đại của những Samurai đã bước vào giai đoạn diệt vong. Nhưng có một người đàn ông vẫn kiên định giữ vững tinh thần Samurai… tên anh là Gintoki Sakata. Có thể người đàn ông hảo ngọt và liều lĩnh này sẽ tung hoành Mạc Phủ chỉ với một thanh kiếm?!'),
('S0012',N'Black clover','TG014','TL01',2021,45,'~/images/Back_clover.jpg',36000,N'Tại một thế giới nơi pháp thuật là tất cả, cậu thiếu niên Asta lại không thể sử dụng chút pháp thuật nào từ thuở mới lọt lòng. Để chứng minh sức mạnh của bản thân và thực hiện lời giao ước với bạn bè, Asta đã nhắm tới mục tiêu trở thành “Ma pháp vương”, pháp sư đứng đầu mọi pháp sư. Câu chuyện về những cậu thiếu niên có pháp thuật xin được bắt đầu!'),
('S0013',N'Mob psycho 100','TG015','TL01',2021,10,'~/images/mob-psycho-100-tap-1.jpg',35000,N'MOB PSYCHO 100 là câu chuyện về cậu học sinh lớp 8 Shigeo Kageyama. Cậu mơ ước có một thời học sinh dị, nhưng lại mang trong mình SIÊU NĂNG LỰC nên đã vô tình trở thành đích ngắm cho một số đối tượng lợi dụng. Dù ngây thơ đến mấy, thì dần dần, bên trong Mob cũng hình thành “phản ứng”, và nó chỉ chực chờ để nổ tung như pháo hoa...!!'),
('S0014',N'Dragon ball super','TG007','TL01',2021,9,'~/images/Dragon_ball_super.jpg',37000,N'Dragon Ball Super - Tập 1
Một cậu bé có đuôi khỉ tên là Goku được tìm thấy bởi một ông lão sống một mình trong rừng, ông lão xem đứa bé như là cháu của mình. Một ngày nọ Goku tình cờ gặp một cô gái tên là Bulma trên đường đi bắt cá về, Goku và Bulma đã cùng nhau truy tìm bảy viên ngọc rồng. Bảy viên ngọc rồng chứa đựng một bí mật có thể triệu hồi một con rồng và ban điều ước cho ai sở hữu chúng.'),
('S0015',N'Kimetsu no yaiba','TG016','TL01',2021,20,'~/images/Demon_Slayer_Kimetsu_no_Yaiba,_volume_1.jpg',40000,N'Vào thời Taisho, có một cậu bé bán than với tấm lòng nhân hậu tên Tanjiro. Những ngày yên bình đã chẳng còn khi Quỷ đến tàn sát cả gia đình cậu, chỉ duy nhất người em gái Nezuko còn sống sót nhưng lại bị biến thành Quỷ. Mang trong mình quyết tâm chữa cho em gái, Tanjiro đã cùng Nezuko bắt đầu cuộc hành trình tìm kiếm tung tích con quỷ đã ra tay với gia đình cậu!!'),
('S0016',N'Số đỏ','TG030','TL02',2021,1,'~/images/So_Do.jpg',22000,N'Số đỏ là một tiểu thuyết văn học của nhà văn Vũ Trọng Phụng. Nhiều nhân vật và câu nói trong tác phẩm đã đi vào cuộc sống đời thường và tác phẩm đã được dựng thành kịch, phim. Nhân vật chính của Số đỏ là Xuân – biệt danh là Xuân Tóc đỏ, từ chỗ là một kẻ bị coi là hạ lưu, bỗng nhảy lên tầng lớp danh giá của xã hội nhờ trào lưu Âu hóa của giới tiểu tư sản Hà Nội khi đó.'),
('S0017',N'Dế Mèn phiêu lưu ký','TG031','TL02',2021,3,'~/images/De_men_phieu_luu_ky.jpg',25000,N'Truyện gồm 10 chương, kể về những cuộc phiêu lưu của Dế Mèn qua thế giới muôn màu muôn vẻ của những loài vật nhỏ bé.'),
('S0018',N'Đồi Cỏ May','TG032','TL02',2019,2,'~/images/Doi_co_may.jpg',27000,N'Đồi Cỏ May là hai chuyện tình của Nghị trong những tháng năm trưởng thành: Tình cảm dành cho quê hương và tình yêu tuổi mới lớn dành cho cô bạn ấu thơ. Cả hai đều lãng mạn, giàu hoài niệm và cảm xúc chân thành. Câu chuyện của chàng trai trẻ cũng xoáy vào câu hỏi mang tính thời đại, đầy đồng cảm với những thiếu niên ôm hoài bão lớn: Đặt quê hương ở đâu trên hành trình tìm kiếm hạnh phúc ở phương xa?'),
('S0019',N'Đám cưới cỏ','TG033','TL02',2019,10,'~/images/Dam_cuoi_co.jpg',28000,N'Những truyện ngắn trong Đám cưới cỏ phần lớn hướng đến những nhân vật trẻ em có số phận không may mắn, thể hiện sự yêu thương, không phải để khơi dậy những bất hạnh mà để ươm mầm những nét hồn nhiên, ấm áp của mỗi đứa trẻ.'),
('S0020',N'Mưa miền đất mặn','TG034','TL02',2021,2,'~/images/Mua_mien_dat_man.jpg',26000,N'Mưa miền đất mặn là các câu chuyện bình dị về những đứa trẻ lớn lên mạnh mẽ, về những điều thân thương xưa cũ đã mất đi, về những mong đợi giản dị cho ngày mai. Giọng văn hồn hậu của tác giả sẽ đưa bạn đọc đến với những câu văn giàu chất thơ và ngôn ngữ gần gũi của miền Tây Nam Bộ.'),
('S0021',N'Bước về phía mặt trời','TG035','TL02',2020,3,'~/images/Buoc_ve_phia_mat_troi.jpg',24000,N'Pao là cậu bé người Nùng lớn lên giữa rừng núi Lạng Sơn. Cuộc sống của cậu bé gắn liền với bản Tồng Nọt và những người bạn vô tư, trong trẻo, hiếu động. Lớn lên giữa khó khăn của núi rừng, nhưng các bạn vẫn tìm thấy một thế giới thiên nhiên đầy màu sắc, những nét văn hóa truyền thống tươi đẹp, thấm đượm tình làng nghĩa xóm của đồng bào người Nùng. Đấy cũng là nguồn động lực thôi thúc những đứa trẻ vươn mình lớn lên như cây rừng đón ánh mặt trời.'),
('S0022',N'Căn cước xứ mưa','TG036','TL02',2019,5,'~/images/Can_cuoc_xu_mua.jpg',32000,N'Bằng kiến thức tích lũy, bằng tình yêu của người con dành cho xứ sở, bằng góc nhìn mang tinh thần khám phá của người trẻ, Lê Vũ Trường Giang mang đến cho bạn một Huế đậm đặc chất thơ trong Căn cước xứ mưa. Theo hành trình của ngòi bút, anh phác nên diện mạo một vùng văn hóa lịch sử, chia sẻ rất nhiều thông tin lí thú cho những ai đã, đang và sắp du ngoạn đến miền đất này.'),
('S0023',N'Vừa buông tay đã thành xa lạ','TG037','TL02',2019,1,'~/images/vua-buong-tay-da-thanh-xa-la.jpg',28000,N'Một buổi trưa nọ, Bảo Hân bỗng nhận được cuộc điện thoại từ... người yêu cũ, thông báo về một bó hoa hồng to bự sắp chuyển đến cô. Hắn đã “thông minh” nghĩ cách gửi hoa trước cho các ngày kỉ niệm tương lai. Cô chủ nhỏ của một tiệm cà phê ở Sài Gòn phải tìm cách giải quyết bó hoa trong bực bội. Thế nhưng, chuỗi chuyện oái oăm chỉ vừa mới bắt đầu...'),
('S0024',N'Giọt sương chạy trốn','TG038','TL02',2020,2,'~/images/Giot_suong_chay_tron.jpg',33000,N'Giọt sương chạy trốn bao gồm 30 truyện ngụ ngôn dễ thương, đầy chất mộng mơ, xoay quanh đời sống các loài động vật, cây cỏ. Mỗi truyện là một bài học cho bé trong quá trình xây dựng nhân cách và khám phá thế giới, được viết bằng văn phong trong sáng gần gũi.'),
('S0025',N'Bỏ trốn','TG039','TL02',2021,6,'~/images/bo-tron.jpg',34000,N'Truyện dài “Bỏ trốn” là tác phẩm đoạt giải A trong cuộc vận động sáng tác cho thiếu nhi năm 1993-1995 của NXB Kim Đồng.'),
('S0026',N'Đợi mặt trời','TG040','TL02',2021,4,'~/images/Doi_mat_troi.jpg',24000,N'Đợi mặt trời là cuốn truyện kể về ước mơ vươn lên trong cuộc sống của trẻ thơ. Nhân vật trong truyện là những đứa trẻ bất hạnh vì lí do này hay lí do khác đã phải bươn chải tự kiếm sống. Viết về những đứa bé không may mắn nhưng tác giả cũng như muốn nói với chính mình, với những bậc cha mẹ về trách nhiệm của người lớn đối với trẻ nhỏ.'),
('S0027',N'Lá cờ thêu sáu chữ vàng','TG041','TL02',2021,5,'~/images/La_co_theu_sau_chu_vang.jpg',25000,N'Lá Cờ Thêu Sáu Chữ Vàng kể về tuổi trẻ chí cao của Hoài Văn Hầu Trần Quốc Toản , đã cung quân tướng nhà Trần lập nhiều chiiến công trong cuộc chiên chống quân Nguyên.'),
('S0028',N'Ở đây có thính thơm','TG042','TL02',2021,8,'~/images/O_day_co_thinh_thom.jpg',26000,N'Khi bạn thích một người, chưa cần đến lời tỏ tình hay giành được trái tim người ta, bạn đã có được dũng khí. Dũng cảm trao hết buồn, vui, tức giận của mình vào tay một người mà bạn không khống chế được. Dũng cảm theo dõi cậu ấy. Dũng cảm thay đổi để tốt hơn vì cậu ấy.'),
('S0029',N'Truyện Kiều tự kể','TG043','TL02',2020,11,'~/images/Truyen_kieu_tu_ke.jpg',26000,N'Truyện Kiều là kiệt tác của nền văn học Việt Nam. Các nhân vật trong tác phẩm đã được Nguyễn Du thổi hồn, khắc họa bằng ngôn từ điêu luyện, để tất cả trở nên chân thực, với sức sống vượt ra khỏi đường biên không gian và thời gian.'),
('S0030',N'Đại Việt Sử Ký Toàn Thư','TG079','TL03',2021,10,'~/images/Dai-viet-su-ky-toan-thu.jpg',30000,N'Đại Việt Sử Ký Toàn Thư là bộ quốc sử danh tiếng, một di sản quý báu của dân tộc Việt Nam nghìn năm văn hiến. Đó là bộ sử cái, có giá trị nhiều mặt, gắn liền với tên tuổi các nhà sử học nổi tiếng như Lê Văn Hưu, Phan Phu Tiên, Ngô Sĩ Liên, Phạm Công Trứ, Lê Hy…'),
('S0031',N'Hoàng Kim Bản Harachi','TG082','TL03',2021,20,'~/images/hoang-kim-ban-harachi.jpg',25000,N'Được viết sau chuyến đi Tây Tạng, Hoàng kim bản Harachi của Muldashev tiết lộ về những phiến đá cổ với những thông tin được đại diện nền văn minh trước đây còn sống sót sau Đại hồng thủy chạm khắc nên. Đó là những kiến thức cực kỳ cao siêu về tín ngưỡng cũng như về các quy luật của vũ trụ, khoa học…'),
('S0032',N'Sapiens: Lược Sử Về Loài Người','TG086','TL03',2020,25,'~/images/sapiens-luoc-su-ve-loai-nguoi.jpg',24000,N'Sapiens tập trung vào các quá trình quan trọng đã định hình loài người và thế giới quanh nó, chẳng hạn như sự ra đời của sản xuất nông nghiệp, việc tạo ra tiền, sự lan truyền của những tôn giáo, và sự nổi lên của những nhà nước quốc gia. Không giống như những quyển sách khác cùng loại, Sapiens đã có một lối tiếp cận liên ngành học, bắc cầu qua những khoảng cách giữa lịch sử, sinh học, triết học và kinh tế.'),
('S0033',N'Súng, Vi Trùng Và Thép','TG077','TL03',2020,30,'~/images/sung-vi-trung-va-thep.jpg',31000,N'Tác phẩm Súng, Vi trùng và Thép - Định mệnh của các xã hội loài người là nỗ lực của Jared Diamond để giải thích vì sao các nền văn minh Á - Âu (bao gồm cả Bắc Phi) lại tồn tại được cũng như đã chinh phục các nền văn minh khác. Cùng lúc Jared Diamond cũng bác bỏ các lý thuyết về sự thống trị của các nền văn minh Á - Âu dựa trên trí tuệ, đạo đức hay ưu thế di truyền.'),
('S0034',N'Lịch Sử Vạn Vật','TG089','TL03',2020,26,'~/images/lich-su-van-vat.jpg',40000,N'Trong cuốn Lịch Sử Vạn Vật, tác giả Bill Bryson phải đối mặt với thử thách lớn nhất: tìm hiểu – và nếu có thể trả lời – những vấn đề to lớn nhất, xa xưa nhất mà chúng ta đặt ra về vũ trụ và bản thân con người.'),
('S0035',N'Dầu Mỏ, Tiền Bạc Và Quyền Lực','TG035','TL03',2021,10,'~/images/Dau_mo_tien_bac_va_quyen_luc.jpg',26000,N'Dầu Mỏ, Tiền Bạc Và Quyền Lực là một bức tranh về lịch sử thế kỷ XX, cũng là về ngành công nghiệp dầu mỏ. Bức họa khổng lồ này tái hiện lịch sử từ khi người ta khoan giếng dầu đầu tiên ở Pennsylvania, trải qua hai cuộc đại chiến, tới khi Iraq xâm lược Kuwait và Chiến dịch bão táp sa mạc.'),
('S0036',N'Từ Beirut Đến Jerusalem','TG089','TL03',2021,11,'~/images/Tu_beirut_den_jerusalem.jpg',25000,N'Cuốn sách viết về những xung đột gay gắt ở khu vực Trung Đông, được chia làm hai phần: Beirut và Jerusalem. Phần thứ nhất: Beirut, Friedman đã tái hiện một cách sống động về cuộc nội chiến của người dân Liban. Từ lịch sử cuộc nội chiến, những xung đột nội bộ gay gắt đến chi tiết nước Mỹ nhảy vào cuộc chiến này bằng cách nào và diễn biến ra sao đều được ống kính...'),
('S0037',N'Homo Deus: Lược Sử Tương Lai','TG077','TL03',2021,14,'~/images/Homo_Deus_luoc_su_tuong_Lai.jpg',41000,N'Homo sapiens có phải là một dạng sống siêu đẳng, hay chỉ là một tay đầu gấu địa phương? Làm thế nào con người lại tin rằng họ không chỉ đã kiểm soát thế giới, mà còn mang lại ý nghĩa cho nó? Công nghệ sinh học và trí thông minh nhân tạo đe doạ loài người ra sao? Sinh vật nào có thể kế thừa loài người, và tôn giáo mới nào sẽ được sản sinh? '),
('S0038',N'Thế Giới Cho Đến Ngày Hôm Qua','TG045','TL03',2020,20,'~/images/The-gioi-cho-den-ngay-hom-qua.jpg',35000,N'Thế giới cho đến ngày hôm qua cung cấp một bức tranh trực diện đầy mê hoặc về quá khứ nhân loại tồn tại hàng triệu năm, một quá khứ hầu như đã biến mất và xem xét những khác biệt giữa quá khứ và hiện tại cho cuộc sống hôm nay của chúng ta.'),
('S0039',N'Sự Minh Định Của Địa Lý','TG039','TL03',2020,21,'~/images/Su_minh_dinh_cua_dia_ly.jpg',32000,N'Cuốn sách Sự Minh Định Của Địa Lý là Bản đồ nói với chúng ta điều gì về những cuộc xung đột sắp tới và cuộc chiến đấu chống lại số phận, tái bản vào năm 2013 có bổ sung thêm một Lời bạt quan trọng với tiêu đề Biên giới thay thế cho ranh giới.'),
('S0040',N'Đợt Tuyệt Chủng Thứ 6','TG078','TL03',2020,5,'~/images/Dot_tuyet_chung_thu_sau.jpg',36000,N'Kể từ hơn nửa tỉ năm trước, năm đợt tuyệt chủng đã diễn ra, khi sự đa dạng sống trên trái đất bất ngờ thu hẹp lại. Và phải chăng chúng ta đang bước vào đợt tuyệt chủng kế tiếp - Đợt Tuyệt Chủng Thứ Sáu - diễn ra trong thế Nhân sinh, một thế địa chất mà con người thống trị trên nhiều khía cạnh.')


insert into taikhoan
values
('admin','123',N'Trần Văn A','123@gmail.com','01242334','TPHCM',1),
('user1','123',N'Trần Văn A','123@gmail.com','01242334','TPHCM',0),
('user2','123',N'Trần Văn A','123@gmail.com','01242334','TPHCM',0),
('user3','123',N'Trần Văn A','123@gmail.com','01242334','TPHCM',0)
