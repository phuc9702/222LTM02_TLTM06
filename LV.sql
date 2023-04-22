CREATE DATABASE LN;
USE LN
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'pnphuc', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)

SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Shounen')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Fantasy')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Drama')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Action')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Tiểu Thuyết Thanh Gươm Diệt Quỷ 2: Cánh Bướm Khuyết', N'https://cdn0.fahasa.com/media/catalog/product/t/h/thanh-guom-diet-quy-2_-canh-buom-khuyet.jpg', 47.500 , N'Kimrtsu no Yaiba', N'Ngược về quá khứ, Himejima từng cứu giúp Kanae vàShinobu bị quỷ sát hại cha mẹ.

 Himejima thương xót và căm ghét số phận. Nếu không có biến cố kia, hẳn Shinobu đã có thể sống hạnh phúc trong tình yêu thương của cha mẹ và chị gái thay vì bị giận dữ và hận thù vây hãm. Tuy nhiên, anh đã quay lưng với lời thỉnh cầu của hai đứa trẻ. Anh không thể để tương lai của hai chị em bị tước đi vì những cảm xúc nhất thời này.

 Vì không muốn hai chị em dấn thân vào con đường nguy hiểm, anh đã đưa ra thử thách hòng ngăn cản cả hai gia nhập Đội Diệt Quỷ, thế nhưng…

“Cánh bướm khuyết” là cuốn tiểu thuyết gồm 5 câu chuyện vô cùng thú vị, hé lộ về cuộc sống của các “Trụ cột” - Dàn nhân vật nhận được sự quan tâm lớn từ độc giả! Ngoài ra với những ai vốn yêu thích “Học viện Diệt Quỷ”, tập sách này sẽ tiếp tục mang đến cho các bạn những khoảnh khắc vô cùng hài hước và khó quên!!

Đáng chú ý trong tập này: Rốt cuộc đã xảy ra chuyện gì mà đến cả thầy giáo thể dục Tomioka – vốn lạnh lùng hơn băng giá – cũng phải rớt nước mắt!? Tất cả sẽ được làm sáng tỏ qua phần ngoại truyện “Học viện Diệt quỷ”.

', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Diệt Slime Suốt 300 Năm, Tôi Levelmax Lúc Nào Chẳng Hay - Tập 7', N'https://cdn0.fahasa.com/media/catalog/product/e/e/eeee111222.jpg', 57.500, N'Diệt Slime Suốt 300 Năm, Tôi Levelmax Lúc Nào Chẳng Hay', N'Một Azusa bị thu nhỏ đã quá quen thuộc với các bạn. Vậy một Azusa bị biến thành người cáo thì sao đây? Và lần này người lừa Phù thủy Cao nguyên là ai? Cô nàng “Azusa cáo” tinh nghịch và vô cùng đáng yêu cùng với những cuộc phiêu lưu mới đang chờ đón các bạn!
Ngoài ra, cuối tập này, câu chuyện về cuộc sống làm việc bận rộn của Beelzebub “Làm một công chức quèn suốt 1500 năm, nhờ sức mạnh của Ma Vương mà được làm Bộ trường” cũng đã quay lại!', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'OVERLORD - Tập 5: Những Anh Hùng Vương Quốc', N'https://cdn0.fahasa.com/media/catalog/product/o/v/overlord-5-_ln_---bia1.jpg', 136.000, N'OVERLORD ', N'Suzuki Satoru, hay Ainz, một nhân viên văn phòng say mê YGGDRASIL vẫn đăng nhập để nhâm nhi những giây phút sau cuối trước khi game dừng hoạt động. Nhưng khi đã sẵn sàng tinh thần chia tay các NPC dù vô tri vô giác nhưng là những đứa con tinh thần của mình, anh lại không chủ động đăng xuất được nữa mà nhảy vọt sang dị thế giới.
Ở thế giới mới xa lạ, ấp ủ mong muốn tìm lại đồng đội cũ, Ainz quyết định khiến danh tiếng guild Ainz Ooal Gown vang xa với những kế hoạch chinh phục táo bạo.
Sau trận chiến với những Á nhân thằn lằn ở các làng mạc xa xôi, sang tập 5, phần đầu của “Những anh hùng Vương quốc”, sân khấu Overlord zoom cận cảnh vào những đường phố Vương quốc, nơi những âm mưu chính trị, toan tính, dục vọng cá nhân âm thầm len lỏi dưới vỏ bọc yên bình mà để bảo vệ nó nhiều con người chính trực đang gồng mình chiến đấu. Điểm thú vị là cái nhìn về thế giới trong Overlord không chỉ mở rộng trên phương diện địa lý, mà còn đào sâu vào tâm lý từ con người đến các NPC - giờ đây đã hữu tri hữu giác, để chất phiêu lưu hào hùng cứ thế âm ỉ, định hình từng chút một, chuẩn bị cho một cuộc càn quét phía sau.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Miền Đất Hứa - The Promised Neverland - Thư Của Norman (Light Novel)', N'https://cdn0.fahasa.com/media/catalog/product/n/e/neverland-ln_thu-cua-norman_1_.jpg', 80.000, N'Miền Đất Hứa', N'Mùng 3 tháng Mười một, trước khi bị xuất đi, Norman đã ngồi trong rừng viết thư hướng dẫn mọi người đào tẩu. Trong lúc viết, cậu bồi hồi nhớ lại những kỉ niệm từng trải qua với Emma và các anh chị em ở Grace Field House.

