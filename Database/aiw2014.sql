-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2014 at 01:00 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aiw2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
`id` int(11) NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
`id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$10$iE0emh3bi1HBMY29oaL.rOhujOdT84kdWFKHdy1q4BQd9T4lS/Vx6', NULL, NULL, '2014-12-18 13:59:04', 6, '2014-12-21 05:08:19', '2014-12-20 12:57:39', '127.0.0.1', '127.0.0.1', '2014-12-18 13:52:50', '2014-12-21 05:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE IF NOT EXISTS `clubs` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `establish` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nick` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stadium` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `name`, `logo`, `establish`, `manager`, `nick`, `stadium`, `background`, `created_at`, `updated_at`) VALUES
(1, 'Arsenal', 'http://i3.mirror.co.uk/incoming/article2917135.ece/alternates/s2197/SSC-Napoli-v-Arsenal-UEFA-Champions-League.jpg', '1886', 'Arsène Wenger', 'The Gunners', 'Emirates', 'Câu lạc bộ bóng đá Arsenal là một trong những đội bóng thành công nhất trong lịch sử bóng đá Anh và có trụ sở ở phía bắc thủ đô Luân Đôn. Đến nay câu lạc bộ đã giành được 13 chức vô địch ở giải bóng đá cao nhất nước Anh và 11 chức vô địch cúp FA', '2014-12-18 14:02:19', '2014-12-18 14:07:34'),
(2, 'Aston Villa', 'http://upload.wikimedia.org/wikipedia/commons/8/80/Aston_Villa_team_vs_FH_August_2008.jpg', '1874', 'Paul Lambert', 'The Villans', 'Villa Park', 'Aston Villa là một trong nhưng câu lạc bộ lâu đời nhất và là câu lạc bộ giàu thành tích thứ 4 trong lịch sử bóng đá Anh. Villa là một trong 5 câu lạc bộ của Anh (cùng với Manchester United, Liverpool, Nottingham Forest F.C., Chelsea) vinh dự giành được cúp C1 với chức vô địch vào năm 1982 sau chiến thắng trước Bayern Munich.', '2014-12-18 15:02:02', '2014-12-18 15:02:02'),
(3, 'Burnley', 'http://d.ibtimes.co.uk/en/full/1381341/burnley.jpg?w=720&h=484&l=50&t=40', '1882', 'Sean Dyche', 'The Clarets', 'Turf Moor', 'Burnley đã vô địch Giải bóng đá hạng nhất Anh hai lần vào năm 1920-1921 và 1959-1960, giành FA Cup một lần, vào năm 1914. The Clarets cũng đạt đến tứ kết của Cúp châu Âu năm 1961. Họ là một trong ba đội từng giành chiến thắng tất cả bốn giải đấu chuyên nghiệp của bóng đá Anh. Hai đội khác là Preston North End và Wolverhampton.', '2014-12-19 15:02:24', '2014-12-20 03:59:11'),
(4, 'Chelsea', 'http://images.rapgenius.com/dea615d5adfe05bdfa9d7b252b6e78b1.960x540x1.png', '1905', 'José Mourinho', 'The Blues / The Pensioners', 'Stamford Bridge', 'Chelsea có mùa giải thành công đầu tiên vào mùa 1954–55, nơi họ đã vô địch championship, và vô địch nhiều giải đấu khác nhau trong thập niên 1960, 1970, 1990 và 2000. Hai thập kỷ qua là thời gian thi đấu thành công nhất của Chelsea, vô địch 15 danh hiệu lớn kể từ năm 1997. Trong nước, Chelsea đã vô địch bốn Premier League, bảy Cúp FA, bốn Cúp Liên đoàn và bốn Siêu cúp Anh, họ cũng đã từng hai lần vô địch Cúp UEFA, một siêu cúp châu Âu, một UEFA Europa League và một UEFA Champions League.', '2014-12-19 15:05:27', '2014-12-20 03:51:37'),
(5, 'Crystal Palace', 'http://planetivy.com/wp-content/uploads/2013/10/Crystal-Palace.jpg', '1905', 'Neil Warnock', 'The Eagles', 'Selhurst Park', 'Crystal Palace F.C. là một câu lạc bộ bóng đá Anh ở phía nam Luân Đôn, Anh. Mùa giải 2012-2013, Palace vô địch giải Hạng nhất Anh, thăng hạng và lên chơi ở Giải bóng đá Ngoại hạng Anh sau khi đánh bại Watford F.C. ở trận play-off. Màu sắc của đội là đỏ và xanh mặc dù có một chút màu rượu nho,xanh nhạt của Aston Villa F.C.  ở những năm đầu. Những năm sau đó Palace có áo màu trắng lấy cảm hứng từ Real Madrid F.C..', '2014-12-19 15:09:43', '2014-12-19 15:09:43'),
(6, 'Everton', 'http://stdomingos.files.wordpress.com/2014/02/everton-team.jpg', '1878', 'Roberto Martinez', 'The Toffees', 'Goodison Park', 'Câu lạc bộ bóng đá Everton là một câu lạc bộ bóng đá chuyên nghiệp Anh đặt trụ sở tại thành phố Liverpool ở vùng Merseyside nước Anh. Đây là một trong những câu lạc bộ lâu đời nhất và thành công nhất của bóng đá Anh với 9 lần vô địch Anh, 5 lần đoạt cúp FA và 1 lần đoạt cúp C2 châu Âu. Sân nhà của câu lạc bộ là sân vận động Goodison Park với sức chứa khoảng 40.000 khán giả. Biệt danh của câu lạc bộ là "The Toffees" (những chiếc kẹo bơ cứng). Đối thủ truyền thống của Everton là câu lạc bộ Liverpool.', '2014-12-19 15:12:41', '2014-12-19 15:12:41'),
(7, 'Hull City', 'http://www.eplstanding.com/wp-content/uploads/2014/09/Hull-City.jpg', '1904', 'Steve Bruce', 'The Tigers', 'The KC Stadium', 'Hull City (Tên đầy đủ: Hull City Association Football Club) là một câu lạc bộ bóng đá Anh tại Yorkshire. Họ đang chơi tại giải Ngoại hạng Anh. Tại mùa giải 2008-2009, câu lạc bộ đã đạt kỉ lục trong lịch sử của mình là lần đầu tiên tham dự giải đấu cao quý nhất nước Anh', '2014-12-19 15:16:21', '2014-12-20 04:01:19'),
(8, 'Leicester City', 'http://www.leicestermercury.co.uk/images/localworld/ugc-images/276308/Article/images/21243626/6215744-large.jpg', '1884', 'Nigel Pearson', 'The Foxes', 'King Power Stadium', 'Leicester City Football Club, còn được biết đến là The Foxes, là một đội bóng chuyên nghiệp ở Anh đặt trụ sở tại King Power Stadium (trước đó được gọi là the Walkers Stadium) ở Leicester. Đội hiện chơi tại giải Ngoại hạng Anh, thăng hạng sau khi vô địch giải Hạng nhất Anh ở mùa giải 2013–14. Đội bóng đã 3 lần vô địch Cúp Liên đoàn Anh và 4 lần á quân tại Cúp FA, lập kỉ lục của giải đấu là đội thua nhiều nhất trong trận chung kết mà chưa bao giờ vô địch lần nào. Họ chỉ vắng mặt khỏi top 2 giải đấu cao nhất nước Anh vào mùa giải 2008-09.', '2014-12-19 15:20:24', '2014-12-20 03:57:18'),
(9, 'Liverpool', 'http://www.hdfootballpaper.com/wp-content/uploads/2014/06/liverpool-team-photo-2014.jpg', '1892', 'Brendan Rodgers', 'The Reds', 'Anfield', 'Câu lạc bộ bóng đá Liverpool là một câu lạc bộ bóng đá chuyên nghiệp của Anh, có trụ sở tại thành phố Liverpool, hạt Merseyside; hiện đang chơi tại Giải bóng đá Ngoại hạng Anh. Tính đến nay, Liverpool đã 18 lần vô địch bóng đá Anh, giành được 7 Cúp FA, 8 Cúp Liên đoàn Anh, 15 Siêu cúp Anh, 5 Cúp vô địch châu Âu (Cúp C1), 3 Cúp UEFA (Cúp C3) và 3 Siêu cúp châu Âu. Liverpool có một lượng cổ động viên hùng hậu và rất trung thành. Những kình địch lâu đời của đội là đội bóng hàng xóm Everton và đội Manchester United. Bài hát truyền thống của câu lạc bộ là "You''ll Never Walk Alone" (tạm dịch: "Bạn sẽ không bao giờ bước đi đơn độc"). Các cầu thủ Liverpool bắt đầu mặc trang phục toàn bộ đỏ vào năm 1964, khi huấn luyện viên Bill Shankly cho rằng màu đỏ sẽ gây tác động đến tâm lý của đối phương.', '2014-12-19 15:23:08', '2014-12-19 15:23:08'),
(10, 'Manchester City', 'http://static.weltsport.net/bilder/teamfotos/640x360/750.jpg', '1880', 'Manuel Pellegrini', 'The Citizens', 'Etihad Stadium', 'Câu lạc bộ bóng đá Manchester City là một câu lạc bộ bóng đá chuyên nghiệp, đặt trụ sở tại thành phố Manchester, nước Anh. Manchester City đã 2 lần vô địch giải bóng đá Ngoại hạng Anh, 5 lần đoạt cúp FA và 1 lần đoạt cúp C2 châu Âu. Sân nhà của câu lạc bộ là sân vận động Etihad, với sức chứa khoảng 48.000 khán giả. Biệt danh của câu lạc bộ là "The Citizens" (những người thành phố). Đối thủ truyền thống của Manchester City là câu lạc bộ Manchester United', '2014-12-19 15:26:09', '2014-12-19 15:26:09'),
(11, 'Manchester United', 'http://i.dailymail.co.uk/i/pix/2014/09/16/1410880680556_wps_38_image001_png.jpg', '1878', 'Louis Van Gaal', 'The Red Devils', 'Old Trafford', 'Câu lạc bộ bóng đá Manchester United là một câu lạc bộ bóng đá Anh, trụ sở tại Trafford, thành phố Manchester. Đây là một trong những câu lạc bộ thành công tại nước Anh, đã từng 20 vô địch bóng đá Anh, đoạt Cúp FA 11 lần và UEFA Champions League 3 lần.', '2014-12-19 15:28:56', '2014-12-20 03:49:32'),
(12, 'Newcastle United', 'http://static.weltsport.net/bilder/teamfotos/640x360/546.jpg', '1892', 'Alan Pardew', 'The Magpies', 'St James'' Park', 'Câu lạc bộ bóng đá Newcastle United là một câu lạc bộ bóng đá chuyên nghiệp Anh đặt trụ sở tại thành phố Newcastle ở miền Đông Bắc nước Anh. Sân nhà của câu lạc bộ là St James'' Park với sức chứa 52.387 khán giả. Biệt danh của câu lạc bộ là The Magpies (Chích Chòe), còn cổ động viên được gọi là Toon Army. Các đối thủ truyền thống của Newcastle United là 2 câu lạc bộ Sunderland và Middlesbrough. Hiện nay, câu lạc bộ đã thi đấu tại Giải bóng đá ngoại hạng Anh (Premier League) trong 16 mùa bóng cho đến khi bị xuống hạng lần đầu tiên kể từ năm 1989 vào cuối mùa bóng 2008-2009.', '2014-12-20 03:34:04', '2014-12-20 03:34:04'),
(13, 'Queens Park Rangers', 'http://s3.india.com/wp-content/uploads/2014/08/qpr.jpg', '1882', 'Harry Redknapp', 'The Hoops', 'Loftus Road Stadium', 'Câu lạc bộ bóng đá Queens Park Rangers thường được gọi tắt là QPR là một câu lạc bộ bóng đá chuyên nghiệp Anh đặt trụ sở tại thủ đô London nước Anh. Sân nhà của câu lạc bộ là Loftus Road với sức chứa 18,360 khán giả. Biệt danh của câu lạc bộ là The Hoops (những vành đai sắt). Các đối thủ truyền thống của Queens Park Rangers là 2 câu lạc bộ Brentford và Fulham. Mùa bóng 2012-13 câu lạc bộ đã thi đấu tại Giải bóng đá Ngoại hạng Anh và vừa phải xuống hạng nhất kể từ mùa sau. Mùa bóng 2014-15 câu lạc bộ đã trở lại thi đấu tại giải.', '2014-12-20 03:36:04', '2014-12-20 03:36:04'),
(14, 'Southampton', 'http://s3.india.com/wp-content/uploads/2014/08/manc-south1.jpg', '1885', 'Ronald Koeman', 'The Saints', 'St. Mary''s Stadium', 'Câu lạc bộ bóng đá Southampton (Southampton Football Club) là một đội bóng đá Anh, có biệt danh The Saints, có trụ sở tại thành phố Southampton, Hampshire. Câu lạc bộ đang thi đấu tại giải Ngoại hạng Anh. Sân nhà của họ là của sân vận động St Mary, nơi mà câu lạc bộ chuyển đến vào năm 2001 từ The Dell. Câu lạc bộ có biệt danh "The Saints" kể từ khi thành lập vào năm 1885 do lịch sử của câu lạc bộ này là 1 đội bóng đá của nhà thờ, được thành lập bởi Giáo Hội St Mary của Hiệp hội tuổi trẻ Anh (hoặc St Mary YMA) và đã chơi trong màu áo sọc đỏ và trắng. Câu lạc bộ có kình địch là Portsmouth FC do khoảng cách địa lý của 2 đội bóng là khá gần nhau và cả hai câu lạc bộ đều có lịch sử về hàng hải. Kể từ mùa giải 2011-12, Southampton và Portsmouth đã cùng tham gia giải đấu South Coast Derby.', '2014-12-20 03:38:16', '2014-12-20 03:38:16'),
(15, 'Stoke City', 'http://boothenendview.com/wp-content/uploads/2014/05/Stoke+City+v+Hajduk+Split+UEFA+Europa+League+WlStn07FMPRx.jpg', '1863', 'Mark Hughes', 'The Potters', 'Britannia Stadium', 'Câu lạc bộ bóng đá Stoke City là một câu lạc bộ bóng đá ở Stoke-on-Trent, Anh. Thành lập từ năm 1863, Stoke là câu lạc bộ lâu đời nhất ở Premier League, và là CLB lâu đời chuyên nghiệp lâu đời thứ hai trên thế giới, sau Notts County. Sân nhà của Stoke là sân Britannia, một sân vận động với sức chứa 28.000 chỗ ngồi. Sân được mở cửa vào năm 1997; trước đó Stoke chơi ở sân Victoria, nơi được coi là sân nhà của họ từ năm 1878 (một quãng thời gian 119 năm chung sân với Wolverhampton Wanderers). Biệt danh của đội bóng là The Potters (nghĩa là thợ gốm, do ngành công nghiệp gốm ở Stoke-on-Trent) và màu áo truyền thống của họ là màu đỏ sọc trắng cùng quần và tất trắng.', '2014-12-20 03:40:16', '2014-12-20 03:40:16'),
(16, 'Sunderland', 'http://i3.chroniclelive.co.uk/incoming/article7888626.ece/alternates/s615/SAFC-team-photograph-2014-15-lower-res.jpg', '1879', 'Gus Poyet', 'The Black Cats', 'Stadium of Light', 'Câu lạc bộ bóng đá Sunderland là một câu lạc bộ bóng đá chuyên nghiệp Anh đặt trụ sở tại thành phố Sunderland ở miền Đông Bắc nước Anh. Sân nhà của câu lạc bộ là sân vận động Ánh sáng từ khi chuyển từ sân Roker Park về sân này vào năm 1997. Sân vận động Ánh Sáng có sức chứa khoảng 49.000 khán giả. Biệt danh của câu lạc bộ là The Black Cats (những con mèo đen). Các đối thủ truyền thống của Sunderland là hai câu lạc bộ Newcastle United và Middlesbrough. Hiện nay, câu lạc bộ đang thi đấu tại giải bóng đá ngoại hạng Anh. Trong lịch sử của mình, Sunderland đã từng giành được chức vô địch quốc gia Anh tổng cộng 6 lần, vào các năm 1892, 1893, 1895, 1902, 1913 và 1936.', '2014-12-20 03:41:49', '2014-12-20 03:41:49'),
(17, 'Swansea City', 'http://www.swanseafc.pl/wp-content/uploads/2011/10/Swansea+City+v+Valencia+CF+UEFA+Europa+League+5mVsTNkO6l7l.jpg', '1912', 'Garry Monk', 'The Swans', 'Liberty Stadium', 'Swansea City Association Football Club (Thành lập năm 1912) là một câu lạc bộ bóng đá chuyên nghiệp có trụ sở tại Swansea, xứ Wales và hiện đang chơi tại giải Premier League, Swansea City là câu lạc bộ xứ Wales chơi tại giải Premier League cùng với Cardiff City. Sân vận động của họ có tên là Liberty (Liberty Stadium). Đây là một trong những câu lạc bộ thành công nhất trong bóng đá của xứ Wales, đã giành được 10 chiếc Cup và dẫn đầu bóng đá Anh League Division đầu tiên trong tháng 12 năm 1981, trước khi kết thúc mùa giải ở vị trí thứ 6. Swansea là một trong những hai câu lạc bộ thuộc đất nước xứ Wales đã thi đấu cho bóng đá Anh.', '2014-12-20 03:43:54', '2014-12-20 03:43:54'),
(18, 'Tottenham Hotspur', 'http://images.rapgenius.com/f212d22854601ca835b6bd09687d4a98.656x369x1.jpg', '1882', 'Mauricio Pochettino', 'Spurs / Lilywhites', 'White Hart Lane', 'Câu lạc bộ bóng đá Tottenham Hotspur (tiếng Anh: Tottenham Hotspur Football Club) là một câu lạc bộ bóng đá ở London, thủ đô Vương quốc Liên hiệp Anh và Bắc Ireland. Câu lạc bộ còn có các tên gọi khác như Spurs, The Spurs, Tottenham hay Lilywhites. Sân nhà của câu lạc bộ là sân vận động White Hart Lane.', '2014-12-20 03:45:32', '2014-12-20 03:45:32'),
(19, 'West Bromwich', 'http://9worldcup.com/wp-content/uploads/2014/08/West-Bromwich-Albion-FC-Team.jpg', '1878', 'Alan Irvine', 'The Baggies', 'The Hawthorns', 'Câu lạc bộ bóng đá West Bromwich Albion thường được gọi tắt là Westbrom hoặc W.B.A, là một câu lạc bộ bóng đá chuyên nghiệp Anh đặt trụ sở tại thành phố West Bromwich ở vùng trung du phía tây nước Anh. Sân nhà của câu lạc bộ là The Hawthorns với sức chứa 26,500 khán giả. Biệt danh của câu lạc bộ là The Baggies. Các đối thủ truyền thống của West Bromwich Albion là 2 câu lạc bộ Aston Villa và Wolverhampton Wanderers.', '2014-12-20 03:47:31', '2014-12-20 03:47:31'),
(20, 'West Ham', 'https://d18gmz9e98r8v5.cloudfront.net/ptr/20140711163832_1162258091_3359_9.jpg', '1895', 'Sam Allardyce', 'The Hammers', 'Boleyn Ground', 'West Ham United là một câu lạc bộ bóng đá chuyên nghiệp Anh đặt trụ sở vùng phía đông thành phố London, thủ đô nước Anh. West Ham United đã 3 lần đoạt cúp FA và 1 lần đoạt cúp các câu lạc bộ đoạt cúp bóng đá quốc gia châu Âuvàcúp C2 châu Âu. Sân nhà của câu lạc bộ là sân vận động Upton Park với sức chứa khoảng 36.000 khán giả. Biệt danh của câu lạc bộ là "The Irons" (?) hoặc "The Hammers" (những cái búa). Các đối thủ truyền thống của West Ham United là các câu lạc bộ cùng thành phố London như Arsenal, Chelsea và Tottenham Hotspur.', '2014-12-20 03:48:56', '2014-12-20 03:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
`id` int(11) NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `club` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appear` int(11) DEFAULT NULL,
  `goal` int(11) DEFAULT NULL,
  `yellow` int(11) DEFAULT NULL,
  `red` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `club_id`, `name`, `avatar`, `number`, `club`, `position`, `birthday`, `age`, `nationality`, `height`, `weight`, `appear`, `goal`, `yellow`, `red`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alexis Sánchez', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405071837_sanchez_profile1415.jpg', 17, NULL, 'Tiền đạo', '19/12/1988', 25, 'Chile', '1.68 m', '62 kg', 15, 9, 2, 0, '2014-12-18 14:37:31', '2014-12-18 14:37:31'),