Mời các bạn thưởng thức cuốn tiểu thuyết đầu tiên của “Miền Đất Hứa”, dõi theo những ngày tháng ấm êm đã không thể trở lại của bọn trẻ tại Grace Field House.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Thám Tử Đã Chết - Tập 6 - Bản Đặc Biệt + Tặng Kèm 1 Bookmark + 3 Postcard + 1 Bìa Tặng Thêm', N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935280913752-dd.jpg', 128.250, N'Thám Tử Đã Chết', N'Thám tử đã chết (tên gốc: Tantei wa mou shindeiru) là series light novel trinh thám của tác giả mới Nigozyu, người đã chiến thắng giải thưởng tân binh của MF Bunko J lần thứ 15 dành cho các tác giả Light novel mới triển vọng. Tính tới thời điểm hiện tại, Thám tử đã chết đã ra mắt 6 tập tại Nhật Bản với doanh số ấn tượng 850.000 bản được bán ra cùng hàng loạt các phiên bản chuyển thể truyện tranh và mới nhất là TV series anime cũng đang được công chiếu bản quyền tại Việt Nam, thu hút hàng trăm nghìn lượt xem mỗi tập.

Đây là câu chuyện về cách chúng tôi đã gặp gỡ nhau như thế nào

Cuộc gặp gỡ giữa tôi, thám tử bậc thầy, Siesta, và trợ thủ của tôi, Kimizuka Kimihiko, không phải ở trên chiếc may bay bị cướp ở độ cao 10.000 mét so với mặt đất.

“Tôi muốn cô đi tới Nhật Bản.”

Sự khởi đầu thực sự là bốn năm trước, khi tôi nhận được yêu cầu tìm kiếm gián điệp từ “Chính phủ liên bang”. Khi bay tới Nhật Bản, tôi đã nhận được sự hợp tác của Kase Fuubi và cố liên lạc với nguồn tin được chị ấy cung cấp.

“Cô cũng sẽ nhớ thôi. Thằng nhãi bực mình đó tên là…”

Này, Trợ thủ, cậu đã bao giờ tự hỏi tại sao tôi lại đưa cậu đi phiêu lưu khắp thế giới chưa?

Điều tôi sắp tiết lộ bây giờ là một bí mật mà tôi đã giấu kín với ngay cả trợ thủ, người đã cùng tôi trải qua những chuyến phiêu lưu rực rỡ trong suốt ba năm. Một phần tiền truyện mô tả sự khởi đầu chân thực của cuộc gặp gỡ ở chân trời xa xôi.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Grimgar - Ảo Ảnh Và Tro Tàn', N'https://cdn0.fahasa.com/media/catalog/product/g/r/grimgar-14_ban-pho-thong600.jpg', 85.000, N'Grimgar ', N'"Thì thầm, niệm chú, cầu nguyện và thức tỉnh...

Đây là câu chuyện phiêu lưu được sinh ra từ trong đám tro tàn."

Sau khi bị đưa tới “Grimgar”, một thế giới hoàn toàn xa lạ, nhóm Haruhiro cố gắng tích luỹ kinh nghiệm và cuối cùng đã vượt qua được giai đoạn “lính mới”. Để nâng cao năng lực chiến đấu, họ quyết định thử sức với địa điểm mới mang tên “Mỏ Cyrene”. Nhưng đó cũng chính là nơi thành viên vừa gia nhập tổ đội - Merry - mất đi những đồng đội cũ trong quá khứ. Chuyến thám hiểm của nhóm Haruhiro tưởng chừng diễn ra thuận lợi, nhưng cả bọn bất ngờ bị dồn vào tình huống không ngờ tới, buộc phải xé lẻ. Không những vậy, họ còn phải đương đầu với cuộc tấn công của con kobold khổng lồ, mang cái tên quái dị là Dead Spot.

Chúng ta hãy đến với chương thứ hai của câu chuyện phiêu lưu sinh ra từ trong đám tro tàn, cùng muôn vàn những thử thách mới!', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Về Chuyện Tôi Chuyển Sinh Thành Slime - Tập 1 - Bản Thường', N'https://cdn0.fahasa.com/media/catalog/product/t/t/ttph--v_-chuy_n-t_i-chuy_n-sinh-th_nh-slime_1.jpg', 114.750, N'Tensei Shitara Slime datta ken', N'Một thanh niên ( 37 tuổi vẫn còn tem) bị đâm bởi tên cướp đang trên đường tháo chạy sau khi cứu (kouhai) đồng nghiệp lẫn người tình của anh ta sang hai bên. Khi anh ấy nằm sấp mặt chờ chết, máu chảy đầm đìa dưới dất, anh ta nghe thấy một tiếng nói. Tiếng nói này lạ lẫm và diễn giải nỗi uất hận khi chết mà còn chưa được "nện" lần nào bằng cách cho anh ấy kỹ năng đặc biệt [Đại Hiền Nhân]!

Có phải anh ta đang bị đem ra làm trò cười?', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Tôi Là Nhện Đấy, Có Sao Không? - Tập 6', N'https://i.docln.net/lightnovel/covers/u2-5f81ccbe-2793-4a3f-8a34-102ee41b4f8e.jpg', 139.000, N'Kumo Desu Ga Nani Ka', N'Sau khi cứu Sophia Keren và quản gia của cô bé, Shiro cùng Ariel đưa 2 người họ đến thủ đô nước Sariella. Trên đường đi, Shiro tranh thủ giúp Sophia rèn luyện nâng cấp Kỹ năng và Trạng thái. Bên cạnh đó, Merazophis - quản gia của cô bé, chìm trong dằn vặt vì bị trở thành Ma cà rồng.

Cùng lúc đó, bên trong Đại Mê cung, lũ nhện con vẫn không ngừng sinh sôi. Chúng phát triển nhiều đến mức ăn hết sạch ma vật ở Thượng tầng. Vì lẽ đó, chúng mò xuống Hạ tầng định chén trứng Rồng. Sau khi đã hạ được 3 con Rồng và đang tiến dần đến tấn công đám trứng, chúng bị Người quản lý chặn lại. Không còn cách nào khác, chúng ra khỏi Đại Mê cung và tấn công con người. Shiro buộc phải tiêu diệt hết bọn Ý nghĩ song song và đưa đám nhện con về Đại Mê cung. Mặt khác, Trưởng Ma đạo sư Hoàng gia Ronandt sau cuộc đối đầu với Shiro đã đâm thần tượng cô nàng. Ông ta tìm mọi cách tiếp cận Shiro nhưng không được. Cuối cùng, ông nhận Dũng Sĩ làm đệ tử.', 3, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Thiên Sứ Nhà Bên - Tập 5.5', N'https://i.docln.net/lightnovel/covers/u2-6e7c7b58-df67-4b9a-8001-2f0023add59e.jpg', 95.000, N' Otonari no Tenshi-sama ni Itsu no Ma ni ka Dame Ningen ni Sareteita Ken', N'Fujimiya Amane - học sinh cấp ba sống tự lập với lối sinh hoạt cẩu thả, và Shiina Mahiru – hoa khôi của trường với biệt danh “thiên sứ”, dù học cùng trường, đồng thời là hàng xóm cạnh nhà nhau, nhưng giữa họ lại chẳng hề có sự kết nối nào. Cho đến một ngày, cuộc gặp gỡ tình cờ của số phận đã thay đổi cuộc sống của họ mãi mãi. Để ngày hôm nay, Mahiru và Amane được ăn cơm chung một nhà.

Đây là tập truyện ngắn khắc họa những khoảnh khắc ngọt ngào trong chuyện tình của chàng trai nhà bên với nàng thiên sứ tuy lạnh lùng nhưng thật đáng yêu, về quá khứ và hiện tại của hai con người đã âm thầm thu hút lẫn nhau ấy.