(2, 1, 'Mikel Arteta', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066643_arteta_profile1415.jpg', 8, NULL, 'Tiền vệ', '26/03/1982', 32, 'Tây Ban Nha', '1.83 m', '64 kg', 275, 41, 41, 4, '2014-12-18 14:40:25', '2014-12-18 14:40:25'),
(3, 1, 'Wojciech Szczesny', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066569_szczesny_profile1415.jpg', 1, NULL, 'Thủ môn', '18/04/1990', 24, 'Ba Lan', '1.96 m', '84 kg', 128, 0, 7, 0, '2014-12-18 14:43:11', '2014-12-18 14:43:11'),
(4, 2, 'Gabriel Agbonlahor', 'http://www.avfc.co.uk/javaImages/72/db/0,,10265~13294450,00.jpg', 11, NULL, 'Tiền đạo', '13/10/1986', 28, 'Anh', '1.78 m', '76 kg', 288, 70, 37, 0, '2014-12-18 16:34:34', '2014-12-18 16:34:34'),
(5, 1, 'Mathieu Debuchy', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405674840_player_profile_debuchy.jpg', 2, NULL, 'Hậu vệ', '28/07/1985', 29, 'Pháp', '1.77 m', '76 kg', 48, 1, 11, 2, '2014-12-18 16:36:45', '2014-12-18 16:36:45'),
(6, 1, 'Kieran Gibbs', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066860_gibbs_profile1415.jpg', 3, NULL, 'Hậu vệ', '26/09/1989', 25, 'Anh', '1.78 m', '70 kg', 101, 1, 11, 1, '2014-12-20 12:59:37', '2014-12-20 12:59:37'),
(7, 1, 'Per Mertesacker', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066761_mertesacker_profile1415.jpg', 4, NULL, 'Hậu vệ', '29/09/1984', 30, 'Đức', '1.98 m', '90 kg', 105, 5, 10, 1, '2014-12-20 13:01:01', '2014-12-20 13:01:01'),
(8, 1, 'Laurent Koscielny', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066746_koscielny_profile1415.jpg', 6, NULL, 'Hậu vệ', '09/10/1985', 29, 'Pháp', '1.86 m', '75 kg', 128, 9, 19, 4, '2014-12-20 13:02:31', '2014-12-20 13:02:31'),
(9, 1, 'Jack Wilshere', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405067013_wilshere_profile1415.jpg', 10, NULL, 'Tiền vệ', '01/01/1992', 22, 'Anh', '1.72 m', '68 kg', 109, 6, 25, 2, '2014-12-20 13:03:53', '2014-12-20 13:03:53'),
(10, 1, 'Mesut Özil', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066885_ozil_profile1415.jpg', 11, NULL, 'Tiền vệ', '15/10/1988', 26, 'Đức', '1.83 m', '76 kg', 32, 6, 0, 0, '2014-12-20 13:05:07', '2014-12-20 13:05:07'),
(11, 1, 'Olivier Giroud', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066703_giroud_profile1415.jpg', 12, NULL, 'Tiền đạo', '30/09/1986', 28, 'Pháp', '1.92 m', '88 kg', 77, 31, 8, 1, '2014-12-20 13:06:18', '2014-12-20 13:06:18'),
(12, 1, 'Danny Welbeck', 'http://www.arsenal.com/assets/_files/scaled/794x500/sep_14/gun__1409735703_player_profile_welbeck.jpg', 23, NULL, 'Tiền đạo', '26/11/1990', 24, 'Anh', '1.85 m', '73 kg', 13, 3, 2, 0, '2014-12-20 13:07:27', '2014-12-20 13:07:27'),
(13, 1, 'Aaron Ramsey', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066915_ramsey_profile1415.jpg', 16, NULL, 'Tiền vệ', '26/12/1990', 23, 'Wales', '1.77 m', '70 kg', 141, 20, 15, 0, '2014-12-20 13:08:40', '2014-12-20 13:08:40'),
(14, 1, 'Theo Walcott', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405067000_walcott_profile1415.jpg', 14, NULL, 'Tiền đạo', '16/03/1989', 25, 'Anh', '1.76 m', '68 kg', 196, 45, 5, 0, '2014-12-20 13:09:55', '2014-12-20 13:09:55'),
(15, 1, 'David Ospina', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1406550914_player_ospina.jpg', 13, NULL, 'Thủ môn', '31/08/1988', 26, 'Colombia', '1.83 m', '80 kg', 0, 0, 0, 0, '2014-12-20 13:11:13', '2014-12-20 13:11:13'),
(16, 1, 'Santiago Cazorla', 'http://www.arsenal.com/assets/_files/scaled/794x500/jul_14/gun__1405066660_cazorla_profile1415.jpg', 19, NULL, 'Tiền vệ', '13/12/1984', 30, 'Tây Ban Nha', '1.68 m', '66 kg', 84, 19, 6, 0, '2014-12-20 13:12:25', '2014-12-20 13:12:25'),
(17, 2, 'Brad Guzan', 'http://www.avfc.co.uk/javaImages/6d/48/0,,10265~13322349,00.jpg', 1, NULL, 'Thủ môn', '09/09/1984', 30, 'Mỹ', '1.93 m', '94 kg', 98, 0, 4, 0, '2014-12-20 13:22:13', '2014-12-20 13:22:13'),
(18, 2, 'Nathan Baker', 'http://www.avfc.co.uk/javaImages/7f/32/0,,10265~13120127,00.jpg', 2, NULL, 'Hậu vệ', '23/04/1991', 23, 'Anh', '1.88 m', '75 kg', 75, 0, 10, 0, '2014-12-20 13:24:45', '2014-12-20 13:24:45'),
(19, 2, 'Ron Vlaar', 'http://www.avfc.co.uk/javaImages/ef/28/0,,10265~13052143,00.jpg', 4, NULL, 'Hậu vệ', '16/02/1985', 29, 'Hà Lan', '1.89 m', '80 kg', 67, 2, 5, 0, '2014-12-20 13:25:46', '2014-12-20 13:25:46'),
(20, 2, 'Jores Okore', 'http://www.avfc.co.uk/javaImages/1d/4c/0,,10265~13126685,00.jpg', 5, NULL, 'Hậu vệ', '08/11/1992', 22, 'Đan Mạch', '1.83 m', '80 kg', 8, 0, 2, 0, '2014-12-20 13:26:54', '2014-12-20 13:26:54'),
(21, 2, 'Ciaran Clark', 'http://www.avfc.co.uk/javaImages/df/5a/0,,10265~13327071,00.jpg', 6, NULL, 'Hậu vệ', '26/09/1989', 25, 'Ireland', '1.88 m', '76 kg', 100, 6, 29, 1, '2014-12-20 13:28:10', '2014-12-20 13:28:10'),
(22, 2, 'Leandro Bacuna', 'http://www.avfc.co.uk/javaImages/df/31/0,,10265~12988895,00.jpg', 7, NULL, 'Hậu vệ', '21/08/1991', 23, 'Hà Lan', '1.87 m', '77 kg', 39, 5, 6, 0, '2014-12-20 13:29:19', '2014-12-20 13:29:19'),
(23, 2, 'Tom Cleverley', 'http://www.avfc.co.uk/javaImages/a8/1a/0,,10265~13114024,00.jpg', 8, NULL, 'Tiền vệ', '08/12/1989', 25, 'Anh', '1.75 m', '67 kg', 93, 6, 10, 0, '2014-12-20 13:30:58', '2014-12-20 13:30:58'),
(24, 2, 'Andreas Weimann', 'http://www.avfc.co.uk/javaImages/cc/e8/0,,10265~13101260,00.jpg', 10, NULL, 'Tiền đạo', '08/05/1991', 23, 'Áo', '1.88 m', '76 kg', 97, 17, 10, 0, '2014-12-20 13:32:15', '2014-12-20 13:32:15'),
(25, 2, 'Christian Benteke', 'http://www.avfc.co.uk/javaImages/21/2a/0,,10265~13314593,00.jpg', 20, NULL, 'Tiền đạo', '12/03/1990', 24, 'Bỉ', '1.9 m', '83 kg', 67, 30, 12, 2, '2014-12-20 13:33:20', '2014-12-20 13:33:20'),
(26, 2, 'Charles N''Zogbia', 'http://www.avfc.co.uk/javaImages/45/40/0,,10265~13058117,00.jpg', 28, NULL, 'Tiền vệ', '28/05/1986', 28, 'Pháp', '1.7 m', '70 kg', 265, 28, 31, 1, '2014-12-20 13:34:31', '2014-12-20 13:34:31'),
(27, 2, 'Ashley Westwood', 'http://www.avfc.co.uk/javaImages/d5/cc/0,,10265~13094101,00.jpg', 15, NULL, 'Tiền vệ', '04/01/1990', 24, 'Anh', '1.75 m', '67 kg', 79, 3, 10, 0, '2014-12-20 13:35:48', '2014-12-20 13:35:48'),
(28, 2, 'Shay Given', 'http://www.avfc.co.uk/javaImages/cb/4b/0,,10265~13126603,00.jpg', 31, NULL, 'Thủ môn', '20/04/1976', 38, 'Ireland', '1.83 m', '84 kg', 440, 1, 16, 0, '2014-12-20 13:36:50', '2014-12-20 13:36:50'),
(29, 2, 'Joe Cole', 'http://www.avfc.co.uk/javaImages/6f/8/0,,10265~13305967,00.jpg', 12, NULL, 'Tiền vệ', '11/08/1981', 33, 'Anh', '1.75 m', '63 kg', 370, 46, 54, 1, '2014-12-20 13:38:00', '2014-12-20 13:38:00'),
(30, 2, 'Kieran Richardson', 'http://www.avfc.co.uk/javaImages/e/db/0,,10265~13032206,00.jpg', 18, NULL, 'Tiền vệ', '21/10/1984', 30, 'Anh', '1.73 m', '71 kg', 246, 24, 54, 2, '2014-12-20 13:39:00', '2014-12-20 13:39:00'),
(31, 3, 'Tom Heaton', 'http://www.burnleyfootballclub.com/cms_images/player/tom-heaton113-1820927_231x264.jpg', 1, NULL, 'Thủ môn', '15/04/1986', 28, 'Anh', '1.88 m', '85', 16, 0, 1, 0, '2014-12-20 13:40:37', '2014-12-20 13:40:37'),
(32, 3, 'Kieran Trippier', 'http://www.burnleyfootballclub.com/cms_images/player/kieran-trippier113-1820890_231x264.jpg', 2, NULL, 'Hậu vệ', '19/09/1990', 24, 'Anh', '1.78 m', '71 kg', 16, 0, 0, 0, '2014-12-20 13:41:31', '2014-12-20 13:41:31'),
(33, 3, 'Daniel Lafferty', 'http://www.burnleyfootballclub.com/cms_images/player/danny-lafferty113-1820872_231x264.jpg', 3, NULL, 'Hậu vệ', '18/05/1989', 25, 'Northern Ireland', '1.8 m', '76 kg', 1, 0, 0, 0, '2014-12-20 13:43:40', '2014-12-20 13:43:40'),
(34, 3, 'Jason Shackell', 'http://www.burnleyfootballclub.com/cms_images/player/jason-shackell113-1820884_231x264.jpg', 5, NULL, 'Hậu vệ', '27/09/1983', 31, 'Anh', '1.93 m', '83 kg', 27, 0, 2, 0, '2014-12-20 13:44:47', '2014-12-20 13:44:47'),
(35, 3, 'Ross Wallace', 'http://www.burnleyfootballclub.com/cms_images/player/ross-wallace113-1820907_231x264.jpg', 7, NULL, 'Tiền vệ', '23/05/1985', 29, 'Scotland', '1.68 m', '63 kg', 27, 3, 3, 0, '2014-12-20 13:45:45', '2014-12-20 13:45:45'),
(36, 3, 'Dean Marney', 'http://www.burnleyfootballclub.com/cms_images/player/dean-marney113-1820974_231x264.jpg', 8, NULL, 'Tiền vệ', '31/01/1984', 30, 'Anh', '1.83 m', '72 kg', 67, 3, 17, 1, '2014-12-20 13:46:44', '2014-12-20 13:46:44'),
(37, 3, 'Michael Kightly', 'http://www.burnleyfootballclub.com/cms_images/player/michael-kightly113-1820904_231x264.jpg', 11, NULL, 'Tiền vệ', '24/01/1986', 28, 'Anh', '1.73 m', '71 kg', 61, 7, 10, 0, '2014-12-20 13:47:47', '2014-12-20 13:47:47'),
(38, 3, 'Matthew Taylor', 'http://www.burnleyfootballclub.com/cms_images/player/matt-taylor113-1820900_231x264.jpg', 15, NULL, 'Tiền vệ', '27/11/1981', 33, 'Anh', '1.78 m', '73 kg', 318, 40, 30, 0, '2014-12-20 13:48:55', '2014-12-20 13:48:55'),
(39, 3, 'Sam Vokes', 'http://www.burnleyfootballclub.com/cms_images/player/sam-vokes113-1820910_231x264.jpg', 9, NULL, 'Tiền đạo', '21/10/1989', 25, 'Wales', '1.86 m', '90 kg', 11, 0, 1, 0, '2014-12-20 13:49:56', '2014-12-20 13:49:56'),
(40, 3, 'Danny Ings', 'http://www.burnleyfootballclub.com/cms_images/player/danny-ings113-1820870_231x264.jpg', 10, NULL, 'Tiền đạo', '16/03/1992', 22, 'Anh', '1.78 m', '73 kg', 13, 4, 3, 0, '2014-12-20 13:50:56', '2014-12-20 13:50:56'),
(41, 3, 'Steven Reid', 'http://www.burnleyfootballclub.com/cms_images/player/steven-reid113-1820923_231x264.jpg', 18, NULL, 'Hậu vệ', '03/10/1981', 33, 'Ireland', '1.8 m', '75 kg', 189, 8, 33, 1, '2014-12-20 13:52:01', '2014-12-20 13:52:01'),
(42, 3, 'David Jones', 'http://www.burnleyfootballclub.com/cms_images/player/david-jones113-1820876_231x264.jpg', 14, NULL, 'Tiền vệ', '11/04/1984', 30, 'Anh', '1.83 m', '80 kg', 89, 3, 10, 0, '2014-12-20 13:53:21', '2014-12-20 13:53:21'),
(43, 3, 'Marvin Sordell', 'http://www.burnleyfootballclub.com/cms_images/player/marvin-sordell113-1820898_231x264.jpg', 17, NULL, 'Tiền đạo', '17/02/1991', 23, 'Anh', '1.78 m', '80 kg', 13, 0, 2, 0, '2014-12-20 13:54:19', '2014-12-20 13:54:19'),
(44, 3, 'Ben Mee', 'http://www.burnleyfootballclub.com/cms_images/player/ben-mee113-1820865_231x264.jpg', 6, NULL, 'Hậu vệ', '21/09/1989', 25, 'Anh', '1.8 m', '74 kg', 11, 0, 1, 0, '2014-12-20 13:55:38', '2014-12-20 13:55:38'),
(45, 3, 'Michael Duff', 'http://www.burnleyfootballclub.com/cms_images/player/michael-duff113-1820902_231x264.jpg', 4, NULL, 'Hậu vệ', '01/11/1978', 36, 'Northern Ireland', '1.85 m', '73 kg', 23, 0, 7, 0, '2014-12-20 13:56:52', '2014-12-20 13:56:52'),
(46, 4, 'Thibaut Courtois', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/thibaut-courtois/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1411133691652.jpg', 13, NULL, 'Thủ môn', '05/11/1992', 22, 'Bỉ', '1.99 m', '91 kg', 15, 0, 1, 0, '2014-12-20 14:01:33', '2014-12-20 14:01:33'),
(47, 4, 'Branislav Ivanovic', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/branislav-ivanovic/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1411128270338.jpg', 2, NULL, 'Hậu vệ', '22/02/1984', 30, 'Serbia', '1.85 m', '91 kg', 193, 18, 42, 2, '2014-12-20 14:02:27', '2014-12-20 14:02:27'),
(48, 4, 'Gary Cahill', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/gary-cahill/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1411131139404.jpg', 24, NULL, 'Hậu vệ', '19/12/1985', 29, 'Anh', '1.93 m', '86 kg', 240, 19, 27, 2, '2014-12-20 14:03:36', '2014-12-20 14:03:36'),
(49, 4, 'John Terry', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/john-terry/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1411131527450.jpg', 26, NULL, 'Hậu vệ', '12/07/1980', 34, 'Anh', '1.87 m', '90 kg', 437, 34, 66, 4, '2014-12-20 14:04:30', '2014-12-20 14:04:30'),
(50, 4, 'César Azpilicueta', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/cesar-azpilicueta/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1411131723039.jpg', 28, NULL, 'Hậu vệ', '28/08/1989', 25, 'Tây Ban Nha', '1.78 m', '75 kg', 69, 0, 5, 1, '2014-12-20 14:05:36', '2014-12-20 14:05:36'),
(51, 4, 'Nemanja Matic', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/nemanja-matic/summary/_jcr_content/tabparmain/box/box/textimage/image.img.jpg/1411130054987.jpg', 21, NULL, 'Tiền vệ', '08/01/1988', 26, 'Serbia', '1.94 m', '84 kg', 34, 1, 8, 0, '2014-12-20 14:06:37', '2014-12-20 14:06:37'),
(52, 4, 'Cesc Fàbregas', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/cesc-fabregas/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1411132609317.jpg', 4, NULL, 'Tiền vệ', '05/04/1987', 27, 'Tây Ban Nha', '1.75 m', '74 kg', 227, 36, 46, 1, '2014-12-20 14:07:34', '2014-12-20 14:07:34'),
(53, 4, 'Eden Hazard', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/eden-hazard/summary/_jcr_content/tabparmain/box/box/textimage/image.img.jpg/1411128985532.jpg', 10, NULL, 'Tiền vệ', '01/07/1991', 23, 'Bỉ', '1.73 m', '74 kg', 85, 29, 5, 0, '2014-12-20 14:08:32', '2014-12-20 14:08:32'),
(54, 4, 'Oscar', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/oscar/summary/_jcr_content/tabparmain/box/box/textimage/image.img.jpg/1411128885878.jpg', 8, NULL, 'Tiền vệ', '09/09/1991', 23, 'Brazil', '1.79 m', '67 kg', 81, 15, 9, 0, '2014-12-20 14:09:57', '2014-12-20 14:16:34'),
(55, 4, 'Willian', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/willian/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1411130264397.jpg', 22, NULL, 'Tiền vệ', '08/09/1988', 26, 'Brazil', '1.75 m', '75 kg', 40, 5, 6, 1, '2014-12-20 14:10:51', '2014-12-20 14:10:51'),
(56, 4, 'Diego Costa', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/diego-costa/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1413379470250.jpg', 19, NULL, 'Tiền đạo', '10/07/88', 26, 'Tây Ban Nha', '1.88 m', '85 kg', 13, 12, 7, 0, '2014-12-20 14:11:58', '2014-12-20 14:11:58'),
(57, 4, 'Petr Cech', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/petr-cech/summary/_jcr_content/tabparmain/box/box/textimage/image.img.jpg/1411128051080.jpg', 1, NULL, 'Thủ môn', '20/05/1982', 32, 'Czech Republic', '1.96 m', '90 kg', 328, 0, 4, 1, '2014-12-20 14:13:04', '2014-12-20 14:13:04'),
(58, 4, 'Filipe Luis', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/filipe-luis/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1417536873782.jpg', 3, NULL, 'Hậu vệ', '08/09/1985', 29, 'Brazil', '1.88 m', '77 kg', 7, 0, 0, 0, '2014-12-20 14:14:04', '2014-12-20 14:14:04'),
(59, 4, 'Ramires', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/ramires/summary/_jcr_content/tabparmain/box/box/textimage/image.img.jpg/1418213565096.jpg', 7, NULL, 'Tiền vệ', '24/03/1987', 27, 'Brazil', '1.8 m', '70 kg', 132, 14, 30, 2, '2014-12-20 14:15:06', '2014-12-20 14:15:06'),
(60, 4, 'Didier Drogba', 'http://www.chelseafc.com/content/cfc/en/homepage/teams/first-team/didier-drogba/summary/_jcr_content/tabparmain/box/box/textimage_0/image.img.jpg/1411646975097.jpg', 11, NULL, 'Tiền đạo', '03/11/78', 36, 'Cote D''Ivoire', '1.89 m', '91 kg', 239, 103, 40, 2, '2014-12-20 14:16:18', '2014-12-20 14:16:18'),
(61, 5, 'Julian Speroni', 'http://www.cpfc.co.uk/cms_images/player/1002-speroni61-1926364_231x264.jpg', 1, NULL, 'Thủ môn', '18/05/1979', 35, 'Argentina', '1.86 m', '87 kg', 59, 0, 1, 0, '2014-12-20 14:18:14', '2014-12-20 14:18:14'),
(62, 5, 'Joel Ward', 'http://www.cpfc.co.uk/cms_images/player/1007-ward61-1926365_231x264.jpg', 2, NULL, 'Hậu vệ', '29/10/1989', 25, 'Anh', '1.8 m', '80 kg', 55, 0, 4, 0, '2014-12-20 14:19:12', '2014-12-20 14:19:12'),
(63, 5, 'Adrian Mariappa', 'http://www.cpfc.co.uk/cms_images/player/1012-mariappa61-1926367_231x264.jpg', 3, NULL, 'Hậu vệ', '10/03/1986', 28, 'Anh', '1.8 m', '70 kg', 78, 2, 15, 0, '2014-12-20 14:20:18', '2014-12-20 14:20:18'),
(64, 5, 'Brede Hangeland', 'http://www.cpfc.co.uk/cms_images/player/1101-hangeland61-1926395_231x264.jpg', 4, NULL, 'Hậu vệ', '20/06/1981', 33, 'Na Uy', '1.95 m', '85 kg', 227, 10, 21, 1, '2014-12-20 14:21:19', '2014-12-20 14:21:19'),
(65, 5, 'Scott Dann', 'http://www.cpfc.co.uk/cms_images/player/1028-dann61-1926373_231x264.jpg', 6, NULL, 'Hậu vệ', '14/02/1987', 27, 'Anh', '1.88 m', '76 kg', 104, 4, 15, 0, '2014-12-20 14:22:27', '2014-12-20 14:22:27'),
(66, 5, 'Yannick Bolasie', 'http://www.cpfc.co.uk/cms_images/player/1094-bolasie61-1926393_231x264.jpg', 7, NULL, 'Tiền vệ', '24/05/1989', 25, 'Pháp', '1.88 m', '84 kg', 45, 1, 3, 1, '2014-12-20 14:23:22', '2014-12-20 14:23:22'),
(67, 5, 'Kevin Doyle', 'http://www.cpfc.co.uk/cms_images/player/1084-doyle61-1926390_231x264.jpg', 9, NULL, 'Tiền đạo', '18/09/1983', 31, 'Ireland', '1.8 m', '79 kg', 164, 37, 11, 0, '2014-12-20 14:24:18', '2014-12-20 14:24:18'),
(68, 5, 'Fraizer Campbell', 'http://www.cpfc.co.uk/cms_images/player/1044-campbell61-1926377_231x264.jpg', 10, NULL, 'Tiền đạo', '13/09/1987', 27, 'Anh', '1.72 m', '82 kg', 120, 16, 16, 0, '2014-12-20 14:25:16', '2014-12-20 14:25:16'),
(69, 5, 'Wilfried Zaha', 'http://www.cpfc.co.uk/cms_images/player/1181-zaha61-1926398_231x264.jpg', 11, NULL, 'Tiền vệ', '11/10/1992', 22, 'Anh', '1.88 m', '66 kg', 23, 1, 1, 0, '2014-12-20 14:26:17', '2014-12-20 14:26:17'),
(70, 5, 'Wayne Hennessey', 'http://www.cpfc.co.uk/cms_images/player/1106-hennessey61-1926396_231x264.jpg', 13, NULL, 'Thủ môn', '24/01/1987', 27, 'Wales', '1.83 m', '73 kg', 73, 0, 1, 0, '2014-12-20 14:27:06', '2014-12-20 14:27:06'),
(71, 5, 'Jerome Thomas', 'http://www.cpfc.co.uk/cms_images/player/1098-thomas61-1926394_231x264.jpg', 14, NULL, 'Tiền vệ', '23/03/1983', 31, 'Anh', '1.78 m', '79 kg', 154, 11, 15, 0, '2014-12-20 14:27:56', '2014-12-20 14:27:56'),
(72, 5, 'Mile Jedinak', 'http://www.cpfc.co.uk/cms_images/player/1038-jedinak61-1933962_231x264.jpg', 15, NULL, 'Tiền vệ', '08/03/1984', 30, 'Australia', '1.89 m', '81 kg', 53, 6, 11, 1, '2014-12-20 14:29:28', '2014-12-20 14:29:28'),
(73, 5, 'Dwight Gayle', 'http://www.cpfc.co.uk/cms_images/player/1054-gayle61-1926378_231x264.jpg', 16, NULL, 'Tiền đạo', '20/10/1990', 24, 'Anh', '1.77 m', '73 kg', 34, 9, 1, 0, '2014-12-20 14:30:33', '2014-12-20 14:30:33'),
(74, 5, 'Andrew Johnson', 'http://www.cpfc.co.uk/cms_images/player/1088-johnson61-1926392_231x264.jpg', 17, NULL, 'Tiền đạo', '02/10/1981', 33, 'Anh', '1.75 m', '64 kg', 187, 51, 15, 1, '2014-12-20 14:31:34', '2014-12-20 14:31:34'),
(75, 5, 'James McArthur', 'http://www.cpfc.co.uk/cms_images/player/1071-mcarthur61-1926387_231x264.jpg', 18, NULL, 'Tiền vệ', '10/07/1987', 27, 'Scotland', '1.68 m', '64 kg', 90, 7, 12, 0, '2014-12-20 14:32:25', '2014-12-20 14:32:25'),
(76, 6, 'Joel Robles', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/73756830674e4f2eb8b5dad5162632a7.jpg?as=1&h=549&la=en&w=750', 1, NULL, 'Thủ môn', '17/06/1990', 24, 'Tây Ban Nha', '1.95 m', '90 kg', 11, 0, 0, 0, '2014-12-20 14:34:39', '2014-12-20 14:34:39'),
(77, 6, 'Tony Hibbert', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/df121efe9ab64347898dc7f3dcbcb35c.jpg?as=1&h=450&la=en&w=750', 2, NULL, 'Hậu vệ', '20/02/1981', 33, 'Anh', '1.75 m', '71 kg', 264, 0, 37, 2, '2014-12-20 14:35:54', '2014-12-20 14:35:54'),
(78, 6, 'Leighton Baines', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/4bdb8b1c78c440fd8288d6de18b23ad8.jpg?as=1&h=450&la=en&w=750', 3, NULL, 'Hậu vệ', '12/11/84', 30, 'Anh', '1.7 m', '74 kg', 318, 26, 38, 0, '2014-12-20 14:37:21', '2014-12-20 14:37:21'),
(79, 6, 'Darron Gibson', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/e6d17d9da9344193b19b31c38bc7764a.jpg?as=1&h=450&la=en&w=750', 4, NULL, 'Hậu vệ', '25/10/1987', 27, 'Northern Ireland', '1.83 m', '90 kg', 69, 5, 13, 1, '2014-12-20 14:38:43', '2014-12-20 14:38:43'),
(80, 6, 'Samuel Eto''o', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/a2246b2aded34250b758db411c80dfc7.jpg?as=1&h=450&la=en&w=750', 5, NULL, 'Tiền đạo', '03/10/1981', 33, 'Cameroon', '1.79 m', '75 kg', 32, 12, 2, 0, '2014-12-20 14:41:12', '2014-12-20 14:41:12'),
(81, 6, 'Phil Jagielka', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/7529fa2ed1344dc5b48a9993cf03082d.jpg?as=1&h=450&la=en&w=750', 6, NULL, 'Hậu vệ', '17/08/1982', 32, 'Anh', '1.83 m', '83 kg', 259, 12, 16, 0, '2014-12-20 14:42:23', '2014-12-20 14:42:23'),
(82, 6, 'Aiden McGeady', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/0ac8892f222e45d2b214f488da598c50.jpg?as=1&h=450&la=en&w=750', 7, NULL, 'Tiền vệ', '04/04/1986', 28, 'Ireland', '1.78 m', '83 kg', 27, 1, 1, 0, '2014-12-20 14:43:54', '2014-12-20 14:43:54'),
(83, 6, 'Bryan Oviedo', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/dcab5dc80b474f32afc4fce6564863e9.jpg?as=1&h=528&la=en&w=750', 8, NULL, 'Hậu vệ', '18/02/1990', 24, 'Costa Rica', '1.72 m', '69 kg', 25, 2, 2, 0, '2014-12-20 14:44:50', '2014-12-20 14:44:50'),
(84, 6, 'Arouna Koné', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/098facc8a04c48dabefde4a47dc4f226.jpg?as=1&h=450&la=en&w=750', 9, NULL, 'Tiền đạo', '11/11/1983', 31, 'Cote D''Ivoire', '1.82 m', '78 kg', 40, 11, 0, 0, '2014-12-20 14:45:54', '2014-12-20 14:45:54'),
(85, 6, 'Kevin Mirallas', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/22e03198d18f4dd9a5f5f809e7c0e14a.jpg?as=1&h=422&la=en&w=750', 11, NULL, 'Tiền vệ', '10/05/1987', 27, 'Bỉ', '1.79 m', '68 kg', 70, 18, 11, 0, '2014-12-20 14:46:49', '2014-12-20 14:46:49'),
(86, 6, 'Steven Naismith', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/c9da4ebbbbfa429d85f77a087fa05551.jpg?as=1&h=450&la=en&w=750', 12, NULL, 'Tiền đạo', '14/09/1986', 28, 'Scotland', '1.78 m', '72 kg', 75, 13, 5, 0, '2014-12-20 14:47:42', '2014-12-20 14:47:42'),
(87, 6, 'Sylvain Distin', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/950387f3b9e2484dbc79c8f78aa86cf3.jpg?as=1&h=450&la=en&w=750', 15, NULL, 'Hậu vệ', '16/12/1977', 37, 'Pháp', '1.93 m', '87 kg', 454, 7, 40, 1, '2014-12-20 14:48:37', '2014-12-20 14:48:37'),
(88, 6, 'James McCarthy', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/8f64caa2c5464413bba7a514c7da9db5.jpg?as=1&h=422&la=en&w=750', 16, NULL, 'Tiền vệ', '11/12/1990', 24, 'Ireland', '1.8 m', '72 kg', 160, 8, 27, 0, '2014-12-20 14:49:46', '2014-12-20 14:49:46'),
(89, 6, 'Gareth Barry', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/c48c232780db43e3850827b103311f49.jpg?as=1&h=450&la=en&w=750', 18, NULL, 'Tiền vệ', '23/02/1981', 33, 'Anh', '1.83 m', '78 kg', 543, 50, 100, 4, '2014-12-20 14:50:49', '2014-12-20 14:50:49'),
(90, 6, 'Leon Osman', 'http://d2qsy1h1438jt3.cloudfront.net/~/media/e064dfbaabd44d9eb092584040e0d6c2.jpg?as=1&h=450&la=en&w=750', 21, NULL, 'Tiền vệ', '17/05/1981', 33, 'Anh', '1.73 m', '67 kg', 333, 43, 36, 0, '2014-12-20 14:51:42', '2014-12-20 14:51:42'),
(91, 7, ' Allan McGregor', 'http://e1.365dm.com/13/09/800x600/allan-mcgregor-hull-city-tigers-chelsea-premier-league_3001513.jpg?20130911093437', 1, NULL, 'Thủ môn', '31/01/1982', 32, 'Scotland', '1.83 m', '74 kg', 37, 0, 0, 2, '2014-12-21 05:10:24', '2014-12-21 05:10:24'),
(92, 7, 'Liam Rosenior', 'http://e1.365dm.com/13/09/800x600/liam-rosenior-hull-city-tigers_3001518.jpg?20130911095003', 2, NULL, 'Hậu vệ', '07/09/1984', 30, 'Anh', '1.78 m', '72 kg', 133, 1, 17, 1, '2014-12-21 05:11:35', '2014-12-21 05:11:35'),
(93, 7, ' Alex Bruce', 'http://e2.365dm.com/13/09/800x600/alex-bruce-hull-city-tigers_3001521.jpg?20130911100556', 4, NULL, 'Hậu vệ', '28/09/1984', 30, 'Northern Ireland', '1.8 m', '73 kg', 31, 0, 4, 0, '2014-12-21 05:12:35', '2014-12-21 05:12:35'),
(94, 7, 'James Chester', 'http://e0.365dm.com/13/09/800x600/james-chester-hull-city-tigers_3001523.jpg?20130911101401', 5, NULL, 'Hậu vệ', '23/01/1989', 25, 'Anh', '1.8 m', '70 kg', 35, 2, 4, 1, '2014-12-21 05:13:30', '2014-12-21 05:13:30'),
(95, 7, 'Curtis Davies', 'http://e2.365dm.com/13/09/800x600/curtis-davies-hull-city-tigers-chelsea-premier-league_3001528.jpg?20130911101913', 6, NULL, 'Hậu vệ', '15/03/1985', 29, 'Anh', '1.88 m', '76 kg', 139, 7, 12, 0, '2014-12-21 05:14:33', '2014-12-21 05:14:33'),
(96, 7, 'David Meyler', 'http://e1.365dm.com/13/09/800x600/david-meyler-hull-city-chelsea-premier-league_3001550.jpg?20130911110223', 7, NULL, 'Tiền vệ', '29/05/1989', 25, 'Ireland', '1.88 m', '79 kg', 64, 2, 16, 1, '2014-12-21 05:15:41', '2014-12-21 05:15:41'),
(97, 7, 'Tom Huddlestone', 'http://e1.365dm.com/13/09/800x600/jake-livermore-hull-manchester-city-premier-league_3001559.jpg?20130911112231', 8, NULL, 'Tiền vệ', '28/12/1986', 28, 'Anh', '1.8 m', '80 kg', 195, 11, 33, 3, '2014-12-21 05:16:45', '2014-12-21 05:16:45'),
(98, 7, 'Abel Hernández', 'http://e2.365dm.com/14/10/800x600/HernandezHull_3212115.jpg?20141003170743', 9, NULL, 'Tiền đạo', '08/08/1990', 24, 'Uruguay', '1.85 m', '70 kg', 9, 3, 1, 0, '2014-12-21 05:17:46', '2014-12-21 05:17:46'),
(99, 7, 'Robert Snodgrass', 'http://e1.365dm.com/14/07/800x600/Snodgrass_3176368.jpg?20140721212632', 10, NULL, 'Tiền vệ', '09/07/1987', 27, 'Scotland', '1.82 m', '82 kg', 68, 12, 14, 0, '2014-12-21 05:18:48', '2014-12-21 05:18:48'),
(100, 7, 'Robbie Brady', 'http://e0.365dm.com/13/09/800x600/robbie-brady-hull-city-chelsea-premier-league_3001558.jpg?20130911111713', 11, NULL, 'Tiền vệ', '14/01/1992', 22, 'Ireland', '1.76 m', '71 kg', 27, 3, 3, 0, '2014-12-21 05:19:46', '2014-12-21 05:19:46'),
(101, 7, 'Jake Livermore', 'http://e1.365dm.com/13/09/800x600/jake-livermore-hull-manchester-city-premier-league_3001559.jpg?20130911112231', 14, NULL, 'Tiền vệ', '14/11/1989', 25, 'Anh', '1.8 m', '76 kg', 88, 8, 14, 0, '2014-12-21 05:20:45', '2014-12-21 05:20:45'),
(102, 7, 'Paul McShane', 'http://e2.365dm.com/13/09/800x600/paul-mcshane-hull-city_3001530.jpg?20130911102241', 15, NULL, 'Hậu vệ', '01/06/1986', 28, 'Ireland', '1.83 m', '72 kg', 83, 1, 10, 1, '2014-12-21 05:21:48', '2014-12-21 05:21:48'),
(103, 7, 'Eldin Jakupovic', 'http://e2.365dm.com/13/09/800x600/eldin-jakupovic-hull-city-tiger-tigers-winterton-rangers_3001515.jpg?20130911094113', 16, NULL, 'Thủ môn', '10/02/1984', 30, 'Bosnia And Herzegovina', '1.88 m', '78 kg', 4, 0, 0, 0, '2014-12-21 05:23:00', '2014-12-21 05:23:00'),
(104, 7, 'Mohamed Diamé', 'http://e0.365dm.com/14/10/800x600/MoDiame_3212116.jpg?20141003170913', 17, NULL, 'Tiền vệ', '14/06/1987', 27, 'Pháp', '1.84 m', '80 kg', 177, 16, 24, 0, '2014-12-21 05:24:06', '2014-12-21 05:24:06'),
(105, 7, 'Nikica Jelavic', 'http://e0.365dm.com/14/07/800x600/Jelavic_3170796.jpg?20140710123444', 18, NULL, 'Tiền đạo', '27/08/1985', 29, 'Croatia', '1.87 m', '84 kg', 87, 24, 10, 0, '2014-12-21 05:25:29', '2014-12-21 05:25:29'),
(106, 8, 'Kasper Schmeichel', 'http://e0.365dm.com/12/01/800x600/Kasper-Schmeichel-Leicester-City-1024_2700571.jpg?20140715142518', 1, NULL, 'Thủ môn', '11/05/1986', 28, 'Đan Mạch', '1.89 m', '84 kg', 22, 0, 0, 0, '2014-12-21 06:24:59', '2014-12-21 06:24:59'),
(107, 8, 'Ritchie de Laet', 'http://e1.365dm.com/12/09/800x600/Richie-De-Laet-Leicester_2822590.jpg?20140715142941', 2, NULL, 'Hậu vệ', '28/11/1988', 26, 'Bỉ', '1.86 m', '77 kg', 23, 1, 4, 0, '2014-12-21 06:26:03', '2014-12-21 06:26:03'),
(108, 8, 'Paul Konchesky', 'http://e1.365dm.com/12/03/800x600/konchesky_2734539.jpg?20140715143043', 3, NULL, 'Hậu vệ', '15/05/1981', 33, 'Anh', '1.78 m', '69 kg', 336, 8, 46, 5, '2014-12-21 06:27:16', '2014-12-21 06:27:16'),
(109, 8, ' Daniel Drinkwater', 'http://e1.365dm.com/12/04/800x600/Drinkwater_2747466.jpg?20140716162006', 4, NULL, 'Tiền vệ', '03/05/1990', 24, 'Anh', '1.75 m', '74 kg', 11, 0, 0, 0, '2014-12-21 06:28:26', '2014-12-21 06:28:26'),
(110, 8, 'Matthew Upson', 'http://e1.365dm.com/14/04/800x600/MatthewUpsonbrighton_3131021.jpg?20141219132108', 6, NULL, 'Hậu vệ', '18/04/1979', 35, 'Anh', '1.85 m', '72 kg', 284, 9, 25, 1, '2014-12-21 06:29:51', '2014-12-21 06:29:51'),
(111, 8, 'Dean Hammond', 'http://e1.365dm.com/14/04/800x600/football-club-soccer-league-cup-football-league-cup-soccer-tournament-dean-hammond_3112431.jpg?20140716162127', 7, NULL, 'Tiền vệ', '03/07/1983', 31, 'Anh', '1.83 m', '74 kg', 8, 0, 2, 0, '2014-12-21 06:30:59', '2014-12-21 06:30:59'),
(112, 8, 'Matthew James', 'http://e2.365dm.com/14/01/800x600/league-tournament-james-leicester_3069996.jpg?20140716162529', 8, NULL, 'Tiền vệ', '22/07/1991', 23, 'Anh', '1.83 m', '76 kg', 11, 0, 0, 0, '2014-12-21 06:32:01', '2014-12-21 06:32:01'),
(113, 8, 'Jamie Vardy', 'http://e2.365dm.com/13/11/800x600/Leicester-v-Millwall-Jamie-Vardy_3044228.jpg?20140721225432', 9, NULL, 'Tiền đạo', '01/11/1987', 27, 'Anh', '1.78 m', '76 kg', 14, 1, 3, 0, '2014-12-21 06:33:00', '2014-12-21 06:33:00'),
(114, 8, 'Andy King', 'http://e2.365dm.com/11/12/800x600/king_2696424.jpg?20140716162609', 10, NULL, 'Tiền vệ', '29/10/1988', 26, 'Anh', '1.83 m', '75 kg', 10, 0, 0, 0, '2014-12-21 06:33:51', '2014-12-21 06:33:51'),
(115, 8, 'Marc Albrighton', 'http://e1.365dm.com/14/08/800x600/Albrighton_3190935.jpg?20140815123607', 11, NULL, 'Tiền vệ', '18/11/1989', 25, 'Anh', '1.75 m', '67 kg', 92, 7, 12, 0, '2014-12-21 06:34:41', '2014-12-21 06:34:41'),
(116, 8, ' Ben Hamer', 'http://e0.365dm.com/14/08/800x600/BenHamer_3190937.jpg?20140815123707', 12, NULL, 'Thủ môn', '20/11/1987', 27, 'Anh', '1.8 m', '78 kg', 2, 0, 0, 0, '2014-12-21 06:35:54', '2014-12-21 06:35:54'),
(117, 8, 'Jeffrey Schlupp', 'http://e2.365dm.com/13/01/800x600/Schlupp_2889168.jpg?20140715143224', 15, NULL, 'Hậu vệ', '23/12/1992', 21, 'Đức', '1.78 m', '74 kg', 103, 0, 17, 0, '2014-12-21 06:37:05', '2014-12-21 06:38:33'),
(118, 8, 'Danny Simpson', 'http://e1.365dm.com/14/01/800x600/Danny-Simpson_3073388.jpg?20140725153228', 17, NULL, 'Hậu vệ', '01/04/1987', 27, 'Anh', '1.78 m', '74 kg', 103, 0, 17, 0, '2014-12-21 06:38:12', '2014-12-21 06:38:12'),
(119, 8, 'Esteban Cambiasso', 'http://e2.365dm.com/08/11/800x600/EstebanCambiasso_1502280.jpg?20081119152547', 19, NULL, 'Tiền vệ', '18/08/1980', 34, 'Argentina', '1.77 m', '78 kg', 12, 2, 1, 0, '2014-12-21 06:39:24', '2014-12-21 06:39:24'),
(120, 8, 'Zoumana Bakayogo', 'http://e2.365dm.com/14/07/800x600/Bakayogo_3173000.jpg?20140715153858', 21, NULL, 'Hậu vệ', '17/08/1986', 28, 'Pháp', '1.75 m', '69 kg', 0, 0, 0, 0, '2014-12-21 06:40:18', '2014-12-21 06:40:18'),
(121, 9, ' Bradley Jones', 'http://assets3.lfcimages.com/uploads/players/3986__3555__1._jones.jpg', 1, NULL, 'Thủ môn', '19/03/1982', 32, 'Australia', '1.91 m', '76 kg', 43, 0, 1, 0, '2014-12-21 06:41:33', '2014-12-21 06:41:33'),
(122, 9, 'Glen Johnson', 'http://assets.lfcimages.com/uploads/players/3485__6146__2._johnson.jpg', 2, NULL, 'Hậu vệ', '23/08/1984', 30, 'Anh', '1.78 m', '70 kg', 293, 15, 43, 1, '2014-12-21 06:42:19', '2014-12-21 06:42:19'),
(123, 9, 'José Enrique', 'http://assets2.lfcimages.com/uploads/players/5241__0232__3._enrique.jpg', 3, NULL, 'Hậu vệ', '23/01/1986', 28, 'Tây Ban Nha', '1.84 m', '76 kg', 160, 2, 10, 0, '2014-12-21 06:43:11', '2014-12-21 06:43:11'),
(124, 9, 'Kolo Touré', 'http://assets.lfcimages.com/uploads/players/1386__9349__4._toure.jpg', 4, NULL, 'Hậu vệ', '19/03/1981', 33, 'Cote D''Ivoire', '1.83 m', '74 kg', 332, 11, 30, 1, '2014-12-21 06:44:08', '2014-12-21 06:44:08'),
(125, 9, ' Dejan Lovren', 'http://assets.lfcimages.com/uploads/players/2750__2588__6._lovren.jpg', 6, NULL, 'Hậu vệ', '07/05/1989', 25, 'Croatia', '1.88 m', '84 kg', 46, 2, 8, 0, '2014-12-21 06:45:07', '2014-12-21 06:45:07'),
(126, 9, 'Steven Gerrard', 'http://assets2.lfcimages.com/uploads/players/5517__9496__8._gerrard.jpg', 8, NULL, 'Tiền vệ', '30/05/1980', 34, 'Anh', '1.85 m', '82 kg', 491, 114, 58, 5, '2014-12-21 06:46:28', '2014-12-21 06:46:28'),
(127, 9, 'Rickie Lambert', 'http://assets2.lfcimages.com/uploads/players/5076__9063__9._lambert.jpg', 9, NULL, 'Tiền đạo', '16/02/1982', 32, 'Anh', '1.88 m', '77 kg', 88, 29, 4, 0, '2014-12-21 06:47:25', '2014-12-21 06:47:25'),
(128, 9, ' Philippe Coutinho', 'http://assets1.lfcimages.com/uploads/players/7148__8702__10._coutinho.jpg', 10, NULL, 'Tiền vệ', '06/12/1992', 22, 'Brazil', '1.71 m', '71 kg', 59, 9, 2, 0, '2014-12-21 06:48:50', '2014-12-21 06:48:50'),
(129, 9, 'Jordan Henderson', 'http://assets3.lfcimages.com/uploads/players/5282__9448__14._henderson.jpg', 14, NULL, 'Tiền vệ', '17/06/1990', 24, 'Anh', '1.82 m', '67 kg', 188, 17, 17, 1, '2014-12-21 06:49:55', '2014-12-21 06:49:55'),
(130, 9, 'Daniel Sturridge', 'http://assets3.lfcimages.com/uploads/players/1404__3717__15._sturridge.jpg', 15, NULL, 'Tiền đạo', '09/01/1989', 25, 'Anh', '1.88 m', '76 kg', 142, 58, 7, 1, '2014-12-21 06:50:54', '2014-12-21 06:50:54'),
(131, 9, 'Mamadou Sakho', 'http://assets2.lfcimages.com/uploads/players/7468__1363__17._sakho.jpg', 17, NULL, 'Hậu vệ', '13/02/1990', 24, 'Pháp', '1.87 m', '83 kg', 21, 1, 1, 1, '2014-12-21 06:51:43', '2014-12-21 06:51:43'),
(132, 9, 'Alberto Moreno', 'http://assets3.lfcimages.com/uploads/players/5928__8293__alberto_green.jpg', 18, NULL, 'Hậu vệ', '07/05/1992', 22, 'Tây Ban Nha', '1.7 m', '65 kg', 12, 1, 3, 0, '2014-12-21 06:52:34', '2014-12-21 06:52:34'),
(133, 9, 'Adam Lallana', 'http://assets2.lfcimages.com/uploads/players/2215__5724__adam_lallana_green.jpg', 20, NULL, 'Tiền vệ', '05/10/1988', 26, 'Anh', '1.73 m', '73 kg', 78, 14, 7, 0, '2014-12-21 06:53:27', '2014-12-21 06:53:27'),
(134, 9, 'Lucas Leiva', 'http://assets1.lfcimages.com/uploads/players/4062__6627__21._lucas.jpg', 21, NULL, 'Tiền vệ', '01/09/1987', 27, 'Brazil', '1.79 m', '74 kg', 182, 1, 36, 1, '2014-12-21 06:54:22', '2014-12-21 06:54:22'),
(135, 9, 'Simon Mignolet', 'http://assets.lfcimages.com/uploads/players/4025__6748__22._mignolet.jpg', 22, NULL, 'Thủ môn', '03/06/1988', 26, 'Bỉ', '1.93 m', '87 kg', 143, 0, 2, 0, '2014-12-21 06:55:16', '2014-12-21 06:55:16'),
(136, 10, 'Joe Hart', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/joe_hart.ashx?h=537&mh=540&mw=960&w=958', 1, NULL, 'Thủ môn', '19/04/1987', 27, 'Anh', '1.96 m', '91 kg', 246, 0, 7, 0, '2014-12-21 06:56:26', '2014-12-21 06:56:26'),
(137, 10, 'Bacary Sagna', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Players1314/First%20team/sagna%20profile.ashx?h=537&mh=540&mw=960&w=958', 3, NULL, 'Hậu vệ', '14/02/1983', 31, 'Pháp', '1.76 m', '72 kg', 218, 4, 23, 1, '2014-12-21 06:57:24', '2014-12-21 06:57:24'),
(138, 10, ' Vincent Kompany', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/vincent_kompany.ashx?h=537&mh=540&mw=960&w=958', 4, NULL, 'Hậu vệ', '04/10/1986', 28, 'Bỉ', '1.9 m', '85 kg', 194, 11, 34, 3, '2014-12-21 06:58:22', '2014-12-21 06:58:22'),
(139, 10, ' Pablo Zabaleta', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/pablo_zabaleta.ashx?h=537&mh=540&mw=960&w=958', 5, NULL, 'Hậu vệ', '16/01/1985', 29, 'Argentina', '1.74 m', '74 kg', 179, 8, 46, 8, '2014-12-21 06:59:15', '2014-12-21 06:59:15'),
(140, 10, 'Fernando', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/Fernandofinal.ashx?h=539&mh=540&mw=960&w=958', 6, NULL, 'Tiền vệ', '25/07/1987', 27, 'Brazil', '1.83 m', '76 kg', 11, 0, 3, 0, '2014-12-21 07:00:03', '2014-12-21 07:00:03'),
(141, 10, 'James Milner', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/james_milner.ashx?h=537&mh=540&mw=960&w=958', 7, NULL, 'Tiền vệ', '26/06/1987', 27, 'Anh', '1.75 m', '75 kg', 189, 32, 20, 1, '2014-12-21 07:01:02', '2014-12-21 07:01:02'),
(142, 10, 'Samir Nasri', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/samir_nasri.ashx?h=537&mh=540&mw=960&w=958', 8, NULL, 'Tiền vệ', '01/04/1986', 28, 'Pháp', '1.75 m', '70 kg', 371, 31, 33, 1, '2014-12-21 07:01:55', '2014-12-21 07:01:55'),
(143, 10, 'Edin Dzeko', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/edin_dzeko.ashx?h=537&mh=540&mw=960&w=958', 10, NULL, 'Tiền đạo', '17/03/1986', 28, 'Bosnia And Herzegovina', '1.93 m', '84 kg', 119, 48, 9, 0, '2014-12-21 07:02:48', '2014-12-21 07:02:48'),
(144, 10, 'Aleksandar Kolarov', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/aleksandar_kolarov.ashx?h=537&mh=540&mw=960&w=958', 11, NULL, 'Tiền vệ', '11/10/1985', 29, 'Serbia', '1.87 m', '83 kg', 91, 5, 15, 1, '2014-12-21 07:03:43', '2014-12-21 07:03:43'),
(145, 10, 'Scott Sinclair', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/Sinclair.ashx?h=540&mh=540&mw=960&w=960', 12, NULL, 'Tiền vệ', '25/03/1989', 25, 'Anh', '1.75 m', '64 kg', 81, 10, 1, 0, '2014-12-21 07:04:38', '2014-12-21 07:04:38'),
(146, 10, 'Sergio Agüero', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/sergio_aguero.ashx?h=537&mh=540&mw=960&w=958', 16, NULL, 'Tiền đạo', '06/02/1988', 26, 'Argentina', '1.73 m', '70 kg', 102, 66, 10, 0, '2014-12-21 07:05:30', '2014-12-21 07:05:30'),
(147, 10, 'Frank Lampard', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Players%201415/First%20team/FL.ashx?h=540&mh=540&mw=960&w=958', 18, NULL, 'Tiền vệ', '20/06/1978', 36, 'Anh', '1.84 m', '89 kg', 588, 175, 59, 3, '2014-12-21 07:06:32', '2014-12-21 07:06:32'),
(148, 10, 'David Silva', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/david_silva.ashx?h=537&mh=540&mw=960&w=958', 21, NULL, 'Tiền vệ', '01/08/1986', 28, 'Tây Ban Nha', '1.7 m', '67 kg', 140, 23, 11, 0, '2014-12-21 07:07:50', '2014-12-21 07:07:50'),
(149, 10, 'Yaya Touré', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/yaya_toure.ashx?h=537&mh=540&mw=960&w=958', 41, NULL, 'Tiền vệ', '13/05/1983', 31, 'Cote D''Ivoire', '1.89 m', '90 kg', 149, 45, 25, 0, '2014-12-21 07:08:53', '2014-12-21 07:08:53'),
(150, 10, 'Stevan Jovetic', 'http://content.mcfc.co.uk/~/media/Images/Shared/Players/Season%201314/steven_jovetic.ashx?h=537&mh=540&mw=960&w=958', 35, NULL, 'Tiền đạo', '11/02/1989', 25, 'Montenegro', '1.83 m', '79 kg', 22, 7, 1, 0, '2014-12-21 07:09:53', '2014-12-21 07:09:53'),
(151, 11, ' David de Gea', 'http://www.manutd.com/sitecore/shell/~/media/9FF7A45223844F1DA57D44FA101DEC63.ashx?w=240&h=311&rgn=0,164,1763,2450', 1, NULL, 'Thủ môn', '11/07/1990', 24, 'Tây Ban Nha', '1.92 m', '76 kg', 110, 0, 1, 0, '2014-12-21 07:11:09', '2014-12-21 07:11:09'),
(152, 11, 'Rafael', 'http://www.manutd.com/sitecore/shell/~/media/A0F933A9A6C645FDAF0116E10FDA8A07.ashx?w=240&h=311&rgn=0,229,1763,2514', 2, NULL, 'Hậu vệ', '07/09/1990', 24, 'Brazil', '1.73 m', '80 kg', 105, 5, 21, 2, '2014-12-21 07:12:05', '2014-12-21 07:12:05'),
(153, 11, 'Phil Jones', 'http://www.manutd.com/sitecore/shell/~/media/9875EAF7B4C34DD79C976F9CAD5966AF.ashx?w=240&h=311&rgn=0,235,1763,2520', 4, NULL, 'Hậu vệ', '21/02/1992', 22, 'Anh', '1.85 m', '72 kg', 112, 2, 20, 0, '2014-12-21 07:12:50', '2014-12-21 07:12:50'),
(154, 11, 'Marcos Rojo', 'http://www.manutd.com/sitecore/shell/~/media/32A073749523480FB0A70BBDDEA3CB6E.ashx?w=240&h=311&rgn=0,276,1763,2561', 5, NULL, 'Hậu vệ', '20/03/1990', 24, 'Argentina', '1.87 m', '80 kg', 10, 0, 2, 0, '2014-12-21 07:13:39', '2014-12-21 07:13:39'),
(155, 11, 'Jonny Evans', 'http://www.manutd.com/sitecore/shell/~/media/E486767CC7C4496EA81505967DF06BEE.ashx?w=240&h=311&rgn=0,211,1763,2497', 6, NULL, 'Hậu vệ', '01/03/1988', 26, 'Northern Ireland', '1.88 m', '77 kg', 137, 4, 15, 2, '2014-12-21 07:14:35', '2014-12-21 07:14:35'),
(156, 11, ' Ángel Di María', 'http://www.manutd.com/sitecore/shell/~/media/BCCEAA90CD994E6D8E4576B3CFCE1C3E.ashx?w=240&h=311&rgn=0,311,1763,2596', 7, NULL, 'Tiền vệ', '14/02/1988', 26, 'Argentina', '1.8 m', '70 kg', 11, 3, 0, 0, '2014-12-21 07:15:44', '2014-12-21 07:15:44'),
(157, 11, ' Juan Mata', 'http://www.manutd.com/sitecore/shell/~/media/53493624DF394E5884CB9901D4621D17.ashx?w=240&h=311&rgn=0,182,1763,2467', 8, NULL, 'Tiền vệ', '28/04/1988', 26, 'Tây Ban Nha', '1.7 m', '63 kg', 110, 29, 5, 0, '2014-12-21 07:16:30', '2014-12-21 07:16:30'),
(158, 11, 'Falcao', 'http://www.manutd.com/sitecore/shell/~/media/17783F1F580C40889D9BA3CC85DE1C0E.ashx?w=240&h=311&rgn=0,264,1763,2549', 9, NULL, 'Tiền đạo', '02/10/1986', 28, 'Colombia', '1.77 m', '72 kg', 8, 1, 0, 0, '2014-12-21 07:17:26', '2014-12-21 07:17:26'),
(159, 11, 'Wayne Rooney', 'http://www.manutd.com/sitecore/shell/~/media/B249EF0E9A774D349936BBA4C0BB7AEF.ashx?w=240&h=311&rgn=0,105,1763,2391', 10, NULL, 'Tiền đạo', '24/10/1985', 29, 'Anh', '1.78 m', '78 kg', 386, 179, 83, 3, '2014-12-21 07:18:38', '2014-12-21 07:18:38'),
(160, 11, 'Chris Smalling', 'http://www.manutd.com/sitecore/shell/~/media/D0B547E7328748C7BF3D5C9F86AA709F.ashx?w=240&h=311&rgn=0,0,1763,2285', 12, NULL, 'Hậu vệ', '22/11/1989', 25, 'Anh', '1.94 m', '90 kg', 97, 3, 5, 1, '2014-12-21 07:19:28', '2014-12-21 07:19:28'),
(161, 11, ' Anders Lindegaard', 'http://www.manutd.com/sitecore/shell/~/media/28C39BDF181A40D2A544F63059B7AAD7.ashx?w=240&h=311&rgn=0,229,1763,2514', 13, NULL, 'Thủ môn', '13/04/1984', 30, 'Đan Mạch', '1.93 m', '80 kg', 19, 0, 0, 0, '2014-12-21 07:20:26', '2014-12-21 07:20:26'),
(162, 11, 'Michael Carrick', 'http://www.manutd.com/sitecore/shell/~/media/C2A43E654FB14AA5A68A4D3357ABAFEA.ashx?w=240&h=311&rgn=0,276,1763,2561', 16, NULL, 'Tiền vệ', '28/07/1981', 33, 'Anh', '1.88 m', '74 kg', 417, 23, 33, 0, '2014-12-21 07:21:09', '2014-12-21 07:21:09'),
(163, 11, 'Daley Blind', 'http://www.manutd.com/sitecore/shell/~/media/A14B37603A6F49E9B9F7341DEB7E2F55.ashx?w=240&h=311&rgn=0,158,1763,2444', 17, NULL, 'Tiền vệ', '03/09/1990', 24, 'Hà Lan', '1.8 m', '72 kg', 8, 1, 3, 0, '2014-12-21 07:22:00', '2014-12-21 07:22:00'),
(164, 11, 'Ander Herrera', 'http://www.manutd.com/sitecore/shell/~/media/B11AA4859A2B4BAA9AC32E8ABFBFD6A1.ashx?w=240&h=311&rgn=0,176,1763,2461', 21, NULL, 'Tiền vệ', '14/08/1989', 25, 'Tây Ban Nha', '1.82 m', '70 kg', 9, 2, 2, 0, '2014-12-21 07:22:46', '2014-12-21 07:22:46'),
(165, 11, 'Robin van Persie', 'http://www.manutd.com/sitecore/shell/~/media/E98C18B6EA3A46548BD52EFE815515F1.ashx?w=240&h=311&rgn=0,188,1763,2473', 20, NULL, 'Tiền đạo', '08/06/1983', 31, 'Hà Lan', '1.83 m', '71 kg', 268, 141, 45, 2, '2014-12-21 07:23:38', '2014-12-21 07:23:38'),
(166, 12, 'Tim Krul', 'http://www.nufc.co.uk/javaImages/a7/e8/0,,10278~13035687,00.jpg', 1, NULL, 'Thủ môn', '04/03/1988', 26, 'Hà Lan', '1.88 m', '74 kg', 131, 0, 5, 0, '2014-12-21 07:29:13', '2014-12-21 07:29:13'),
(167, 12, 'Fabricio Coloccini', 'http://www.nufc.co.uk/javaImages/87/e8/0,,10278~13035655,00.jpg', 2, NULL, 'Hậu vệ', '22/01/1982', 32, 'Argentina', '1.83 m', '63 kg', 166, 3, 14, 2, '2014-12-21 07:30:35', '2014-12-21 07:30:35'),
(168, 12, 'Davide Santon', 'http://www.nufc.co.uk/javaImages/74/21/0,,10278~13115764,00.jpg', 3, NULL, 'Hậu vệ', '01/02/1991', 23, 'Italy', '1.87 m', '77 kg', 82, 1, 6, 0, '2014-12-21 07:31:53', '2014-12-21 07:31:53'),
(169, 12, 'Ryan Taylor', 'http://www.nufc.co.uk/javaImages/a1/e8/0,,10278~13035681,00.jpg', 4, NULL, 'Hậu vệ', '19/08/1984', 30, 'Anh', '1.73 m', '75 kg', 106, 8, 21, 1, '2014-12-21 07:32:48', '2014-12-21 07:32:48'),
(170, 12, 'Michael Williamson', 'http://www.nufc.co.uk/javaImages/94/e8/0,,10278~13035668,00.jpg', 6, NULL, 'Hậu vệ', '11/08/1983', 31, 'Anh', '1.91 m', '84 kg', 116, 1, 20, 1, '2014-12-21 07:33:51', '2014-12-21 07:33:51'),
(171, 12, 'Moussa Sissoko', 'http://www.nufc.co.uk/javaImages/95/e8/0,,10278~13035669,00.jpg', 7, NULL, 'Tiền vệ', '16/08/1989', 25, 'Pháp', '1.87 m', '83 kg', 61, 7, 16, 1, '2014-12-21 07:34:42', '2014-12-21 07:34:42'),
(172, 12, 'Vurnon Anita', 'http://www.nufc.co.uk/javaImages/9b/11/0,,10278~12194203,00.jpg', 8, NULL, 'Tiền vệ', '04/04/1989', 25, 'Hà Lan', '1.68 m', '63 kg', 65, 1, 4, 0, '2014-12-21 07:35:41', '2014-12-21 07:35:41'),
(173, 12, 'Papiss Demba Cissé', 'http://www.nufc.co.uk/javaImages/99/e8/0,,10278~13035673,00.jpg', 9, NULL, 'Tiền đạo', '06/03/1985', 29, 'Senegal', '1.83 m', '73 kg', 84, 30, 8, 0, '2014-12-21 07:36:36', '2014-12-21 07:36:36'),
(174, 12, ' Siem de Jong', 'http://www.nufc.co.uk/javaImages/a5/e8/0,,10278~13035685,00.jpg', 10, NULL, 'Tiền đạo', '28/01/1989', 25, 'Thụy Sĩ', '1.85 m', '76 kg', 2, 0, 0, 0, '2014-12-21 07:37:35', '2014-12-21 07:38:40'),
(175, 12, 'Yoan Gouffran', 'http://www.nufc.co.uk/javaImages/ab/e8/0,,10278~13035691,00.jpg', 11, NULL, 'Tiền đạo', '25/05/1986', 28, 'Pháp', '1.76 m', '76 kg', 64, 9, 5, 0, '2014-12-21 07:38:28', '2014-12-21 07:38:28'),
(176, 12, ' Jack Colback', 'http://www.nufc.co.uk/javaImages/8d/e8/0,,10278~13035661,00.jpg', 14, NULL, 'Tiền vệ', '24/10/1989', 25, 'Anh', '1.76 m', '70 kg', 130, 4, 20, 1, '2014-12-21 07:39:29', '2014-12-21 07:39:29'),
(177, 12, ' Facundo Ferreyra', 'http://www.nufc.co.uk/javaImages/88/e8/0,,10278~13035656,00.jpg', 15, NULL, 'Tiền đạo', '14/03/1991', 23, 'Argentina', '1.85 m', '76 kg', 0, 0, 0, 0, '2014-12-21 07:40:17', '2014-12-21 07:40:17'),
(178, 12, 'Jonás Gutiérrez', 'http://www.nufc.co.uk/javaImages/9b/11/0,,10278~12194203,00.jpg', 18, NULL, 'Tiền vệ', '07/05/1983', 31, 'Argentina', '1.83 m', '73 kg', 144, 6, 25, 1, '2014-12-21 07:41:20', '2014-12-21 07:41:20'),
(179, 12, 'Massadio Haidara', 'http://www.nufc.co.uk/javaImages/92/e8/0,,10278~13035666,00.jpg', 19, NULL, 'Hậu vệ', '12/02/1992', 22, 'Pháp', '1.81 m', '76 kg', 23, 0, 2, 0, '2014-12-21 07:42:25', '2014-12-21 07:42:25'),
(180, 12, 'Rémy Cabella', 'http://www.nufc.co.uk/javaImages/9c/e8/0,,10278~13035676,00.jpg', 20, NULL, 'Tiền vệ', '03/08/1990', 24, 'Pháp', '1.72 m', '66 kg', 15, 0, 1, 0, '2014-12-21 07:43:55', '2014-12-21 07:43:55'),
(181, 13, 'ROBERT GREEN', 'http://www.qpr.co.uk/cms_images/player/rob-green64-1812789_231x264.jpg', 1, NULL, 'Thủ môn', '18-01-80', 34, 'Anh', '1.91 m', '93 kg', 246, 0, 3, 0, '2014-12-21 07:47:35', '2014-12-21 07:47:35'),
(182, 13, 'ARMAND TRAORE', 'http://www.qpr.co.uk/cms_images/player/armand-traore64-1812845_231x264.jpg', 3, NULL, 'Hậu vệ', '08-10-89', 25, 'Senegal', '1.85 m', '82 kg', 92, 1, 8, 1, '2014-12-21 07:48:46', '2014-12-21 07:48:46'),
(183, 13, 'STEVEN CAULKER', 'http://www.qpr.co.uk/cms_images/player/steven-caulker64-1812792_231x264.jpg', 4, NULL, 'Hậu vệ', '29-12-91', 23, 'Senegal', '1.91 m', '76 kg', 97, 8, 3, 0, '2014-12-21 07:49:46', '2014-12-21 07:49:46'),
(184, 13, 'RIO FERDINAND', 'http://www.qpr.co.uk/cms_images/player/rio-ferdinand64-1812788_231x264.jpg', 5, NULL, 'Hậu vệ', '07-11-78', 36, 'Anh', '1.89 m', '82 kg', 500, 11, 32, 1, '2014-12-21 07:51:13', '2014-12-21 07:51:13'),
(185, 13, 'CLINT HILL', 'http://www.qpr.co.uk/cms_images/player/clint-hill64-1812767_231x264.jpg', 6, NULL, 'Hậu vệ', '19-10-78', 36, 'Anh', '1.82 m', '72 kg', 55, 0, 12, 1, '2014-12-21 07:52:16', '2014-12-21 07:52:35'),
(186, 13, 'MATT PHILLIPS', 'http://www.qpr.co.uk/cms_images/player/matt-phillips64-1812780_231x264.jpg', 7, NULL, 'Tiền vệ', '13-03-91', 23, 'Scotland', '1.83 m', '75 kg', 36, 1, 0, 0, '2014-12-21 07:53:38', '2014-12-21 07:53:38'),
(187, 13, 'JOEY BARTON', 'http://www.qpr.co.uk/cms_images/player/joey-barton64-1812773_231x264.jpg', 8, NULL, 'Tiền vệ', '02-09-82', 32, 'Anh', '1.8 m', '69 kg', 237, 24, 64, 5, '2014-12-21 07:54:54', '2014-12-21 07:54:54'),
(188, 13, 'CHARLIE AUSTIN', 'http://www.qpr.co.uk/cms_images/player/charlie-austin64-1812766_231x264.jpg', 9, NULL, 'Tiền đạo', '05-07-89', 25, 'Anh', '1.87 m', '84 kg', 14, 8, 2, 1, '2014-12-21 07:56:04', '2014-12-21 07:56:04'),
(189, 13, 'LEROY FER', 'http://www.qpr.co.uk/cms_images/player/leroy-fer64-1847484_231x264.jpg', 10, NULL, 'Tiền vệ', '05-01-90', 24, 'Hà Lan', '1.88 m', '79 kg', 44, 5, 10, 1, '2014-12-21 07:57:00', '2014-12-21 07:57:00'),
(190, 13, 'SHAUN WRIGHT-PHILLIPS', 'http://www.qpr.co.uk/cms_images/player/shaun-wright-phillips64-1812791_231x264.jpg', 11, NULL, 'Tiền vệ', '25-10-81', 33, 'Anh', '1.68 m', '64 kg', 312, 32, 13, 3, '2014-12-21 07:58:03', '2014-12-21 07:58:03'),
(191, 13, 'ALEX MCCARTHY', 'http://www.qpr.co.uk/cms_images/player/alex-mccarthy64-1958624_231x264.jpg', 12, NULL, 'Thủ môn', '03-12-89', 25, 'Anh', '1.93 m', '79 kg', 14, 0, 0, 0, '2014-12-21 07:58:58', '2014-12-21 07:58:58'),
(192, 14, 'KELVIN DAVIS', 'http://www.saintsfc.co.uk/cms_images/kelvin-davis-home-profile148-1862739_231x264.jpg', 1, NULL, 'Thủ môn', '02-03-89', 25, 'Anh', '1.86 m', '81 kg', 11, 0, 2, 0, '2014-12-21 08:00:30', '2014-12-21 08:00:30'),
(193, 14, 'NATHANIEL CLYNE', 'http://www.saintsfc.co.uk/cms_images/nathaniel-clyne-home-profile148-1862744_231x264.jpg', 2, NULL, 'Hậu vệ', '05-04-91', 23, 'Anh', '1.75 m', '67 kg', 75, 3, 8, 0, '2014-12-21 08:01:25', '2014-12-21 08:01:25'),
(194, 13, 'MAYA YOSHIDA', 'http://www.saintsfc.co.uk/cms_images/maya-yoshida-home-profile148-1862743_231x264.jpg', 3, NULL, 'Hậu vệ', '24-08-88', 26, 'Nhật Bản', '1.89 m', '78 kg', 47, 1, 3, 0, '2014-12-21 08:02:31', '2014-12-21 08:02:31'),
(195, 14, 'MORGAN SCHNEIDERLIN', 'http://www.saintsfc.co.uk/cms_images/morgan-schneiderlin-home-245x280148-1979277_231x264.jpg', 4, NULL, 'Tiền vệ', '08-11-1989', 25, 'Pháp', '1.81 m', '75 kg', 82, 10, 21, 0, '2014-12-21 08:03:37', '2014-12-21 08:03:37'),
(196, 14, 'FLORIN GARDOȘ', 'http://www.saintsfc.co.uk/cms_images/florin-gardos-home-245x280148-1979292_231x264.jpg', 5, NULL, 'Hậu vệ', '29-10-88', 26, 'Rumani', '1.93 m', '84 kg', 3, 0, 0, 0, '2014-12-21 08:04:32', '2014-12-21 08:04:32');
INSERT INTO `players` (`id`, `club_id`, `name`, `avatar`, `number`, `club`, `position`, `birthday`, `age`, `nationality`, `height`, `weight`, `appear`, `goal`, `yellow`, `red`, `created_at`, `updated_at`) VALUES
(197, 14, 'JOSÉ FONTE', 'http://www.saintsfc.co.uk/cms_images/jose-fonte-home-profile148-1862738_231x264.jpg', 6, NULL, 'Hậu vệ', '22-12-83', 30, 'Bồ Đào Nha', '1.87 m', '81 kg', 79, 5, 14, 0, '2014-12-21 08:05:45', '2014-12-21 08:05:45'),
(198, 14, 'SHANE LONG', 'http://www.saintsfc.co.uk/cms_images/shane-long-home-245x280148-1979265_231x264.jpg', 7, NULL, 'Tiền đạo', '22-01-87', 27, 'Ireland', '1.78 m', '70 kg', 161, 30, 11, 0, '2014-12-21 08:06:47', '2014-12-21 08:06:47'),
(199, 14, 'STEVEN DAVIS', 'http://www.saintsfc.co.uk/cms_images/steven-davis-home-profile148-1862750_231x264.jpg', 8, NULL, 'Tiền vệ', '01-01-85', 29, 'Northern Ireland', '1.73 m', '70 kg', 194, 9, 10, 0, '2014-12-21 08:07:46', '2014-12-21 08:07:46'),
(200, 14, 'JAY RODRIGUEZ', 'http://www.saintsfc.co.uk/cms_images/jay-rodriguez-home-profile148-1862736_231x264.jpg', 9, NULL, 'Tiền đạo', '29-07-89', 25, 'Anh', '1.85 m', '80 kg', 68, 21, 6, 0, '2014-12-21 08:08:37', '2014-12-21 08:08:37'),
(201, 14, 'SADIO MANÉ', 'http://www.saintsfc.co.uk/cms_images/sadio-mane-245x280148-1979424_231x264.jpg', 10, NULL, 'Tiền đạo', '10-04-92', 22, 'Senegal', '1.75 m', '69 kg', 11, 1, 3, 0, '2014-12-21 08:09:37', '2014-12-21 08:09:37'),
(202, 14, 'DUŠAN TADIĆ', 'http://www.saintsfc.co.uk/cms_images/dusan-tadic-home-profile148-1862725_231x264.jpg', 11, NULL, 'Tiền vệ', '20-11-88', 26, 'Serbia', '1.81 m', '76 kg', 16, 1, 1, 0, '2014-12-21 08:10:32', '2014-12-21 08:10:32'),
(203, 15, 'ASMIR BEGOVIC', 'http://www.stokecityfc.com/cms_images/player/asmir-begovic226-1837042_231x264.jpg', 1, NULL, 'Thủ môn', '20-06-87', 27, 'Bosnia And Herzegovina', '1.98 m', '83 kg', 152, 1, 8, 0, '2014-12-21 08:12:39', '2014-12-21 08:12:39'),
(204, 15, 'PHIL BARDSLEY', 'http://www.stokecityfc.com/cms_images/player/phil-bardsley226-1837064_231x264.jpg', 2, NULL, 'Hậu vệ', '28-06-85', 29, 'Scotland', '1.8 m', '74 kg', 209, 7, 52, 1, '2014-12-21 08:16:20', '2014-12-21 08:16:20'),
(205, 15, 'ERIK PIETERS', 'http://www.stokecityfc.com/cms_images/player/erik-pieters226-1837052_231x264.jpg', 3, NULL, 'Hậu vệ', '07-08-88', 26, 'Hà Lan', '1.84 m', '84 kg', 49, 1, 8, 0, '2014-12-21 08:17:13', '2014-12-21 08:17:13'),
(206, 15, 'ROBERT HUTH', 'http://www.stokecityfc.com/cms_images/player/robert-huth226-1837065_231x264.jpg', 4, NULL, 'Hậu vệ', '18-08-84', 30, 'Đức', '1.91 m', '80 kg', 240, 15, 49, 2, '2014-12-21 08:18:18', '2014-12-21 08:18:18'),
(207, 15, 'MARC MUNIESA', 'http://www.stokecityfc.com/cms_images/player/marc-muniesa226-1837059_231x264.jpg', 5, NULL, 'Hậu vệ', '27-03-92', 22, 'Tây Ban Nha', '1.79 m', '72 kg', 20, 0, 2, 0, '2014-12-21 08:19:08', '2014-12-21 08:19:08'),
(208, 15, 'GLENN WHELAN', 'http://www.stokecityfc.com/cms_images/player/glenn-whelan226-1837054_231x264.jpg', 6, NULL, 'Tiền vệ', '13-01-84', 30, 'Ireland', '1.8 m', '79 kg', 191, 4, 30, 1, '2014-12-21 08:20:13', '2014-12-21 08:20:13'),
(209, 15, 'STEPHEN IRELAND', 'http://www.stokecityfc.com/cms_images/player/stephen-ireland226-1837068_231x264.jpg', 7, NULL, 'Tiền vệ', '22-08-86', 28, 'Ireland', '1.76 m', '68 kg', 217, 19, 17, 1, '2014-12-21 08:21:14', '2014-12-21 08:21:14'),
(210, 15, 'WILSON PALACIOS', 'http://www.stokecityfc.com/cms_images/player/wilson-palacios226-1837072_231x264.jpg', 8, NULL, 'Tiền vệ', '29-07-84', 30, 'Honduras', '1.78 m', '71 kg', 147, 1, 38, 2, '2014-12-21 08:22:44', '2014-12-21 08:22:44'),
(211, 15, 'PETER ODEMWINGIE', 'http://www.stokecityfc.com/cms_images/player/peter-odemwingie226-1837063_231x264.jpg', 9, NULL, 'Tiền đạo', '15-07-81', 33, 'Nigeria', '1.82 m', '75 kg', 119, 36, 10, 1, '2014-12-21 08:36:39', '2014-12-21 08:36:39'),
(212, 15, 'MARKO ARNAUTOVIC', 'http://www.stokecityfc.com/cms_images/player/marko-arnautovic226-1837061_231x264.jpg', 10, NULL, 'Tiền đạo', '19-04-89', 25, 'Áo', '1.92 m', '83 kg', 40, 4, 3, 0, '2014-12-21 08:37:36', '2014-12-21 08:37:36'),
(213, 15, 'MARC WILSON', 'http://www.stokecityfc.com/cms_images/player/marc-wilson226-1837060_231x264.jpg', 12, NULL, 'Hậu vệ', '17-08-87', 27, 'Ireland', '1.88 m', '80 kg', 160, 1, 30, 1, '2014-12-21 08:38:30', '2014-12-21 08:38:30'),
(214, 16, 'Vito Mannone', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Mannone.png?', 25, NULL, 'Thủ môn', '02-03-88', 26, 'Italy', '1.88 m', '80 kg', 53, 0, 1, 0, '2014-12-21 08:39:58', '2014-12-21 08:39:58'),
(215, 16, 'Patrick van Aanholt', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/van%20Aanholt.png?', 3, NULL, 'Hậu vệ', '29-08-90', 24, 'Hà Lan', '1.77 m', '74 kg', 15, 0, 2, 0, '2014-12-21 08:40:50', '2014-12-21 08:40:50'),
(216, 16, 'Jozy Altidore', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Altidore.png?', 17, NULL, 'Tiền đạo', '06-11-89', 25, 'Mỹ', '1.85 m', '79 kg', 69, 2, 7, 1, '2014-12-21 08:41:46', '2014-12-21 08:41:46'),
(217, 16, 'Liam Bridcutt', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Bridcutt.png?', 4, NULL, 'Tiền vệ', '08-05-89', 25, 'Anh', '1.75 m', '73 kg', 19, 0, 6, 0, '2014-12-21 08:42:39', '2014-12-21 08:42:39'),
(218, 16, 'Wes Brown', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Brown.png?', 5, NULL, 'Hậu vệ', '13-10-79', 35, 'Anh', '1.85 m', '77 kg', 290, 4, 37, 4, '2014-12-21 08:43:33', '2014-12-21 08:43:33'),
(219, 16, 'William Buckley', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Buckley.png?', 30, NULL, 'Tiền vệ', '21-11-89', 25, 'Anh', '1.83 m', '82 kg', 14, 0, 2, 0, '2014-12-21 08:44:29', '2014-12-21 08:44:29'),
(220, 16, 'Lee Cattermole', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Cattermole.png?', 6, NULL, 'Tiền vệ', '21-03-88', 26, 'Anh', '1.78 m', '76 kg', 219, 6, 72, 7, '2014-12-21 08:45:31', '2014-12-21 08:45:31'),
(221, 16, 'Sebastián Coates', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Coates.png?', 28, NULL, 'Hậu vệ', '07-10-90', 24, 'Uruguay', '1.96 m', '85 kg', 13, 1, 1, 0, '2014-12-21 08:46:20', '2014-12-21 08:46:20'),
(222, 16, 'Steven Fletcher', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Fletcher.png?', 9, NULL, 'Tiền đạo', '26-03-87', 27, 'Scotland', '1.86 m', '76 kg', 157, 48, 10, 0, '2014-12-21 08:47:18', '2014-12-21 08:47:18'),
(223, 16, 'Emanuele Giaccherini', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Giaccheirni.png?', 23, NULL, 'Tiền vệ', '05-05-85', 29, 'Italy', '1.67 m', '60 kg', 27, 4, 5, 0, '2014-12-21 08:48:21', '2014-12-21 08:48:21'),
(224, 16, 'Danny Graham', 'http://d3nwmepzs3yo04.cloudfront.net/~/media/Players%201415/Player%20profiles/Graham.png?', 19, NULL, 'Tiền đạo', '12-08-85', 29, 'Anh', '1.83 m', '87 kg', 100, 17, 2, 0, '2014-12-21 08:49:22', '2014-12-21 08:49:22'),
(225, 17, 'LUKASZ FABIANSKI', 'http://www.swanseacity.net/cms_images/fabianski-14-1558-1840325_231x264.jpg', 1, NULL, 'Thủ môn', '18-04-85', 29, 'Ba Lan', '1.9 m', '83 kg', 48, 0, 1, 1, '2014-12-21 08:50:43', '2014-12-21 08:50:43'),
(226, 17, 'JORDI AMAT', 'http://www.swanseacity.net/cms_images/amat-14-1558-1840344_231x264.jpg', 2, NULL, 'Hậu vệ', '21-03-92', 22, 'Tây Ban Nha', '1.84 m', '78 kg', 21, 0, 4, 0, '2014-12-21 08:51:43', '2014-12-21 08:51:43'),
(227, 17, 'NEIL TAYLOR', 'http://www.swanseacity.net/cms_images/taylor-14-1558-1840340_231x264.jpg', 3, NULL, 'Hậu vệ', '07-02-89', 25, 'Wales', '1.75 m', '65 kg', 68, 0, 11, 0, '2014-12-21 08:52:48', '2014-12-21 08:52:48'),
(228, 17, 'SUNG-YUENG KI', 'http://www.swanseacity.net/cms_images/ki-14-1558-1840328_231x264.jpg', 4, NULL, 'Tiền vệ', '24-01-89', 25, 'Hàn Quốc', '1.87 m', '79 kg', 74, 6, 10, 0, '2014-12-21 08:53:48', '2014-12-21 08:53:48'),
(229, 17, 'ASHLEY WILLIAMS', 'http://www.swanseacity.net/cms_images/williams-14-1558-1840343_231x264.jpg', 6, NULL, 'Hậu vệ', '23-08-84', 30, 'Wales', '1.83 m', '77 kg', 125, 2, 21, 0, '2014-12-21 08:54:57', '2014-12-21 08:54:57'),
(230, 17, 'LEON BRITTON', 'http://www.swanseacity.net/cms_images/britton-14-1558-1840348_231x264.jpg', 7, NULL, 'Tiền vệ', '16-09-82', 32, 'Anh', '1.68 m', '64 kg', 98, 0, 10, 0, '2014-12-21 08:55:59', '2014-12-21 08:55:59'),
(231, 17, 'JONJO SHELVEY', 'http://www.swanseacity.net/cms_images/shelvey-14-1558-1840337_231x264.jpg', 8, NULL, 'Tiền vệ', '27-02-92', 22, 'Anh', '1.85 m', '80 kg', 93, 9, 15, 2, '2014-12-21 08:57:38', '2014-12-21 08:57:38'),
(232, 17, 'WILFRIED BONY', 'http://www.swanseacity.net/cms_images/bony-14-1558-1840346_231x264.jpg', 10, NULL, 'Tiền đạo', '10-12-88', 26, 'Cote D''Ivoire', '1.82 m', '84 kg', 51, 24, 7, 1, '2014-12-21 08:58:35', '2014-12-21 08:58:35'),
(233, 17, 'MARVIN EMNES', 'http://www.swanseacity.net/cms_images/emnes-14-1558-1840351_231x264.jpg', 11, NULL, 'Tiền đạo', '27-05-88', 26, 'Hà Lan', '1.8 m', '66 kg', 27, 1, 2, 0, '2014-12-21 08:59:23', '2014-12-21 08:59:23'),
(234, 17, 'NATHAN DYER', 'http://www.swanseacity.net/cms_images/dyer-14-1558-1840350_231x264.jpg', 12, NULL, 'Tiền vệ', '29-11-87', 27, 'Anh', '1.65 m', '60 kg', 112, 17, 7, 2, '2014-12-21 09:00:15', '2014-12-21 09:00:15'),
(235, 17, 'DAVID CORNELL', 'http://www.swanseacity.net/cms_images/cornell-14-1558-1840349_231x264.jpg', 13, NULL, 'Thủ môn', '28-03-91', 23, 'Wales', '1.8 m', '73 kg', 0, 0, 0, 0, '2014-12-21 09:01:15', '2014-12-21 09:01:15'),
(236, 18, 'HUGO LLORIS', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/hugo_lloris.jpg?n=2026', 1, NULL, 'Thủ môn', '26-12-86', 27, 'Pháp', '1.88 m', '73 kg', 80, 0, 2, 0, '2014-12-21 09:02:46', '2014-12-21 09:02:46'),
(237, 18, 'KYLE WALKER', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/kyle_walker.jpg?n=7920', 2, NULL, 'Hậu vệ', '28-05-90', 24, 'Anh', '1.78 m', '70 kg', 118, 4, 18, 0, '2014-12-21 09:03:34', '2014-12-21 09:03:34'),
(238, 18, 'DANNY ROSE', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/danny_rose.jpg?n=4011', 3, NULL, 'Hậu vệ', '02-07-90', 24, 'Anh', '1.73 m', '72 kg', 76, 3, 14, 2, '2014-12-21 09:04:34', '2014-12-21 09:04:34'),
(239, 18, 'YOUNES KABOUL', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/younes_kaboul.jpg?n=5901', 4, NULL, 'Hậu vệ', '04-01-86', 28, 'Pháp', '1.82 m', '75 kg', 149, 10, 17, 5, '2014-12-21 09:05:29', '2014-12-21 09:05:29'),
(240, 18, 'JAN VERTONGHEN', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/jan_vertonghen.jpg?n=4488', 5, NULL, 'Hậu vệ', '24-04-87', 27, 'Bỉ', '1.89 m', '86 kg', 69, 4, 13, 0, '2014-12-21 09:07:05', '2014-12-21 09:07:05'),
(241, 18, 'VLAD CHIRICHES', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/vlad_chiriches.jpg?n=9958', 6, NULL, 'Hậu vệ', '14-11-89', 25, 'Rumani', '1.83 m', '75 kg', 22, 1, 3, 0, '2014-12-21 09:08:00', '2014-12-21 09:08:00'),
(242, 18, 'ERIC DIER', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/eric_dier.jpg?n=8854', 15, NULL, 'Hậu vệ', '15-01-94', 20, 'Anh', '1.88 m', '63 kg', 12, 2, 3, 0, '2014-12-21 09:08:53', '2014-12-21 09:08:53'),
(243, 18, 'AARON LENNON', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/aaron_lennon.jpg?n=4496', 7, NULL, 'Tiền vệ', '16-04-87', 27, 'Anh', '1.65 m', '63 kg', 277, 26, 9, 0, '2014-12-21 09:09:45', '2014-12-21 09:09:45'),
(244, 18, 'PAULINHO', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/paulinho.jpg?n=2764', 8, NULL, 'Tiền vệ', '25-07-88', 26, 'Brazil', '1.81 m', '77 kg', 35, 6, 4, 1, '2014-12-21 09:10:40', '2014-12-21 09:10:40'),
(245, 18, 'ERIK LAMELA', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/erik_lamela.jpg?n=8349', 11, NULL, 'Tiền vệ', '04-03-92', 22, 'Argentina', '1.83 m', '79 kg', 25, 0, 4, 0, '2014-12-21 09:11:37', '2014-12-21 09:11:37'),
(246, 18, 'ANDROS TOWNSEND', 'http://www.tottenhamhotspur.com/uploadedImages/Shared_Assets/Images/Player_Profiles/2014-2015_First_Team/andros_townsend.jpg?n=9161', 17, NULL, 'Tiền vệ', '16-07-91', 23, 'Anh', '1.81 m', '81 kg', 47, 3, 4, 0, '2014-12-21 09:12:28', '2014-12-21 09:12:28'),
(247, 19, 'Ben Foster', 'http://www.wba.co.uk/cms_images/player/ben-foster151-1982762_231x264.jpg', 1, NULL, 'Thủ môn', '03-04-83', 31, 'Anh', '1.93 m', '79 kg', 103, 0, 2, 0, '2014-12-21 09:13:33', '2014-12-21 09:13:33'),
(248, 19, 'Jonas Olsson', 'http://www.wba.co.uk/cms_images/player/jonas-olsson151-1982797_231x264.jpg', 3, NULL, 'Hậu vệ', '10-03-83', 31, 'Thụy Điển', '1.7 m', '71 kg', 157, 6, 29, 1, '2014-12-21 09:14:22', '2014-12-21 09:14:22'),
(249, 19, 'Chris Baird', 'http://www.wba.co.uk/cms_images/player/chris-baird151-1982776_231x264.jpg', 4, NULL, 'Hậu vệ', '25-02-82', 32, 'Northern Ireland', '1.85 m', '74 kg', 2, 0, 0, 0, '2014-12-21 09:15:09', '2014-12-21 09:15:09'),
(250, 19, 'Claudio Yacob', 'http://www.wba.co.uk/cms_images/player/claudio-yacob151-1982779_231x264.jpg', 5, NULL, 'Tiền vệ', '18-07-87', 27, 'Argentina', '1.8 m', '78 kg', 61, 1, 14, 1, '2014-12-21 09:16:11', '2014-12-21 09:16:11'),
(251, 19, 'Joleon Lescott', 'http://www.wba.co.uk/cms_images/player/joleon-lescott151-1982788_231x264.jpg', 6, NULL, 'Hậu vệ', '16-08-82', 32, 'Anh', '1.9 m', '89 kg', 9, 0, 1, 0, '2014-12-21 09:16:56', '2014-12-21 09:16:56'),
(252, 19, 'James Morrison', 'http://www.wba.co.uk/cms_images/player/james-morrison151-1982785_231x264.jpg', 7, NULL, 'Tiền vệ', '25-05-86', 28, 'Scotland', '1.78 m', '64 kg', 168, 19, 14, 1, '2014-12-21 09:17:41', '2014-12-21 09:17:41'),
(253, 19, 'Craig Gardner', 'http://www.wba.co.uk/cms_images/player/craig-gardner151-1982781_231x264.jpg', 8, NULL, 'Tiền vệ', '25-11-86', 28, 'Anh', '1.78 m', '76 kg', 12, 0, 5, 0, '2014-12-21 09:18:26', '2014-12-21 09:18:26'),
(254, 19, 'Brown Ideye', 'http://www.wba.co.uk/cms_images/player/ama277037151-1983077_231x264.jpg', 9, NULL, 'Tiền đạo', '10-10-88', 26, 'Nigeria', '1.8 m', '70 kg', 3, 0, 0, 0, '2014-12-21 09:19:13', '2014-12-21 09:19:13'),
(255, 19, 'Victor Anichebe', 'http://www.wba.co.uk/cms_images/player/ama277042151-1983062_231x264.jpg', 10, NULL, 'Tiền đạo', '23-04-88', 26, 'Nigeria', '1.85 m', '80 kg', 32, 4, 3, 0, '2014-12-21 09:20:01', '2014-12-21 09:20:01'),
(256, 19, 'Chris Brunt', 'http://www.wba.co.uk/cms_images/player/chris-brunt151-1982778_231x264.jpg', 11, NULL, 'Tiền vệ', '14-12-84', 30, 'Northern Ireland', '1.85 m', '84 kg', 169, 19, 29, 0, '2014-12-21 09:20:50', '2014-12-21 09:20:50'),
(257, 19, 'Boaz Myhill', 'http://www.wba.co.uk/cms_images/player/boaz-myhill151-1982763_231x264.jpg', 13, NULL, 'Thủ môn', '09-11-82', 32, 'Mỹ', '1.8 m', '75 kg', 29, 0, 0, 0, '2014-12-21 09:21:43', '2014-12-21 09:21:43'),
(258, 20, 'Adrián', 'http://www.whufc.com/javaImages/ba/93/0,,12562~13079482,00.jpg', 13, NULL, 'Thủ môn', '03-01-87', 27, 'Tây Ban Nha', '1.90 m', '77 kg', 33, 0, 4, 0, '2014-12-21 09:24:52', '2014-12-21 09:36:17'),
(259, 20, 'Winston Reid', 'http://www.whufc.com/javaImages/c5/93/0,,12562~13079493,00.jpg', 2, NULL, 'Hậu vệ', '03-07-88', 26, 'New Zealand', '1.91 m', '87 kg', 77, 3, 15, 0, '2014-12-21 09:27:13', '2014-12-21 09:36:47'),
(260, 20, 'Aaron Cresswell', 'http://www.whufc.com/javaImages/b4/93/0,,12562~13079476,00.jpg', 3, NULL, 'Hậu vệ', '15-12-89', 25, 'Anh', '1.7 m', '66 kg', 13, 1, 2, 0, '2014-12-21 09:28:14', '2014-12-21 09:37:09'),
(261, 20, 'Kevin Nolan', 'http://www.whufc.com/javaImages/c2/93/0,,12562~13079490,00.jpg', 4, NULL, 'Tiền vệ', '24-06-82', 32, 'Anh', '1.83 m', '89 kg', 77, 17, 13, 2, '2014-12-21 09:29:17', '2014-12-21 09:37:31'),
(262, 20, 'James Tomkins', 'http://www.whufc.com/javaImages/c9/93/0,,12562~13079497,00.jpg', 5, NULL, 'Hậu vệ', '29-03-89', 25, 'Anh', '1.9 m', '74 kg', 126, 3, 17, 2, '2014-12-21 09:30:03', '2014-12-21 09:37:55'),
(263, 20, 'Matthew Jarvis', 'http://www.whufc.com/javaImages/bd/93/0,,12562~13079485,00.jpg', 7, NULL, 'Tiền vệ', '22-05-86', 28, 'Anh', '1.7 m', '72 kg', 67, 4, 1, 0, '2014-12-21 09:30:55', '2014-12-21 09:38:14'),
(264, 20, 'Cheikhou Kouyaté', 'http://www.whufc.com/javaImages/b0/93/0,,12562~13079472,00.jpg', 8, NULL, 'Tiền vệ', '21-12-89', 25, 'Senegal', '1.92 m', '75 kg', 9, 0, 2, 0, '2014-12-21 09:31:49', '2014-12-21 09:38:37'),
(265, 20, 'Andy Carroll', 'http://www.whufc.com/javaImages/bb/93/0,,12562~13079483,00.jpg', 9, NULL, 'Tiền đạo', '06-01-89', 25, 'Anh', '1.91 m', '76 kg', 42, 9, 5, 1, '2014-12-21 09:32:30', '2014-12-21 09:38:57'),
(266, 20, 'Mauro Zárate', 'http://www.whufc.com/javaImages/b5/93/0,,12562~13079477,00.jpg', 10, NULL, 'Tiền đạo', '18-03-87', 27, 'Argentina', '1.75 m', '83 kg', 6, 2, 1, 0, '2014-12-21 09:33:15', '2014-12-21 09:39:14'),
(267, 20, 'Stewart Downing', 'http://www.whufc.com/javaImages/b6/93/0,,12562~13079478,00.jpg', 11, NULL, 'Tiền vệ', '22-07-84', 30, 'Anh', '1.8 m', '65 kg', 44, 3, 0, 0, '2014-12-21 09:33:51', '2014-12-21 09:39:29'),
(268, 20, 'Ricardo Vaz Te', 'http://www.whufc.com/javaImages/bf/93/0,,12562~13079487,00.jpg', 12, NULL, 'Tiền đạo', '01-10-86', 28, 'Bồ Đào Nha', '1.87 m', '79 kg', 36, 5, 3, 0, '2014-12-21 09:34:34', '2014-12-21 09:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20141101034906'),
('20141101035725'),
('20141101035728'),
('20141218135423'),
('20141218135628');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `index_active_admin_comments_on_namespace` (`namespace`), ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`), ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_admin_users_on_email` (`email`), ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
 ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_users_on_email` (`email`), ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