Đó là một chuyện tình êm đềm và chậm rãi…', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Sword Art Online 024 - Unital Ring III', N'https://i.docln.net/lightnovel/covers/u2-a32629da-9894-4f94-ad19-64f7f41f25c1.jpg', 125.000, N' Sword Art Online', N'Tập 24 là sự xen kẽ các phân cảnh của ba thế giới: hiện thực, Unital Ring và Underworld.

Ở hiện thực, Kirito đang băn khoăn tìm quà tặng sinh nhật tuổi 19 cho cô bạn gái xinh đẹp giỏi giang. Trước đó, cậu phải đến tiệm bánh ngọt đắt tiền ở Ginza để gặp một nhân vật khả nghi. Argo đòi bám càng.

Ở Unital Ring, Kirito lo lắng về cuộc tấn công nhà gỗ lần thứ ba của kẻ địch với quy mô và ác ý ghê gớm hơn hẳn hai lần đầu. Trước đó, cậu phải đến điểm xuất phát của các game thủ để đón một cô bạn vừa convert vào. Alice đòi bám càng.

Ở Underworld, Kirito chộn rộn trước sự xuất hiện của trưởng đoàn cơ sĩ, một người từ mắt đến môi đều gợi nhớ người bạn thân đã khuất. Trước đó cậu phải đi dò đường điều tra xem kẻ ngoài cuộc nào đã đột nhập vào đây. Lần này, đồng hành với cậu là Asuna và Alice.

Các thế giới luân phiên vận động liên tục trong tập 24 khiến các nhân vật luôn trong tình trạng tất bật và bối rối. Cũng như tập 23, câu chuyện lại tạm dừng ở chỗ vô cùng gay cấn, khi một boss tầng đầy dấu ấn của SAO bỗng dưng xuất hiện trong Unital Ring.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Re:Zero - Bắt Đầu Lại Ở Thế Giới Khác - Tập 14', N'https://i.docln.net/lightnovel/covers/u2-88ff7f41-a63b-459c-980f-5e9738579151.jpg', 120.000, N' Re:Zero kara Hajimaru Isekai Seikatsu', N'Dàn xếp thành công với Garfiel, thay đổi quan điểm của cậu ta về việc giải phóng Thánh vực là bước đột phá cho tình hình đang đi vào bế tắc, và là tín hiệu cho giai đoạn tiếp theo của trận chiến.

Sau một đêm thăng trầm với đủ mọi tâm trạng khác nhau, được tiếp sức bằng lá thư tình thật thà nhưng thiết tha của Subaru, Emilia quay lại khiêu chiến phần mộ lần nữa. Thử thách đưa cô về thế giới hơn trăm năm trước, phục chế nhờ kí ức đang sống dậy sau khi thoát khỏi vòng phong tỏa của Pack. Trong thử thách, cô trông thấy bao người bao vật thân thuộc đã lãng quên, phát hiện ai là kẻ biến quê hương mình thành đất băng vĩnh cửu…

Trong khi Emilia phải đối mặt với nỗi hối hận lớn nhất đời, Subaru dẫn Otto gấp rút trở về dinh thự, mang theo vũ khí chiến đấu bí mật, chuẩn bị lao vào trận chiến khốc liệt với nhóm sát thủ tấn công dinh thự.', 4, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Date A Live - Tập 13', N'https://i.docln.net/lightnovel/covers/u2-8b691566-d954-47b5-a9ae-59ebff2125bf.jpg', 128.000, N' Date A Live', N'Cuối tháng 12, khi lễ Giáng sinh vừa trôi qua, Itsuka Shidou vô tình gặp được Nia - tinh linh số 9 đang đói lả bên vệ đường. 

“Cứ đà này chắc phải hủy bản thảo số tiếp theo mất thôi…”

Vì một lý do nào đó, Shidou đành phải trợ giúp Nia trong công việc vẽ truyện tranh ở nhà của cô, bên cạnh đó cậu còn biết được rằng cô chính là Tinh linh bị DEM giam giữ… Cả hội lên kế hoạch phong ấn Linh lực của Nia bằng một cuộc hẹn ở Akihabara yêu dấu của cô, thế nhưng…

“Thực ra tôi…chỉ yêu những thứ là 2D thôi…”

Giữa chừng cuộc hẹn hò ngày hôm đó, cậu lại nghe được phát ngôn gây chấn động này của Nia!?

Liệu Shidou có thể phá vỡ rào cản về không gian, kéo Tinh linh họa sĩ truyện tranh kiêm otaku này khỏi thế giới 2D, hẹn hò với cô nàng và khiến Nia yêu mình không!?', 4, 19)

SET IDENTITY_INSERT [dbo].[product] OFF
