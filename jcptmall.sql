-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2018 at 05:00 PM
-- Server version: 5.7.19-log
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jcptmall`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '副标题',
  `title_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列表图片',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '活动说明',
  `type` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1返水2红利3充值',
  `money` decimal(8,2) DEFAULT NULL COMMENT '活动所需达到的金额',
  `rate` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '赠送比例',
  `gift_limit_money` decimal(8,2) DEFAULT NULL COMMENT '赠送的上限金额',
  `date_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动时间描述',
  `direct_money` decimal(8,2) DEFAULT NULL COMMENT '直接赠送金额',
  `start_at` timestamp NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_at` timestamp NULL DEFAULT NULL COMMENT '活动截止时间',
  `on_line` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线1下线',
  `is_hot` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0正常1热门',
  `is_apply` tinyint(1) DEFAULT '1' COMMENT '0需要申请1不需要',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `title`, `subtitle`, `title_img`, `content`, `type`, `money`, `rate`, `gift_limit_money`, `date_desc`, `direct_money`, `start_at`, `end_at`, `on_line`, `is_hot`, `is_apply`, `sort`, `created_at`, `updated_at`) VALUES
(36, '真人百家乐中对子', NULL, '/uploads/2018-07-29/56bd8b25f3925c904077d48f530aea8c7670ccbb.png', '<p>活动详细：</p><p>001国际会员在AG真人百家乐活动中下注对子或者完美对子，即可申请下注金额的50%和100%赠送彩金。对子和完美对子每天只能各申请一次，活动当</p><p>天有效。</p><p><img src=\"/storage/u/image/20180729/1532868005739214.png\" title=\"1532868005739214.png\" alt=\"duizi.png\"/></p><p><span style=\"font-size: 20px;\">备注：</span>手机端会员可点击<a href=\"http://009gj.com/activities\" target=\"_blank\">009gj.com/activities</a>申请或者联系在线客服。</p><p><span style=\"font-size: 20px;\">优惠规则与条款：</span></p><p>1.所有优惠以人民币(CNY)为结算金额，以美东时间(EDT)为计时区间；</p><p>2.每位玩家﹑每户﹑每一住址、每一电子邮箱地址﹑每一电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)及IP地址只能享有一次优惠；若会员有</p><p>重复申请账号行为，公司保留取消或收回会员优惠彩金的权利；</p><p>3.001国际的所有优惠特为玩家而设，如发现任何团体或个人，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或</p><p>个人账户及账户结余的权利；</p><p>4.若会员对活动有争议时，为确保双方利益，杜绝身份盗用行为，001国际有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质；</p><p>5.当参与优惠会员未能完全遵守、或违反、或滥用任何有关公司优惠或推广的条款，又或我们有任何证据有任何团队或个人投下一连串的关联赌注，籍以</p><p>造成无论赛果怎样都可以确保可以从该存款红利或其他推广活动提供的优惠获利，001国际保留权利向此团队或个人停止、取消优惠或索回已支付的全部</p><p>优惠红利。此外，公司亦保留权利向这些客户扣取相当于优惠红利价值的行政费用，以补偿我们的行政成本；</p><p>6.001国际保留对活动的最终解释权，以及在无通知的情况下修改、终止活动的权利，适用于所有优惠。</p><p><br/></p>', 1, '20.00', NULL, NULL, '长期有效', NULL, NULL, NULL, 0, 0, 0, 1, '2018-07-30 10:40:36', '2018-07-30 10:42:43'),
(35, '真人百家乐连赢', NULL, '/uploads/2018-07-29/d816d90e48cff4f7b6f9826f5345cff5ad54d93b.png', '<p><span style=\"font-size: 20px;\">活动详细：</span></p><p>001国际会员于AG真人视讯直播游戏中下注，达到连赢局数即可申请连赢彩金，以有效投注计算。此活动奖金不叠加，每个账户限一次有效申请！</p><p><img src=\"/storage/u/image/20180729/1532867078826482.png\" title=\"1532867078826482.png\" alt=\"liany.png\"/></p><p><span style=\"font-size: 20px;\">备注：</span>手机端会员可点击<a href=\"http://009gj.com/activities\" target=\"_blank\" style=\"white-space: normal;\">009gj.com/activities</a>申请或者联系在线客服。</p><p><span style=\"font-size: 20px;\">优惠规则与条款：</span></p><p>1.所有优惠以人民币(CNY)为结算金额，以美东时间(EDT)为计时区间；</p><p>2.每位玩家﹑每户﹑每一住址、每一电子邮箱地址﹑每一电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)及IP地址只能享有一次优惠；若会员有</p><p>重复申请账号行为，公司保留取消或收回会员优惠彩金的权利；</p><p>3.001国际的所有优惠特为玩家而设，如发现任何团体或个人，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或</p><p>个人账户及账户结余的权利；</p><p>4.若会员对活动有争议时，为确保双方利益，杜绝身份盗用行为，001国际有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质；</p><p>5.当参与优惠会员未能完全遵守、或违反、或滥用任何有关公司优惠或推广的条款，又或我们有任何证据有任何团队或个人投下一连串的关联赌注，籍以</p><p>造成无论赛果怎样都可以确保可以从该存款红利或其他推广活动提供的优惠获利，001国际保留权利向此团队或个人停止、取消优惠或索回已支付的全部</p><p>优惠红利。此外，公司亦保留权利向这些客户扣取相当于优惠红利价值的行政费用，以补偿我们的行政成本；</p><p>6.001国际保留对活动的最终解释权，以及在无通知的情况下修改、终止活动的权利，适用于所有优惠。</p><p><br/></p>', 1, '50.00', NULL, NULL, '长期有效', NULL, NULL, NULL, 0, 0, 0, 1, '2018-07-30 10:23:34', '2018-07-30 10:25:28'),
(34, '彩票闯关', NULL, '/uploads/2018-07-29/f36afe01216ff6303f0611ec9913d83d306da44e.png', '<p><span style=\"font-size: 20px;\">活动详细：</span></p><p>即日起按照北京时间计算，凡会员当天于001国际充值100+，在彩票游戏中有效投注1000+，即可参加闯关，可申请相应关卡闯关彩金，彩金不叠加，</p><p>最高5888元！</p><p><img src=\"/storage/u/image/20180729/1532864753177796.png\" title=\"1532864753177796.png\" alt=\"caipiao.png\"/></p><p><span style=\"font-size: 20px;\">备注：</span>手机端会员可点击<a href=\"http://009gj.com/activities\" target=\"_blank\">009gj.com/activities</a>申请或者联系在线客服。</p><p><br/></p><p><span style=\"font-size: 20px;\">优惠规则与条款：</span></p><p>1.所有优惠以人民币(CNY)为结算金额，以美东时间(EDT)为计时区间；</p><p>2.每位玩家﹑每户﹑每一住址、每一电子邮箱地址﹑每一电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)及IP地址只能享有一次优惠；若会员有</p><p>重复申请账号行为，公司保留取消或收回会员优惠彩金的权利；</p><p>3.001国际的所有优惠特为玩家而设，如发现任何团体或个人，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或</p><p>个人账户及账户结余的权利；</p><p>4.若会员对活动有争议时，为确保双方利益，杜绝身份盗用行为，001国际有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质；</p><p>5.当参与优惠会员未能完全遵守、或违反、或滥用任何有关公司优惠或推广的条款，又或我们有任何证据有任何团队或个人投下一连串的关联赌注，籍以</p><p>造成无论赛果怎样都可以确保可以从该存款红利或其他推广活动提供的优惠获利，001国际保留权利向此团队或个人停止、取消优惠或索回已支付的全部</p><p>优惠红利。此外，公司亦保留权利向这些客户扣取相当于优惠红利价值的行政费用，以补偿我们的行政成本；</p><p>6.001国际保留对活动的最终解释权，以及在无通知的情况下修改、终止活动的权利，适用于所有优惠。</p><p><br/></p>', 1, '1000.00', NULL, '5888.00', '长期有效', NULL, NULL, NULL, 0, 0, 0, 1, '2018-07-30 09:46:42', '2018-07-30 09:48:19'),
(32, '充值加量30%', NULL, '/uploads/2018-07-29/647547949e12061d3ccc36d357c94934e04ae84d.png', '<p><span style=\"font-size: 20px;\">活动详细：</span></p><p>即日起在001国际单笔充值500及以上，可以申请充值加量30%活动，此活动为自主选择，申请此活动即表示同意此活动附带规则。</p><p><img src=\"/storage/u/image/20180729/1532860571558878.png\" title=\"1532860571558878.png\" alt=\"500+.png\"/></p><p><span style=\"font-size: 20px;\">附带规则：</span></p><p>申请此活动必须满足流水25倍方可提款，未满足本活动提款要求001国际有权扣除赠送金额或者不于提款。如会员充值1000，即可申请300活动金额，满</p><p>足32500流水方可提款！此活动每笔赠送单独计算流水要求，不于流水叠加算！！</p><p>注：300=1000x30%&nbsp; &nbsp; &nbsp; 32500=(1000+300)x25</p><p><br/></p><p><span style=\"font-size: 20px;\">备注：</span>手机端会员可点击<a href=\"http://009gj.com/activities\" target=\"_blank\" style=\"white-space: normal;\">009gj.com/activities</a>申请或者联系在线客服</p><p><br/></p><p><span style=\"font-size: 20px;\">优惠规则与条款：</span></p><p>1.所有优惠以人民币(CNY)为结算金额，以美东时间(EDT)为计时区间；<br/></p><p>2.每位玩家﹑每户﹑每一住址、每一电子邮箱地址﹑每一电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)及IP地址只能享有一次优惠；若会员有</p><p>重复申请账号行为，公司保留取消或收回会员优惠彩金的权利；</p><p>3.001国际的所有优惠特为玩家而设，如发现任何团体或个人，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或</p><p>个人账户及账户结余的权利；</p><p>4.若会员对活动有争议时，为确保双方利益，杜绝身份盗用行为，001国际有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质；</p><p>5.当参与优惠会员未能完全遵守、或违反、或滥用任何有关公司优惠或推广的条款，又或我们有任何证据有任何团队或个人投下一连串的关联赌注，籍以</p><p>造成无论赛果怎样都可以确保可以从该存款红利或其他推广活动提供的优惠获利，001国际保留权利向此团队或个人停止、取消优惠或索回已支付的全部</p><p>优惠红利。此外，公司亦保留权利向这些客户扣取相当于优惠红利价值的行政费用，以补偿我们的行政成本；</p><p>6.001国际保留对活动的最终解释权，以及在无通知的情况下修改、终止活动的权利，适用于所有优惠。</p><p><br/></p>', 4, '500.00', '30', NULL, '长期有效', NULL, NULL, NULL, 0, 0, 0, 1, '2018-07-30 08:41:57', '2018-07-30 09:52:37'),
(33, '新人专享，首冲有礼', NULL, '/uploads/2018-07-29/c4bfdfbc89ea88dce6dd1bd196304572d404331d.png', '<p><span style=\"font-size: 20px;\">活动详细：</span></p><p>001国际新人专享优惠，注册成功后的第一笔充值，即可享受首冲有礼活动，充的越多，赠送越多，最高8888彩金助你驰骋遨游！只计算第一笔，其他</p><p>笔充值不享受此活动！！！</p><p><img src=\"/storage/u/image/20180729/1532863208514167.png\" title=\"1532863208514167.png\" alt=\"shouc.png\"/></p><p><span style=\"font-size: 20px;\"><br/></span></p><p><span style=\"font-size: 20px;\"><span style=\"font-size: 20px;\">备注：</span><span style=\"font-size: 16px;\">手机端会员可点击</span><a href=\"http://009gj.com/activities\" target=\"_blank\" style=\"white-space: normal; font-size: 16px; text-decoration: underline;\"><span style=\"font-size: 16px;\">009gj.com/activities</span></a><span style=\"font-size: 16px;\">申请或者联系在线客服</span></span></p><p><span style=\"font-size: 20px;\">优惠规则与条款：</span></p><p>1.所有优惠以人民币(CNY)为结算金额，以美东时间(EDT)为计时区间；</p><p>2.每位玩家﹑每户﹑每一住址、每一电子邮箱地址﹑每一电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)及IP地址只能享有一次优惠；若会员有</p><p>重复申请账号行为，公司保留取消或收回会员优惠彩金的权利；</p><p>3.001国际的所有优惠特为玩家而设，如发现任何团体或个人，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或</p><p>个人账户及账户结余的权利；</p><p>4.若会员对活动有争议时，为确保双方利益，杜绝身份盗用行为，001国际有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质；</p><p>5.当参与优惠会员未能完全遵守、或违反、或滥用任何有关公司优惠或推广的条款，又或我们有任何证据有任何团队或个人投下一连串的关联赌注，籍以</p><p>造成无论赛果怎样都可以确保可以从该存款红利或其他推广活动提供的优惠获利，001国际保留权利向此团队或个人停止、取消优惠或索回已支付的全部</p><p>优惠红利。此外，公司亦保留权利向这些客户扣取相当于优惠红利价值的行政费用，以补偿我们的行政成本；</p><p>6.001国际保留对活动的最终解释权，以及在无通知的情况下修改、终止活动的权利，适用于所有优惠。</p><p><br/></p>', 2, '100.00', NULL, '8888.00', '长期有效', NULL, NULL, NULL, 0, 0, 0, 1, '2018-07-30 09:21:12', '2018-07-30 09:51:59'),
(29, '微信转账银行卡支付教程', NULL, '/uploads/2018-07-29/ee8bf97a1494e534a383c3d553e6901e396a16b9.png', '<p><img src=\"/storage/u/image/20180729/1532856115335323.png\" title=\"1532856115335323.png\" alt=\"hd1.png\"/></p>', 5, NULL, NULL, NULL, '长期有效', NULL, NULL, NULL, 0, 0, 1, 1, '2018-07-30 07:22:01', '2018-07-30 07:22:13'),
(30, '支付宝转账银行卡支付教程', NULL, '/uploads/2018-07-29/11b33e972362d0a17cb79cc0d45bb4e3eb0f6476.png', '<p><img src=\"/storage/u/image/20180729/1532856510462355.png\" title=\"1532856510462355.png\" alt=\"hd2.png\"/></p>', 5, NULL, NULL, NULL, '长期有效', NULL, NULL, NULL, 0, 0, 1, 1, '2018-07-30 07:28:34', '2018-07-30 07:28:37'),
(31, '天天返水', NULL, '/uploads/2018-07-29/3a6dcec851d1ecc3119c1efea778975bbb6d4a0a.png', '<p><span style=\"font-size: 20px;\">活动详情：</span></p><p>凡在001国际注册会员成功并充值，投注1元起即可享受返点优惠，最高可达2.0%无上限，（新注册会员默认为天天返水）。此优惠可与其他优惠同时进</p><p>行享用。所获返水优惠只需1倍流水即可申请取款。</p><p><img src=\"/storage/u/image/20180729/1532858758152793.png\" title=\"1532858758152793.png\" alt=\"tt.png\"/></p><p><span style=\"font-size: 20px;\">备注：</span></p><p>任何出现无风险投注，对打情况（包括百家乐同时下注庄家和闲家，轮盘同时下注红黑等），或者两个及以上互刷流水，经001国际审核确定。将不累计</p><p>有效投注！</p><p><br/></p><p><span style=\"font-size: 20px;\">优惠规则与条款：</span></p><p>1.所有优惠以人民币(CNY)为结算金额，以美东时间(EDT)为计时区间；<br/></p><p>2.每位玩家﹑每户﹑每一住址、每一电子邮箱地址﹑每一电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)及IP地址只能享有一次优惠；若会员有重<br/></p><p>复申请账号行为，公司保留取消或收回会员优惠彩金的权利；</p><p>3.001国际的所有优惠特为玩家而设，如发现任何团体或个人，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或<br/></p><p>个人账户及账户结余的权利；</p><p>4.若会员对活动有争议时，为确保双方利益，杜绝身份盗用行为，001国际有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质；<br/></p><p>5.当参与优惠会员未能完全遵守、或违反、或滥用任何有关公司优惠或推广的条款，又或我们有任何证据有任何团队或个人投下一连串的关联赌注，籍以<br/></p><p>造成无论赛果怎样都可以确保可以从该存款红利或其他推广活动提供的优惠获利，001国际保留权利向此团队或个人停止、取消优惠或索回已支付的全部</p><p>优惠红利。此外，公司亦保留权利向这些客户扣取相当于优惠红利价值的行政费用，以补偿我们的行政成本；</p><p>6.001国际保留对活动的最终解释权，以及在无通知的情况下修改、终止活动的权利，适用于所有优惠。<br/></p><p><br/></p>', 4, NULL, NULL, NULL, '长期有效', NULL, NULL, NULL, 0, 0, 1, 1, '2018-07-30 08:00:26', '2018-07-30 08:48:04'),
(27, '累计充值抢红包', NULL, '/uploads/2018-07-29/494cb44dc9d37f509d3f0d66b26710bae55c4b13.png', '<p><span style=\"font-size: 20px;\">活动详情</span>：</p><p>001国际所有会员于活动期间，每日存款满足活动条件，即可抽取红包，单个红包最高8888元！累计充值当天有效，过期重新累计！</p><p><img src=\"/storage/u/image/20180729/1532847012957403.png\" title=\"1532847012957403.png\" alt=\"hb1.png\"/></p><p><span style=\"font-size: 20px;\">领取方式：</span></p><p>请点击右侧点击抢红包进入活动界面。<a href=\"/hongbao\" target=\"_blank\"><img src=\"/storage/u/image/20180725/1532516435310717.png\" title=\"1532516435310717.png\" alt=\"djqhb.png\"/></a></p><p><br/></p><p><span style=\"font-size: 20px;\">优惠规则与条款：</span></p><p>1.所有优惠以人民币(CNY)为结算金额，以美东时间(EDT)为计时区间；</p><p>2.每位玩家﹑每户﹑每一住址、每一电子邮箱地址﹑每一电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)及IP地址只能享有一次优惠；若会员有</p><p>重复申请账号行为，公司保留取消或收回会员优惠彩金的权利；</p><p>3.001国际的所有优惠特为玩家而设，如发现任何团体或个人，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或</p><p>个人账户及账户结余的权利；</p><p>4.若会员对活动有争议时，为确保双方利益，杜绝身份盗用行为，001国际有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质；</p><p>5.当参与优惠会员未能完全遵守、或违反、或滥用任何有关公司优惠或推广的条款，又或我们有任何证据有任何团队或个人投下一连串的关联赌注，籍以</p><p>造成无论赛果怎样都可以确保可以从该存款红利或其他推广活动提供的优惠获利，001国际保留权利向此团队或个人停止、取消优惠或索回已支付的全部</p><p>优惠红利。此外，公司亦保留权利向这些客户扣取相当于优惠红利价值的行政费用，以补偿我们的行政成本；</p><p>6.001国际保留对活动的最终解释权，以及在无通知的情况下修改、终止活动的权利，适用于所有优惠。</p><p><br/></p><p><br/></p>', 4, '100.00', NULL, '8888.00', '长期有效', NULL, NULL, NULL, 0, 0, 1, 3, '2018-07-26 09:04:57', '2018-07-30 05:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `activities_apply`
--

CREATE TABLE `activities_apply` (
  `id` int(10) NOT NULL,
  `activity_id` int(10) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '2审核通过，3审核不通过',
  `fail_reason` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activities_apply`
--

INSERT INTO `activities_apply` (`id`, `activity_id`, `member_id`, `status`, `fail_reason`, `created_at`, `updated_at`) VALUES
(70, 34, 256, 1, NULL, '2018-08-03 04:22:38', '2018-08-03 04:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `admin_action_money_log`
--

CREATE TABLE `admin_action_money_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '管理员ID',
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `old_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '原余额',
  `new_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '修改后的余额',
  `old_fs_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '原返水余额',
  `new_fs_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '修改后的返水余额',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_action_money_log`
--

INSERT INTO `admin_action_money_log` (`id`, `user_id`, `member_id`, `old_money`, `new_money`, `old_fs_money`, `new_fs_money`, `remark`, `created_at`, `updated_at`) VALUES
(69, 7, 256, '0.00', '100.00', '0.00', '0.00', NULL, '2018-08-03 04:22:21', '2018-08-03 04:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台名称',
  `api_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台描述名称',
  `api_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求的基础域名',
  `api_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'key 值',
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1',
  `api_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `is_demo` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0正式 1测试',
  `prefix` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号前缀',
  `on_line` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0上线1下线',
  `start_game_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_target` tinyint(1) DEFAULT '0',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`id`, `api_name`, `api_title`, `api_domain`, `api_id`, `api_key`, `api_token`, `api_username`, `api_password`, `api_money`, `is_demo`, `prefix`, `on_line`, `start_game_link`, `is_target`, `sort`, `created_at`, `updated_at`) VALUES
(3, 'AG', 'AG余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '10019.00', 0, '5F', 0, 'http://www.001gj.com/ag/playGame', 1, 2, '2017-02-03 02:00:51', '2018-08-03 22:19:55'),
(4, 'BBIN', 'BBIN余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/bbin/playGame', 1, 4, '2017-02-03 02:01:51', '2018-08-02 19:26:48'),
(5, 'AB', '欧博余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/ab/playGame', 1, 3, '2017-02-03 02:02:51', '2018-08-02 19:26:45'),
(6, 'PT', 'PT余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/pt/playGame', 1, 11, '2017-02-03 02:03:51', '2018-08-02 19:27:11'),
(7, 'MG', 'MG余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/mg/playGame', 1, 4, '2017-02-03 02:04:51', '2018-08-02 19:26:50'),
(8, 'TTG', 'TTG电子厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/ttg/playGame', 1, 18, '2017-02-03 02:05:51', '2018-08-02 19:27:17'),
(9, 'IBC', '沙巴体育', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/ibc/playGame', 1, 12, '2017-02-03 02:06:51', '2018-08-02 19:27:20'),
(10, 'YC', 'YC彩票厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '5020.00', 0, '5F', 0, 'http://www.001gj.com/yc/playGame', 1, 10, '2017-02-03 02:07:51', '2018-08-03 19:53:56'),
(11, 'CG', 'CG余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/cg/playGame', 1, 7, '2017-02-03 02:08:51', '2018-08-02 19:27:04'),
(12, 'SA', 'SA余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/sa/playGame', 1, 6, '2017-02-03 02:09:51', '2018-08-02 19:26:54'),
(13, 'BG', 'BG余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/bg/playGame', 1, 10, '2017-02-03 02:10:51', '2018-08-02 19:27:00'),
(14, 'DT', 'DT电子厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/ttg/playGame', 1, 21, '2017-02-03 02:11:51', '2018-08-02 19:27:15'),
(2, 'BI', NULL, 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '0.00', 0, '5F', 1, NULL, 0, 10, '2017-02-03 02:14:51', '2018-07-25 22:39:41'),
(20, 'PNG', 'PNG电子厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/png/playGame', 1, 20, '2017-02-03 02:17:51', '2018-08-02 19:27:36'),
(21, 'EG', 'EG彩票厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/eg/playGame', 1, 11, '2017-02-03 02:17:51', '2018-08-02 19:27:12'),
(22, 'SS', '皇冠体育', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/ss/playGame', 1, 13, '2017-02-03 02:17:51', '2018-08-02 19:27:19'),
(23, 'BS', 'BS国际厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/bs/playGame', 1, 11, '2017-02-03 02:17:51', '2018-08-02 19:27:13'),
(24, 'MW', 'MW棋牌游戏', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/mw/playGame', 1, 17, '2017-02-03 02:17:51', '2018-08-02 19:27:18'),
(26, 'SUNBET', '申博余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/sunbet/playGame', 1, 5, '2017-11-28 16:15:52', '2018-08-02 19:26:52'),
(27, 'OG', 'OG余额', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/og/playGame', 1, 8, '2017-12-29 08:47:19', '2018-08-02 19:27:03'),
(29, 'VR', 'VR真人彩票', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '10.00', 0, '5F', 0, 'http://www.001gj.com/vr/playGame', 1, 10, '2018-01-16 06:51:25', '2018-08-03 04:09:15'),
(30, 'OPUS', 'OPUS视讯厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/opus/playGame', 1, 10, '2018-04-30 05:55:24', '2018-08-02 19:26:55'),
(31, 'DG', 'DG视讯', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/dg/playGame', 1, 10, '2018-05-09 04:53:49', '2018-08-02 19:27:07'),
(32, 'SW', 'SW电子厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/sw/playGame', 1, 10, '2018-05-09 11:26:48', '2018-08-02 19:27:08'),
(33, 'CQ', 'CQ9电子厅', 'api.gebbs.net', 'rU,urGX:', '738209c0-36aa-491c-88d2-09f9713a2538', 'rU,urGX:', 'http://des.001gj.com', '456123', '20.00', 0, '5F', 0, 'http://www.001gj.com/cq/playGame', 1, 10, '2018-05-10 03:16:52', '2018-08-02 19:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `api_activity`
--

CREATE TABLE `api_activity` (
  `api_id` int(10) UNSIGNED NOT NULL,
  `activity_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_cards`
--

CREATE TABLE `bank_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '卡号',
  `card_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '卡类型 储蓄卡',
  `bank_id` int(11) NOT NULL COMMENT '银行ID',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '办卡预留手机号',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '持卡人姓名',
  `bank_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '持卡人姓名',
  `on_line` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 上线1下线',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `black_list_ip`
--

CREATE TABLE `black_list_ip` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP 地址',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daili_money_log`
--

CREATE TABLE `daili_money_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `yl_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '盈利情况',
  `money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_month` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dividend`
--

CREATE TABLE `dividend` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `member_id` int(11) NOT NULL COMMENT '用户ID',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '转换类型 1充值红利2平台红利3返水',
  `describe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `before_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '发生前的金额',
  `after_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '发生后的金额',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drawing`
--

CREATE TABLE `drawing` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '交易流水号',
  `member_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充值人名称、昵称',
  `money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '提款金额',
  `payment_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账户 支付宝账户 微信账户 银行卡号',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1待确认2成功3失败',
  `before_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '提款前金额',
  `after_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '提款后金额',
  `score` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '积分',
  `counter_fee` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `fail_reason` text COLLATE utf8mb4_unicode_ci COMMENT '失败原因',
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '银行名称',
  `bank_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '银行卡号',
  `bank_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '开户地址',
  `confirm_at` timestamp NULL DEFAULT NULL COMMENT '确认提款成功时间',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '反馈类型',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `is_read` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0未读1已读',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fs_level`
--

CREATE TABLE `fs_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `game_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '游戏类型',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '等级',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '等级名称',
  `quota` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '额度',
  `rate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '返水比例',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fs_level`
--

INSERT INTO `fs_level` (`id`, `game_type`, `level`, `name`, `quota`, `rate`, `created_at`, `updated_at`) VALUES
(4, 3, 1, '青铜会员', '1.00', '0.8', '2018-01-04 08:42:22', '2018-07-29 01:48:24'),
(3, 1, 1, '青铜会员', '1.00', '0.8', '2018-01-04 08:37:37', '2018-07-29 01:49:07'),
(5, 5, 1, '青铜会员', '1.00', '1', '2018-01-04 08:42:44', '2018-07-29 01:49:28'),
(6, 4, 1, '青铜会员', '1.00', '0.1', '2018-01-04 08:43:12', '2018-07-29 01:49:51'),
(7, 1, 2, '黄金会员', '100000.00', '1', '2018-01-04 08:44:38', '2018-07-29 01:55:23'),
(8, 3, 2, '黄金会员', '100000.00', '1', '2018-01-04 08:45:05', '2018-07-29 01:56:05'),
(9, 4, 2, '黄金会员', '100000.00', '0.2', '2018-01-04 08:45:31', '2018-07-29 01:56:15'),
(10, 5, 2, '黄金会员', '100000.00', '1.5', '2018-01-04 08:45:51', '2018-07-29 01:56:24'),
(15, 2, 2, '黄金会员', '100000.00', '1', '2018-07-29 01:54:41', '2018-07-29 01:56:33'),
(12, 6, 2, '黄金会员', '100000.00', '0.8', '2018-01-05 17:31:30', '2018-07-29 01:56:41'),
(13, 2, 1, '青铜会员', '1.00', '0.8', '2018-07-29 01:50:30', '2018-07-29 01:50:30'),
(14, 6, 1, '青铜会员', '1.00', '0.6', '2018-07-29 01:51:27', '2018-07-29 01:51:27'),
(16, 1, 3, '白金会员', '500000.00', '1.2', '2018-07-29 01:57:19', '2018-07-29 01:57:19'),
(17, 3, 3, '白金会员', '500000.00', '1.2', '2018-07-29 01:57:46', '2018-07-29 01:57:46'),
(18, 2, 3, '白金会员', '500000.00', '1.2', '2018-07-29 01:58:19', '2018-07-29 01:58:19'),
(19, 4, 3, '白金会员', '500000.00', '0.5', '2018-07-29 01:58:47', '2018-07-29 01:58:47'),
(20, 5, 3, '白金会员', '500000.00', '2', '2018-07-29 01:59:28', '2018-07-29 01:59:28'),
(21, 6, 3, '白金会员', '500000.00', '1', '2018-07-29 01:59:51', '2018-07-29 01:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `fs_log`
--

CREATE TABLE `fs_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL COMMENT '用户ID',
  `bet_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '下注金额',
  `yx_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '有效投注',
  `yingli` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '网站盈利',
  `fs_level` tinyint(4) NOT NULL COMMENT '返水等级',
  `fs_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '返水比率%',
  `fs_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '返水金额',
  `fs_order` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '返水批次号',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_lists`
--

CREATE TABLE `game_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL COMMENT '平台ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏名称',
  `en_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '英文名称',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '游戏分类',
  `client_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1PC 2手机',
  `game_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '游戏类型',
  `game_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏ID',
  `game_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏名',
  `game_line` tinyint(4) DEFAULT '1',
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机图片',
  `img_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机图片',
  `img_pc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC图片',
  `on_line` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线1下线',
  `is_hot` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0正常1热门',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '100' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_lists`
--

INSERT INTO `game_lists` (`id`, `api_id`, `name`, `en_name`, `type`, `client_type`, `game_type`, `game_id`, `game_name`, `game_line`, `img_path`, `img_phone`, `img_pc`, `on_line`, `is_hot`, `sort`, `created_at`, `updated_at`) VALUES
(1145, 6, '樱之恋', NULL, 1, 1, 3, 'chl', NULL, 5, 'Game_20171217231646.jpg', 'Game_20171217231646.jpg', 'Game_20171217231646.jpg', 0, 0, 82, '2017-12-17 16:16:46', '2018-01-26 05:34:07'),
(1146, 6, '亚特兰蒂斯女王', NULL, 1, 3, 3, 'gtsatq', NULL, 5, 'Game_20171217231730.jpg', 'Game_20171217231730.jpg', 'Game_20171217231730.jpg', 0, 0, 10, '2017-12-17 16:17:30', '2018-01-26 05:34:04'),
(1147, 6, '野生亚马逊', NULL, 1, 3, 3, 'ashamw', NULL, 5, 'Game_20171217231919.jpg', 'Game_20171217231919.jpg', 'Game_20171217231919.jpg', 0, 0, 80, '2017-12-17 16:19:19', '2018-01-26 05:33:56'),
(1148, 6, '烈焰钻石', NULL, 1, 3, 3, 'ght_a', NULL, 5, 'Game_20171217232006.jpg', 'Game_20171217232006.jpg', 'Game_20171217232006.jpg', 0, 0, 13, '2017-12-17 16:20:06', '2018-01-26 05:34:00'),
(1149, 6, '武则天', NULL, 1, 1, 3, 'heavru', NULL, 5, 'Game_20171217232221.jpg', 'Game_20171217232221.jpg', 'Game_20171217232221.jpg', 0, 0, 16, '2017-12-17 16:22:21', '2017-12-17 16:22:24'),
(1150, 6, '宝石女王', NULL, 1, 3, 3, 'gemq', NULL, 5, 'Game_20171217232337.jpg', 'Game_20171217232337.jpg', 'Game_20171217232337.jpg', 0, 0, 80, '2017-12-17 16:23:37', '2018-01-26 05:35:35'),
(1151, 6, '白狮', NULL, 1, 1, 3, 'bs', NULL, 5, 'Game_20171217232656.jpg', 'Game_20171217232656.jpg', 'Game_20171217232656.jpg', 0, 0, 79, '2017-12-17 16:26:56', '2018-01-26 05:35:32'),
(1152, 6, '炙热宝石', NULL, 1, 1, 3, 'gts50', NULL, 5, 'Game_20171217232823.jpg', 'Game_20171217232823.jpg', 'Game_20171217232823.jpg', 0, 0, 77, '2017-12-17 16:28:23', '2018-01-26 05:35:29'),
(1153, 6, '飞龙在天', NULL, 1, 1, 3, 'gtsflzt', NULL, 5, 'Game_20171217234242.jpg', 'Game_20171217234242.jpg', 'Game_20171217234242.jpg', 0, 0, 18, '2017-12-17 16:42:42', '2018-01-26 05:35:25'),
(1154, 6, '熊之舞', NULL, 1, 3, 3, 'bob', NULL, 5, 'Game_20171217234631.jpg', 'Game_20171217234631.jpg', 'Game_20171217234631.jpg', 0, 0, 18, '2017-12-17 16:46:31', '2018-01-26 05:35:22'),
(1155, 6, '权杖女王', NULL, 1, 1, 3, 'qnw', NULL, 5, 'Game_20171217234819.jpg', 'Game_20171217234819.jpg', 'Game_20171217234819.jpg', 0, 0, 146, '2017-12-17 16:48:19', '2018-01-26 05:35:19'),
(1156, 6, '好事成双', NULL, 1, 1, 3, 'haocs', NULL, 5, 'Game_20171217234913.jpg', 'Game_20171217234913.jpg', 'Game_20171217234913.jpg', 0, 0, 2, '2017-12-17 16:49:13', '2018-01-26 05:35:16'),
(1157, 6, '金钱蛙', NULL, 1, 3, 3, 'jqw', NULL, 5, 'Game_20171217235036.jpg', 'Game_20171217235036.jpg', 'Game_20171217235036.jpg', 0, 0, 3, '2017-12-17 16:50:36', '2018-01-26 05:35:14'),
(1158, 6, '大蓝', NULL, 1, 3, 3, 'bib', NULL, 5, 'Game_20171217235127.jpg', 'Game_20171217235127.jpg', 'Game_20171217235127.jpg', 0, 0, 86, '2017-12-17 16:51:27', '2018-01-26 05:35:10'),
(1159, 6, '亚洲幻想', NULL, 1, 1, 3, 'asfa', NULL, 5, 'Game_20171217235223.jpg', 'Game_20171217235223.jpg', 'Game_20171217235223.jpg', 0, 0, 88, '2017-12-17 16:52:23', '2018-01-26 05:35:06'),
(1160, 6, '埃及旋转', NULL, 1, 1, 3, 'egspin', NULL, 5, 'Game_20171217235303.jpg', 'Game_20171217235303.jpg', 'Game_20171217235303.jpg', 0, 0, 70, '2017-12-17 16:53:03', '2018-01-26 05:35:03'),
(1161, 6, '野生精神', NULL, 1, 3, 3, 'wis', NULL, 5, 'Game_20171218120708.jpg', 'Game_20171218120708.jpg', 'Game_20171218120708.jpg', 0, 0, 192, '2017-12-18 05:07:08', '2018-01-26 05:34:59'),
(1162, 6, '情圣博士', NULL, 1, 3, 3, 'dlm', NULL, 4, 'Game_20171218120801.jpg', 'Game_20171218120801.jpg', 'Game_20171218120801.jpg', 0, 0, 49, '2017-12-18 05:08:01', '2018-01-26 05:34:56'),
(1163, 6, '黄金之翼', NULL, 1, 3, 3, 'gtswng', NULL, 4, 'Game_20171218120850.jpg', 'Game_20171218120850.jpg', 'Game_20171218120850.jpg', 0, 0, 193, '2017-12-18 05:08:50', '2018-01-26 05:34:52'),
(1164, 6, '众神时代:命运姐妹', NULL, 1, 3, 3, 'ftsis', NULL, 4, 'Game_20171218120935.jpg', 'Game_20171218120935.jpg', 'Game_20171218120935.jpg', 0, 0, 56, '2017-12-18 05:09:35', '2018-01-26 05:34:49'),
(1165, 6, '龙王国', NULL, 1, 3, 3, 'gtsdgk', NULL, 4, 'Game_20171218121051.jpg', 'Game_20171218121051.jpg', 'Game_20171218121051.jpg', 0, 0, 50, '2017-12-18 05:10:51', '2018-01-26 05:36:33'),
(1166, 6, '现金彩色方块', NULL, 1, 1, 3, 'gtscb', NULL, 4, 'Game_20171218121216.jpg', 'Game_20171218121216.jpg', 'Game_20171218121216.jpg', 0, 0, 31, '2017-12-18 05:12:16', '2018-01-26 05:36:28'),
(1167, 8, '顶级王牌明星', NULL, 1, 1, 3, 'ttc', NULL, 4, 'Game_20171218121316.jpg', 'Game_20171218121316.jpg', 'Game_20171218121316.jpg', 0, 0, 181, '2017-12-18 05:13:16', '2018-01-26 05:36:25'),
(1168, 6, '沙漠宝藏2', NULL, 1, 1, 3, 'dt2', NULL, 4, 'Game_20171218125259.jpg', 'Game_20171218125259.jpg', 'Game_20171218125259.jpg', 0, 0, 46, '2017-12-18 05:52:59', '2018-01-27 18:24:08'),
(1169, 6, '无畏的戴夫', NULL, 1, 1, 3, 'gtsdrdv', NULL, 4, 'Game_20171218125553.jpg', 'Game_20171218125553.jpg', 'Game_20171218125553.jpg', 0, 0, 44, '2017-12-18 05:54:47', '2018-01-26 05:36:17'),
(1170, 6, '蒙提·派森之火腿骑士', NULL, 1, 1, 3, 'ashlob', NULL, 4, 'Game_20171218125659.jpg', 'Game_20171218125659.jpg', 'Game_20171218125659.jpg', 0, 0, 127, '2017-12-18 05:56:59', '2018-01-26 05:36:13'),
(1171, 6, '财富小姐', NULL, 1, 1, 3, 'mfrt', NULL, 4, 'Game_20171218125822.jpg', 'Game_20171218125822.jpg', 'Game_20171218125822.jpg', 0, 0, 126, '2017-12-18 05:58:22', '2018-01-26 05:36:09'),
(1172, 6, '幸运日', NULL, 1, 1, 3, 'fday', NULL, 4, 'Game_20171218125915.jpg', 'Game_20171218125915.jpg', 'Game_20171218125915.jpg', 0, 0, 66, '2017-12-18 05:59:15', '2018-01-26 05:36:07'),
(1173, 6, '足球嘉年华', NULL, 1, 3, 3, 'gtsfc', NULL, 4, 'Game_20171218130028.jpg', 'Game_20171218130028.jpg', 'Game_20171218130028.jpg', 0, 0, 62, '2017-12-18 06:00:28', '2018-01-27 18:24:01'),
(1174, 6, '维京狂热', NULL, 1, 3, 3, 'gts52', NULL, 4, 'Game_20171218130148.jpg', 'Game_20171218130148.jpg', 'Game_20171218130148.jpg', 0, 0, 188, '2017-12-18 06:01:48', '2018-01-26 05:36:00'),
(1175, 6, '维加斯的猫', NULL, 1, 3, 3, 'ctiv', NULL, 4, 'Game_20171218130344.jpg', 'Game_20171218130344.jpg', 'Game_20171218130344.jpg', 0, 0, 33, '2017-12-18 06:03:44', '2018-01-26 05:35:56'),
(1176, 6, '五路财神', NULL, 1, 3, 3, 'wlcsh', NULL, 4, 'Game_20171218130441.jpg', 'Game_20171218130441.jpg', 'Game_20171218130441.jpg', 0, 0, 196, '2017-12-18 06:04:41', '2018-01-27 18:23:56'),
(1177, 6, '狂野赌徒2：北极探险', NULL, 1, 3, 3, 'ashwgaa', NULL, 4, 'Game_20171218130609.jpg', 'Game_20171218130609.jpg', 'Game_20171218130609.jpg', 0, 0, 17, '2017-12-18 06:06:09', '2018-01-26 05:35:47'),
(1178, 6, '野生赌徒/动物世界', NULL, 1, 3, 3, 'gtswg', NULL, 4, 'Game_20171218130715.jpg', 'Game_20171218130715.jpg', 'Game_20171218130715.jpg', 0, 0, 190, '2017-12-18 06:07:15', '2018-01-26 05:35:44'),
(1179, 6, '真爱', NULL, 1, 1, 3, 'trl', NULL, 4, 'Game_20171218130902.jpg', 'Game_20171218130902.jpg', 'Game_20171218130902.jpg', 0, 0, 184, '2017-12-18 06:09:02', '2018-01-26 05:35:40'),
(1180, 6, '孙悟空', NULL, 1, 1, 3, 'gtsswk', NULL, 4, 'Game_20171218131218.jpg', 'Game_20171218131218.jpg', 'Game_20171218131218.jpg', 0, 0, 167, '2017-12-18 06:12:18', '2018-01-26 05:37:27'),
(1181, 6, '神探夏洛克', NULL, 1, 3, 3, 'shmst', NULL, 4, 'Game_20171218131347.jpg', 'Game_20171218131347.jpg', 'Game_20171218131347.jpg', 0, 0, 167, '2017-12-18 06:13:47', '2018-01-26 05:37:24'),
(1182, 6, '亚马逊的秘密', NULL, 1, 3, 3, 'samz', NULL, 4, 'Game_20171218131501.jpg', 'Game_20171218131501.jpg', 'Game_20171218131501.jpg', 0, 0, 156, '2017-12-18 06:15:01', '2018-01-26 05:37:21'),
(1183, 6, '圣诞老人惊喜/圣诞惊喜', NULL, 1, 3, 3, 'ssp', NULL, 4, 'Game_20171218131656.jpg', 'Game_20171218131656.jpg', 'Game_20171218131656.jpg', 0, 0, 155, '2017-12-18 06:16:56', '2018-01-26 05:37:17'),
(1184, 6, '罗马和荣耀', NULL, 1, 1, 3, 'gtsrng', NULL, 4, 'Game_20171218131818.jpg', 'Game_20171218131818.jpg', 'Game_20171218131818.jpg', 0, 0, 151, '2017-12-18 06:18:18', '2018-01-26 05:37:13'),
(1185, 6, '大量的财富/巨额财宝', NULL, 1, 3, 3, 'gtspor', NULL, 4, 'Game_20171218131942.jpg', 'Game_20171218131942.jpg', 'Game_20171218131942.jpg', 0, 0, 20, '2017-12-18 06:19:42', '2018-01-26 05:37:10'),
(1186, 6, '法老的秘密', NULL, 1, 3, 3, 'pst', NULL, 4, 'Game_20171218132131.jpg', 'Game_20171218132131.jpg', 'Game_20171218132131.jpg', 0, 0, 136, '2017-12-18 06:21:31', '2018-01-26 05:37:07'),
(1187, 6, '企鹅的假期', NULL, 1, 3, 3, 'pgv', NULL, 4, 'Game_20171218132202.jpg', 'Game_20171218132202.jpg', 'Game_20171218132202.jpg', 0, 0, 23, '2017-12-18 06:22:02', '2018-01-26 05:37:04'),
(1188, 6, '现金返还先生/大富豪', NULL, 1, 3, 3, 'mcb', NULL, 4, 'Game_20171218132357.jpg', 'Game_20171218132357.jpg', 'Game_20171218132357.jpg', 0, 0, 128, '2017-12-18 06:23:57', '2018-01-26 05:37:01'),
(1189, 6, '玛丽莲梦露', NULL, 1, 3, 3, 'gtsmrln', NULL, 4, 'Game_20171218132501.jpg', 'Game_20171218132501.jpg', 'Game_20171218132501.jpg', 0, 0, 120, '2017-12-18 06:25:01', '2018-01-26 05:36:56'),
(1190, 6, '神奇的堆栈', NULL, 1, 3, 3, 'mgstk', NULL, 4, 'Game_20171218132553.jpg', 'Game_20171218132553.jpg', 'Game_20171218132553.jpg', 0, 0, 124, '2017-12-18 06:25:53', '2018-01-26 05:36:52'),
(1191, 6, '疯狂乐透', NULL, 1, 3, 3, 'lm', NULL, 4, 'Game_20171218132638.jpg', 'Game_20171218132638.jpg', 'Game_20171218132638.jpg', 0, 0, 124, '2017-12-18 06:26:38', '2018-01-26 05:36:49'),
(1192, 6, '第八大奇迹', NULL, 1, 3, 3, 'kkg', NULL, 4, 'Game_20171218132737.jpg', 'Game_20171218132737.jpg', 'Game_20171218132737.jpg', 0, 0, 105, '2017-12-18 06:27:37', '2018-01-26 05:36:46'),
(1193, 6, '艺妓的故事Jackpot', NULL, 1, 1, 3, 'gesjp', NULL, 4, 'Game_20171218133034.jpg', 'Game_20171218133034.jpg', 'Game_20171218133034.jpg', 0, 0, 79, '2017-12-18 06:30:34', '2018-01-26 05:36:43'),
(1194, 6, '艺妓的故事/艺伎回忆录', NULL, 1, 3, 3, 'gesjp', NULL, 4, 'Game_20171218133226.jpg', 'Game_20171218133226.jpg', 'Game_20171218133226.jpg', 0, 0, 56, '2017-12-18 06:32:26', '2018-01-26 05:36:40'),
(1195, 6, '酷炫水果农场', NULL, 1, 3, 3, 'fff', NULL, 4, 'Game_20171218133324.jpg', 'Game_20171218133324.jpg', 'Game_20171218133324.jpg', 0, 0, 25, '2017-12-18 06:33:24', '2018-01-27 18:23:38'),
(1196, 6, '满月财富', NULL, 1, 3, 3, 'ashfmf', NULL, 4, 'Game_20171218133538.jpg', 'Game_20171218133538.jpg', 'Game_20171218133538.jpg', 0, 0, 73, '2017-12-18 06:35:38', '2018-01-27 18:23:33'),
(1197, 6, '翡翠公主', NULL, 1, 3, 3, 'fcgz', NULL, 4, 'Game_20171218133640.jpg', 'Game_20171218133640.jpg', 'Game_20171218133640.jpg', 0, 0, 57, '2017-12-18 06:36:40', '2018-01-26 05:38:09'),
(1198, 6, '复活节惊喜/复活节大惊喜', NULL, 1, 3, 3, 'eas', NULL, 4, 'Game_20171218133746.jpg', 'Game_20171218133746.jpg', 'Game_20171218133746.jpg', 0, 0, 51, '2017-12-18 06:37:46', '2018-01-26 05:38:05'),
(1199, 6, '海豚礁', NULL, 1, 3, 3, 'dnr', NULL, 4, 'Game_20171218133932.jpg', 'Game_20171218133932.jpg', 'Game_20171218133932.jpg', 0, 0, 48, '2017-12-18 06:39:32', '2018-01-26 05:38:02'),
(1200, 8, '沙漠之宝/沙漠寻宝', NULL, 1, 1, 3, 'dt', NULL, 4, 'Game_20171218134228.jpg', 'Game_20171218134228.jpg', 'Game_20171218134228.jpg', 0, 0, 46, '2017-12-18 06:42:28', '2018-01-26 05:37:59'),
(1201, 6, '财宝箱', NULL, 1, 3, 3, 'ashcpl', NULL, 4, 'Game_20171218134328.jpg', 'Game_20171218134328.jpg', 'Game_20171218134328.jpg', 0, 0, 38, '2017-12-18 06:43:28', '2018-01-27 18:23:29'),
(1202, 6, '船长的宝藏2', NULL, 1, 1, 3, 'ctp2', NULL, 4, 'Game_20171218134631.jpg', 'Game_20171218134631.jpg', 'Game_20171218134631.jpg', 0, 0, 29, '2017-12-18 06:44:12', '2018-01-26 05:37:53'),
(1203, 6, '众神的时代', NULL, 1, 3, 3, 'aogs', NULL, 4, 'Game_20171218134646.jpg', 'Game_20171218134646.jpg', 'Game_20171218134646.jpg', 0, 0, 15, '2017-12-18 06:45:14', '2018-01-26 05:37:50'),
(1204, 6, '狂欢夜', NULL, 1, 3, 3, 'hb', NULL, 4, 'Game_20171218134747.jpg', 'Game_20171218134747.jpg', 'Game_20171218134747.jpg', 0, 0, 23, '2017-12-18 06:47:47', '2018-01-27 18:23:23'),
(1205, 6, '游猎炙热', NULL, 1, 1, 3, 'sfh', NULL, 4, 'Game_20171218134858.jpg', 'Game_20171218134858.jpg', 'Game_20171218134858.jpg', 0, 0, 153, '2017-12-18 06:48:58', '2018-01-26 05:37:43'),
(1206, 6, '满月财富', NULL, 1, 1, 3, 'pmn', NULL, 4, 'Game_20171218134949.jpg', 'Game_20171218134949.jpg', 'Game_20171218134949.jpg', 0, 0, 56, '2017-12-18 06:49:49', '2018-01-26 05:37:40'),
(1207, 6, '万圣节财富', NULL, 1, 1, 3, 'hlf', NULL, 4, 'Game_20171218135037.jpg', 'Game_20171218135037.jpg', 'Game_20171218135037.jpg', 0, 0, 88, '2017-12-18 06:50:37', '2018-01-27 18:23:19'),
(1208, 6, '跳跳猫猫', NULL, 1, 1, 3, 'titimama', NULL, 4, 'Game_20171218135132.jpg', 'Game_20171218135132.jpg', 'Game_20171218135132.jpg', 0, 0, 5, '2017-12-18 06:51:32', '2018-01-26 05:37:34'),
(1209, 6, '丛林巫师', NULL, 1, 1, 3, 'ub', NULL, 2, 'Game_20171218140405.jpg', 'Game_20171218140405.jpg', 'Game_20171218140405.jpg', 0, 0, 117, '2017-12-18 07:03:53', '2018-01-26 05:37:32'),
(1210, 6, '黄金之地', NULL, 1, 3, 3, 'lndg', NULL, 5, 'Game_20171218140701.jpg', 'Game_20171218140701.jpg', 'Game_20171218140701.jpg', 0, 0, 1, '2017-12-18 07:07:01', '2018-01-27 18:23:04'),
(1211, 6, '水果狂', NULL, 1, 3, 3, 'fmn', NULL, 3, 'Game_20171218142528.jpg', 'Game_20171218142528.jpg', 'Game_20171218142528.jpg', 0, 0, 31, '2017-12-18 07:25:28', '2018-01-26 05:38:56'),
(1212, 6, '金色召集', NULL, 1, 3, 3, 'grel', NULL, 3, 'Game_20171218144032.jpg', 'Game_20171218144032.jpg', 'Game_20171218144032.jpg', 0, 0, 83, '2017-12-18 07:40:32', '2018-01-26 05:38:52'),
(1213, 6, '金字塔女王', NULL, 1, 1, 3, 'qop', NULL, 3, 'Game_20171218144118.jpg', 'Game_20171218144118.jpg', 'Game_20171218144118.jpg', 0, 0, 145, '2017-12-18 07:41:18', '2018-01-26 05:38:49'),
(1214, 6, '奢华假日', NULL, 1, 1, 3, 'vcstd', NULL, 3, 'Game_20171218144213.png', 'Game_20171218144213.png', 'Game_20171218144213.png', 0, 0, 50, '2017-12-18 07:42:13', '2018-01-26 05:38:47'),
(1215, 6, '大明帝国', NULL, 1, 1, 3, 'gtsgme', NULL, 3, 'Game_20171218144314.jpg', 'Game_20171218144314.jpg', 'Game_20171218144314.jpg', 0, 0, 174, '2017-12-18 07:43:14', '2018-01-27 18:22:58'),
(1216, 6, '银弹', NULL, 1, 3, 3, 'sib', NULL, 3, 'Game_20171218144404.jpg', 'Game_20171218144404.jpg', 'Game_20171218144404.jpg', 0, 0, 56, '2017-12-18 07:44:04', '2018-01-26 05:38:39'),
(1217, 6, '四象', NULL, 1, 1, 3, 'sx', NULL, 3, 'Game_20171218161412.jpg', 'Game_20171218161412.jpg', 'Game_20171218161412.jpg', 0, 0, 6, '2017-12-18 07:46:49', '2018-01-26 05:38:36'),
(1218, 6, '紫色热', NULL, 1, 1, 3, 'photk', NULL, 3, 'Game_20171218144742.jpg', 'Game_20171218144742.jpg', 'Game_20171218144742.jpg', 0, 0, 143, '2017-12-18 07:47:42', '2018-01-26 05:38:33'),
(1219, 6, '海王星王国', NULL, 1, 3, 3, 'nk', NULL, 3, 'Game_20171218144957.jpg', 'Game_20171218144957.jpg', 'Game_20171218144957.jpg', 0, 0, 143, '2017-12-18 07:49:57', '2018-01-26 05:38:30'),
(1220, 6, '高速公路临国王', NULL, 1, 1, 3, 'gtshwkp', NULL, 2, 'Game_20171218153417.jpg', 'Game_20171218153417.jpg', 'Game_20171218153417.jpg', 0, 0, 93, '2017-12-18 08:34:17', '2018-01-26 05:38:27'),
(1221, 6, '鬼屋', NULL, 1, 1, 3, 'hh', NULL, 3, 'Game_20171218153627.jpg', 'Game_20171218153627.jpg', 'Game_20171218153627.jpg', 0, 0, 90, '2017-12-18 08:36:27', '2018-01-26 05:38:23'),
(1222, 6, '青春之泉', NULL, 1, 3, 3, 'foy', NULL, 3, 'Game_20171218153853.jpg', 'Game_20171218153853.jpg', 'Game_20171218153853.jpg', 0, 0, 69, '2017-12-18 08:38:53', '2018-01-26 05:38:20'),
(1223, 6, '全民大奖', NULL, 1, 3, 3, 'evj', NULL, 3, 'Game_20171218153942.jpg', 'Game_20171218153942.jpg', 'Game_20171218153942.jpg', 0, 0, 54, '2017-12-18 08:39:42', '2018-01-26 06:01:33'),
(1224, 6, '中国厨房', NULL, 1, 1, 3, 'cm', NULL, 3, 'Game_20171218154023.jpg', 'Game_20171218154023.jpg', 'Game_20171218154023.jpg', 0, 0, 39, '2017-12-18 08:40:23', '2018-01-26 05:05:18'),
(1225, 6, '百慕大三角', NULL, 1, 3, 3, 'bt', NULL, 3, 'Game_20171218154107.jpg', 'Game_20171218154107.jpg', 'Game_20171218154107.jpg', 0, 0, 21, '2017-12-18 08:41:07', '2018-01-26 05:05:14'),
(1226, 6, '幸运船长5', NULL, 1, 3, 3, 'frtf', NULL, 3, 'Game_20171218154730.jpg', 'Game_20171218154730.jpg', 'Game_20171218154730.jpg', 0, 0, 65, '2017-12-18 08:47:30', '2018-01-26 05:05:11'),
(1227, 6, '幸运狮子', NULL, 1, 1, 3, 'frtln', NULL, 3, 'Game_20171218154819.jpg', 'Game_20171218154819.jpg', 'Game_20171218154819.jpg', 0, 0, 67, '2017-12-18 08:48:19', '2018-01-26 05:05:07'),
(1228, 6, '豪华版仙境大冒险', NULL, 1, 1, 3, 'ashadv', NULL, 3, 'Game_20171218154958.jpg', 'Game_20171218154958.jpg', 'Game_20171218154958.jpg', 0, 0, 5, '2017-12-18 08:49:58', '2018-01-26 05:59:50'),
(1229, 6, '五虎将', NULL, 1, 1, 3, 'ftg', NULL, 3, 'Game_20171218155117.jpg', 'Game_20171218155117.jpg', 'Game_20171218155117.jpg', 0, 0, 61, '2017-12-18 08:51:17', '2018-01-27 18:22:44'),
(1230, 6, '疯狂麻将', NULL, 1, 3, 3, 'fkmj', NULL, 3, 'Game_20171218155202.jpg', 'Game_20171218155202.jpg', 'Game_20171218155202.jpg', 0, 0, 59, '2017-12-18 08:52:02', '2018-01-26 05:58:50'),
(1231, 6, '公路王国', NULL, 1, 3, 3, 'hk', NULL, 3, 'Game_20171218155355.jpg', 'Game_20171218155355.jpg', 'Game_20171218155355.jpg', 0, 0, 92, '2017-12-18 08:53:55', '2018-01-26 05:04:56'),
(1232, 6, '招财进宝彩池', NULL, 1, 1, 3, 'zcjbjp', NULL, 3, 'Game_20171218155512.jpg', 'Game_20171218155512.jpg', 'Game_20171218155512.jpg', 0, 0, 1, '2017-12-18 08:55:12', '2018-01-26 06:01:27'),
(1233, 6, '船长的宝藏', NULL, 1, 3, 3, 'ct', NULL, 3, 'Game_20171218155610.jpg', 'Game_20171218155610.jpg', 'Game_20171218155610.jpg', 0, 0, 13, '2017-12-18 08:56:10', '2018-01-26 06:01:21'),
(1234, 6, '招财童子', NULL, 1, 3, 3, 'zctz', NULL, 3, 'Game_20171218155700.jpg', 'Game_20171218155700.jpg', 'Game_20171218155700.jpg', 0, 0, 2, '2017-12-18 08:57:00', '2018-01-27 18:22:37'),
(1235, 6, '年年有余', NULL, 1, 3, 3, 'nian_k', NULL, 3, 'Game_20171218155735.jpg', 'Game_20171218155735.jpg', 'Game_20171218155735.jpg', 0, 0, 2, '2017-12-18 08:57:35', '2018-01-27 18:22:29'),
(1236, 6, '招财进宝', NULL, 1, 3, 3, 'zcjb', NULL, 3, 'Game_20171218155840.jpg', 'Game_20171218155840.jpg', 'Game_20171218155840.jpg', 0, 0, 2, '2017-12-18 08:58:40', '2018-01-26 05:58:37'),
(1237, 6, '三倍猴子', NULL, 1, 3, 3, 'trpmnk', NULL, 3, 'Game_20171218155908.jpg', 'Game_20171218155908.jpg', 'Game_20171218155908.jpg', 0, 0, 3, '2017-12-18 08:59:08', '2018-01-26 06:02:05'),
(1238, 7, '燃情欲火', NULL, 1, 3, 3, 'BurningDesire', NULL, 6, 'Game_20171218170159.jpg', 'Game_20171218170159.jpg', 'Game_20171218170159.jpg', 0, 0, 6, '2017-12-18 10:01:59', '2017-12-18 10:02:03'),
(1239, 7, '花花公子', NULL, 1, 3, 3, 'Playboy', NULL, 4, 'Game_20171218170501.jpg', 'Game_20171218170501.jpg', 'Game_20171218170501.jpg', 0, 0, 5, '2017-12-18 10:05:01', '2018-01-26 05:39:06'),
(1240, 7, '迷失拉斯维加斯', NULL, 1, 3, 3, 'lostVegas', NULL, 6, 'Game_20171218170748.jpg', 'Game_20171218170748.jpg', 'Game_20171218170748.jpg', 0, 0, 5, '2017-12-18 10:07:48', '2018-01-27 18:22:11'),
(1241, 7, '幸运龙宝贝', NULL, 1, 3, 3, 'Dragonz', NULL, 6, 'Game_20171218170826.jpg', 'Game_20171218170826.jpg', 'Game_20171218170826.jpg', 0, 0, 100, '2017-12-18 10:08:26', '2018-01-27 18:22:15'),
(1242, 7, '打劫银行', NULL, 1, 1, 3, 'BustTheBank', NULL, 6, 'Game_20171218170928.jpg', 'Game_20171218170928.jpg', 'Game_20171218170928.jpg', 0, 0, 6, '2017-12-18 10:09:28', '2018-01-27 18:22:06'),
(1243, 7, '篮球巨星', NULL, 1, 3, 3, 'BasketballStar', NULL, 6, 'Game_20171218172301.jpg', 'Game_20171218172301.jpg', 'Game_20171218172301.jpg', 0, 0, 57, '2017-12-18 10:23:01', '2018-01-26 05:39:49'),
(1244, 7, '奇妙马戏团', NULL, 1, 3, 3, 'TheTwistedCircus', NULL, 6, 'Game_20171218172417.jpg', 'Game_20171218172417.jpg', 'Game_20171218172417.jpg', 0, 0, 405, '2017-12-18 10:24:17', '2018-01-26 05:39:45'),
(1245, 7, '冰球突破', NULL, 1, 3, 3, 'BreakAway', NULL, 6, 'Game_20171218172513.jpg', 'Game_20171218172513.jpg', 'Game_20171218172513.jpg', 0, 0, 1, '2017-12-18 10:25:13', '2018-01-26 05:39:42'),
(1246, 7, '不朽情缘', NULL, 1, 3, 3, 'ImmortalRomance', NULL, 6, 'Game_20171218172603.jpg', 'Game_20171218172603.jpg', 'Game_20171218172603.jpg', 0, 0, 2, '2017-12-18 10:26:03', '2018-01-26 05:39:38'),
(1247, 7, '东方珍兽', NULL, 1, 3, 3, 'wildorient', NULL, 3, 'Game_20171218172756.jpg', 'Game_20171218172756.jpg', 'Game_20171218172756.jpg', 0, 0, 446, '2017-12-18 10:27:56', '2018-01-27 18:22:02'),
(1248, 7, '舞龙', NULL, 1, 3, 3, 'dragondance', NULL, 3, 'Game_20171218172840.jpg', 'Game_20171218172840.jpg', 'Game_20171218172840.jpg', 0, 0, 138, '2017-12-18 10:28:40', '2018-01-27 18:21:57'),
(1249, 7, '神秘圣诞老人', NULL, 1, 1, 3, 'SecretSanta', NULL, 6, 'Game_20171218173016.jpg', 'Game_20171218173016.jpg', 'Game_20171218173016.jpg', 0, 0, 354, '2017-12-18 10:30:16', '2018-01-26 05:39:28'),
(1250, 7, '联盟的财富', NULL, 1, 1, 3, 'LeaguesOfFortune', NULL, 6, 'Game_20171218181119.jpg', 'Game_20171218181119.jpg', 'Game_20171218181119.jpg', 0, 0, 242, '2017-12-18 11:11:19', '2018-01-26 05:39:25'),
(1251, 7, '北极宝藏', NULL, 1, 1, 3, 'ArcticFortune', NULL, 6, 'Game_20171218181244.jpg', 'Game_20171218181244.jpg', 'Game_20171218181244.jpg', 0, 0, 44, '2017-12-18 11:12:44', '2017-12-18 11:17:07'),
(1252, 7, '野生捕捉', NULL, 1, 1, 3, 'WildCatch', NULL, 6, NULL, NULL, NULL, 0, 0, 444, '2017-12-18 11:17:04', '2018-01-26 05:39:21'),
(1253, 7, '维多利亚时代的恶棍', NULL, 1, 1, 3, 'VictorianVillain', NULL, 6, 'Game_20171218181802.jpg', 'Game_20171218181802.jpg', 'Game_20171218181802.jpg', 0, 0, 434, '2017-12-18 11:18:02', '2018-01-26 05:39:17'),
(1254, 7, '野性狼原', NULL, 1, 1, 3, 'UntamedWolfPack', NULL, 6, 'Game_20171218181916.jpg', 'Game_20171218181916.jpg', 'Game_20171218181916.jpg', 0, 0, 434, '2017-12-18 11:19:16', '2018-01-26 05:39:13'),
(1255, 7, '野外大熊猫', NULL, 1, 3, 3, 'UntamedGiantPanda', NULL, 6, 'Game_20171218182006.jpg', 'Game_20171218182006.jpg', 'Game_20171218182006.jpg', 0, 0, 425, '2017-12-18 11:20:06', '2018-01-26 05:40:54'),
(1256, 7, '皇冠野鹰', NULL, 1, 1, 3, 'UntamedCrownedEagle', NULL, 6, 'Game_20171218182106.jpg', 'Game_20171218182106.jpg', 'Game_20171218182106.jpg', 0, 0, 424, '2017-12-18 11:21:06', '2018-01-26 05:40:49'),
(1257, 7, '孟加拉虎', NULL, 1, 1, 3, 'UntamedBengalTiger', NULL, 6, 'Game_20171218182203.jpg', 'Game_20171218182203.jpg', 'Game_20171218182203.jpg', 0, 0, 423, '2017-12-18 11:22:03', '2018-01-26 05:40:45'),
(1258, 7, '雷霆万钧2', NULL, 1, 3, 3, 'Thunderstruck2', NULL, 6, 'Game_20171218182326.jpg', 'Game_20171218182326.jpg', 'Game_20171218182326.jpg', 0, 0, 408, '2017-12-18 11:23:26', '2018-01-26 05:40:42'),
(1259, 7, '奢华人生', NULL, 1, 1, 3, 'TheFinerReelsOfLife', NULL, 6, 'Game_20171218182449.jpg', 'Game_20171218182449.jpg', 'Game_20171218182449.jpg', 0, 0, 400, '2017-12-18 11:24:49', '2018-01-26 05:40:39'),
(1260, 7, '终结者2', NULL, 1, 1, 3, 'Terminator2', NULL, 6, 'Game_20171218183241.jpg', 'Game_20171218183241.jpg', 'Game_20171218183241.jpg', 0, 0, 399, '2017-12-18 11:32:41', '2018-01-27 18:21:44'),
(1261, 7, '冲浪旅行', NULL, 1, 1, 3, 'SurfSafari', NULL, 6, 'Game_20171218184146.jpg', 'Game_20171218184146.jpg', 'Game_20171218184146.jpg', 0, 0, 394, '2017-12-18 11:41:46', '2018-01-26 05:40:33'),
(1262, 7, '疯狂圣诞之旅', NULL, 1, 1, 3, 'SantasWildRide', NULL, 6, 'Game_20171218184223.jpg', 'Game_20171218184223.jpg', 'Game_20171218184223.jpg', 0, 0, 350, '2017-12-18 11:42:23', '2018-01-26 05:40:30'),
(1263, 7, '罗伯杰克', NULL, 1, 1, 3, 'RoboJack', NULL, 6, 'Game_20171218184313.jpg', 'Game_20171218184313.jpg', 'Game_20171218184313.jpg', 0, 0, 343, '2017-12-18 11:43:13', '2018-01-26 05:40:27'),
(1264, 7, '超级赛车', NULL, 1, 1, 3, 'RacingForPinks', NULL, 6, 'Game_20171218184358.jpg', 'Game_20171218184358.jpg', 'Game_20171218184358.jpg', 0, 0, 328, '2017-12-18 11:43:58', '2018-01-27 18:21:35'),
(1265, 7, '漂亮猫咪', NULL, 1, 3, 3, 'PrettyKitty', NULL, 6, 'Game_20171218184446.jpg', 'Game_20171218184446.jpg', 'Game_20171218184446.jpg', 0, 0, 324, '2017-12-18 11:44:46', '2018-01-26 05:40:20'),
(1266, 7, '章鱼宝藏', NULL, 1, 3, 3, 'Octopays', NULL, 6, 'Game_20171218184621.jpg', 'Game_20171218184621.jpg', 'Game_20171218184621.jpg', 0, 0, 300, '2017-12-18 11:46:21', '2018-01-26 05:40:17'),
(1267, 7, '神秘的森林', NULL, 1, 1, 3, 'MystiqueGrove', NULL, 6, NULL, NULL, NULL, 0, 0, 298, '2017-12-18 11:46:58', '2018-01-26 05:40:13'),
(1268, 7, '神秘的梦', NULL, 1, 3, 3, 'MysticDreams', NULL, 6, 'Game_20171218190346.jpg', 'Game_20171218190346.jpg', 'Game_20171218190346.jpg', 0, 0, 297, '2017-12-18 12:03:46', '2018-01-26 05:40:05'),
(1269, 7, '最大伤害', NULL, 1, 1, 3, 'MaxDamageSlot', NULL, 6, 'Game_20171218190518.jpg', 'Game_20171218190518.jpg', 'Game_20171218190518.jpg', 0, 0, 262, '2017-12-18 12:05:18', '2018-01-26 05:40:09'),
(1270, 7, '招财鞭炮', NULL, 1, 1, 3, 'LuckyFirecracker', NULL, 6, 'Game_20171218190624.jpg', 'Game_20171218190624.jpg', 'Game_20171218190624.jpg', 0, 0, 251, '2017-12-18 12:06:24', '2018-01-26 05:41:55'),
(1271, 7, '炮炮堂', NULL, 1, 1, 3, 'LooseCannon', NULL, 6, 'Game_20171218190755.jpg', 'Game_20171218190755.jpg', 'Game_20171218190755.jpg', 0, 0, 248, '2017-12-18 12:07:55', '2018-01-26 05:41:52'),
(1272, 7, '躲猫猫', NULL, 1, 1, 3, 'PeekaBoo5Reel', NULL, 5, 'Game_20171218190810.jpg', 'Game_20171218190810.jpg', 'Game_20171218190810.jpg', 0, 0, 305, '2017-12-18 12:08:10', '2018-01-26 05:41:49'),
(1273, 7, '侏罗纪公园', NULL, 1, 1, 3, 'JurassicPark', NULL, 6, 'Game_20171218191023.jpg', 'Game_20171218191023.jpg', 'Game_20171218191023.jpg', 0, 0, 231, '2017-12-18 12:10:23', '2018-01-27 18:21:25'),
(1274, 7, '变身怪医', NULL, 1, 1, 3, 'Jekyllandhyde', NULL, 6, 'Game_20171218191214.jpg', 'Game_20171218191214.jpg', 'Game_20171218191214.jpg', 0, 0, 243, '2017-12-18 12:12:14', '2018-01-26 05:41:42'),
(1275, 7, '开心假期', NULL, 1, 3, 3, 'HappyHolidays', NULL, 6, 'Game_20171218191316.jpg', 'Game_20171218191316.jpg', 'Game_20171218191316.jpg', 0, 0, 197, '2017-12-18 12:13:16', '2018-01-26 05:41:37'),
(1276, 7, '昆宝出拳', NULL, 1, 1, 3, 'GungPow', NULL, 6, 'Game_20171218191442.jpg', 'Game_20171218191442.jpg', 'Game_20171218191442.jpg', 0, 0, 1000, '2017-12-18 12:14:42', '2018-01-26 05:41:33'),
(1277, 7, '女孩和枪: 丛林激战', NULL, 1, 1, 3, 'GirlsWithGuns', NULL, 6, 'Game_20171218191523.jpg', 'Game_20171218191523.jpg', 'Game_20171218191523.jpg', 0, 0, 176, '2017-12-18 12:15:23', '2018-01-26 05:41:30'),
(1278, 7, '枪火少女II（冰冻的黎明）', NULL, 1, 1, 3, 'GirlsWithGunsFrozenDawn', NULL, 6, 'Game_20171218191628.jpg', 'Game_20171218191628.jpg', 'Game_20171218191628.jpg', 0, 0, 176, '2017-12-18 12:16:28', '2018-01-26 05:41:27'),
(1279, 7, '宇宙探险', NULL, 1, 1, 3, 'Galacticons', NULL, 6, 'Game_20171218191709.jpg', 'Game_20171218191709.jpg', 'Game_20171218191709.jpg', 0, 0, 169, '2017-12-18 12:17:09', '2018-01-26 05:41:24'),
(1280, 7, '足球之星', NULL, 1, 3, 3, 'FootballStar', NULL, 6, 'Game_20171218191757.jpg', 'Game_20171218191757.jpg', 'Game_20171218191757.jpg', 0, 0, 158, '2017-12-18 12:17:57', '2018-01-26 05:41:21'),
(1281, 7, '海洋派对', NULL, 1, 3, 3, 'FishParty', NULL, 6, 'Game_20171218191903.jpg', 'Game_20171218191903.jpg', 'Game_20171218191903.jpg', 0, 0, 155, '2017-12-18 12:19:03', '2018-01-26 05:41:17'),
(1282, 7, '搞怪博士', NULL, 1, 3, 3, 'DrWattsUp', NULL, 6, 'Game_20171218192009.jpg', 'Game_20171218192009.jpg', 'Game_20171218192009.jpg', 0, 0, 137, '2017-12-18 12:20:09', '2018-01-26 05:41:14'),
(1283, 7, '昆虫派对', NULL, 1, 3, 3, 'Cashapillar', NULL, 5, 'Game_20171218192028.jpg', 'Game_20171218192028.jpg', 'Game_20171218192028.jpg', 0, 0, 96, '2017-12-18 12:20:28', '2018-01-26 05:41:11'),
(1284, 7, '酷派浪人', NULL, 1, 1, 3, 'CoolWolf', NULL, 6, 'Game_20171218192044.jpg', 'Game_20171218192044.jpg', 'Game_20171218192044.jpg', 0, 0, 108, '2017-12-18 12:20:44', '2018-01-26 05:41:08'),
(1285, 7, '银坊', NULL, 1, 3, 3, 'SilverFang', NULL, 5, 'Game_20171218192225.jpg', 'Game_20171218192225.jpg', 'Game_20171218192225.jpg', 0, 0, 358, '2017-12-18 12:22:25', '2018-01-26 05:42:57'),
(1286, 7, '怪物新娘', NULL, 1, 1, 3, 'Bridezilla', NULL, 6, 'Game_20171218192401.jpg', 'Game_20171218192401.jpg', 'Game_20171218192401.jpg', 0, 0, 82, '2017-12-18 12:24:01', '2018-01-26 05:42:54'),
(1287, 7, '开枪！', NULL, 1, 3, 3, 'Shoot', NULL, 5, 'Game_20171218192412.jpg', 'Game_20171218192412.jpg', 'Game_20171218192412.jpg', 10, 0, 357, '2017-12-18 12:24:12', '2018-01-26 05:42:50'),
(1288, 7, '银河战星', NULL, 1, 1, 3, 'BattlestarGalactica', NULL, 6, 'Game_20171218192450.jpg', 'Game_20171218192450.jpg', 'Game_20171218192450.jpg', 0, 0, 58, '2017-12-18 12:24:50', '2018-01-27 18:21:12'),
(1289, 7, '阿瓦隆2: 寻找圣杯', NULL, 1, 1, 3, 'Avalon2', NULL, 6, 'Game_20171218192530.jpg', 'Game_20171218192530.jpg', 'Game_20171218192530.jpg', 0, 0, 3, '2017-12-18 12:25:30', '2018-01-26 05:42:44'),
(1290, 7, '阿拉斯加捕鱼', NULL, 1, 3, 3, 'AlaskanFishing', NULL, 6, 'Game_20171218192605.jpg', 'Game_20171218192605.jpg', 'Game_20171218192605.jpg', 0, 0, 5, '2017-12-18 12:26:05', '2018-01-26 05:42:41'),
(1291, 7, '亚洲美人', NULL, 1, 3, 3, 'AsianBeauty', NULL, 6, 'Game_20171218192638.jpg', 'Game_20171218192638.jpg', 'Game_20171218192638.jpg', 0, 0, 47, '2017-12-18 12:26:38', '2018-01-26 05:42:38'),
(1292, 7, '板球明星', NULL, 1, 1, 3, 'cricketStar', NULL, 6, 'Game_20171218192737.jpg', 'Game_20171218192737.jpg', 'Game_20171218192737.jpg', 0, 0, 114, '2017-12-18 12:27:37', '2018-01-26 05:42:35'),
(1293, 8, '经典243', NULL, 1, 3, 3, 'classic243Desktop', NULL, 6, 'Game_20171218192931.jpg', 'Game_20171218192931.jpg', 'Game_20171218192931.jpg', 0, 0, 104, '2017-12-18 12:29:31', '2018-01-26 05:42:31'),
(1294, 7, '水果VS糖果', NULL, 1, 3, 3, 'FruitVSCandy', NULL, 6, 'Game_20171218215021.jpg', 'Game_20171218215021.jpg', 'Game_20171218215021.jpg', 0, 0, 168, '2017-12-18 12:30:06', '2018-01-26 05:42:28'),
(1295, 7, '梅林的百万财富', NULL, 1, 1, 3, 'MerlinsMillions', NULL, 5, 'Game_20171218193407.jpg', 'Game_20171218193407.jpg', 'Game_20171218193407.jpg', 0, 0, 1001, '2017-12-18 12:34:07', '2018-01-27 18:21:08'),
(1296, 7, '癫狂的猴子', NULL, 1, 1, 3, 'MadMadMonkey', NULL, 5, 'Game_20171218193501.jpg', 'Game_20171218193501.jpg', 'Game_20171218193501.jpg', 0, 0, 1000, '2017-12-18 12:35:01', '2018-01-26 05:42:21'),
(1297, 7, '幸运的兔子老虎机', NULL, 1, 1, 3, 'LuckyRabbitsLoot', NULL, 5, 'Game_20171218193611.jpg', 'Game_20171218193611.jpg', 'Game_20171218193611.jpg', 0, 0, 1002, '2017-12-18 12:36:11', '2018-01-26 05:42:17'),
(1298, 7, '幸运小妖的战利品', NULL, 1, 1, 3, 'LuckyLeprechaunsLoot', NULL, 5, 'Game_20171218193742.jpg', 'Game_20171218193742.jpg', 'Game_20171218193742.jpg', 0, 0, 254, '2017-12-18 12:37:42', '2018-01-26 05:42:13'),
(1299, 7, '伟大的格里芬', NULL, 1, 1, 3, 'GreatGriffin', NULL, 5, 'Game_20171218194101.jpg', 'Game_20171218194101.jpg', 'Game_20171218194101.jpg', 0, 0, 191, '2017-12-18 12:41:01', '2018-01-26 05:42:10'),
(1300, 7, '黄金工厂', NULL, 1, 1, 3, 'GoldFactory', NULL, 5, 'Game_20171218194251.jpg', 'Game_20171218194251.jpg', 'Game_20171218194251.jpg', 0, 0, 180, '2017-12-18 12:42:51', '2018-01-26 05:43:51'),
(1301, 7, '寻访海豚', NULL, 1, 1, 3, 'DolphinQuest', NULL, 5, 'Game_20171218194513.jpg', 'Game_20171218194513.jpg', 'Game_20171218194513.jpg', 0, 0, 127, '2017-12-18 12:45:13', '2018-01-26 05:43:48'),
(1302, 7, '变形金刚', NULL, 1, 1, 3, 'TootinCarMan', NULL, 4, 'Game_20171218194518.jpg', 'Game_20171218194518.jpg', 'Game_20171218194518.jpg', 0, 0, 50, '2017-12-18 12:45:18', '2018-01-27 18:20:59'),
(1303, 7, '甜蜜的收获', NULL, 1, 1, 3, 'SweetHarvest', NULL, 4, 'Game_20171218195139.jpg', 'Game_20171218195139.jpg', 'Game_20171218195139.jpg', 0, 0, 395, '2017-12-18 12:51:39', '2018-01-26 05:43:41'),
(1304, 7, '隐藏的泰坦', NULL, 1, 3, 3, 'StashOfTheTitans', NULL, 4, 'Game_20171218195241.jpg', 'Game_20171218195241.jpg', 'Game_20171218195241.jpg', 0, 0, 380, '2017-12-18 12:52:41', '2018-01-26 05:43:38'),
(1305, 7, '星尘', NULL, 1, 1, 3, 'StarDust', NULL, 5, 'Game_20171218195314.jpg', 'Game_20171218195314.jpg', 'Game_20171218195314.jpg', 0, 0, 377, '2017-12-18 12:53:14', '2018-01-26 05:43:35'),
(1306, 7, '圣诞狗狗', NULL, 1, 1, 3, 'santaPaws', NULL, 4, 'Game_20171218195342.jpg', 'Game_20171218195342.jpg', 'Game_20171218195342.jpg', 0, 0, 349, '2017-12-18 12:53:42', '2018-01-26 05:43:32'),
(1307, 7, '杰克和吉尔', NULL, 1, 1, 3, 'RRJackAndJill', NULL, 4, 'Game_20171218195426.jpg', 'Game_20171218195426.jpg', 'Game_20171218195426.jpg', 0, 0, 1000, '2017-12-18 12:54:26', '2018-01-26 05:43:28'),
(1308, 7, '高端地产', NULL, 1, 1, 3, 'PrimeProperty', NULL, 5, 'Game_20171218195452.jpg', 'Game_20171218195452.jpg', 'Game_20171218195452.jpg', 0, 0, 325, '2017-12-18 12:54:52', '2018-01-26 05:43:24'),
(1309, 7, '老国王科尔', NULL, 1, 1, 3, 'RROldKingCole', NULL, 4, 'Game_20171218195517.jpg', 'Game_20171218195517.jpg', 'Game_20171218195517.jpg', 0, 0, 341, '2017-12-18 12:55:17', '2018-01-26 05:43:21'),
(1310, 7, '会空手道的猪', NULL, 1, 1, 3, 'KaratePig', NULL, 5, 'Game_20171218195621.jpg', 'Game_20171218195621.jpg', 'Game_20171218195621.jpg', 0, 0, 234, '2017-12-18 12:56:21', '2018-01-26 05:43:18'),
(1311, 7, '拉美西斯的财富', NULL, 1, 1, 3, 'RamessesRiches', NULL, 4, 'Game_20171218195707.jpg', 'Game_20171218195707.jpg', 'Game_20171218195707.jpg', 0, 0, 329, '2017-12-18 12:57:07', '2018-01-26 05:43:14'),
(1312, 7, '古墓丽影2', NULL, 1, 1, 3, 'TombRaiderII', NULL, 5, 'Game_20171218195833.jpg', 'Game_20171218195833.jpg', 'Game_20171218195833.jpg', 0, 0, 414, '2017-12-18 12:58:33', '2017-12-18 13:05:42'),
(1313, 7, '天堂', NULL, 1, 1, 3, 'ParadiseFound', NULL, 4, 'Game_20171218195930.jpg', 'Game_20171218195930.jpg', 'Game_20171218195930.jpg', 0, 0, 303, '2017-12-18 12:59:30', '2018-01-27 18:20:50'),
(1314, 7, '鼠帮', NULL, 1, 1, 3, 'TheRatPack', NULL, 5, 'Game_20171218200123.jpg', 'Game_20171218200123.jpg', 'Game_20171218200123.jpg', 0, 0, 404, '2017-12-18 13:01:23', '2018-01-26 05:43:04'),
(1315, 7, '伟大的沙皇', NULL, 1, 1, 3, 'GreatCzar', NULL, 5, 'Game_20171218200328.jpg', 'Game_20171218200328.jpg', 'Game_20171218200328.jpg', 0, 0, 1000, '2017-12-18 13:03:28', '2018-01-26 05:44:43'),
(1316, 7, '动物球赛', NULL, 1, 1, 3, 'SoccerSafari', NULL, 5, 'Game_20171218200525.jpg', 'Game_20171218200525.jpg', 'Game_20171218200525.jpg', 0, 0, 368, '2017-12-18 13:05:25', '2018-01-26 05:44:40'),
(1317, 7, '疯狂照片', NULL, 1, 1, 3, 'MugshotMadness', NULL, 4, 'Game_20171218200640.jpg', 'Game_20171218200640.jpg', 'Game_20171218200640.jpg', 0, 0, 277, '2017-12-18 13:06:40', '2018-01-26 05:44:36'),
(1318, 7, '疯狂的帽子', NULL, 1, 3, 3, 'MadHatters', NULL, 5, 'Game_20171218200713.jpg', 'Game_20171218200713.jpg', 'Game_20171218200713.jpg', 0, 0, 259, '2017-12-18 13:07:13', '2018-01-26 05:44:33'),
(1319, 7, '贪财的猴子', NULL, 1, 1, 3, 'MoneyMadMonkey', NULL, 4, 'Game_20171218200716.jpg', 'Game_20171218200716.jpg', 'Game_20171218200716.jpg', 0, 0, 271, '2017-12-18 13:07:16', '2018-01-26 05:44:30'),
(1326, 7, '卡萨诺瓦', NULL, 1, 1, 3, 'Cashanova', NULL, 5, 'Game_20171218201040.jpg', 'Game_20171218201040.jpg', 'Game_20171218201040.jpg', 0, 0, 95, '2017-12-18 13:10:40', '2018-01-26 05:44:14'),
(1321, 7, '玛雅公主视频老虎机', NULL, 1, 3, 3, 'MayanPrincess', NULL, 4, 'Game_20171218200756.jpg', 'Game_20171218200756.jpg', 'Game_20171218200756.jpg', 0, 0, 265, '2017-12-18 13:07:56', '2018-01-26 05:44:27'),
(1325, 7, '幸运生肖', NULL, 1, 1, 3, 'LuckyZodiac', NULL, 4, 'Game_20171218200952.jpg', 'Game_20171218200952.jpg', 'Game_20171218200952.jpg', 0, 0, 258, '2017-12-18 13:09:52', '2018-01-26 05:44:16'),
(1323, 7, '麻丘比丘', NULL, 1, 1, 3, 'MachuPicchu', NULL, 4, 'Game_20171218200836.jpg', 'Game_20171218200836.jpg', 'Game_20171218200836.jpg', 0, 0, 272, '2017-12-18 13:08:36', '2018-01-26 05:44:24'),
(1324, 7, '闪亮之星', NULL, 1, 3, 3, 'DeckTheHalls', NULL, 5, 'Game_20171218200841.jpg', 'Game_20171218200841.jpg', 'Game_20171218200841.jpg', 0, 0, 121, '2017-12-18 13:08:41', '2018-01-26 05:44:20'),
(1327, 7, '幸运小矮妖', NULL, 1, 1, 3, 'LuckyLeprechaun', NULL, 4, 'Game_20171218201112.jpg', 'Game_20171218201112.jpg', 'Game_20171218201112.jpg', 0, 0, 253, '2017-12-18 13:11:12', '2018-01-26 05:44:11'),
(1328, 7, '爱情病毒', NULL, 1, 1, 3, 'LoveBugs', NULL, 4, 'Game_20171218201146.jpg', 'Game_20171218201146.jpg', 'Game_20171218201146.jpg', 0, 0, 1000, '2017-12-18 13:11:46', '2018-01-26 05:44:07'),
(1329, 7, '白色水牛', NULL, 1, 1, 3, 'WhiteBuffalo', NULL, 5, 'Game_20171218201245.jpg', 'Game_20171218201245.jpg', 'Game_20171218201245.jpg', 0, 0, 443, '2017-12-18 13:12:45', '2018-01-26 05:44:04'),
(1330, 7, '森林之王', NULL, 1, 1, 3, 'KingTiger', NULL, 4, 'Game_20171218201344.jpg', 'Game_20171218201344.jpg', 'Game_20171218201344.jpg', 0, 0, 1000, '2017-12-18 13:13:44', '2018-01-26 05:44:00'),
(1331, 7, '亚瑟王', NULL, 1, 1, 3, 'KingArthur', NULL, 4, 'Game_20171218201423.jpg', 'Game_20171218201423.jpg', 'Game_20171218201423.jpg', 0, 0, 237, '2017-12-18 13:14:23', '2018-01-26 05:43:57'),
(1332, 7, '小丑王', NULL, 1, 1, 3, 'JokerJester', NULL, 4, 'Game_20171218201453.jpg', 'Game_20171218201453.jpg', 'Game_20171218201453.jpg', 0, 0, 1000, '2017-12-18 13:14:53', '2018-01-26 05:45:52'),
(1333, 7, '龙宫', NULL, 1, 1, 3, 'HouseofDragons', NULL, 4, 'Game_20171218201730.jpg', 'Game_20171218201730.jpg', 'Game_20171218201730.jpg', 0, 0, 215, '2017-12-18 13:17:30', '2018-01-27 18:20:27'),
(1334, 7, '地狱烈焰', NULL, 1, 1, 3, 'HotAsHades', NULL, 4, 'Game_20171218201807.jpg', 'Game_20171218201807.jpg', 'Game_20171218201807.jpg', 0, 0, 211, '2017-12-18 13:18:07', '2018-01-26 05:45:43'),
(1335, 7, '地狱男爵', NULL, 1, 3, 3, 'HellBoy', NULL, 4, 'Game_20171218201847.jpg', 'Game_20171218201847.jpg', 'Game_20171218201847.jpg', 0, 0, 200, '2017-12-18 13:18:47', '2018-01-26 05:45:40'),
(1336, 7, '万圣节', NULL, 1, 3, 3, 'Halloweenies', NULL, 4, 'Game_20171218201927.jpg', 'Game_20171218201927.jpg', 'Game_20171218201927.jpg', 0, 0, 194, '2017-12-18 13:19:27', '2018-01-26 05:45:37'),
(1337, 7, '火鹰', NULL, 1, 1, 3, 'FireHawk', NULL, 4, 'Game_20171218201957.jpg', 'Game_20171218201957.jpg', 'Game_20171218201957.jpg', 0, 0, 1000, '2017-12-18 13:19:57', '2018-01-26 05:45:34'),
(1338, 7, '元素', NULL, 1, 1, 3, 'elementals', NULL, 4, 'Game_20171218202110.jpg', 'Game_20171218202110.jpg', 'Game_20171218202110.jpg', 0, 0, 1000, '2017-12-18 13:21:10', '2018-01-26 05:45:29'),
(1339, 7, '女巫的财富', NULL, 1, 1, 3, 'WitchesWealth', NULL, 3, 'Game_20171218202122.jpg', 'Game_20171218202122.jpg', 'Game_20171218202122.jpg', 0, 0, 450, '2017-12-18 13:21:22', '2018-01-26 05:45:25'),
(1340, 7, '王朝', NULL, 1, 1, 3, 'Dynasty', NULL, 4, 'Game_20171218202142.jpg', 'Game_20171218202142.jpg', 'Game_20171218202142.jpg', 0, 0, 1000, '2017-12-18 13:21:42', '2018-01-27 18:20:32'),
(1341, 7, '爱情博士', NULL, 1, 1, 3, 'DoctorLove', NULL, 4, 'Game_20171218202224.jpg', 'Game_20171218202224.jpg', 'Game_20171218202224.jpg', 0, 0, 125, '2017-12-18 13:22:24', '2018-01-26 05:45:19'),
(1342, 7, '开心点心', NULL, 1, 3, 3, 'WinSumDimSum', NULL, 3, 'Game_20171218202241.jpg', 'Game_20171218202241.jpg', 'Game_20171218202241.jpg', 0, 0, 448, '2017-12-18 13:22:41', '2018-01-26 05:45:15'),
(1343, 7, '教父', NULL, 1, 1, 3, 'Dogfather', NULL, 4, 'Game_20171218202311.jpg', 'Game_20171218202311.jpg', 'Game_20171218202311.jpg', 0, 0, 126, '2017-12-18 13:23:11', '2018-01-26 05:45:09'),
(1344, 7, '樱花', NULL, 1, 1, 3, 'CherryBlossoms', NULL, 4, 'Game_20171218202347.jpg', 'Game_20171218202347.jpg', 'Game_20171218202347.jpg', 0, 0, 1000, '2017-12-18 13:23:47', '2018-01-26 05:45:06'),
(1345, 7, '奇葩', NULL, 1, 1, 3, 'WhatonEarth', NULL, 3, 'Game_20171218202408.jpg', 'Game_20171218202408.jpg', 'Game_20171218202408.jpg', 0, 0, 1000, '2017-12-18 13:24:08', '2018-01-26 05:45:02'),
(1346, 7, '锁子甲', NULL, 1, 1, 3, 'ChainMailNew', NULL, 4, 'Game_20171218202433.jpg', 'Game_20171218202433.jpg', 'Game_20171218202433.jpg', 0, 0, 101, '2017-12-18 13:24:33', '2018-01-26 05:44:58'),
(1347, 7, '搞笑老虎机', NULL, 1, 1, 3, 'WhatAHoot', NULL, 3, 'Game_20171218202520.jpg', 'Game_20171218202520.jpg', 'Game_20171218202520.jpg', 0, 0, 1000, '2017-12-18 13:25:20', '2018-01-26 05:46:54'),
(1348, 7, '财富之轮特别版', NULL, 1, 1, 3, 'WheelOfWealthSE', NULL, 5, 'Game_20171218202638.jpg', 'Game_20171218202638.jpg', 'Game_20171218202638.jpg', 0, 0, 442, '2017-12-18 13:26:38', '2018-01-26 05:46:49'),
(1349, 7, '派对倒计时', NULL, 1, 2, 3, 'VinylCountDown', NULL, 3, 'Game_20171218202708.jpg', 'Game_20171218202708.jpg', 'Game_20171218202708.jpg', 0, 0, 435, '2017-12-18 13:27:08', '2018-01-26 05:46:46'),
(1350, 7, '财神狐泰利嗬', NULL, 1, 3, 3, 'TallyHo', NULL, 3, 'Game_20171218202819.jpg', 'Game_20171218202819.jpg', 'Game_20171218202819.jpg', 0, 0, 396, '2017-12-18 13:28:19', '2018-01-26 05:46:42'),
(1351, 7, '太阳征程', NULL, 1, 3, 3, 'SunTide', NULL, 3, 'Game_20171218202931.jpg', 'Game_20171218202931.jpg', 'Game_20171218202931.jpg', 0, 0, 387, '2017-12-18 13:29:31', '2018-01-26 05:46:39'),
(1352, 7, '太阳的追求', NULL, 1, 1, 3, 'SunQuest', NULL, 3, 'Game_20171218203041.jpg', 'Game_20171218203041.jpg', 'Game_20171218203041.jpg', 0, 0, 386, '2017-12-18 13:30:41', '2018-01-26 05:46:34'),
(1353, 7, '威尼斯的玫瑰', NULL, 1, 1, 3, 'VenetianRose', NULL, 5, 'Game_20171218203107.jpg', 'Game_20171218203107.jpg', 'Game_20171218203107.jpg', 0, 0, 1000, '2017-12-18 13:31:07', '2018-01-26 05:46:30'),
(1354, 7, '春闲假日', NULL, 1, 3, 3, 'SpringBreak', NULL, 3, 'Game_20171218203155.jpg', 'Game_20171218203155.jpg', 'Game_20171218203155.jpg', 0, 0, 376, '2017-12-18 13:31:55', '2018-01-26 05:46:24'),
(1355, 7, '独角兽的传说', NULL, 1, 1, 3, 'UnicornLegend', NULL, 5, 'Game_20171218203214.jpg', 'Game_20171218203214.jpg', 'Game_20171218203214.jpg', 0, 0, 1000, '2017-12-18 13:32:14', '2018-01-26 05:46:21'),
(1356, 7, '老虎和熊', NULL, 1, 1, 3, 'TigerVsBear', NULL, 5, 'Game_20171218203318.jpg', 'Game_20171218203318.jpg', 'Game_20171218203318.jpg', 0, 0, 409, '2017-12-18 13:33:18', '2018-01-26 05:46:16'),
(1357, 7, '卢克杰梅的欺诈', NULL, 1, 1, 3, 'SkullDuggery', NULL, 3, 'Game_20171218203337.jpg', 'Game_20171218203337.jpg', 'Game_20171218203337.jpg', 0, 0, 361, '2017-12-18 13:33:37', '2018-01-26 05:46:13'),
(1358, 7, '暗恋者', NULL, 1, 1, 3, 'SecretAdmirer', NULL, 3, 'Game_20171218203458.jpg', 'Game_20171218203458.jpg', 'Game_20171218203458.jpg', 0, 0, 352, '2017-12-18 13:34:58', '2018-01-26 05:46:08'),
(1359, 7, '埃及王位', NULL, 1, 1, 3, 'ThroneOfEgypt', NULL, 5, 'Game_20171218203516.jpg', 'Game_20171218203516.jpg', 'Game_20171218203516.jpg', 0, 0, 406, '2017-12-18 13:35:16', '2018-01-26 05:46:04'),
(1360, 7, '转轴打雷', NULL, 1, 3, 3, 'ReelThunder', NULL, 3, 'Game_20171218203609.jpg', 'Game_20171218203609.jpg', 'Game_20171218203609.jpg', 0, 0, 335, '2017-12-18 13:36:09', '2018-01-26 05:46:00'),
(1361, 7, '耍蛇人', NULL, 1, 1, 3, 'TheSnakeCharmer', NULL, 5, 'Game_20171218203700.jpg', 'Game_20171218203700.jpg', 'Game_20171218203700.jpg', 0, 0, 1000, '2017-12-18 13:37:00', '2018-01-26 05:45:57'),
(1362, 7, '魔术兔子', NULL, 1, 1, 3, 'RabbitInTheHat', NULL, 3, 'Game_20171218203716.jpg', 'Game_20171218203716.jpg', 'Game_20171218203716.jpg', 0, 0, 327, '2017-12-18 13:37:16', '2018-01-26 05:50:30'),
(1363, 7, '躁狂怪物', NULL, 1, 1, 3, 'MonsterMania', NULL, 3, 'Game_20171218203814.jpg', 'Game_20171218203814.jpg', 'Game_20171218203814.jpg', 0, 0, 273, '2017-12-18 13:38:14', '2018-01-26 05:50:21'),
(1364, 7, '丢失的公主', NULL, 1, 1, 3, 'TheLostPrincessAnastasia', NULL, 5, 'Game_20171218203814.jpg', 'Game_20171218203814.jpg', 'Game_20171218203814.jpg', 0, 0, 403, '2017-12-18 13:38:14', '2018-01-27 18:20:00'),
(1365, 7, '利莫里亚遗忘的土地', NULL, 1, 1, 3, 'TheLandofLemuria', NULL, 5, 'Game_20171218203936.jpg', 'Game_20171218203936.jpg', 'Game_20171218203936.jpg', 0, 0, 1000, '2017-12-18 13:39:36', '2018-01-26 05:50:18'),
(1366, 7, '银行劫案超级级旋转', NULL, 1, 1, 3, 'MSBreakDaBankAgain', NULL, 3, 'Game_20171218203958.jpg', 'Game_20171218203958.jpg', 'Game_20171218203958.jpg', 0, 0, 269, '2017-12-18 13:39:58', '2018-01-27 18:19:55'),
(1367, 7, '百慕大群岛之谜', NULL, 1, 1, 3, 'TheBermudaMysteries', NULL, 5, 'Game_20171218204102.jpg', 'Game_20171218204102.jpg', 'Game_20171218204102.jpg', 0, 0, 1000, '2017-12-18 13:41:02', '2018-01-26 05:50:12'),
(1368, 7, '加德满都', NULL, 1, 3, 3, 'Kathmandu', NULL, 3, 'Game_20171218204111.jpg', 'Game_20171218204111.jpg', 'Game_20171218204111.jpg', 0, 0, 235, '2017-12-18 13:41:11', '2018-01-26 05:50:09'),
(1369, 7, '监管', NULL, 1, 1, 3, 'SupeItUp', NULL, 5, 'Game_20171218204233.jpg', 'Game_20171218204233.jpg', 'Game_20171218204233.jpg', 0, 0, 388, '2017-12-18 13:42:33', '2018-01-26 05:50:06'),
(1370, 7, '东方珠宝视频老虎机', NULL, 1, 1, 3, 'JewelsOfTheOrient', NULL, 3, 'Game_20171218204242.jpg', 'Game_20171218204242.jpg', 'Game_20171218204242.jpg', 0, 0, 224, '2017-12-18 13:42:42', '2018-01-26 05:49:59'),
(1371, 7, '炽热', NULL, 1, 1, 3, 'HotShot', NULL, 3, 'Game_20171218204406.jpg', 'Game_20171218204406.jpg', 'Game_20171218204406.jpg', 0, 0, 213, '2017-12-18 13:44:06', '2018-01-26 05:49:54'),
(1372, 7, '纯银3D', NULL, 1, 1, 3, 'SterlingSilver3D', NULL, 5, 'Game_20171218204432.jpg', 'Game_20171218204432.jpg', 'Game_20171218204432.jpg', 0, 0, 383, '2017-12-18 13:44:32', '2018-01-26 05:49:47'),
(1373, 7, '纯银3D', NULL, 1, 1, 3, 'SterlingSilver3D', NULL, 5, 'Game_20171218204432.jpg', 'Game_20171218204432.jpg', 'Game_20171218204432.jpg', 0, 0, 383, '2017-12-18 13:44:32', '2018-01-26 05:49:51'),
(1374, 7, '准备好啦', NULL, 1, 1, 3, 'GoodToGo', NULL, 3, 'Game_20171218204505.jpg', 'Game_20171218204505.jpg', 'Game_20171218204505.jpg', 0, 0, 188, '2017-12-18 13:45:05', '2018-01-26 05:49:42'),
(1375, 7, '蒸汽朋克', NULL, 1, 1, 3, 'SteamPunkHeroes', NULL, 5, 'Game_20171218204606.jpg', 'Game_20171218204606.jpg', 'Game_20171218204606.jpg', 0, 0, 381, '2017-12-18 13:46:06', '2018-01-26 05:49:38'),
(1376, 7, '疯狂的80年代', NULL, 1, 1, 3, 'Crazy80s', NULL, 3, 'Game_20171218204624.jpg', 'Game_20171218204624.jpg', 'Game_20171218204624.jpg', 0, 0, 112, '2017-12-18 13:46:24', '2018-01-26 05:46:59'),
(1377, 7, '球场中心', NULL, 1, 3, 3, 'CentreCourt', NULL, 3, 'Game_20171218204722.jpg', 'Game_20171218204722.jpg', 'Game_20171218204722.jpg', 0, 0, 100, '2017-12-18 13:47:22', '2018-01-26 05:51:44'),
(1378, 7, '星际大战', NULL, 1, 1, 3, 'Starscape', NULL, 5, 'Game_20171218204737.jpg', 'Game_20171218204737.jpg', 'Game_20171218204737.jpg', 0, 0, 379, '2017-12-18 13:47:37', '2018-01-27 18:19:02'),
(1379, 7, '马戏篷', NULL, 1, 3, 3, 'BigTop', NULL, 3, 'Game_20171218204914.jpg', 'Game_20171218204914.jpg', 'Game_20171218204914.jpg', 0, 0, 68, '2017-12-18 13:49:14', '2018-01-26 05:51:38'),
(1380, 7, '疯狂寿司', NULL, 1, 3, 3, 'SoMuchSushi', NULL, 5, 'Game_20171218205040.jpg', 'Game_20171218205040.jpg', 'Game_20171218205040.jpg', 0, 0, 367, '2017-12-18 13:50:40', '2018-01-26 05:51:35'),
(1381, 7, '大巫师', NULL, 1, 1, 3, 'BigKahuna', NULL, 3, 'Game_20171218205053.jpg', 'Game_20171218205053.jpg', 'Game_20171218205053.jpg', 0, 0, 66, '2017-12-18 13:50:53', '2018-01-26 05:51:32'),
(1382, 7, '金发女郎简', NULL, 1, 3, 3, 'AgentJaneBlonde', NULL, 3, 'Game_20171218205157.jpg', 'Game_20171218205157.jpg', 'Game_20171218205157.jpg', 0, 0, 37, '2017-12-18 13:51:57', '2018-01-26 05:51:28'),
(1383, 7, '疯狂糖果', NULL, 1, 3, 3, 'SoMuchCandy', NULL, 5, 'Game_20171218205255.jpg', 'Game_20171218205255.jpg', 'Game_20171218205255.jpg', 0, 0, 366, '2017-12-18 13:52:55', '2018-01-26 05:51:25'),
(1384, 7, '取胜奇才', NULL, 1, 1, 3, 'wwizards', NULL, 3, 'Game_20171218205304.jpg', 'Game_20171218205304.jpg', 'Game_20171218205304.jpg', 0, 0, 499, '2017-12-18 13:53:04', '2018-01-26 05:51:21'),
(1385, 7, '冒险宫殿', NULL, 1, 3, 3, 'AdventurePalace', NULL, 3, 'Game_20171218205349.jpg', 'Game_20171218205349.jpg', 'Game_20171218205349.jpg', 0, 0, 35, '2017-12-18 13:53:49', '2018-01-26 05:51:18'),
(1386, 7, '财富图腾', NULL, 1, 1, 3, 'TotemTreasure', NULL, 3, 'Game_20171218205440.jpg', 'Game_20171218205440.jpg', 'Game_20171218205440.jpg', 0, 0, 185, '2017-12-18 13:54:40', '2018-01-27 18:19:24'),
(1387, 7, '东方财富', NULL, 1, 1, 3, 'OrientalFortune', NULL, 3, 'Game_20171218205541.jpg', 'Game_20171218205541.jpg', 'Game_20171218205541.jpg', 0, 0, 302, '2017-12-18 13:55:41', '2018-01-26 05:51:10'),
(1388, 7, '新年快乐', NULL, 1, 1, 3, 'HappyNewYear', NULL, 3, 'Game_20171218205627.jpg', 'Game_20171218205627.jpg', 'Game_20171218205627.jpg', 0, 0, 198, '2017-12-18 13:56:27', '2018-01-27 18:19:11'),
(1389, 7, '黄金囊地鼠', NULL, 1, 1, 3, 'GopherGold', NULL, 3, 'Game_20171218230756.jpg', 'Game_20171218230756.jpg', 'Game_20171218230756.jpg', 0, 0, 1000, '2017-12-18 13:57:37', '2018-01-26 05:50:49'),
(1390, 7, '精灵宝石', NULL, 1, 1, 3, 'geniesgems', NULL, 3, 'Game_20171218205900.jpg', 'Game_20171218205900.jpg', 'Game_20171218205900.jpg', 0, 0, 173, '2017-12-18 13:59:00', '2018-01-26 05:50:40'),
(1391, 7, '疯狂变色龙', NULL, 1, 1, 3, 'CrazyChameleons', NULL, 3, 'Game_20171218230843.jpg', 'Game_20171218230843.jpg', 'Game_20171218230843.jpg', 0, 0, 113, '2017-12-18 14:01:07', '2018-01-26 05:50:36'),
(1392, 7, '尼罗河宝藏', NULL, 1, 1, 3, 'TreasureNile', NULL, 3, 'Game_20171218230729.jpg', 'Game_20171218230729.jpg', 'Game_20171218230729.jpg', 0, 0, 1000, '2017-12-18 14:02:26', '2018-01-27 18:18:50'),
(1393, 7, '疯狂怪物', NULL, 1, 3, 3, 'SoManyMonsters', NULL, 5, 'Game_20171218210328.jpg', 'Game_20171218210328.jpg', 'Game_20171218210328.jpg', 0, 0, 365, '2017-12-18 14:03:28', '2018-01-26 05:52:36'),
(1394, 7, '现金皇帝', NULL, 1, 1, 3, 'KingCashalot', NULL, 3, 'Game_20171218210333.jpg', 'Game_20171218210333.jpg', 'Game_20171218210333.jpg', 0, 0, 1000, '2017-12-18 14:03:33', '2018-01-26 05:52:33'),
(1395, 7, '幸运双星', NULL, 1, 3, 3, 'luckytwins', NULL, 3, 'Game_20171218210442.jpg', 'Game_20171218210442.jpg', 'Game_20171218210442.jpg', 0, 0, 107, '2017-12-18 14:04:42', '2018-01-26 05:52:30'),
(1396, 7, '5线狂飙', NULL, 1, 3, 3, '5ReelDrive', NULL, 3, 'Game_20171218210526.jpg', 'Game_20171218210526.jpg', 'Game_20171218210526.jpg', 0, 0, 26, '2017-12-18 14:05:26', '2018-01-26 05:52:27'),
(1397, 7, '豪赌鲨鱼', NULL, 1, 3, 3, 'ShaaarkSuperbet', NULL, 5, 'Game_20171218210552.jpg', 'Game_20171218210552.jpg', 'Game_20171218210552.jpg', 0, 0, 365, '2017-12-18 14:05:52', '2018-01-26 05:52:23'),
(1398, 7, '轮滑', NULL, 1, 1, 3, 'RollerDerby', NULL, 5, 'Game_20171218210737.jpg', 'Game_20171218210737.jpg', 'Game_20171218210737.jpg', 0, 0, 345, '2017-12-18 14:07:37', '2018-01-26 05:52:20'),
(1399, 7, '雷霆万钧', NULL, 1, 3, 3, 'ThunderStruck', NULL, 3, 'Game_20171218210818.jpg', 'Game_20171218210818.jpg', 'Game_20171218210818.jpg', 0, 0, 407, '2017-12-18 14:08:18', '2018-01-26 05:52:16'),
(1400, 7, '性感红魔', NULL, 1, 1, 3, 'RedHotDevil', NULL, 5, 'Game_20171218210845.jpg', 'Game_20171218210845.jpg', 'Game_20171218210845.jpg', 0, 0, 331, '2017-12-18 14:08:45', '2018-01-26 05:52:12'),
(1401, 7, '嘉年华', NULL, 1, 3, 3, 'Carnaval', NULL, 3, 'Game_20171218210914.jpg', 'Game_20171218210914.jpg', 'Game_20171218210914.jpg', 0, 0, 29, '2017-12-18 14:09:14', '2018-01-27 18:18:40'),
(1402, 7, '花粉国家', NULL, 1, 1, 3, 'PollenNation', NULL, 5, 'Game_20171218210953.jpg', 'Game_20171218210953.jpg', 'Game_20171218210953.jpg', 0, 0, 314, '2017-12-18 14:09:53', '2018-01-26 05:52:06'),
(1403, 7, '上海姑娘', NULL, 1, 3, 3, 'shanghaiBeauty', NULL, 3, 'Game_20171218230822.jpg', 'Game_20171218230822.jpg', 'Game_20171218230822.jpg', 0, 0, 356, '2017-12-18 14:10:43', '2018-01-26 05:52:03'),
(1404, 7, '淑女派对', NULL, 1, 3, 3, 'LadiesNite', NULL, 3, 'Game_20171218211158.jpg', 'Game_20171218211158.jpg', 'Game_20171218211158.jpg', 0, 0, 240, '2017-12-18 14:11:58', '2018-01-26 05:52:00'),
(1405, 7, '银行再劫案', NULL, 1, 3, 3, 'BreakDaBankAgain', NULL, 3, 'Game_20171218211305.jpg', 'Game_20171218211305.jpg', 'Game_20171218211305.jpg', 0, 0, 80, '2017-12-18 14:13:05', '2018-01-27 18:18:32');
INSERT INTO `game_lists` (`id`, `api_id`, `name`, `en_name`, `type`, `client_type`, `game_type`, `game_id`, `game_name`, `game_line`, `img_path`, `img_phone`, `img_pc`, `on_line`, `is_hot`, `sort`, `created_at`, `updated_at`) VALUES
(1406, 7, '美女战神', NULL, 1, 1, 3, 'Pistoleras', NULL, 5, 'Game_20171218211317.jpg', 'Game_20171218211317.jpg', 'Game_20171218211317.jpg', 0, 0, 310, '2017-12-18 14:13:17', '2018-01-27 18:18:29'),
(1407, 7, '怪物赛车', NULL, 1, 1, 3, 'monsterWheelsDesktop', NULL, 3, 'Game_20171218211422.png', 'Game_20171218211422.png', 'Game_20171218211422.png', 0, 0, 1000, '2017-12-18 14:14:22', '2018-01-26 05:53:43'),
(1408, 7, '小猪的命运', NULL, 1, 1, 3, 'PiggyFortunes', NULL, 5, 'Game_20171218211423.jpg', 'Game_20171218211423.jpg', 'Game_20171218211423.jpg', 0, 0, 309, '2017-12-18 14:14:23', '2018-01-26 05:53:40'),
(1409, 7, '不倒翁', NULL, 1, 1, 3, 'humptyDumptyWildRichesDesktop', NULL, 3, 'Game_20171218211520.png', 'Game_20171218211520.png', 'Game_20171218211520.png', 0, 0, 1000, '2017-12-18 14:15:20', '2018-01-26 05:53:36'),
(1410, 7, '幻影现金', NULL, 1, 1, 3, 'PhantomCash', NULL, 5, 'Game_20171218211527.jpg', 'Game_20171218211527.jpg', 'Game_20171218211527.jpg', 0, 0, 306, '2017-12-18 14:15:27', '2018-01-26 05:53:33'),
(1411, 7, '白鲸记', NULL, 1, 1, 3, 'mobyDickOnlineSlotDesktop', NULL, 3, 'Game_20171218211604.png', 'Game_20171218211604.png', 'Game_20171218211604.png', 0, 0, 1000, '2017-12-18 14:16:04', '2018-01-26 05:53:30'),
(1412, 7, '奥林匹斯山—美杜莎的报复', NULL, 1, 1, 3, 'MountOlympus', NULL, 5, 'Game_20171218211659.jpg', 'Game_20171218211659.jpg', 'Game_20171218211659.jpg', 0, 0, 275, '2017-12-18 14:16:59', '2018-01-26 05:53:23'),
(1413, 7, '幸运链接', NULL, 1, 1, 3, 'luckyLinksDesktop', NULL, 3, 'Game_20171218230703.jpg', 'Game_20171218230703.jpg', 'Game_20171218230703.jpg', 0, 0, 1000, '2017-12-18 14:17:01', '2018-01-26 05:53:17'),
(1414, 7, '圣诞企鹅', NULL, 1, 1, 3, 'hollyjollyPenguinsDesktop', NULL, 3, 'Game_20171218211743.jpg', 'Game_20171218211743.jpg', 'Game_20171218211743.jpg', 0, 0, 1000, '2017-12-18 14:17:43', '2018-01-26 05:53:12'),
(1415, 7, '空幻闲想', NULL, 1, 1, 3, 'Moonshine', NULL, 5, 'Game_20171218211808.jpg', 'Game_20171218211808.jpg', 'Game_20171218211808.jpg', 0, 0, 274, '2017-12-18 14:18:08', '2018-01-26 05:53:08'),
(1416, 7, '囧囧熊猫', NULL, 1, 1, 3, 'wackyPandaDesktop', NULL, 3, 'Game_20171218211852.jpg', 'Game_20171218211852.jpg', 'Game_20171218211852.jpg', 0, 0, 1000, '2017-12-18 14:18:52', '2018-01-26 05:53:05'),
(1417, 7, '美杜莎', NULL, 1, 1, 3, 'Medusa', NULL, 5, 'Game_20171218211910.jpg', 'Game_20171218211910.jpg', 'Game_20171218211910.jpg', 0, 0, 1000, '2017-12-18 14:19:10', '2018-01-26 05:53:02'),
(1418, 7, '财宝之路', NULL, 1, 1, 3, 'hanselAndGretelTreasureTrailDesktop', NULL, 3, 'Game_20171218211943.jpg', 'Game_20171218211943.jpg', 'Game_20171218211943.jpg', 0, 0, 1000, '2017-12-18 14:19:43', '2018-01-26 05:52:58'),
(1419, 7, '拣选财富', NULL, 1, 1, 3, 'pickaFortuneDesktop', NULL, 3, 'Game_20171218212030.jpg', 'Game_20171218212030.jpg', 'Game_20171218212030.jpg', 0, 0, 1000, '2017-12-18 14:20:30', '2018-01-26 05:52:50'),
(1420, 7, '幸运锦鲤', NULL, 1, 3, 3, 'LuckyKoi', NULL, 5, 'Game_20171218212045.jpg', 'Game_20171218212045.jpg', 'Game_20171218212045.jpg', 0, 0, 252, '2017-12-18 14:20:45', '2018-01-26 05:52:55'),
(1421, 7, '五行', NULL, 1, 1, 3, 'wuXingDesktop', NULL, 3, 'Game_20171218212117.jpg', 'Game_20171218212117.jpg', 'Game_20171218212117.jpg', 0, 0, 1000, '2017-12-18 14:21:17', '2018-01-26 05:52:46'),
(1422, 7, '大象之王', NULL, 1, 1, 3, 'kingTuskDesktop', NULL, 3, 'Game_20171218212216.jpg', 'Game_20171218212216.jpg', 'Game_20171218212216.jpg', 0, 0, 1000, '2017-12-18 14:22:16', '2018-01-26 05:54:40'),
(1423, 7, '嘻哈', NULL, 1, 3, 3, 'Loaded', NULL, 5, 'Game_20171218212233.jpg', 'Game_20171218212233.jpg', 'Game_20171218212233.jpg', 0, 0, 247, '2017-12-18 14:22:33', '2018-01-26 05:54:37'),
(1424, 7, '红衣美女', NULL, 1, 1, 3, 'LadyInRed', NULL, 5, 'Game_20171218212334.jpg', 'Game_20171218212334.jpg', 'Game_20171218212334.jpg', 0, 0, 241, '2017-12-18 14:23:34', '2018-01-27 18:18:07'),
(1425, 7, '蟑螂草', NULL, 1, 1, 3, 'LaCucaracha', NULL, 5, 'Game_20171218212452.jpg', 'Game_20171218212452.jpg', 'Game_20171218212452.jpg', 0, 0, 1000, '2017-12-18 14:24:52', '2018-01-26 05:54:30'),
(1426, 7, '凯蒂小屋', NULL, 1, 1, 3, 'KittyCabana', NULL, 5, 'Game_20171218212708.jpg', 'Game_20171218212708.jpg', 'Game_20171218212708.jpg', 0, 0, 239, '2017-12-18 14:27:08', '2018-01-26 05:54:26'),
(1427, 7, '杰森黄金之旅', NULL, 1, 1, 3, 'JasonAndTheGoldenFleece', NULL, 5, 'Game_20171218212811.jpg', 'Game_20171218212811.jpg', 'Game_20171218212811.jpg', 0, 0, 1000, '2017-12-18 14:28:11', '2018-01-26 05:54:22'),
(1428, 7, '爱尔兰之眼', NULL, 1, 1, 3, 'IrishEyes', NULL, 5, 'Game_20171218212938.jpg', 'Game_20171218212938.jpg', 'Game_20171218212938.jpg', 0, 0, 219, '2017-12-18 14:29:38', '2018-01-26 05:54:19'),
(1429, 7, '爱犬酒店', NULL, 1, 1, 3, 'HoundHotel', NULL, 5, 'Game_20171218213257.jpg', 'Game_20171218213257.jpg', 'Game_20171218213257.jpg', 0, 0, 214, '2017-12-18 14:32:57', '2018-01-26 05:54:15'),
(1430, 7, '热轴', NULL, 1, 1, 3, 'HotRoller', NULL, 5, 'Game_20171218213420.jpg', 'Game_20171218213420.jpg', 'Game_20171218213420.jpg', 0, 0, 1000, '2017-12-18 14:34:20', '2018-01-26 05:54:12'),
(1431, 7, '地狱婆婆', NULL, 1, 1, 3, 'HellsGrannies', NULL, 5, 'Game_20171218213517.jpg', 'Game_20171218213517.jpg', 'Game_20171218213517.jpg', 0, 0, 201, '2017-12-18 14:35:17', '2018-01-26 05:54:09'),
(1432, 7, '汉堡包', NULL, 1, 1, 3, 'Harveys', NULL, 5, 'Game_20171218213656.jpg', 'Game_20171218213656.jpg', 'Game_20171218213656.jpg', 0, 0, 199, '2017-12-18 14:36:56', '2018-01-26 05:54:04'),
(1433, 7, '黄金', NULL, 1, 1, 3, 'GoldAhoy', NULL, 5, 'Game_20171218214010.jpg', 'Game_20171218214010.jpg', 'Game_20171218214010.jpg', 0, 0, 1000, '2017-12-18 14:40:10', '2018-01-26 05:54:01'),
(1434, 7, '精装礼物', NULL, 1, 1, 3, 'GiftRap', NULL, 5, 'Game_20171218214106.jpg', 'Game_20171218214106.jpg', 'Game_20171218214106.jpg', 0, 0, 175, '2017-12-18 14:41:06', '2018-01-26 05:53:57'),
(1435, 7, '狂野精灵', NULL, 1, 1, 3, 'GenieWild', NULL, 5, 'Game_20171218214216.jpg', 'Game_20171218214216.jpg', 'Game_20171218214216.jpg', 0, 0, 1000, '2017-12-18 14:42:16', '2018-01-26 05:53:54'),
(1436, 7, '丰韵女人的歌唱', NULL, 1, 1, 3, 'FatLadySings', NULL, 5, 'Game_20171218214316.jpg', 'Game_20171218214316.jpg', 'Game_20171218214316.jpg', 0, 0, 154, '2017-12-18 14:43:16', '2018-01-27 18:17:58'),
(1437, 7, '精灵森林', NULL, 1, 1, 3, 'FairiesForest', NULL, 5, 'Game_20171218214421.jpg', 'Game_20171218214421.jpg', 'Game_20171218214421.jpg', 0, 0, 1000, '2017-12-18 14:44:21', '2018-01-26 05:21:57'),
(1438, 7, '迷人的美人鱼', NULL, 1, 1, 3, 'EnchantedMermaid', NULL, 5, 'Game_20171218214526.jpg', 'Game_20171218214526.jpg', 'Game_20171218214526.jpg', 0, 0, 1000, '2017-12-18 14:45:26', '2018-01-26 05:21:53'),
(1439, 7, '鹰翼', NULL, 1, 3, 3, 'EaglesWings', NULL, 5, 'Game_20171218214629.jpg', 'Game_20171218214629.jpg', 'Game_20171218214629.jpg', 0, 0, 142, '2017-12-18 14:46:29', '2018-01-26 05:21:49'),
(1440, 7, '无人机战争', NULL, 1, 1, 3, 'DroneWars', NULL, 5, 'Game_20171218214733.jpg', 'Game_20171218214733.jpg', 'Game_20171218214733.jpg', 0, 0, 141, '2017-12-18 14:47:33', '2018-01-26 05:21:46'),
(1441, 7, '恐龙物语', NULL, 1, 1, 3, 'DinoMight', NULL, 5, 'Game_20171218214820.jpg', 'Game_20171218214820.jpg', 'Game_20171218214820.jpg', 0, 0, 124, '2017-12-18 14:48:20', '2018-01-26 05:21:42'),
(1442, 7, '鳄鱼木乃伊', NULL, 1, 1, 3, 'Crocodopolis', NULL, 5, 'Game_20171218214910.jpg', 'Game_20171218214910.jpg', 'Game_20171218214910.jpg', 0, 0, 115, '2017-12-18 14:49:10', '2018-01-26 05:21:39'),
(1443, 7, '角斗场的召唤', NULL, 1, 1, 3, 'CallOfTheColosseum', NULL, 5, 'Game_20171218214956.jpg', 'Game_20171218214956.jpg', 'Game_20171218214956.jpg', 0, 0, 1000, '2017-12-18 14:49:56', '2018-01-26 05:21:36'),
(1444, 7, '战利品', NULL, 1, 1, 3, 'BootyTime', NULL, 5, 'Game_20171218215037.jpg', 'Game_20171218215037.jpg', 'Game_20171218215037.jpg', 0, 0, 76, '2017-12-18 14:50:37', '2018-01-26 05:21:33'),
(1445, 7, '鲍比7时代', NULL, 1, 1, 3, 'Bobby7s', NULL, 5, 'Game_20171218215120.jpg', 'Game_20171218215120.jpg', 'Game_20171218215120.jpg', 0, 0, 1000, '2017-12-18 14:51:20', '2018-01-26 05:21:30'),
(1446, 7, '大脚怪', NULL, 1, 1, 3, 'BigFoot', NULL, 5, 'Game_20171218215206.jpg', 'Game_20171218215206.jpg', 'Game_20171218215206.jpg', 0, 0, 1000, '2017-12-18 14:52:06', '2018-01-26 05:21:26'),
(1447, 7, '爱莉安娜', NULL, 1, 1, 3, 'Ariana', NULL, 5, 'Game_20171218215252.jpg', 'Game_20171218215252.jpg', 'Game_20171218215252.jpg', 0, 0, 45, '2017-12-18 14:52:52', '2018-01-26 05:21:23'),
(1448, 7, '富人区', NULL, 1, 3, 3, 'Cashville', NULL, 4, 'Game_20171218215704.jpg', 'Game_20171218215704.jpg', 'Game_20171218215704.jpg', 0, 0, 98, '2017-12-18 14:57:04', '2018-01-26 05:21:20'),
(1449, 7, '加州黄金', NULL, 1, 1, 3, 'CaliforniaGold', NULL, 4, 'Game_20171218215816.jpg', 'Game_20171218215816.jpg', 'Game_20171218215816.jpg', 0, 0, 1000, '2017-12-18 14:58:16', '2018-01-26 05:21:16'),
(1450, 7, '蝴蝶', NULL, 1, 1, 3, 'Butterflies', NULL, 4, 'Game_20171218215937.jpg', 'Game_20171218215937.jpg', 'Game_20171218215937.jpg', 0, 0, 1000, '2017-12-18 14:59:37', '2018-01-26 05:21:08'),
(1451, 7, '曼谷的夜晚', NULL, 1, 1, 3, 'BangkokNights', NULL, 4, 'Game_20171218220030.jpg', 'Game_20171218220030.jpg', 'Game_20171218220030.jpg', 0, 0, 1000, '2017-12-18 15:00:30', '2018-01-26 05:21:13'),
(1452, 7, '安德烈巨人', NULL, 1, 1, 3, 'AndreTheGiant', NULL, 5, 'Game_20171218220032.jpg', 'Game_20171218220032.jpg', 'Game_20171218220032.jpg', 0, 0, 1000, '2017-12-18 15:00:32', '2018-01-26 05:21:02'),
(1453, 7, '僵尸乐园', NULL, 1, 1, 3, 'AlaxeinZombieland', NULL, 5, 'Game_20171218220130.jpg', 'Game_20171218220130.jpg', 'Game_20171218220130.jpg', 0, 0, 39, '2017-12-18 15:01:30', '2018-01-27 18:17:39'),
(1454, 7, '环球之旅', NULL, 1, 1, 3, 'RubyAroundTheWorld', NULL, 4, 'Game_20171218220138.jpg', 'Game_20171218220138.jpg', 'Game_20171218220138.jpg', 0, 0, 46, '2017-12-18 15:01:38', '2018-01-26 05:20:55'),
(1455, 7, '厨神', NULL, 1, 1, 3, 'BigChef', NULL, 4, 'Game_20171218220218.jpg', 'Game_20171218220218.jpg', 'Game_20171218220218.jpg', 0, 0, 65, '2017-12-18 15:02:18', '2018-01-26 05:20:52'),
(1456, 7, '战利品5轴', NULL, 1, 1, 3, 'LotsALoot5Reel', NULL, 5, 'Game_20171218220249.jpg', 'Game_20171218220249.jpg', 'Game_20171218220249.jpg', 0, 0, 1000, '2017-12-18 15:02:49', '2018-01-26 05:20:49'),
(1457, 7, '休闲时光', NULL, 1, 1, 3, 'BigBreak', NULL, 4, 'Game_20171218220253.jpg', 'Game_20171218220253.jpg', 'Game_20171218220253.jpg', 0, 0, 64, '2017-12-18 15:02:53', '2018-01-26 05:20:46'),
(1458, 7, '黑绵羊', NULL, 1, 1, 3, 'BarBarBlackSheep5Reel', NULL, 4, 'Game_20171218220329.jpg', 'Game_20171218220329.jpg', 'Game_20171218220329.jpg', 0, 0, 55, '2017-12-18 15:03:29', '2018-01-26 05:20:43'),
(1459, 7, '上流社会', NULL, 1, 2, 3, 'HighSociety', NULL, 5, 'Game_20171218220349.jpg', 'Game_20171218220349.jpg', 'Game_20171218220349.jpg', 0, 0, 206, '2017-12-18 15:03:49', '2018-01-26 05:20:38'),
(1460, 7, '芥末先生', NULL, 1, 1, 3, 'WasabiSan', NULL, 4, 'Game_20171218220359.jpg', 'Game_20171218220359.jpg', 'Game_20171218220359.jpg', 0, 0, 437, '2017-12-18 15:03:59', '2018-01-26 05:20:34'),
(1461, 7, '古墓丽影', NULL, 1, 3, 3, 'TombRaider', NULL, 4, 'Game_20171218220429.jpg', 'Game_20171218220429.jpg', 'Game_20171218220429.jpg', 0, 0, 413, '2017-12-18 15:04:29', '2018-01-27 18:17:32'),
(1462, 7, '清空之吻', NULL, 1, 3, 3, 'StarlightKiss', NULL, 5, 'Game_20171218220441.jpg', 'Game_20171218220441.jpg', 'Game_20171218220441.jpg', 0, 0, 378, '2017-12-18 15:04:41', '2018-01-26 05:20:27'),
(1463, 7, '太阳神之忒伊亚', NULL, 1, 1, 3, 'titansofthesuntheia', NULL, 4, 'Game_20171218220512.jpg', 'Game_20171218220512.jpg', 'Game_20171218220512.jpg', 0, 0, 412, '2017-12-18 15:05:12', '2018-01-26 05:20:21'),
(1464, 7, '百万钞票', NULL, 1, 1, 3, 'MegaMoolah', NULL, 5, 'Game_20171218220526.jpg', 'Game_20171218220526.jpg', 'Game_20171218220526.jpg', 0, 0, 1000, '2017-12-18 15:05:26', '2017-12-18 15:15:14'),
(1465, 7, '宁静', NULL, 1, 1, 3, 'Serenity', NULL, 4, 'Game_20171218220550.jpg', 'Game_20171218220550.jpg', 'Game_20171218220550.jpg', 0, 0, 355, '2017-12-18 15:05:50', '2018-01-26 05:20:17'),
(1466, 7, '艾西斯百万钞票', NULL, 1, 1, 3, 'MegaMoolahIsis', NULL, 5, 'Game_20171218220610.jpg', 'Game_20171218220610.jpg', 'Game_20171218220610.jpg', 0, 0, 1000, '2017-12-18 15:06:10', '2017-12-18 15:15:13'),
(1467, 7, '欧岸财富', NULL, 1, 1, 3, 'MonteCarloRiches', NULL, 4, 'Game_20171218220623.jpg', 'Game_20171218220623.jpg', 'Game_20171218220623.jpg', 0, 0, 342, '2017-12-18 15:06:23', '2018-01-26 05:20:08'),
(1468, 7, '格鲁吉亚', NULL, 1, 1, 3, 'RRGeorgiePorgie', NULL, 4, 'Game_20171218220655.jpg', 'Game_20171218220655.jpg', 'Game_20171218220655.jpg', 0, 0, 1000, '2017-12-18 15:06:55', '2018-01-26 05:20:04'),
(1469, 7, '转轴打击', NULL, 1, 1, 3, 'ReelStrike', NULL, 4, 'Game_20171218220731.jpg', 'Game_20171218220731.jpg', 'Game_20171218220731.jpg', 0, 0, 334, '2017-12-18 15:07:31', '2018-01-26 05:20:01'),
(1470, 7, '时代的发现', NULL, 1, 3, 3, 'AgeOfDiscovery', NULL, 5, 'Game_20171218220758.jpg', 'Game_20171218220758.jpg', 'Game_20171218220758.jpg', 0, 0, 36, '2017-12-18 15:07:58', '2018-01-26 05:19:57'),
(1471, 7, '丛林吉姆', NULL, 1, 3, 3, 'JungleJim_ElDorado', NULL, 5, 'Game_20171218220847.jpg', 'Game_20171218220847.jpg', 'Game_20171218220847.jpg', 0, 0, 229, '2017-12-18 15:08:47', '2018-01-26 05:19:53'),
(1472, 7, '旋转大战', NULL, 1, 3, 3, 'ReelSpinner', NULL, 4, 'Game_20171218220858.jpg', 'Game_20171218220858.jpg', 'Game_20171218220858.jpg', 0, 0, 333, '2017-12-18 15:08:58', '2017-12-18 15:15:06'),
(1473, 7, '梦境人', NULL, 1, 1, 3, 'Munchkins', NULL, 4, 'Game_20171218220933.jpg', 'Game_20171218220933.jpg', 'Game_20171218220933.jpg', 0, 0, 296, '2017-12-18 15:09:33', '2018-01-26 05:19:49'),
(1474, 7, '富裕人生', NULL, 1, 3, 3, 'LifeOfRiches', NULL, 5, 'Game_20171218220940.jpg', 'Game_20171218220940.jpg', 'Game_20171218220940.jpg', 0, 0, 244, '2017-12-18 15:09:40', '2018-01-26 05:19:45'),
(1475, 7, '幸运女巫', NULL, 1, 1, 3, 'Luckywitch', NULL, 4, 'Game_20171218221013.jpg', 'Game_20171218221013.jpg', 'Game_20171218221013.jpg', 0, 0, 257, '2017-12-18 15:10:13', '2017-12-18 15:15:05'),
(1476, 7, '轩辕帝传', NULL, 1, 3, 3, 'Huangdi_TYE', NULL, 5, 'Game_20171218221026.jpg', 'Game_20171218221026.jpg', 'Game_20171218221026.jpg', 0, 0, 216, '2017-12-18 15:10:26', '2018-01-27 18:17:17'),
(1477, 7, '国王的现金', NULL, 1, 1, 3, 'KingsOfCash', NULL, 4, 'Game_20171218221048.jpg', 'Game_20171218221048.jpg', 'Game_20171218221048.jpg', 0, 0, 238, '2017-12-18 15:10:48', '2018-01-26 05:19:36'),
(1478, 7, '黄金公主', NULL, 1, 3, 3, 'goldenPrincess', NULL, 5, 'Game_20171218221112.jpg', 'Game_20171218221112.jpg', 'Game_20171218221112.jpg', 0, 0, 187, '2017-12-18 15:11:12', '2018-01-27 18:17:13'),
(1479, 7, '圣诞', NULL, 1, 1, 3, 'HoHoHo', NULL, 4, 'Game_20171218221129.jpg', 'Game_20171218221129.jpg', 'Game_20171218221129.jpg', 0, 0, 210, '2017-12-18 15:11:29', '2018-01-26 05:19:29'),
(1480, 7, '职业杀手', NULL, 1, 3, 3, 'RubyHitman', NULL, 4, 'Game_20171218221202.jpg', 'Game_20171218221202.jpg', 'Game_20171218221202.jpg', 0, 0, 209, '2017-12-18 15:12:02', '2018-01-26 05:17:44'),
(1481, 7, '黄金时代', NULL, 1, 3, 3, 'GoldenEra', NULL, 4, 'Game_20171218221234.jpg', 'Game_20171218221234.jpg', 'Game_20171218221234.jpg', 0, 0, 182, '2017-12-18 15:12:34', '2018-01-26 05:17:40'),
(1482, 7, '密信', NULL, 1, 3, 3, 'BushTelegraph', NULL, 4, 'Game_20171218221310.jpg', 'Game_20171218221310.jpg', 'Game_20171218221310.jpg', 0, 0, 88, '2017-12-18 15:13:10', '2018-01-26 05:17:29'),
(1483, 7, '大巫师-蛇和梯子', NULL, 1, 1, 3, 'BigKahunaSnakesAndLadders', NULL, 4, 'Game_20171218221346.jpg', 'Game_20171218221346.jpg', 'Game_20171218221346.jpg', 0, 0, 67, '2017-12-18 15:13:46', '2018-01-26 05:17:26'),
(1484, 7, '百万大奖', NULL, 1, 1, 3, 'MajorMillions5Reel', NULL, 4, 'Game_20171218221413.jpg', 'Game_20171218221413.jpg', 'Game_20171218221413.jpg', 0, 0, 1000, '2017-12-18 15:14:13', '2018-01-26 05:17:23'),
(1485, 7, '水果嘉年华 5轴', NULL, 1, 1, 3, 'FruitFiesta5Reel', NULL, 4, 'Game_20171218222744.jpg', 'Game_20171218222744.jpg', 'Game_20171218222744.jpg', 0, 0, 1000, '2017-12-18 15:27:44', '2017-12-18 15:29:44'),
(1486, 7, '5轴金币', NULL, 1, 1, 3, 'CashSplash5Reel', NULL, 4, 'Game_20171218222815.jpg', 'Game_20171218222815.jpg', 'Game_20171218222815.jpg', 0, 0, 1000, '2017-12-18 15:28:15', '2018-01-26 05:17:18'),
(1487, 7, '百万人鱼', NULL, 1, 3, 3, 'MermaidsMillions', NULL, 4, 'Game_20171218222855.jpg', 'Game_20171218222855.jpg', 'Game_20171218222855.jpg', 0, 0, 270, '2017-12-18 15:28:55', '2018-01-26 05:17:14'),
(1488, 7, '阿瓦隆', NULL, 1, 3, 3, 'Avalon', NULL, 4, 'Game_20171218222940.jpg', 'Game_20171218222940.jpg', 'Game_20171218222940.jpg', 0, 0, 7, '2017-12-18 15:29:40', '2018-01-26 05:17:11'),
(1489, 7, '秘密爱慕者', NULL, 1, 3, 3, 'secretRomanceDesktop', NULL, 4, 'Game_20171218223024.jpg', 'Game_20171218223024.jpg', 'Game_20171218223024.jpg', 0, 0, 353, '2017-12-18 15:30:24', '2018-01-26 05:17:07'),
(1490, 7, '海龙王', NULL, 1, 3, 3, 'EmperorOfTheSea', NULL, 4, 'Game_20171218223113.jpg', 'Game_20171218223113.jpg', 'Game_20171218223113.jpg', 0, 0, 146, '2017-12-18 15:31:13', '2018-01-26 05:17:02'),
(1491, 7, '花粉派对', NULL, 1, 3, 3, 'PollenParty', NULL, 4, 'Game_20171218223148.jpg', 'Game_20171218223148.jpg', 'Game_20171218223148.jpg', 0, 0, 315, '2017-12-18 15:31:48', '2017-12-18 15:33:57'),
(1492, 7, '全面封锁', NULL, 1, 1, 3, 'theHeatIsOnDesktop', NULL, 4, 'Game_20171218223243.jpg', 'Game_20171218223243.jpg', 'Game_20171218223243.jpg', 0, 0, 1000, '2017-12-18 15:32:43', '2018-01-26 05:16:56'),
(1493, 7, '108好汉', NULL, 1, 3, 3, '108heroesDesktop', NULL, 4, 'Game_20171218223352.jpg', 'Game_20171218223352.jpg', 'Game_20171218223352.jpg', 0, 0, 6, '2017-12-18 15:33:52', '2017-12-18 15:33:58'),
(1494, 7, '华丽天下', NULL, 1, 1, 3, 'WheelofWealth', NULL, 2, 'Game_20171218232243.jpg', 'Game_20171218232243.jpg', 'Game_20171218232243.jpg', 0, 0, 163, '2017-12-18 16:22:43', '2018-01-26 05:16:51'),
(1495, 7, '魔兽世界', NULL, 1, 1, 3, 'WowPot', NULL, 2, 'Game_20171218232324.jpg', 'Game_20171218232324.jpg', 'Game_20171218232324.jpg', 0, 0, 1000, '2017-12-18 16:23:24', '2017-12-18 16:23:27'),
(1496, 7, '黄金世界', NULL, 1, 1, 3, 'Tunzamunni', NULL, 2, 'Game_20171218232354.jpg', 'Game_20171218232354.jpg', 'Game_20171218232354.jpg', 0, 0, 1000, '2017-12-18 16:23:54', '2017-12-18 16:23:58'),
(1497, 7, '战利品3轴', NULL, 1, 1, 3, 'LotsofLoot', NULL, 2, 'Game_20171218232423.jpg', 'Game_20171218232423.jpg', 'Game_20171218232423.jpg', 0, 0, 1000, '2017-12-18 16:24:23', '2018-01-26 05:16:43'),
(1498, 7, '3轴水果节', NULL, 1, 1, 3, 'FruitFiesta', NULL, 2, 'Game_20171218232451.jpg', 'Game_20171218232451.jpg', 'Game_20171218232451.jpg', 0, 0, 1000, '2017-12-18 16:24:51', '2018-01-26 05:16:40'),
(1499, 7, '钞票3轴', NULL, 1, 1, 3, 'CashSplash', NULL, 2, 'Game_20171218232530.jpg', 'Game_20171218232530.jpg', 'Game_20171218232530.jpg', 0, 0, 1000, '2017-12-18 16:25:30', '2018-01-26 05:16:37'),
(1500, 7, '滑稽斑马', NULL, 1, 1, 3, 'zebra', NULL, 2, 'Game_20171218232607.jpg', 'Game_20171218232607.jpg', 'Game_20171218232607.jpg', 0, 0, 1000, '2017-12-18 16:26:07', '2018-01-26 05:16:34'),
(1501, 7, '三重魔法', NULL, 1, 1, 3, 'TripleMagic', NULL, 2, 'Game_20171218232638.jpg', 'Game_20171218232638.jpg', 'Game_20171218232638.jpg', 0, 0, 1000, '2017-12-18 16:26:38', '2018-01-26 05:16:31'),
(1502, 7, '财富之轮', NULL, 1, 1, 3, 'Spectacular', NULL, 2, 'Game_20171218232709.jpg', 'Game_20171218232709.jpg', 'Game_20171218232709.jpg', 0, 0, 1000, '2017-12-18 16:27:09', '2018-01-26 05:16:29'),
(1503, 7, '罗马财富', NULL, 1, 1, 3, 'romanriches', NULL, 2, 'Game_20171218232741.jpg', 'Game_20171218232741.jpg', 'Game_20171218232741.jpg', 0, 0, 1000, '2017-12-18 16:27:41', '2018-01-26 05:16:26'),
(1504, 7, '水岸摇滚秀', NULL, 1, 1, 3, 'RockTheBoat', NULL, 2, 'Game_20171218232813.jpg', 'Game_20171218232813.jpg', 'Game_20171218232813.jpg', 0, 0, 1000, '2017-12-18 16:28:13', '2018-01-26 05:16:23'),
(1505, 7, '极速转轴', NULL, 1, 1, 3, 'RapidReels', NULL, 2, 'Game_20171218232841.jpg', 'Game_20171218232841.jpg', 'Game_20171218232841.jpg', 0, 0, 1000, '2017-12-18 16:28:41', '2018-01-26 05:16:16'),
(1506, 7, '遗产', NULL, 1, 1, 3, 'Legacy', NULL, 2, 'Game_20171218232914.jpg', 'Game_20171218232914.jpg', 'Game_20171218232914.jpg', 0, 0, 1000, '2017-12-18 16:29:14', '2018-01-26 05:16:10'),
(1507, 7, '侏罗纪彩金', NULL, 1, 1, 3, 'jurassicjackpot', NULL, 2, 'Game_20171218233050.jpg', 'Game_20171218233050.jpg', 'Game_20171218233050.jpg', 0, 0, 1000, '2017-12-18 16:30:50', '2018-01-26 05:16:07'),
(1508, 7, '铃儿叮当响', NULL, 1, 1, 3, 'JingleBells', NULL, 2, 'Game_20171218233152.jpg', 'Game_20171218233152.jpg', 'Game_20171218233152.jpg', 0, 0, 1000, '2017-12-18 16:31:52', '2017-12-18 16:31:52'),
(1509, 7, '累积奖金快车', NULL, 1, 1, 3, 'jexpress', NULL, 2, 'Game_20171218233226.jpg', 'Game_20171218233226.jpg', 'Game_20171218233226.jpg', 0, 0, 1000, '2017-12-18 16:32:26', '2018-01-26 05:04:26'),
(1510, 7, '金龙', NULL, 1, 1, 3, 'gdragon', NULL, 2, 'Game_20171218233255.jpg', 'Game_20171218233255.jpg', 'Game_20171218233255.jpg', 0, 0, 1000, '2017-12-18 16:32:55', '2018-01-27 18:30:59'),
(1511, 7, '黄金海岸', NULL, 1, 1, 3, 'GoldCoast', NULL, 2, 'Game_20171218233345.jpg', 'Game_20171218233345.jpg', 'Game_20171218233345.jpg', 0, 0, 1000, '2017-12-18 16:33:45', '2018-01-26 05:04:20'),
(1512, 7, '水果老虎机', NULL, 1, 1, 3, 'fruits', NULL, 2, 'Game_20171218233418.jpg', 'Game_20171218233418.jpg', 'Game_20171218233418.jpg', 0, 0, 1000, '2017-12-18 16:34:18', '2017-12-18 16:34:18'),
(1513, 7, '幸运饼干', NULL, 1, 1, 3, 'fruits', NULL, 2, 'Game_20171218233454.jpg', 'Game_20171218233454.jpg', 'Game_20171218233454.jpg', 0, 0, 1000, '2017-12-18 16:34:54', '2017-12-18 16:34:54'),
(1514, 7, '王牌', NULL, 1, 1, 3, 'FlyingAce', NULL, 2, 'Game_20171218233602.jpg', 'Game_20171218233602.jpg', 'Game_20171218233602.jpg', 0, 0, 1000, '2017-12-18 16:36:02', '2018-01-27 18:30:52'),
(1515, 7, '奇妙 7', NULL, 1, 1, 3, 'fan7', NULL, 2, 'Game_20171218233635.jpg', 'Game_20171218233635.jpg', 'Game_20171218233635.jpg', 0, 0, 1000, '2017-12-18 16:36:35', '2017-12-18 16:36:35'),
(1516, 7, '双重人格', NULL, 1, 3, 3, 'DoubleWammy', NULL, 2, 'Game_20171218233717.jpg', 'Game_20171218233717.jpg', 'Game_20171218233717.jpg', 0, 0, 1000, '2017-12-18 16:37:17', '2017-12-18 16:37:17'),
(1517, 7, '双重魔法', NULL, 1, 1, 3, 'dm', NULL, 2, 'Game_20171218233819.jpg', 'Game_20171218233819.jpg', 'Game_20171218233819.jpg', 0, 0, 1000, '2017-12-18 16:38:19', '2017-12-18 16:38:19'),
(1518, 7, '沙发土豆', NULL, 1, 3, 3, 'CouchPotato', NULL, 2, 'Game_20171218234006.jpg', 'Game_20171218234006.jpg', 'Game_20171218234006.jpg', 0, 0, 1000, '2017-12-18 16:40:06', '2017-12-18 16:40:06'),
(1519, 7, '宇宙霹雳猫', NULL, 1, 1, 3, 'cosmicc', NULL, 2, 'Game_20171218234155.jpg', 'Game_20171218234155.jpg', 'Game_20171218234155.jpg', 0, 0, 1000, '2017-12-18 16:41:55', '2017-12-18 16:41:55'),
(1520, 7, '冷鹿', NULL, 1, 1, 3, 'coolbuck', NULL, 2, 'Game_20171218234302.jpg', 'Game_20171218234302.jpg', 'Game_20171218234302.jpg', 0, 0, 1000, '2017-12-18 16:43:02', '2017-12-18 16:43:02'),
(1521, 7, '疯狂现金', NULL, 1, 1, 3, 'cashcrazy', NULL, 2, 'Game_20171218234736.jpg', 'Game_20171218234736.jpg', 'Game_20171218234736.jpg', 0, 0, 1000, '2017-12-18 16:47:36', '2018-01-27 18:30:43'),
(1522, 7, '现金蚌', NULL, 1, 1, 3, 'CashClams', NULL, 2, 'Game_20171218234829.jpg', 'Game_20171218234829.jpg', 'Game_20171218234829.jpg', 0, 0, 1000, '2017-12-18 16:48:29', '2018-01-26 05:04:16'),
(1524, 4, '连环夺宝', NULL, 1, 1, 3, '5901', NULL, 2, 'Game_20171219004041.jpg', 'Game_20171219004041.jpg', 'Game_20171219004041.jpg', 0, 0, 1, '2017-12-18 17:40:41', '2017-12-18 17:40:44'),
(1525, 4, '糖果派对', NULL, 1, 1, 3, '5902', NULL, 2, 'Game_20171219004258.jpg', 'Game_20171219004258.jpg', 'Game_20171219004258.jpg', 0, 0, 2, '2017-12-18 17:42:58', '2017-12-18 17:43:01'),
(1526, 4, '金鸡报喜', NULL, 1, 1, 3, '5090', NULL, 2, 'Game_20171219004342.jpg', 'Game_20171219004342.jpg', 'Game_20171219004342.jpg', 0, 0, 3, '2017-12-18 17:43:42', '2017-12-19 10:19:47'),
(1527, 4, '疯狂水果盘', NULL, 1, 1, 3, '5058', NULL, 2, 'Game_20171219004500.jpg', 'Game_20171219004500.jpg', 'Game_20171219004500.jpg', 0, 0, 4, '2017-12-18 17:45:00', '2017-12-18 17:45:03'),
(1528, 4, '斗鸡', NULL, 1, 1, 3, '5059', NULL, 2, 'Game_20171219004653.jpg', 'Game_20171219004653.jpg', 'Game_20171219004653.jpg', 0, 0, 5, '2017-12-18 17:46:53', '2017-12-19 10:19:56'),
(1631, 14, '阿拉丁神灯', NULL, 1, 3, 3, 'aladdin5x243', NULL, 6, 'Game_20171220145449.jpg', 'Game_20171220145449.jpg', 'Game_20171220145449.jpg', 0, 0, 1, '2017-12-20 07:54:49', '2018-05-10 09:35:51'),
(1530, 4, '传统', NULL, 1, 1, 3, '5013', NULL, 2, 'Game_20171219004855.jpg', 'Game_20171219004855.jpg', 'Game_20171219004855.jpg', 0, 0, 7, '2017-12-18 17:48:55', '2018-01-26 05:15:27'),
(1531, 4, '斗大', NULL, 1, 1, 3, '5088', NULL, 2, 'Game_20171219004939.jpg', 'Game_20171219004939.jpg', 'Game_20171219004939.jpg', 0, 0, 20, '2017-12-18 17:49:39', '2018-01-26 05:15:30'),
(1532, 4, '数字大转轮', NULL, 1, 1, 3, '5076', NULL, 2, 'Game_20171219005032.jpg', 'Game_20171219005032.jpg', 'Game_20171219005032.jpg', 0, 0, 19, '2017-12-18 17:50:32', '2018-01-26 05:15:33'),
(1533, 4, '惑星战记', NULL, 1, 1, 3, '5005', NULL, 2, 'Game_20171219005132.jpg', 'Game_20171219005132.jpg', 'Game_20171219005132.jpg', 0, 0, 8, '2017-12-18 17:51:32', '2018-01-26 05:15:39'),
(1534, 4, 'Staronic', NULL, 1, 1, 3, '5006', NULL, 2, 'Game_20171219005207.jpg', 'Game_20171219005207.jpg', 'Game_20171219005207.jpg', 0, 0, 9, '2017-12-18 17:52:07', '2018-01-26 05:15:43'),
(1535, 4, '激爆水果盘', NULL, 1, 1, 3, '5007', NULL, 2, 'Game_20171219005314.jpg', 'Game_20171219005314.jpg', 'Game_20171219005314.jpg', 0, 0, 10, '2017-12-18 17:53:14', '2018-01-26 05:15:45'),
(1536, 4, '猴子爬树', NULL, 1, 1, 3, '5008', NULL, 2, 'Game_20171219005425.jpg', 'Game_20171219005425.jpg', 'Game_20171219005425.jpg', 0, 0, 11, '2017-12-18 17:54:25', '2018-01-26 05:15:48'),
(1537, 4, '金刚爬楼', NULL, 1, 1, 3, '5009', NULL, 2, 'Game_20171219005506.jpg', 'Game_20171219005506.jpg', 'Game_20171219005506.jpg', 0, 0, 12, '2017-12-18 17:55:06', '2018-01-26 05:15:24'),
(1538, 4, '外星战记', NULL, 1, 1, 3, '5010', NULL, 2, 'Game_20171219005629.jpg', 'Game_20171219005629.jpg', 'Game_20171219005629.jpg', 0, 0, 12, '2017-12-18 17:56:29', '2018-01-26 05:15:20'),
(1539, 4, '丛林', NULL, 1, 1, 3, '5014', NULL, 2, 'Game_20171219010012.jpg', 'Game_20171219010012.jpg', 'Game_20171219010012.jpg', 0, 0, 13, '2017-12-18 18:00:12', '2018-01-26 05:15:18'),
(1540, 4, '水果擂台', NULL, 1, 1, 3, '5069', NULL, 2, 'Game_20171219010105.jpg', 'Game_20171219010105.jpg', 'Game_20171219010105.jpg', 0, 0, 15, '2017-12-18 18:01:05', '2018-01-26 05:15:15'),
(1541, 4, 'FIFA2010', NULL, 1, 1, 3, '5015', NULL, 2, 'Game_20171219010212.jpg', 'Game_20171219010212.jpg', 'Game_20171219010212.jpg', 0, 0, 16, '2017-12-18 18:02:12', '2018-01-26 05:15:08'),
(1542, 4, '蒸气炸弹', NULL, 1, 1, 3, '5904', NULL, 2, 'Game_20171219010356.jpg', 'Game_20171219010356.jpg', 'Game_20171219010356.jpg', 0, 0, 17, '2017-12-18 18:03:56', '2018-01-26 05:15:11'),
(1543, 4, '史前丛林冒险', NULL, 1, 1, 3, '5016', NULL, 2, 'Game_20171219010611.jpg', 'Game_20171219010611.jpg', 'Game_20171219010611.jpg', 0, 0, 19, '2017-12-18 18:06:11', '2018-01-26 05:15:04'),
(1544, 4, '星际大战', NULL, 1, 1, 3, '5017', NULL, 2, 'Game_20171219010727.jpg', 'Game_20171219010727.jpg', 'Game_20171219010727.jpg', 0, 0, 22, '2017-12-18 18:07:27', '2018-01-27 18:16:13'),
(1545, 4, '齐天大圣', NULL, 1, 1, 3, '5018', NULL, 2, 'Game_20171219151329.jpg', 'Game_20171219151329.jpg', 'Game_20171219151329.jpg', 0, 0, 23, '2017-12-19 08:13:29', '2018-01-27 18:15:59'),
(1546, 4, '水果乐园', NULL, 1, 1, 3, '5019', NULL, 2, 'Game_20171219151412.jpg', 'Game_20171219151412.jpg', 'Game_20171219151412.jpg', 0, 0, 24, '2017-12-19 08:14:12', '2018-01-26 05:14:48'),
(1547, 4, '法海斗白蛇', NULL, 1, 1, 3, '5025', NULL, 2, 'Game_20171219151453.jpg', 'Game_20171219151453.jpg', 'Game_20171219151453.jpg', 0, 0, 25, '2017-12-19 08:14:53', '2018-01-27 18:16:07'),
(1548, 4, '2012伦敦奥运', NULL, 1, 1, 3, '5026', NULL, 2, 'Game_20171219154344.jpg', 'Game_20171219154344.jpg', 'Game_20171219154344.jpg', 0, 0, 26, '2017-12-19 08:43:44', '2018-01-26 05:14:37'),
(1549, 4, '功夫龙', NULL, 1, 1, 3, '5027', NULL, 2, 'Game_20171219161002.jpg', 'Game_20171219161002.jpg', 'Game_20171219161002.jpg', 0, 0, 28, '2017-12-19 09:10:02', '2017-12-19 10:10:23'),
(1550, 4, '中秋月光派对', NULL, 1, 1, 3, '5028', NULL, 2, 'Game_20171219161208.jpg', 'Game_20171219161208.jpg', 'Game_20171219161208.jpg', 0, 0, 29, '2017-12-19 09:12:08', '2018-01-26 05:14:33'),
(1551, 4, '圣诞派对', NULL, 1, 1, 3, '5029', NULL, 2, 'Game_20171219162106.jpg', 'Game_20171219162106.jpg', 'Game_20171219162106.jpg', 0, 0, 28, '2017-12-19 09:21:06', '2018-01-26 05:14:19'),
(1552, 4, '幸运财神', NULL, 1, 1, 3, '5030', NULL, 2, 'Game_20171219162140.jpg', 'Game_20171219162140.jpg', 'Game_20171219162140.jpg', 0, 0, 30, '2017-12-19 09:21:40', '2017-12-19 10:10:21'),
(1553, 4, '5034', NULL, 1, 1, 3, '5034', NULL, 2, 'Game_20171219162216.jpg', 'Game_20171219162216.jpg', 'Game_20171219162216.jpg', 0, 0, 31, '2017-12-19 09:22:16', '2018-01-26 05:14:15'),
(1554, 4, '加勒比扑克', NULL, 1, 1, 3, '5035', NULL, 2, 'Game_20171219162257.jpg', 'Game_20171219162257.jpg', 'Game_20171219162257.jpg', 0, 0, 32, '2017-12-19 09:22:57', '2017-12-19 10:10:19'),
(1555, 4, '鱼虾蟹', NULL, 1, 1, 3, '5039', NULL, 2, 'Game_20171219162340.jpg', 'Game_20171219162340.jpg', 'Game_20171219162340.jpg', 0, 0, 33, '2017-12-19 09:23:40', '2018-01-26 05:14:07'),
(1556, 4, '百搭二王', NULL, 1, 1, 3, '5040', NULL, 2, 'Game_20171219162415.jpg', 'Game_20171219162415.jpg', 'Game_20171219162415.jpg', 0, 0, 34, '2017-12-19 09:24:15', '2018-01-26 05:14:03'),
(1557, 4, '7PK', NULL, 1, 1, 3, '5041', NULL, 2, 'Game_20171219162444.jpg', 'Game_20171219162444.jpg', 'Game_20171219162444.jpg', 0, 0, 35, '2017-12-19 09:24:44', '2018-01-26 05:11:45'),
(1558, 4, '钻石水果盘', NULL, 1, 1, 3, '5043', NULL, 2, 'Game_20171219162518.jpg', 'Game_20171219162518.jpg', 'Game_20171219162518.jpg', 0, 0, 36, '2017-12-19 09:25:18', '2018-01-26 05:11:42'),
(1559, 4, '特务危机', NULL, 1, 1, 3, '5048', NULL, 2, 'Game_20171219162556.jpg', 'Game_20171219162556.jpg', 'Game_20171219162556.jpg', 0, 0, 37, '2017-12-19 09:25:56', '2018-01-26 05:13:52'),
(1560, 4, '明星97', NULL, 1, 1, 3, '5044', NULL, 2, 'Game_20171219162713.jpg', 'Game_20171219162713.jpg', 'Game_20171219162713.jpg', 0, 0, 38, '2017-12-19 09:27:13', '2018-01-26 05:13:48'),
(1561, 4, '玉蒲团', NULL, 1, 1, 3, '5049', NULL, 2, 'Game_20171219162833.jpg', 'Game_20171219162833.jpg', 'Game_20171219162833.jpg', 0, 0, 39, '2017-12-19 09:28:33', '2017-12-19 10:10:11'),
(1562, 4, '动物奇观五', NULL, 1, 1, 3, '5060', NULL, 2, 'Game_20171219163033.jpg', 'Game_20171219163033.jpg', 'Game_20171219163033.jpg', 0, 0, 39, '2017-12-19 09:30:33', '2018-01-26 05:13:43'),
(1563, 4, '超级7', NULL, 1, 1, 3, '5061', NULL, 2, 'Game_20171219163108.jpg', 'Game_20171219163108.jpg', 'Game_20171219163108.jpg', 0, 0, 41, '2017-12-19 09:31:08', '2017-12-19 10:10:10'),
(1564, 4, '龙在冏途', NULL, 1, 1, 3, '5062', NULL, 2, 'Game_20171219163218.jpg', 'Game_20171219163218.jpg', 'Game_20171219163218.jpg', 0, 0, 42, '2017-12-19 09:32:18', '2017-12-19 10:10:10'),
(1565, 4, '水果拉霸', NULL, 1, 1, 3, '5063', NULL, 2, 'Game_20171219163325.jpg', 'Game_20171219163325.jpg', 'Game_20171219163325.jpg', 0, 0, 43, '2017-12-19 09:33:25', '2017-12-19 10:10:09'),
(1566, 4, '扑克拉霸', NULL, 1, 1, 3, '5064', NULL, 2, 'Game_20171219163414.jpg', 'Game_20171219163414.jpg', 'Game_20171219163414.jpg', 0, 0, 1000, '2017-12-19 09:34:14', '2017-12-19 10:10:09'),
(1567, 4, '筒子拉霸', NULL, 1, 1, 3, '5065', NULL, 2, 'Game_20171219163448.jpg', 'Game_20171219163448.jpg', 'Game_20171219163448.jpg', 0, 0, 1000, '2017-12-19 09:34:48', '2018-01-26 05:13:35'),
(1568, 4, '足球拉霸', NULL, 1, 1, 3, '5066', NULL, 2, 'Game_20171219163515.jpg', 'Game_20171219163515.jpg', 'Game_20171219163515.jpg', 0, 0, 1000, '2017-12-19 09:35:15', '2017-12-19 10:10:08'),
(1569, 4, '黄金大转轮', NULL, 1, 1, 3, '5070', NULL, 2, 'Game_20171219163544.jpg', 'Game_20171219163544.jpg', 'Game_20171219163544.jpg', 0, 0, 1000, '2017-12-19 09:35:44', '2017-12-19 10:10:07'),
(1570, 4, '百家乐大转轮', NULL, 1, 1, 3, '5073', NULL, 2, 'Game_20171219163619.jpg', 'Game_20171219163619.jpg', 'Game_20171219163619.jpg', 0, 0, 1000, '2017-12-19 09:36:19', '2017-12-19 10:10:03'),
(1571, 4, '水果大转轮', NULL, 1, 1, 3, '5077', NULL, 2, 'Game_20171219163648.jpg', 'Game_20171219163648.jpg', 'Game_20171219163648.jpg', 0, 0, 1000, '2017-12-19 09:36:48', '2018-01-26 05:13:25'),
(1572, 4, '象棋大转轮', NULL, 1, 1, 3, '5078', NULL, 2, 'Game_20171219163721.jpg', 'Game_20171219163721.jpg', 'Game_20171219163721.jpg', 0, 0, 1000, '2017-12-19 09:37:21', '2018-01-26 05:13:21'),
(1573, 4, '3D数字大转轮', NULL, 1, 1, 3, '5079', NULL, 2, 'Game_20171219163746.jpg', 'Game_20171219163746.jpg', 'Game_20171219163746.jpg', 0, 0, 1000, '2017-12-19 09:37:46', '2018-01-26 05:13:17'),
(1574, 4, '乐透转轮', NULL, 1, 1, 3, '5080', NULL, 2, 'Game_20171219163813.jpg', 'Game_20171219163813.jpg', 'Game_20171219163813.jpg', 0, 0, 1000, '2017-12-19 09:38:13', '2018-01-26 05:13:09'),
(1575, 4, '钻石列车', NULL, 1, 1, 3, '5083', NULL, 2, 'Game_20171219163834.jpg', 'Game_20171219163834.jpg', 'Game_20171219163834.jpg', 0, 0, 1000, '2017-12-19 09:38:34', '2018-01-26 05:13:06'),
(1576, 4, '圣兽传说', NULL, 1, 1, 3, '5084', NULL, 2, 'Game_20171219163857.jpg', 'Game_20171219163857.jpg', 'Game_20171219163857.jpg', 0, 0, 1000, '2017-12-19 09:38:57', '2018-01-26 05:13:01'),
(1577, 4, '红狗', NULL, 1, 1, 3, '5089', NULL, 2, 'Game_20171219163933.jpg', 'Game_20171219163933.jpg', 'Game_20171219163933.jpg', 0, 0, 1000, '2017-12-19 09:39:33', '2018-01-26 05:12:57'),
(1578, 4, '三国拉霸', NULL, 1, 1, 3, '5091', NULL, 2, 'Game_20171219163959.jpg', 'Game_20171219163959.jpg', 'Game_20171219163959.jpg', 0, 0, 1000, '2017-12-19 09:39:59', '2017-12-19 10:09:58'),
(1579, 4, '封神榜', NULL, 1, 1, 3, '5092', NULL, 2, 'Game_20171219164018.jpg', 'Game_20171219164018.jpg', 'Game_20171219164018.jpg', 0, 0, 1000, '2017-12-19 09:40:18', '2017-12-19 10:09:58'),
(1580, 4, '金瓶梅2', NULL, 1, 1, 3, '5094', NULL, 2, 'Game_20171219164052.jpg', 'Game_20171219164052.jpg', 'Game_20171219164052.jpg', 0, 0, 1, '2017-12-19 09:40:42', '2018-01-26 05:12:52'),
(1581, 4, '欧式轮盘', NULL, 1, 1, 3, '5105', NULL, 2, 'Game_20171219164152.jpg', 'Game_20171219164152.jpg', 'Game_20171219164152.jpg', 0, 0, 1000, '2017-12-19 09:41:52', '2017-12-19 10:09:57'),
(1582, 4, '美式轮盘', NULL, 1, 1, 3, '5107', NULL, 2, 'Game_20171219164218.jpg', 'Game_20171219164218.jpg', 'Game_20171219164218.jpg', 0, 0, 1000, '2017-12-19 09:42:18', '2017-12-19 10:09:57'),
(1583, 4, '法式轮盘', NULL, 1, 1, 3, '5109', NULL, 2, 'Game_20171219164245.jpg', 'Game_20171219164245.jpg', 'Game_20171219164245.jpg', 0, 0, 1000, '2017-12-19 09:42:45', '2017-12-19 10:09:56'),
(1584, 4, '三国', NULL, 1, 1, 3, '5106', NULL, 2, 'Game_20171219164308.jpg', 'Game_20171219164308.jpg', 'Game_20171219164308.jpg', 0, 0, 1000, '2017-12-19 09:43:08', '2018-01-27 18:15:17'),
(1585, 4, '经典21点', NULL, 1, 1, 3, '5115', NULL, 2, 'Game_20171219164331.jpg', 'Game_20171219164331.jpg', 'Game_20171219164331.jpg', 0, 0, 1000, '2017-12-19 09:43:31', '2017-12-19 10:09:52'),
(1586, 4, '西班牙经典21点', NULL, 1, 1, 3, '5116', NULL, 2, 'Game_20171219164406.jpg', 'Game_20171219164406.jpg', 'Game_20171219164406.jpg', 0, 0, 1000, '2017-12-19 09:44:06', '2017-12-19 10:09:51'),
(1587, 4, '维加斯21点', NULL, 1, 1, 3, '5117', NULL, 2, 'Game_20171219164427.jpg', 'Game_20171219164427.jpg', 'Game_20171219164427.jpg', 0, 0, 1000, '2017-12-19 09:44:27', '2018-01-27 18:15:10'),
(1588, 4, '皇家德州扑克', NULL, 1, 1, 3, '5131', NULL, 2, 'Game_20171219164503.jpg', 'Game_20171219164503.jpg', 'Game_20171219164503.jpg', 0, 0, 1000, '2017-12-19 09:45:03', '2018-01-27 18:15:05'),
(1589, 4, '火焰山', NULL, 1, 1, 3, '5201', NULL, 2, 'Game_20171219164532.jpg', 'Game_20171219164532.jpg', 'Game_20171219164532.jpg', 0, 0, 1000, '2017-12-19 09:45:32', '2018-01-27 18:14:58'),
(1590, 4, '月光宝盒', NULL, 1, 1, 3, '5202', NULL, 2, 'Game_20171219164604.jpg', 'Game_20171219164604.jpg', 'Game_20171219164604.jpg', 0, 0, 1000, '2017-12-19 09:46:04', '2018-01-27 18:14:54'),
(1591, 4, '爱你一万年', NULL, 1, 1, 3, '5203', NULL, 2, 'Game_20171219164624.jpg', 'Game_20171219164624.jpg', 'Game_20171219164624.jpg', 0, 0, 1000, '2017-12-19 09:46:24', '2018-01-26 05:11:11'),
(1592, 4, '2014FIFA', NULL, 1, 1, 3, '5204', NULL, 2, 'Game_20171219164651.jpg', 'Game_20171219164651.jpg', 'Game_20171219164651.jpg', 0, 0, 1000, '2017-12-19 09:46:51', '2018-01-26 05:11:06'),
(1593, 4, '夜市人生', NULL, 1, 1, 3, '5402', NULL, 2, 'Game_20171219164710.jpg', 'Game_20171219164710.jpg', 'Game_20171219164710.jpg', 0, 0, 1000, '2017-12-19 09:47:10', '2018-01-26 05:11:04'),
(1594, 4, '神舟27', NULL, 1, 1, 3, '5406', NULL, 2, 'Game_20171219164844.jpg', 'Game_20171219164844.jpg', 'Game_20171219164844.jpg', 0, 0, 1000, '2017-12-19 09:48:44', '2018-01-26 05:11:00'),
(1595, 4, '大红帽与小野狼', NULL, 1, 1, 3, '5407', NULL, 2, 'Game_20171219164926.jpg', 'Game_20171219164926.jpg', 'Game_20171219164926.jpg', 0, 0, 1000, '2017-12-19 09:49:26', '2018-01-26 05:10:57'),
(1596, 4, '秘境冒险', NULL, 1, 1, 3, '5601', NULL, 2, 'Game_20171219164959.jpg', 'Game_20171219164959.jpg', 'Game_20171219164959.jpg', 0, 0, 1000, '2017-12-19 09:49:59', '2018-01-26 05:10:55'),
(1597, 4, '连连看', NULL, 1, 1, 3, '5701', NULL, 2, 'Game_20171219165016.jpg', 'Game_20171219165016.jpg', 'Game_20171219165016.jpg', 0, 0, 1000, '2017-12-19 09:50:16', '2018-01-27 18:14:48'),
(1598, 4, '发达罗', NULL, 1, 1, 3, '5703', NULL, 2, 'Game_20171219165047.jpg', 'Game_20171219165047.jpg', 'Game_20171219165047.jpg', 0, 0, 1000, '2017-12-19 09:50:47', '2018-01-26 05:10:50'),
(1599, 4, '斗牛', NULL, 1, 1, 3, '5704', NULL, 2, 'Game_20171219165106.jpg', 'Game_20171219165106.jpg', 'Game_20171219165106.jpg', 0, 0, 1000, '2017-12-19 09:51:06', '2018-01-26 05:10:47'),
(1600, 4, '聚宝盆', NULL, 1, 1, 3, '5705', NULL, 2, 'Game_20171219165125.jpg', 'Game_20171219165125.jpg', 'Game_20171219165125.jpg', 0, 0, 1000, '2017-12-19 09:51:25', '2018-01-26 05:10:44'),
(1601, 4, '浓情巧克力', NULL, 1, 1, 3, '5706', NULL, 2, 'Game_20171219165148.jpg', 'Game_20171219165148.jpg', 'Game_20171219165148.jpg', 0, 0, 1000, '2017-12-19 09:51:48', '2018-01-26 05:10:42'),
(1602, 4, '金钱豹', NULL, 1, 1, 3, '5707', NULL, 2, 'Game_20171219165207.jpg', 'Game_20171219165207.jpg', 'Game_20171219165207.jpg', 0, 0, 1000, '2017-12-19 09:52:07', '2018-01-26 05:10:39'),
(1603, 4, '海豚世界', NULL, 1, 1, 3, '5801', NULL, 2, 'Game_20171219165355.jpg', 'Game_20171219165355.jpg', 'Game_20171219165355.jpg', 0, 0, 1000, '2017-12-19 09:53:55', '2018-01-26 05:10:36'),
(1604, 4, '阿基里斯', NULL, 1, 1, 3, '5802', NULL, 2, 'Game_20171219165417.jpg', 'Game_20171219165417.jpg', 'Game_20171219165417.jpg', 0, 0, 1000, '2017-12-19 09:54:17', '2018-05-10 09:36:54'),
(1607, 4, '大明星', NULL, 1, 1, 3, '5804', NULL, 2, 'Game_20171219165529.jpg', 'Game_20171219165529.jpg', 'Game_20171219165529.jpg', 0, 0, 1000, '2017-12-19 09:55:29', '2018-05-10 09:36:44'),
(1606, 4, '阿兹特克宝藏', NULL, 1, 1, 3, '5803', NULL, 2, 'Game_20171219165452.jpg', 'Game_20171219165452.jpg', 'Game_20171219165452.jpg', 0, 0, 1000, '2017-12-19 09:54:52', '2018-05-10 09:36:47'),
(1608, 4, '凯撒帝国', NULL, 1, 1, 3, '5805', NULL, 2, 'Game_20171219165609.jpg', 'Game_20171219165609.jpg', 'Game_20171219165609.jpg', 0, 0, 1000, '2017-12-19 09:56:09', '2018-05-10 09:36:31'),
(1609, 4, '奇幻花园', NULL, 1, 1, 3, '5806', NULL, 2, 'Game_20171219165633.jpg', 'Game_20171219165633.jpg', 'Game_20171219165633.jpg', 0, 0, 1000, '2017-12-19 09:56:33', '2018-05-10 09:36:27'),
(1104, 6, '轮盘赌', NULL, 1, 1, 3, 'aogro', NULL, 2, 'Game_20171216195630.jpg', 'Game_20171216195630.jpg', 'Game_20171216195630.jpg', 0, 0, 202, '2017-12-16 12:56:30', '2017-12-16 12:56:35'),
(1105, 6, '大草原现金', NULL, 1, 1, 3, 'savcas', NULL, 2, 'Game_20171216201234.jpg', 'Game_20171216201234.jpg', 'Game_20171216201234.jpg', 0, 0, 201, '2017-12-16 13:12:34', '2018-01-26 05:32:50'),
(1106, 6, '幸运熊猫', NULL, 1, 1, 3, 'gts51', NULL, 6, 'Game_20171216202354.jpg', 'Game_20171216202354.jpg', 'Game_20171216202354.jpg', 0, 0, 122, '2017-12-16 13:23:54', '2018-01-26 05:32:47'),
(1107, 6, '壮志凌云', NULL, 1, 1, 3, 'topg', NULL, 6, 'Game_20171216203035.jpg', 'Game_20171216203035.jpg', 'Game_20171216203035.jpg', 0, 0, 180, '2017-12-16 13:30:35', '2018-01-26 05:32:43'),
(1108, 6, '海滨嘉年华', NULL, 1, 3, 3, 'bl', NULL, 6, 'Game_20171216203133.jpg', 'Game_20171216203133.jpg', 'Game_20171216203133.jpg', 0, 0, 20, '2017-12-16 13:31:33', '2018-01-26 05:32:40'),
(1109, 6, '弓箭手', NULL, 1, 3, 3, 'arc', NULL, 6, 'Game_20171216203259.jpg', 'Game_20171216203259.jpg', 'Game_20171216203259.jpg', 0, 0, 14, '2017-12-16 13:32:59', '2018-01-26 05:32:37'),
(1110, 6, '四灵', NULL, 1, 1, 3, 'sling', NULL, 6, 'Game_20171216203510.jpg', 'Game_20171216203510.jpg', 'Game_20171216203510.jpg', 0, 0, 1, '2017-12-16 13:35:10', '2018-01-26 05:32:33'),
(1111, 6, '布法罗闪电战', NULL, 1, 1, 3, 'bfb', NULL, 6, 'Game_20171216203610.jpg', 'Game_20171216203610.jpg', 'Game_20171216203610.jpg', 0, 0, 27, '2017-12-16 13:36:10', '2018-01-26 05:32:29'),
(1112, 6, '黄金武士', NULL, 1, 1, 3, 'warg', NULL, 6, 'Game_20171216203737.jpg', 'Game_20171216203737.jpg', 'Game_20171216203737.jpg', 0, 0, 2, '2017-12-16 13:37:37', '2018-01-27 18:25:08'),
(1113, 6, '八宝一后', NULL, 1, 1, 3, 'treasq', NULL, 6, 'Game_20171216203832.jpg', 'Game_20171216203832.jpg', 'Game_20171216203832.jpg', 0, 0, 3, '2017-12-16 13:38:32', '2018-01-26 05:32:24'),
(1114, 6, '冰流', NULL, 1, 3, 3, 'gtsir', NULL, 4, 'Game_20171216204010.jpg', 'Game_20171216204010.jpg', 'Game_20171216204010.jpg', 0, 0, 95, '2017-12-16 13:40:10', '2018-01-26 05:32:21'),
(1115, 6, '爵士俱乐部', NULL, 1, 1, 3, 'gtsjzc', NULL, 4, 'Game_20171216204133.jpg', 'Game_20171216204133.jpg', 'Game_20171216204133.jpg', 0, 0, 100, '2017-12-16 13:41:33', '2018-01-26 05:32:18'),
(1116, 6, '约翰韦恩', NULL, 1, 1, 3, 'gtsjhw', NULL, 5, 'Game_20171216204316.jpg', 'Game_20171216204316.jpg', 'Game_20171216204316.jpg', 0, 0, 103, '2017-12-16 13:43:16', '2018-01-26 05:32:14'),
(1117, 6, '成交时刻', NULL, 1, 1, 3, 'ashtmd', NULL, 5, 'Game_20171216204432.jpg', 'Game_20171216204432.jpg', 'Game_20171216204432.jpg', 0, 0, 179, '2017-12-16 13:44:32', '2018-01-26 05:32:11'),
(1118, 6, '黄金游戏', NULL, 1, 3, 3, 'glg', NULL, 5, 'Game_20171216204529.jpg', 'Game_20171216204529.jpg', 'Game_20171216204529.jpg', 0, 0, 84, '2017-12-16 13:45:29', '2018-01-26 05:32:09'),
(1119, 6, '粉红豹/顽皮豹', NULL, 1, 3, 3, 'pnp', NULL, 5, 'Game_20171216204759.jpg', 'Game_20171216204759.jpg', 'Game_20171216204759.jpg', 0, 0, 138, '2017-12-16 13:47:59', '2018-01-26 05:32:06'),
(1120, 6, '豆茎的赏金', NULL, 1, 3, 3, 'ashbob', NULL, 5, 'Game_20171216204856.jpg', 'Game_20171216204856.jpg', 'Game_20171216204856.jpg', 0, 0, 26, '2017-12-16 13:48:56', '2018-01-26 05:33:47'),
(1121, 6, '木乃伊', NULL, 1, 1, 3, 'mmy', NULL, 5, 'Game_20171216204955.jpg', 'Game_20171216204955.jpg', 'Game_20171216204955.jpg', 0, 0, 176, '2017-12-16 13:49:55', '2018-01-26 05:33:44'),
(1122, 6, '三只小猪与大灰狼', NULL, 1, 3, 3, 'paw', NULL, 5, 'Game_20171216205054.jpg', 'Game_20171216205054.jpg', 'Game_20171216205054.jpg', 0, 0, 137, '2017-12-16 13:50:54', '2018-01-26 05:33:42'),
(1123, 6, '洛奇传奇', NULL, 1, 3, 3, 'rky', NULL, 5, 'Game_20171216205138.jpg', 'Game_20171216205138.jpg', 'Game_20171216205138.jpg', 0, 0, 150, '2017-12-16 13:51:38', '2018-01-26 05:33:35'),
(1124, 6, '三剑客和女王的钻石', NULL, 1, 3, 3, 'tmqd', NULL, 5, 'Game_20171216205328.jpg', 'Game_20171216205328.jpg', 'Game_20171216205328.jpg', 0, 0, 178, '2017-12-16 13:53:28', '2018-01-26 05:33:31'),
(1125, 6, '泰庙', NULL, 1, 1, 3, 'thtk', NULL, 5, 'Game_20171217221831.jpg', 'Game_20171217221831.jpg', 'Game_20171217221831.jpg', 0, 0, 171, '2017-12-17 15:18:31', '2018-01-26 05:33:28'),
(1126, 6, '舞龙', NULL, 1, 1, 3, 'wlgjp', NULL, 5, 'Game_20171217221923.jpg', 'Game_20171217221923.jpg', 'Game_20171217221923.jpg', 0, 0, 5, '2017-12-17 15:19:23', '2018-01-27 18:24:50'),
(1127, 6, '白王', NULL, 1, 3, 3, 'whk', NULL, 5, 'Game_20171217222014.jpg', 'Game_20171217222014.jpg', 'Game_20171217222014.jpg', 0, 0, 7, '2017-12-17 15:20:14', '2018-01-27 18:24:46'),
(1128, 6, '堂吉诃德的财富', NULL, 1, 3, 3, 'donq', NULL, 5, 'Game_20171217222055.jpg', 'Game_20171217222055.jpg', 'Game_20171217222055.jpg', 0, 0, 6, '2017-12-17 15:20:55', '2018-01-26 05:33:15'),
(1129, 6, '爱之船', NULL, 1, 1, 3, 'lvb', NULL, 5, 'Game_20171217222140.jpg', 'Game_20171217222140.jpg', 'Game_20171217222140.jpg', 0, 0, 175, '2017-12-17 15:21:40', '2018-01-26 05:33:12'),
(1130, 6, '幸运直击/幸运时刻', NULL, 1, 3, 3, 'sol', NULL, 5, 'Game_20171217222240.jpg', 'Game_20171217222240.jpg', 'Game_20171217222240.jpg', 0, 0, 9, '2017-12-17 15:22:40', '2018-01-26 05:33:09'),
(1131, 6, '桑巴舞', NULL, 1, 3, 3, 'gtssmbr', NULL, 5, 'Game_20171217222323.jpg', 'Game_20171217222323.jpg', 'Game_20171217222323.jpg', 0, 0, 10, '2017-12-17 15:23:23', '2018-01-27 18:24:58'),
(1132, 6, '众神的时代：奥林匹斯之子', NULL, 1, 3, 3, 'hrcls', NULL, 5, 'Game_20171217222423.jpg', 'Game_20171217222423.jpg', 'Game_20171217222423.jpg', 0, 0, 12, '2017-12-17 15:24:23', '2018-01-26 05:33:02'),
(1133, 6, '众神的时代：奥林匹斯之王', NULL, 1, 1, 3, 'zeus', NULL, 5, 'Game_20171217222509.jpg', 'Game_20171217222509.jpg', 'Game_20171217222509.jpg', 0, 0, 15, '2017-12-17 15:25:09', '2018-01-26 05:33:00'),
(1134, 6, '中奖巨头/巨人', NULL, 1, 1, 3, 'jpgt', NULL, 5, 'Game_20171217222956.jpg', 'Game_20171217222956.jpg', 'Game_20171217222956.jpg', 0, 0, 13, '2017-12-17 15:26:08', '2018-01-26 05:32:56'),
(1135, 6, '幸运草', NULL, 1, 3, 3, 'gtsirl', NULL, 5, 'Game_20171217222746.jpg', 'Game_20171217222746.jpg', 'Game_20171217222746.jpg', 0, 0, 123, '2017-12-17 15:27:46', '2018-01-26 05:34:42'),
(1136, 6, '丛林的心脏/丛林之心', NULL, 1, 3, 3, 'ashhotj', NULL, 5, 'Game_20171217230530.jpg', 'Game_20171217230530.jpg', 'Game_20171217230530.jpg', 0, 0, 91, '2017-12-17 16:05:30', '2018-01-26 05:34:38'),
(1137, 6, '角斗士(奖池)', NULL, 1, 3, 3, 'glrj', NULL, 5, 'Game_20171217230711.jpg', 'Game_20171217230711.jpg', 'Game_20171217230711.jpg', 0, 0, 92, '2017-12-17 16:07:11', '2018-01-26 05:34:35'),
(1138, 6, '酷炫水果累积奖池', NULL, 1, 3, 3, 'fnfrj', NULL, 5, 'Game_20171217230911.jpg', 'Game_20171217230911.jpg', 'Game_20171217230911.jpg', 0, 0, 90, '2017-12-17 16:09:11', '2018-01-26 05:34:31'),
(1139, 6, '戴图理累计大奖：神奇七', NULL, 1, 3, 3, 'fdtjg', NULL, 5, 'Game_20171217231105.jpg', 'Game_20171217231105.jpg', 'Game_20171217231105.jpg', 0, 0, 1000, '2017-12-17 16:11:05', '2018-01-26 05:34:27'),
(1140, 6, '狐狸的命运', NULL, 1, 3, 3, 'fxf', NULL, 5, 'Game_20171217231155.jpg', 'Game_20171217231155.jpg', 'Game_20171217231155.jpg', 0, 0, 89, '2017-12-17 16:11:55', '2018-01-26 05:34:24'),
(1141, 6, '惊异之林', NULL, 1, 3, 3, 'fow', NULL, 5, 'Game_20171217231305.jpg', 'Game_20171217231305.jpg', 'Game_20171217231305.jpg', 0, 0, 87, '2017-12-17 16:13:05', '2018-01-26 05:34:21'),
(1142, 6, '终极足球', NULL, 1, 3, 3, 'fbr', NULL, 5, 'Game_20171217231348.jpg', 'Game_20171217231348.jpg', 'Game_20171217231348.jpg', 0, 0, 86, '2017-12-17 16:13:48', '2018-01-27 18:24:34'),
(1143, 6, '埃斯梅拉达', NULL, 1, 3, 3, 'esmk', NULL, 5, 'Game_20171217231437.jpg', 'Game_20171217231437.jpg', 'Game_20171217231437.jpg', 0, 0, 85, '2017-12-17 16:14:37', '2018-01-26 05:34:14'),
(1144, 6, '警察土匪', NULL, 1, 1, 3, 'gtscnb', NULL, 5, 'Game_20171217231555.jpg', 'Game_20171217231555.jpg', 'Game_20171217231555.jpg', 0, 0, 84, '2017-12-17 16:15:55', '2018-01-26 05:34:11'),
(1001, 24, '森林舞会', NULL, 1, 1, 1, '40', NULL, 1, 'Game_20171125182731.jpg', 'Game_20171125182731.jpg', 'Game_20171125182731.jpg', 0, 0, 2, '2017-11-25 11:27:31', '2018-01-27 18:28:06'),
(1002, 24, '水浒传', NULL, 1, 1, 3, '110', NULL, 1, 'Game_20171125182810.jpg', 'Game_20171125182810.jpg', 'Game_20171125182810.jpg', 0, 0, 3, '2017-11-25 11:28:10', '2017-11-25 11:28:18'),
(1003, 24, '百家乐', NULL, 1, 1, 3, '141', NULL, 1, 'Game_20171125182855.jpg', 'Game_20171125182855.jpg', 'Game_20171125182855.jpg', 0, 0, 4, '2017-11-25 11:28:55', '2017-11-25 11:28:59'),
(1004, 24, '超级斗地主', NULL, 1, 1, 3, '20', NULL, 1, 'Game_20171125182933.jpg', 'Game_20171125182933.jpg', 'Game_20171125182933.jpg', 0, 0, 5, '2017-11-25 11:29:33', '2017-11-25 11:29:43'),
(1005, 24, '太极', NULL, 1, 1, 3, '140', NULL, 1, 'Game_20171125183029.jpg', 'Game_20171125183029.jpg', 'Game_20171125183029.jpg', 0, 0, 6, '2017-11-25 11:30:29', '2018-01-27 18:27:59'),
(1006, 24, '舞狮报喜', NULL, 1, 1, 3, '144', NULL, 1, 'Game_20171125183112.jpg', 'Game_20171125183112.jpg', 'Game_20171125183112.jpg', 0, 0, 7, '2017-11-25 11:31:12', '2018-01-26 05:23:14'),
(1007, 24, '五龙争霸', NULL, 1, 1, 3, '111', NULL, 1, 'Game_20171125183213.jpg', 'Game_20171125183213.jpg', 'Game_20171125183213.jpg', 0, 0, 8, '2017-11-25 11:32:13', '2018-01-27 18:27:51'),
(1008, 24, '天龙虎地', NULL, 1, 1, 3, '114', NULL, 1, 'Game_20171125183258.jpg', 'Game_20171125183258.jpg', 'Game_20171125183258.jpg', 0, 0, 9, '2017-11-25 11:32:58', '2018-01-27 18:27:55'),
(1009, 24, '百乐牛牛', NULL, 1, 1, 3, '139', NULL, 1, 'Game_20171125183346.jpg', 'Game_20171125183346.jpg', 'Game_20171125183346.jpg', 0, 0, 10, '2017-11-25 11:33:46', '2017-11-25 11:33:54'),
(1010, 24, '水浒英雄', NULL, 1, 1, 3, '112', NULL, 1, 'Game_20171125183457.jpg', 'Game_20171125183457.jpg', 'Game_20171125183457.jpg', 0, 0, 11, '2017-11-25 11:34:51', '2018-01-26 05:23:01'),
(1011, 24, '皇家轮盘', NULL, 1, 1, 3, '138', NULL, 1, 'Game_20171125183536.jpg', 'Game_20171125183536.jpg', 'Game_20171125183536.jpg', 0, 0, 12, '2017-11-25 11:35:36', '2018-01-27 18:27:45'),
(1012, 24, '洪福齐天', NULL, 1, 1, 3, '120', NULL, 1, 'Game_20171125183615.jpg', 'Game_20171125183615.jpg', 'Game_20171125183615.jpg', 0, 0, 13, '2017-11-25 11:36:15', '2018-01-27 18:27:40'),
(1013, 24, '好运5扑克', NULL, 1, 1, 3, '22', NULL, 1, 'Game_20171125183648.jpg', 'Game_20171125183648.jpg', 'Game_20171125183648.jpg', 0, 0, 14, '2017-11-25 11:36:48', '2018-01-27 18:27:30'),
(1014, 24, '黄金777', NULL, 1, 1, 3, '115', NULL, 1, 'Game_20171125183744.jpg', 'Game_20171125183744.jpg', 'Game_20171125183744.jpg', 0, 0, 15, '2017-11-25 11:37:44', '2017-11-25 11:37:50'),
(1015, 24, '魔豆', NULL, 1, 1, 1, '113', NULL, 1, 'Game_20171125183912.jpg', 'Game_20171125183912.jpg', 'Game_20171125183912.jpg', 0, 0, 16, '2017-11-25 11:39:12', '2018-01-27 18:29:47'),
(1016, 24, '经典水果机', NULL, 1, 1, 3, '21', NULL, 1, 'Game_20171125183948.jpg', 'Game_20171125183948.jpg', 'Game_20171125183948.jpg', 0, 0, 17, '2017-11-25 11:39:48', '2017-11-25 11:39:51'),
(1017, 24, 'HUGA', NULL, 1, 1, 3, '125', NULL, 1, 'Game_20171125184100.jpg', 'Game_20171125184100.jpg', 'Game_20171125184100.jpg', 0, 0, 18, '2017-11-25 11:41:00', '2018-01-26 05:24:14');
INSERT INTO `game_lists` (`id`, `api_id`, `name`, `en_name`, `type`, `client_type`, `game_type`, `game_id`, `game_name`, `game_line`, `img_path`, `img_phone`, `img_pc`, `on_line`, `is_hot`, `sort`, `created_at`, `updated_at`) VALUES
(1018, 24, '明星97', NULL, 1, 1, 3, '117', NULL, 1, 'Game_20171125184204.jpg', 'Game_20171125184204.jpg', 'Game_20171125184204.jpg', 0, 0, 19, '2017-11-25 11:42:04', '2018-01-26 05:24:10'),
(1019, 8, '罗宾汉', NULL, 1, 1, 3, '1033', 'RobinHood', 5, 'Game_20171127180710.png', 'Game_20171127180710.png', 'Game_20171127180710.png', 0, 0, 1, '2017-11-27 11:07:10', '2018-01-26 05:24:06'),
(1020, 8, '疯狂的猴子', NULL, 1, 1, 3, '1016', 'MadMonkey', 5, 'Game_20171127181123.png', 'Game_20171127181123.png', 'Game_20171127181123.png', 0, 0, 2, '2017-11-27 11:11:23', '2018-01-26 05:23:59'),
(1021, 8, '武松打虎', NULL, 1, 1, 3, '1037', 'TigerSlayer', 5, 'Game_20171127181217.png', 'Game_20171127181217.png', 'Game_20171127181217.png', 0, 0, 3, '2017-11-27 11:12:17', '2017-11-27 11:12:32'),
(1022, 8, '图腾宝藏', NULL, 1, 1, 3, '1030', 'TikiTreasures', 5, 'Game_20171127181305.png', 'Game_20171127181305.png', 'Game_20171127181305.png', 0, 0, 4, '2017-11-27 11:12:48', '2017-11-27 11:13:09'),
(1023, 8, '丝绸之路', NULL, 1, 1, 3, '1024', 'TheSilkRoad', 5, 'Game_20171127181338.png', 'Game_20171127181338.png', 'Game_20171127181338.png', 0, 0, 5, '2017-11-27 11:13:38', '2018-01-26 05:23:51'),
(1024, 8, '水果对对碰', NULL, 1, 1, 3, '1038', 'BerryBlastPlus', 5, 'Game_20171127181409.png', 'Game_20171127181409.png', 'Game_20171127181409.png', 0, 0, 6, '2017-11-27 11:14:09', '2017-11-27 11:14:12'),
(1025, 8, '僵尸先生', NULL, 1, 1, 3, '1036', 'TheHoppingDead', 5, 'Game_20171127181439.png', 'Game_20171127181439.png', 'Game_20171127181439.png', 0, 0, 8, '2017-11-27 11:14:39', '2018-01-26 05:23:44'),
(1026, 8, '威尼斯野玫瑰', NULL, 1, 1, 3, '1039', 'RoseOfVenice', 5, 'Game_20171127181513.png', 'Game_20171127181513.png', 'Game_20171127181513.png', 0, 0, 7, '2017-11-27 11:15:13', '2017-11-27 11:15:16'),
(1027, 8, '中子星', NULL, 1, 1, 3, '1031', 'NeutronStar', 5, 'Game_20171127181614.png', 'Game_20171127181614.png', 'Game_20171127181614.png', 0, 0, 9, '2017-11-27 11:16:14', '2018-01-27 18:29:51'),
(1028, 8, '埃及艳后', NULL, 1, 1, 3, '1034', 'Cleopatra', 5, 'Game_20171127181644.png', 'Game_20171127181644.png', 'Game_20171127181644.png', 0, 0, 11, '2017-11-27 11:16:44', '2018-01-27 18:27:07'),
(1029, 8, '幸运熊猫', NULL, 1, 1, 3, '1025', 'LuckyPanda', 5, 'Game_20171127181730.png', 'Game_20171127181730.png', 'Game_20171127181730.png', 0, 0, 10, '2017-11-27 11:17:30', '2018-01-26 05:25:25'),
(1030, 8, '龙宫', NULL, 1, 1, 3, '1029', 'DragonPalace', 5, 'Game_20171127181820.png', 'Game_20171127181820.png', 'Game_20171127181820.png', 0, 0, 12, '2017-11-27 11:18:21', '2017-11-27 11:18:24'),
(1031, 8, '龙珠', NULL, 1, 1, 3, '1040', 'DragonBallReels', 5, 'Game_20171127181900.png', 'Game_20171127181900.png', 'Game_20171127181900.png', 0, 0, 13, '2017-11-27 11:19:00', '2017-11-27 11:19:03'),
(1032, 8, '阿拉丁-点金手', NULL, 1, 3, 3, '1027', 'AladdinHandOfMidas', 5, 'Game_20171127181942.png', 'Game_20171127181942.png', 'Game_20171127181942.png', 0, 0, 15, '2017-11-27 11:19:42', '2018-01-26 05:25:17'),
(1033, 8, '雅典娜', NULL, 1, 1, 3, '1026', 'Athena', 5, 'Game_20171127182014.png', 'Game_20171127182014.png', 'Game_20171127182014.png', 0, 0, 14, '2017-11-27 11:20:14', '2018-01-26 05:25:14'),
(1034, 8, '翡翠帝国', NULL, 1, 1, 3, '1011', 'JadeEmpire', 5, 'Game_20171127182048.png', 'Game_20171127182048.png', 'Game_20171127182048.png', 0, 0, 16, '2017-11-27 11:20:48', '2017-11-27 11:20:52'),
(1035, 8, '猴年大吉', NULL, 1, 1, 3, '1035', 'YearOfTheMonkey', 5, 'Game_20171127182129.png', 'Game_20171127182129.png', 'Game_20171127182129.png', 0, 0, 17, '2017-11-27 11:21:29', '2018-01-27 18:26:59'),
(1036, 8, '耍蛇者', NULL, 1, 1, 3, '1023', 'SnakeCharmer', 5, 'Game_20171127182208.png', 'Game_20171127182208.png', 'Game_20171127182208.png', 0, 0, 18, '2017-11-27 11:22:08', '2018-01-26 05:25:03'),
(1037, 8, '炽热火山', NULL, 1, 1, 3, '1022', 'HotVolcano', 5, 'Game_20171127182318.png', 'Game_20171127182318.png', 'Game_20171127182318.png', 0, 0, 19, '2017-11-27 11:23:18', '2018-01-26 05:24:58'),
(1038, 8, '国际赛车', NULL, 1, 1, 3, '1028', 'GrandPrix', 5, 'Game_20171127182348.png', 'Game_20171127182348.png', 'Game_20171127182348.png', 0, 0, 20, '2017-11-27 11:23:48', '2017-11-27 11:23:52'),
(1039, 8, '海龍王', NULL, 1, 1, 3, '1021', 'DragonKing', 5, 'Game_20171127182424.png', 'Game_20171127182424.png', 'Game_20171127182424.png', 0, 0, 21, '2017-11-27 11:24:24', '2018-01-26 05:24:51'),
(1040, 8, '金罐子II', NULL, 1, 1, 3, '1018', 'PotOGoldII', 5, 'Game_20171127182454.png', 'Game_20171127182454.png', 'Game_20171127182454.png', 0, 0, 22, '2017-11-27 11:24:54', '2018-01-26 05:24:45'),
(1041, 8, '猴子捞月', NULL, 1, 1, 3, '1013', 'MonkeyAndTheMoon', 5, 'Game_20171127182525.png', 'Game_20171127182525.png', 'Game_20171127182525.png', 0, 0, 23, '2017-11-27 11:25:25', '2018-01-26 05:24:40'),
(1042, 8, '天神VS冥王', NULL, 1, 1, 3, '1017', 'ZeusVsHades', 5, 'Game_20171127182646.png', 'Game_20171127182646.png', 'Game_20171127182646.png', 0, 0, 24, '2017-11-27 11:26:46', '2018-01-27 18:26:50'),
(1043, 8, '美女火神', NULL, 1, 1, 3, '1019', 'FireGoddess', 5, 'Game_20171127182741.png', 'Game_20171127182741.png', 'Game_20171127182741.png', 0, 0, 25, '2017-11-27 11:27:41', '2018-01-27 18:26:44'),
(1044, 8, '吉李 II:赏金猎人', NULL, 1, 1, 3, '1009', 'KatLeeII', 5, 'Game_20171127182951.png', 'Game_20171127182951.png', 'Game_20171127182951.png', 0, 0, 26, '2017-11-27 11:29:51', '2017-11-27 11:29:56'),
(1045, 8, '五个海盗', NULL, 1, 1, 3, '1012', 'FivePirates', 5, 'Game_20171127192903.png', 'Game_20171127192903.png', 'Game_20171127192903.png', 0, 0, 27, '2017-11-27 12:29:03', '2018-01-26 05:26:13'),
(1046, 8, '更多猴子', NULL, 1, 1, 3, '1014', 'MoreMonkeys', 5, 'Game_20171127193616.png', 'Game_20171127193616.png', 'Game_20171127193616.png', 0, 0, 28, '2017-11-27 12:36:16', '2018-01-26 05:26:08'),
(1047, 8, '西游记', NULL, 1, 1, 3, '1004', 'JourneyWest', 5, 'Game_20171127193655.png', 'Game_20171127193655.png', 'Game_20171127193655.png', 0, 0, 29, '2017-11-27 12:36:55', '2018-01-27 18:26:36'),
(1048, 8, '战斗英雄', NULL, 1, 1, 3, '1006', 'ActionHeroes', 5, 'Game_20171127193727.png', 'Game_20171127193727.png', 'Game_20171127193727.png', 0, 0, 30, '2017-11-27 12:37:27', '2018-01-26 05:26:01'),
(1049, 8, '惹火的自由旋转', NULL, 1, 1, 3, '1015', 'RedHotFreeSpins', 5, 'Game_20171127193756.png', 'Game_20171127193756.png', 'Game_20171127193756.png', 0, 0, 31, '2017-11-27 12:37:56', '2018-01-26 05:25:57'),
(1050, 8, '快抓钱2', NULL, 1, 1, 3, '1008', 'CashGrabII', 5, 'Game_20171127193841.png', 'Game_20171127193841.png', 'Game_20171127193841.png', 0, 0, 32, '2017-11-27 12:38:41', '2018-01-26 05:25:54'),
(1051, 8, '银狮奖', NULL, 1, 1, 3, '1007', 'SilverLion', 5, 'Game_20171127194131.png', 'Game_20171127194131.png', 'Game_20171127194131.png', 0, 0, 33, '2017-11-27 12:41:31', '2018-01-26 05:25:50'),
(1052, 8, '金海豚', NULL, 1, 1, 3, '1003', 'DolphinGold', 5, 'Game_20171127194159.png', 'Game_20171127194159.png', 'Game_20171127194159.png', 0, 0, 34, '2017-11-27 12:41:59', '2018-01-26 05:25:46'),
(1053, 8, '十二生肖', NULL, 1, 1, 3, '1002', 'ZodiacWilds', 5, 'Game_20171127194228.png', 'Game_20171127194228.png', 'Game_20171127194228.png', 0, 0, 35, '2017-11-27 12:42:28', '2018-01-27 18:26:29'),
(1054, 8, '福星高照', NULL, 1, 1, 3, '1001', 'FuStar', 5, 'Game_20171127194311.png', 'Game_20171127194311.png', 'Game_20171127194311.png', 0, 0, 36, '2017-11-27 12:43:11', '2018-01-27 18:26:24'),
(1055, 8, '招财进宝', NULL, 1, 3, 3, '1000', 'FortunePays', 5, 'Game_20171127194341.png', 'Game_20171127194341.png', 'Game_20171127194341.png', 0, 0, 37, '2017-11-27 12:43:41', '2017-12-18 11:37:59'),
(1056, 8, '财神到', NULL, 1, 1, 3, '530', 'ChoySunDoa', 5, 'Game_20171127194425.png', 'Game_20171127194425.png', 'Game_20171127194425.png', 0, 0, 38, '2017-11-27 12:44:25', '2017-11-27 12:44:28'),
(1057, 8, '招财猫8', NULL, 1, 1, 3, '540', 'Fortune8Cat', 5, 'Game_20171127194502.png', 'Game_20171127194502.png', 'Game_20171127194502.png', 0, 0, 39, '2017-11-27 12:45:02', '2018-01-26 05:25:35'),
(1058, 8, '火辣金砖', NULL, 1, 1, 2, '533', 'ChilliGold', 5, 'Game_20171127194605.png', 'Game_20171127194605.png', 'Game_20171127194605.png', 0, 0, 50, '2017-11-27 12:46:05', '2018-01-26 05:29:43'),
(1059, 8, '阿拉丁神迹', NULL, 1, 1, 3, '525', 'AladdinsLegacy', 5, 'Game_20171127194654.png', 'Game_20171127194654.png', 'Game_20171127194654.png', 0, 0, 40, '2017-11-27 12:46:54', '2018-01-26 05:29:37'),
(1060, 8, '计程车', NULL, 1, 1, 3, '516', 'Taxi', 5, 'Game_20171127194725.png', 'Game_20171127194725.png', 'Game_20171127194725.png', 0, 0, 41, '2017-11-27 12:47:25', '2018-01-26 05:29:33'),
(1061, 8, '外道姬', NULL, 1, 1, 3, '515', 'SamuraiPrincess', 5, 'Game_20171127194753.png', 'Game_20171127194753.png', 'Game_20171127194753.png', 0, 0, 42, '2017-11-27 12:47:53', '2018-01-26 05:29:29'),
(1062, 8, '失落的神庙', NULL, 1, 1, 3, '484', 'LostTemple', 5, 'Game_20171127194835.png', 'Game_20171127194835.png', 'Game_20171127194835.png', 0, 0, 43, '2017-11-27 12:48:35', '2018-01-26 05:29:25'),
(1063, 8, '幕府摊牌', NULL, 1, 1, 3, '483', 'ShogunShowdown', 5, 'Game_20171127194904.png', 'Game_20171127194904.png', 'Game_20171127194904.png', 0, 0, 44, '2017-11-27 12:49:04', '2018-01-26 05:29:01'),
(1064, 8, '吸血鬼大战狼人', NULL, 1, 1, 3, '480', 'VampiresVsWerewolves', 5, 'Game_20171127194933.png', 'Game_20171127194933.png', 'Game_20171127194933.png', 0, 0, 45, '2017-11-27 12:49:33', '2018-01-26 05:28:58'),
(1065, 8, '塞伦盖提之钻', NULL, 1, 1, 3, '478', 'SerengetiDiamonds', 5, 'Game_20171127195000.png', 'Game_20171127195000.png', 'Game_20171127195000.png', 0, 0, 46, '2017-11-27 12:50:00', '2018-01-26 05:28:54'),
(1066, 8, '天使的触摸', NULL, 1, 1, 3, '477', 'AngelsTouch', 5, 'Game_20171127195027.png', 'Game_20171127195027.png', 'Game_20171127195027.png', 0, 0, 47, '2017-11-27 12:50:27', '2018-01-26 05:28:51'),
(1067, 8, '天龙火焰', NULL, 1, 1, 3, '475', 'DracosFire', 5, 'Game_20171127195052.png', 'Game_20171127195052.png', 'Game_20171127195052.png', 0, 0, 48, '2017-11-27 12:50:52', '2018-01-26 05:28:47'),
(1068, 8, '万恶旋转', NULL, 1, 1, 3, '474', 'SinfulSpinsSlots', 5, 'Game_20171127195122.png', 'Game_20171127195122.png', 'Game_20171127195122.png', 0, 0, 45, '2017-11-27 12:51:22', '2018-01-26 05:28:44'),
(1069, 8, '酒吧门铃', NULL, 1, 1, 3, '473', 'BarsAndBellsSlots', 5, 'Game_20171127195153.png', 'Game_20171127195153.png', 'Game_20171127195153.png', 0, 0, 49, '2017-11-27 12:51:53', '2018-01-26 05:28:40'),
(1070, 8, '维多利山脊', NULL, 1, 1, 3, '468', 'VictoryRidgeSlots', 5, 'Game_20171127195219.png', 'Game_20171127195219.png', 'Game_20171127195219.png', 0, 0, 50, '2017-11-27 12:52:19', '2018-01-26 05:26:32'),
(1071, 8, '亚瑟寻宝之旅 I I', NULL, 1, 1, 3, '462', 'ArthursQuestIISlots', 3, 'Game_20171127195252.png', 'Game_20171127195252.png', 'Game_20171127195252.png', 0, 0, 51, '2017-11-27 12:52:52', '2018-01-26 05:26:28'),
(1072, 8, '大卡西尼', NULL, 1, 1, 3, '453', 'TheGreatCasiniSlots', 4, 'Game_20171127195326.png', 'Game_20171127195326.png', 'Game_20171127195326.png', 0, 0, 52, '2017-11-27 12:53:26', '2018-01-26 05:26:25'),
(1073, 8, '魔法森林', NULL, 1, 1, 3, '452', 'MagicalGroveSlots', 4, 'Game_20171127195357.png', 'Game_20171127195357.png', 'Game_20171127195357.png', 0, 0, 53, '2017-11-27 12:53:57', '2018-01-26 05:30:55'),
(1074, 8, '冲浪', NULL, 1, 1, 3, '449', 'SurfsUpSlots', 4, 'Game_20171127195429.png', 'Game_20171127195429.png', 'Game_20171127195429.png', 0, 0, 54, '2017-11-27 12:54:29', '2018-01-26 05:30:52'),
(1075, 8, '三重红利幸运大转盘', NULL, 1, 1, 3, '447', 'TBSpinNWinSlots', 5, 'Game_20171127195509.png', 'Game_20171127195509.png', 'Game_20171127195509.png', 0, 0, 55, '2017-11-27 12:55:09', '2018-01-26 05:30:47'),
(1076, 8, '算命嬴大奖', NULL, 1, 1, 3, '446', 'FortuneTellerSlots', 4, 'Game_20171127195536.png', 'Game_20171127195536.png', 'Game_20171127195536.png', 0, 0, 56, '2017-11-27 12:55:36', '2018-01-26 05:30:43'),
(1077, 8, '浆果培击', NULL, 1, 1, 3, '444', 'BerryBlastSlots', 5, 'Game_20171127195605.png', 'Game_20171127195605.png', 'Game_20171127195605.png', 0, 0, 57, '2017-11-27 12:56:05', '2018-01-26 05:30:40'),
(1078, 8, '淑女魅力', NULL, 1, 1, 3, '439', 'LadysCharmsSlots', 5, 'Game_20171127195713.png', 'Game_20171127195713.png', 'Game_20171127195713.png', 0, 0, 58, '2017-11-27 12:57:13', '2018-01-26 05:30:37'),
(1079, 8, '威尼斯万岁', NULL, 1, 1, 3, '438', 'VivaVeneziaSlots', 5, 'Game_20171127195826.png', 'Game_20171127195826.png', 'Game_20171127195826.png', 0, 0, 59, '2017-11-27 12:58:26', '2018-01-27 18:25:52'),
(1080, 8, '奇妙嬴现金', NULL, 1, 1, 3, '437', 'FanCashticSlots', 3, 'Game_20171127195905.png', 'Game_20171127195905.png', 'Game_20171127195905.png', 0, 0, 60, '2017-11-27 12:59:05', '2018-01-26 05:30:30'),
(1081, 8, '疯狂木乃伊', NULL, 1, 1, 3, '428', 'WildMummySlots', 5, 'Game_20171127195933.png', 'Game_20171127195933.png', 'Game_20171127195933.png', 0, 0, 61, '2017-11-27 12:59:33', '2018-01-26 05:30:26'),
(1082, 8, '极地财宝', NULL, 1, 1, 3, '424', 'PolarRichesSlots', 5, 'Game_20171127200001.png', 'Game_20171127200001.png', 'Game_20171127200001.png', 0, 0, 62, '2017-11-27 13:00:01', '2018-01-27 18:25:47'),
(1083, 8, '龙8', NULL, 1, 1, 3, '423', 'Dragon8sSlots', 5, 'Game_20171127200028.png', 'Game_20171127200028.png', 'Game_20171127200028.png', 0, 0, 63, '2017-11-27 13:00:28', '2018-01-26 05:30:19'),
(1084, 8, '猴恋', NULL, 1, 1, 3, '421', 'MonkeyLoveSlots', 5, 'Game_20171127200054.png', 'Game_20171127200054.png', 'Game_20171127200054.png', 0, 0, 64, '2017-11-27 13:00:54', '2018-01-26 05:30:16'),
(1085, 8, '海王星的金', NULL, 1, 1, 3, '416', 'NeptunesGoldSlots', 5, 'Game_20171127200139.png', 'Game_20171127200139.png', 'Game_20171127200139.png', 0, 0, 62, '2017-11-27 13:01:39', '2018-01-26 05:30:12'),
(1086, 8, '亚马逊奇遇记', NULL, 1, 1, 3, '414', 'AmazonAdventureSlots', 4, 'Game_20171127200216.png', 'Game_20171127200216.png', 'Game_20171127200216.png', 0, 0, 66, '2017-11-27 13:02:16', '2018-01-26 05:29:53'),
(1087, 8, '头彩假日', NULL, 1, 1, 3, '413', 'JackpotHolidaySlots', 4, 'Game_20171127200245.png', 'Game_20171127200245.png', 'Game_20171127200245.png', 0, 0, 65, '2017-11-27 13:02:45', '2018-01-26 05:29:49'),
(1088, 8, '水果狂欢', NULL, 1, 1, 3, '411', 'FruitParty', 2, 'Game_20171127200334.png', 'Game_20171127200334.png', 'Game_20171127200334.png', 0, 0, 67, '2017-11-27 13:03:34', '2018-01-27 18:25:35'),
(1089, 8, '足球赛事', NULL, 1, 1, 3, '401', 'GenericSlots', 2, 'Game_20171127200404.png', 'Game_20171127200404.png', 'Game_20171127200404.png', 0, 0, 68, '2017-11-27 13:04:04', '2018-01-27 18:25:30'),
(1090, 8, '啤酒节', NULL, 1, 1, 3, '65', 'Oktoberfest', 3, 'Game_20171127200448.png', 'Game_20171127200448.png', 'Game_20171127200448.png', 0, 0, 69, '2017-11-27 13:04:48', '2018-01-26 05:31:48'),
(1091, 8, '牛眼钞票', NULL, 1, 1, 3, '64', 'BullsEyeBucks', 3, 'Game_20171127200517.png', 'Game_20171127200517.png', 'Game_20171127200517.png', 0, 0, 70, '2017-11-27 13:05:17', '2018-01-26 05:31:45'),
(1092, 8, '亚瑟寻宝之旅 I', NULL, 1, 1, 3, '63', 'ArthursQuest', 3, 'Game_20171127200552.png', 'Game_20171127200552.png', 'Game_20171127200552.png', 0, 0, 71, '2017-11-27 13:05:52', '2018-01-26 05:31:41'),
(1093, 8, '奔向黄金', NULL, 1, 1, 3, '57', 'GenericSlots', 3, 'Game_20171127200625.png', 'Game_20171127200625.png', 'Game_20171127200625.png', 0, 0, 72, '2017-11-27 13:06:25', '2018-01-26 05:31:38'),
(1094, 8, '现金地狱', NULL, 1, 1, 3, '40', 'FiveReelSlots', 3, 'Game_20171127200654.png', 'Game_20171127200654.png', 'Game_20171127200654.png', 0, 0, 73, '2017-11-27 13:06:54', '2018-01-26 05:31:35'),
(1095, 8, '一杆进洞', NULL, 1, 1, 3, '18', 'HoleInOne', 3, 'Game_20171127200724.png', 'Game_20171127200724.png', 'Game_20171127200724.png', 0, 0, 74, '2017-11-27 13:07:24', '2018-01-26 05:31:32'),
(1096, 8, '幸运樱桃', NULL, 1, 1, 3, '17', 'GenericSlots', 2, 'Game_20171127200758.png', 'Game_20171127200758.png', 'Game_20171127200758.png', 0, 0, 75, '2017-11-27 13:07:58', '2018-01-26 05:31:29'),
(1097, 8, '太空入侵', NULL, 1, 1, 3, '16', 'GenericSlots', 2, 'Game_20171127200825.png', 'Game_20171127200825.png', 'Game_20171127200825.png', 0, 0, 76, '2017-11-27 13:08:25', '2018-01-26 05:31:25'),
(1098, 8, '好莱坞明星', NULL, 1, 1, 3, '15', 'HollywoodReels', 3, 'Game_20171127200855.png', 'Game_20171127200855.png', 'Game_20171127200855.png', 0, 0, 77, '2017-11-27 13:08:55', '2018-01-26 05:31:22'),
(1099, 8, '狂野西部', NULL, 1, 1, 3, '11', 'GenericSlots', 2, 'Game_20171127200930.png', 'Game_20171127200930.png', 'Game_20171127200930.png', 0, 0, 78, '2017-11-27 13:09:30', '2018-01-26 05:31:19'),
(1100, 8, '赛车快道', NULL, 1, 1, 3, '10', 'FastTrack', 3, 'Game_20171127200955.png', 'Game_20171127200955.png', 'Game_20171127200955.png', 0, 0, 79, '2017-11-27 13:09:55', '2018-01-26 05:31:16'),
(1101, 8, '海盗宝库', NULL, 1, 1, 3, '9', 'GenericSlots', 2, 'Game_20171127201027.png', 'Game_20171127201027.png', 'Game_20171127201027.png', 0, 0, 80, '2017-11-27 13:10:27', '2018-01-27 18:25:17'),
(1610, 4, '浪人武士', NULL, 1, 1, 3, '5808', NULL, 2, 'Game_20171219165656.jpg', 'Game_20171219165656.jpg', 'Game_20171219165656.jpg', 0, 0, 1000, '2017-12-19 09:56:56', '2018-05-10 09:36:24'),
(1611, 4, '空战英豪', NULL, 1, 1, 3, '5809', NULL, 2, 'Game_20171219165719.jpg', 'Game_20171219165719.jpg', 'Game_20171219165719.jpg', 0, 0, 1000, '2017-12-19 09:57:19', '2018-01-27 18:14:19'),
(1612, 4, '航海时代', NULL, 1, 1, 3, '5810', NULL, 2, 'Game_20171219165743.jpg', 'Game_20171219165743.jpg', 'Game_20171219165743.jpg', 0, 0, 1000, '2017-12-19 09:57:43', '2018-05-10 09:36:19'),
(1613, 4, '狂欢夜', NULL, 1, 1, 3, '5811', NULL, 2, 'Game_20171219165912.jpg', 'Game_20171219165912.jpg', 'Game_20171219165912.jpg', 0, 0, 1000, '2017-12-19 09:58:34', '2018-05-10 09:36:17'),
(1614, 4, '国际足球', NULL, 1, 1, 3, '5821', NULL, 2, 'Game_20171219165948.jpg', 'Game_20171219165948.jpg', 'Game_20171219165948.jpg', 0, 0, 1000, '2017-12-19 09:59:48', '2018-01-27 18:14:15'),
(1615, 4, '发大财', NULL, 1, 1, 3, '5823', NULL, 2, 'Game_20171219170028.jpg', 'Game_20171219170028.jpg', 'Game_20171219170028.jpg', 0, 0, 1000, '2017-12-19 10:00:28', '2018-05-10 09:36:15'),
(1616, 4, '恶龙传说', NULL, 1, 1, 3, '5824', NULL, 2, 'Game_20171219170048.jpg', 'Game_20171219170048.jpg', 'Game_20171219170048.jpg', 0, 0, 1000, '2017-12-19 10:00:48', '2018-01-27 18:14:06'),
(1617, 4, '金莲', NULL, 1, 1, 3, '5825', NULL, 2, 'Game_20171219170109.jpg', 'Game_20171219170109.jpg', 'Game_20171219170109.jpg', 0, 0, 1000, '2017-12-19 10:01:09', '2018-01-27 18:14:00'),
(1618, 4, '金矿工', NULL, 1, 1, 3, '5826', NULL, 2, 'Game_20171219170209.jpg', 'Game_20171219170209.jpg', 'Game_20171219170209.jpg', 0, 0, 1000, '2017-12-19 10:02:09', '2018-05-10 09:36:13'),
(1619, 4, '老船长', NULL, 1, 1, 3, '5827', NULL, 2, 'Game_20171219170246.jpg', 'Game_20171219170246.jpg', 'Game_20171219170246.jpg', 0, 0, 1000, '2017-12-19 10:02:46', '2018-05-10 09:36:11'),
(1620, 4, '霸王龙', NULL, 1, 1, 3, '5828', NULL, 2, 'Game_20171219170307.jpg', 'Game_20171219170307.jpg', 'Game_20171219170307.jpg', 0, 0, 1000, '2017-12-19 10:03:07', '2018-01-27 18:13:49'),
(1621, 4, '高球之旅', NULL, 1, 1, 3, '5831', NULL, 2, 'Game_20171219170327.jpg', 'Game_20171219170327.jpg', 'Game_20171219170327.jpg', 0, 0, 1000, '2017-12-19 10:03:27', '2018-05-10 09:36:06'),
(1622, 4, '高速卡车', NULL, 1, 1, 3, '5832', NULL, 2, 'Game_20171219170347.jpg', 'Game_20171219170347.jpg', 'Game_20171219170347.jpg', 0, 0, 1000, '2017-12-19 10:03:47', '2018-01-27 18:32:14'),
(1623, 4, '沉默武士', NULL, 1, 1, 3, '5833', NULL, 2, 'Game_20171219170427.jpg', 'Game_20171219170427.jpg', 'Game_20171219170427.jpg', 0, 0, 1000, '2017-12-19 10:04:27', '2018-05-10 09:36:02'),
(1624, 4, '喜福牛年', NULL, 1, 1, 3, '5835', NULL, 2, 'Game_20171219170514.jpg', 'Game_20171219170514.jpg', 'Game_20171219170514.jpg', 0, 0, 1000, '2017-12-19 10:05:14', '2018-05-10 09:36:00'),
(1625, 4, '龙卷风', NULL, 1, 1, 3, '5835', NULL, 2, 'Game_20171219170548.jpg', 'Game_20171219170548.jpg', 'Game_20171219170548.jpg', 0, 0, 1000, '2017-12-19 10:05:48', '2018-05-10 09:35:56'),
(1626, 4, '喜福猴年', NULL, 1, 1, 3, '5837', NULL, 2, 'Game_20171219170627.jpg', 'Game_20171219170627.jpg', 'Game_20171219170627.jpg', 0, 0, 1000, '2017-12-19 10:06:27', '2018-01-27 18:32:05'),
(1627, 4, '蒸汽炸弹', NULL, 1, 1, 3, '5904', NULL, 2, 'Game_20171219170709.png', 'Game_20171219170709.png', 'Game_20171219170709.png', 0, 0, 1000, '2017-12-19 10:07:09', '2018-05-10 09:35:53'),
(1634, 14, '西游记', NULL, 1, 3, 3, 'xiyouji5x25', NULL, 5, 'Game_20171220150112.jpg', 'Game_20171220150112.jpg', 'Game_20171220150112.jpg', 0, 0, 4, '2017-12-20 08:01:12', '2018-01-27 18:13:37'),
(1633, 14, '财神到', NULL, 1, 3, 3, 'tgow', NULL, 6, 'Game_20171220150043.jpg', 'Game_20171220150043.jpg', 'Game_20171220150043.jpg', 0, 0, 3, '2017-12-20 08:00:43', '2018-01-27 18:13:41'),
(1632, 14, '海盗无双', NULL, 1, 3, 3, 'onepiece', NULL, 6, 'Game_20171220150012.png', 'Game_20171220150012.png', 'Game_20171220150012.png', 0, 0, 2, '2017-12-20 08:00:12', '2018-05-10 09:35:49'),
(1635, 14, '水浒传', NULL, 1, 3, 3, 'watermargin5x25', NULL, 5, 'Game_20171220152944.png', 'Game_20171220152944.png', 'Game_20171220152944.png', 0, 0, 5, '2017-12-20 08:01:33', '2018-01-27 18:13:31'),
(1636, 14, 'NINJA', NULL, 1, 3, 3, 'naruto', NULL, 5, 'Game_20171220153407.png', 'Game_20171220153407.png', 'Game_20171220153407.png', 0, 0, 5, '2017-12-20 08:02:01', '2018-05-10 09:35:47'),
(1637, 14, '武松传', NULL, 1, 3, 3, 'watermargin', NULL, 5, 'Game_20171220150231.png', 'Game_20171220150231.png', 'Game_20171220150231.png', 0, 0, 6, '2017-12-20 08:02:31', '2018-05-10 09:35:45'),
(1638, 14, '封神榜', NULL, 1, 3, 3, 'tlod', NULL, 5, 'Game_20171220150301.png', 'Game_20171220150301.png', 'Game_20171220150301.png', 0, 0, 7, '2017-12-20 08:03:01', '2018-01-27 18:13:21'),
(1639, 14, '幕府风云', NULL, 1, 3, 3, 'shogun', NULL, 5, 'Game_20171220150502.jpg', 'Game_20171220150502.jpg', 'Game_20171220150502.jpg', 0, 0, 8, '2017-12-20 08:05:02', '2018-05-10 09:35:39'),
(1640, 14, '新年到', NULL, 1, 3, 3, 'newyear', NULL, 4, 'Game_20171220150540.png', 'Game_20171220150540.png', 'Game_20171220150540.png', 0, 0, 9, '2017-12-20 08:05:40', '2018-01-27 18:13:15'),
(1641, 14, '西游降妖', NULL, 1, 3, 3, 'jtw', NULL, 4, 'Game_20171220150612.jpg', 'Game_20171220150612.jpg', 'Game_20171220150612.jpg', 0, 0, 10, '2017-12-20 08:06:12', '2018-01-27 18:13:10'),
(1642, 14, '赛亚烈战', NULL, 1, 3, 3, 'dragonball', NULL, 4, 'Game_20171220150736.png', 'Game_20171220150736.png', 'Game_20171220150736.png', 0, 0, 11, '2017-12-20 08:07:36', '2018-05-10 09:35:37'),
(1643, 14, '白蛇传', NULL, 1, 3, 3, 'whitesnake', NULL, 4, 'Game_20171220150808.png', 'Game_20171220150808.png', 'Game_20171220150808.png', 0, 0, 12, '2017-12-20 08:08:08', '2018-01-27 18:13:05'),
(1644, 14, '劲爆篮球', NULL, 1, 3, 3, 'btball5x20', NULL, 4, 'Game_20171220153245.png', 'Game_20171220153245.png', 'Game_20171220153245.png', 0, 0, 13, '2017-12-20 08:09:32', '2018-05-10 09:35:33'),
(1645, 14, '龙凤呈祥', NULL, 1, 3, 3, 'dnp', NULL, 4, 'Game_20171220153304.png', 'Game_20171220153304.png', 'Game_20171220153304.png', 0, 0, 15, '2017-12-20 08:10:20', '2018-01-27 18:13:01'),
(1646, 14, '高达', NULL, 1, 3, 3, 'dnpgundam3x5', NULL, 3, 'Game_20171220151108.png', 'Game_20171220151108.png', 'Game_20171220151108.png', 0, 0, 15, '2017-12-20 08:11:08', '2018-05-10 09:35:31'),
(1647, 14, '哆啦A梦', NULL, 1, 3, 3, 'doraemon3x5', NULL, 3, 'Game_20171220153343.png', 'Game_20171220153343.png', 'Game_20171220153343.png', 0, 0, 15, '2017-12-20 08:11:41', '2018-05-10 09:35:29'),
(1648, 14, '拳皇98', NULL, 1, 3, 3, 'kof5x9', NULL, 3, 'Game_20171220151158.png', 'Game_20171220151158.png', 'Game_20171220151158.png', 0, 0, 16, '2017-12-20 08:11:58', '2018-01-27 18:12:55'),
(1649, 14, '降妖传奇Jackpot', NULL, 1, 3, 3, 'xiyouji5x9', NULL, 3, 'Game_20171220153529.png', 'Game_20171220153529.png', 'Game_20171220153529.png', 0, 0, 16, '2017-12-20 08:12:41', '2018-01-27 18:12:50'),
(1650, 14, '五行世界', NULL, 1, 3, 3, 'fiveelements5x9', NULL, 3, 'Game_20171220153452.jpg', 'Game_20171220153452.jpg', 'Game_20171220153452.jpg', 0, 0, 17, '2017-12-20 08:13:41', '2018-05-10 09:35:27'),
(1651, 14, '赤壁之战', NULL, 1, 3, 3, 'san', NULL, 3, 'Game_20171220153507.png', 'Game_20171220153507.png', 'Game_20171220153507.png', 0, 0, 17, '2017-12-20 08:14:07', '2018-01-27 18:12:45'),
(1652, 14, '圣域传说', NULL, 1, 3, 3, 'seiya', NULL, 3, 'Game_20171220151450.png', 'Game_20171220151450.png', 'Game_20171220151450.png', 0, 0, 17, '2017-12-20 08:14:50', '2018-01-27 18:12:41'),
(1653, 14, '格斗之魂', NULL, 1, 3, 3, 'kof', NULL, 3, 'Game_20171220153029.png', 'Game_20171220153029.png', 'Game_20171220153029.png', 0, 0, 17, '2017-12-20 08:15:10', '2018-05-10 09:35:18'),
(1654, 14, '灌篮大师2', NULL, 1, 3, 3, 'sd5', NULL, 3, 'Game_20171220153120.png', 'Game_20171220153120.png', 'Game_20171220153120.png', 0, 0, 21, '2017-12-20 08:15:28', '2018-05-10 09:35:15'),
(1655, 14, '街霸', NULL, 1, 3, 3, 'streetfighter3x1', NULL, 2, 'Game_20171220152819.png', 'Game_20171220152819.png', 'Game_20171220152819.png', 0, 0, 21, '2017-12-20 08:15:56', '2018-05-10 09:35:13'),
(1656, 14, '海盗王', NULL, 1, 3, 3, 'onepiece3x1', NULL, 2, 'Game_20171220151706.jpg', 'Game_20171220151706.jpg', 'Game_20171220151706.jpg', 0, 0, 21, '2017-12-20 08:16:23', '2018-05-10 09:34:59'),
(1657, 14, '梦幻森林', NULL, 1, 3, 3, 'fantasyforest3x1', NULL, 2, 'Game_20171220151747.jpg', 'Game_20171220151747.jpg', 'Game_20171220151747.jpg', 0, 0, 22, '2017-12-20 08:17:47', '2018-05-10 09:34:55'),
(1658, 14, '英雄荣耀', NULL, 1, 3, 3, 'crystal', NULL, 2, 'Game_20171220154225.png', 'Game_20171220154225.png', 'Game_20171220154225.png', 0, 0, 1, '2017-12-20 08:36:53', '2018-01-27 18:12:32'),
(1659, 14, '四圣兽', NULL, 1, 3, 3, 'fourss', NULL, 2, 'Game_20171220154312.png', 'Game_20171220154312.png', 'Game_20171220154312.png', 0, 0, 1, '2017-12-20 08:43:12', '2018-05-10 09:34:52'),
(1660, 14, '福禄寿', NULL, 1, 3, 3, 'fls', NULL, 2, 'Game_20171220154352.png', 'Game_20171220154352.png', 'Game_20171220154352.png', 0, 0, 1, '2017-12-20 08:43:52', '2018-05-10 09:34:50'),
(1661, 14, '仙剑奇缘', NULL, 1, 3, 3, 'xjqy5x9', NULL, 2, 'Game_20171220154437.png', 'Game_20171220154437.png', 'Game_20171220154437.png', 0, 0, 1, '2017-12-20 08:44:37', '2018-01-27 18:12:24'),
(1662, 14, '夜店之王', NULL, 1, 3, 3, 'nightclub5x20', NULL, 2, 'Game_20171220154512.png', 'Game_20171220154512.png', 'Game_20171220154512.png', 0, 0, 1, '2017-12-20 08:45:12', '2018-05-10 09:34:48'),
(1663, 14, '3D老虎机', NULL, 1, 3, 3, 'casino', NULL, 2, 'Game_20171220154623.png', 'Game_20171220154623.png', 'Game_20171220154623.png', 0, 0, 1, '2017-12-20 08:46:23', '2018-05-10 09:34:46'),
(1664, 14, '疯狂转转转', NULL, 1, 3, 3, 'crazy5x243', NULL, 2, 'Game_20171220154652.png', 'Game_20171220154652.png', 'Game_20171220154652.png', 0, 0, 1, '2017-12-20 08:46:52', '2018-05-10 09:34:44'),
(1665, 14, '传奇之路', NULL, 1, 3, 3, 'football', NULL, 2, 'Game_20171220154752.png', 'Game_20171220154752.png', 'Game_20171220154752.png', 0, 0, 1, '2017-12-20 08:47:52', '2018-01-27 18:12:16'),
(1666, 14, '摇滚之夜', NULL, 1, 3, 3, 'rocknight', NULL, 2, 'Game_20171220154842.jpg', 'Game_20171220154842.jpg', 'Game_20171220154842.jpg', 0, 0, 1, '2017-12-20 08:48:42', '2018-05-10 09:34:42'),
(1667, 14, '深蓝海域', NULL, 1, 3, 3, 'bluesea', NULL, 2, 'Game_20171220154908.png', 'Game_20171220154908.png', 'Game_20171220154908.png', 0, 0, 1, '2017-12-20 08:49:08', '2018-05-10 09:34:40'),
(1668, 14, '快乐农庄', NULL, 1, 3, 3, 'klnz5x20', NULL, 2, 'Game_20171220154934.png', 'Game_20171220154934.png', 'Game_20171220154934.png', 0, 0, 1, '2017-12-20 08:49:34', '2018-01-26 05:56:58'),
(1669, 14, '疯狂马戏团', NULL, 1, 3, 3, 'circus', NULL, 2, 'Game_20171220155735.png', 'Game_20171220155735.png', 'Game_20171220155735.png', 0, 0, 1, '2017-12-20 08:57:35', '2018-05-10 09:34:29'),
(1670, 14, '四驱英雄', NULL, 1, 3, 3, 'dash', NULL, 2, 'Game_20171220155805.png', 'Game_20171220155805.png', 'Game_20171220155805.png', 0, 0, 1, '2017-12-20 08:58:05', '2018-05-10 09:34:27'),
(1671, 14, '四驱大赛', NULL, 1, 3, 3, 'sq5x243', NULL, 2, 'Game_20171220155832.png', 'Game_20171220155832.png', 'Game_20171220155832.png', 0, 0, 1, '2017-12-20 08:58:32', '2018-05-10 09:34:24'),
(1672, 14, '比基尼派对', NULL, 1, 3, 3, 'bikini', NULL, 3, 'Game_20171220155859.jpg', 'Game_20171220155859.jpg', 'Game_20171220155859.jpg', 0, 0, 1, '2017-12-20 08:58:59', '2018-05-10 09:34:21'),
(1673, 14, '圣战骑士', NULL, 1, 3, 3, 'crusader', NULL, 2, 'Game_20171220155929.jpg', 'Game_20171220155929.jpg', 'Game_20171220155929.jpg', 0, 0, 1, '2017-12-20 08:59:29', '2018-05-10 09:34:18'),
(1674, 14, '地产大亨', NULL, 1, 3, 3, 'estate5x25', NULL, 2, 'Game_20171220155958.jpg', 'Game_20171220155958.jpg', 'Game_20171220155958.jpg', 0, 0, 1, '2017-12-20 08:59:58', '2018-05-10 09:34:14'),
(1675, 14, '十字路口', NULL, 1, 3, 3, 'crossing', NULL, 2, 'Game_20171220160126.jpg', 'Game_20171220160126.jpg', 'Game_20171220160126.jpg', 0, 0, 1, '2017-12-20 09:01:26', '2018-05-10 09:34:12'),
(1676, 14, '嘻哈侠', NULL, 1, 3, 3, 'hiphopman', NULL, 2, 'Game_20171220160152.jpg', 'Game_20171220160152.jpg', 'Game_20171220160152.jpg', 0, 0, 1, '2017-12-20 09:01:52', '2018-05-10 09:34:08'),
(1677, 14, '海盗宝藏', NULL, 1, 3, 3, 'piratetreasure', NULL, 2, 'Game_20171220160233.jpg', 'Game_20171220160233.jpg', 'Game_20171220160233.jpg', 0, 0, 1000, '2017-12-20 09:02:33', '2018-05-10 09:34:06'),
(1678, 12, '欢乐农场', NULL, 1, 3, 3, 'EG-SLOT-A010', NULL, 2, 'Game_20171220161906.jpg', 'Game_20171220161906.jpg', 'Game_20171220161906.jpg', 0, 0, 1, '2017-12-20 09:19:06', '2018-01-26 05:56:37'),
(1679, 12, '热带宝藏', NULL, 1, 3, 3, 'EG-SLOT-A016', NULL, 2, 'Game_20171220163424.jpg', 'Game_20171220163424.jpg', 'Game_20171220163424.jpg', 0, 0, 2, '2017-12-20 09:31:06', '2018-01-26 05:56:43'),
(1680, 12, '黄飞鸿', NULL, 1, 3, 3, 'EG-SLOT-S003', NULL, 2, 'Game_20171220163200.jpg', 'Game_20171220163200.jpg', 'Game_20171220163200.jpg', 0, 0, 3, '2017-12-20 09:32:00', '2018-01-27 18:11:43'),
(1681, 12, '同校生', NULL, 1, 3, 3, 'EG-SLOT-A009', NULL, 2, 'Game_20171220163322.jpg', 'Game_20171220163322.jpg', 'Game_20171220163322.jpg', 0, 0, 3, '2017-12-20 09:33:22', '2018-01-27 18:11:36'),
(1682, 12, '趣怪丧尸', NULL, 1, 3, 3, 'EG-SLOT-A012', NULL, 2, 'Game_20171220163402.jpg', 'Game_20171220163402.jpg', 'Game_20171220163402.jpg', 0, 0, 5, '2017-12-20 09:34:02', '2018-01-26 05:56:48'),
(1683, 12, '比基尼狂热', NULL, 1, 3, 3, 'EG-SLOT-A013', NULL, 2, 'Game_20171220163520.jpg', 'Game_20171220163520.jpg', 'Game_20171220163520.jpg', 0, 0, 6, '2017-12-20 09:35:20', '2018-01-27 18:11:14'),
(1684, 12, '锦衣卫', NULL, 1, 3, 3, 'EG-SLOT-A003', NULL, 2, 'Game_20171220163841.jpg', 'Game_20171220163841.jpg', 'Game_20171220163841.jpg', 0, 0, 7, '2017-12-20 09:38:41', '2018-01-26 06:04:31'),
(1685, 12, '南北狮王', NULL, 1, 3, 3, 'EG-SLOT-A017', NULL, 2, 'Game_20171220163952.jpg', 'Game_20171220163952.jpg', 'Game_20171220163952.jpg', 0, 0, 8, '2017-12-20 09:39:52', '2018-05-10 09:33:59'),
(1686, 12, '脆爆水果', NULL, 1, 3, 3, 'EG-SLOT-A015', NULL, 2, 'Game_20171220164142.jpg', 'Game_20171220164142.jpg', 'Game_20171220164142.jpg', 0, 0, 9, '2017-12-20 09:41:42', '2018-05-10 09:33:56'),
(1687, 12, '运财金鸡', NULL, 1, 3, 3, 'EG-SLOT-A020', NULL, 2, 'Game_20171220164244.jpg', 'Game_20171220164244.jpg', 'Game_20171220164244.jpg', 0, 0, 10, '2017-12-20 09:42:44', '2018-05-10 09:33:53'),
(1688, 12, '过大年', NULL, 1, 3, 3, 'EG-SLOT-A001', NULL, 2, 'Game_20171220164421.jpg', 'Game_20171220164421.jpg', 'Game_20171220164421.jpg', 0, 0, 11, '2017-12-20 09:44:14', '2018-01-26 06:04:25'),
(1689, 12, '济公', NULL, 1, 3, 3, 'EG-SLOT-A006', NULL, 2, 'Game_20171220164504.jpg', 'Game_20171220164504.jpg', 'Game_20171220164504.jpg', 0, 0, 12, '2017-12-20 09:45:04', '2018-01-27 18:11:24'),
(1690, 12, '梦幻女神', NULL, 1, 3, 3, 'EG-SLOT-A005', NULL, 2, 'Game_20171220164553.jpg', 'Game_20171220164553.jpg', 'Game_20171220164553.jpg', 0, 0, 1000, '2017-12-20 09:45:53', '2018-05-10 09:33:50'),
(1691, 12, '龙虎', NULL, 1, 3, 3, 'EG-SLOT-A004', NULL, 2, 'Game_20171220164946.jpg', 'Game_20171220164946.jpg', 'Game_20171220164946.jpg', 0, 0, 1000, '2017-12-20 09:49:46', '2018-01-26 05:57:20'),
(1692, 12, '三星报喜', NULL, 1, 3, 3, 'EG-SLOT-A002', NULL, 2, 'Game_20171220165019.jpg', 'Game_20171220165019.jpg', 'Game_20171220165019.jpg', 0, 0, 1000, '2017-12-20 09:50:19', '2018-05-10 09:33:48'),
(1693, 12, '红楼春梦', NULL, 1, 3, 3, 'EG-SLOT-A008', NULL, 2, 'Game_20171220165104.jpg', 'Game_20171220165104.jpg', 'Game_20171220165104.jpg', 0, 0, 1000, '2017-12-20 09:51:04', '2018-01-26 06:04:20'),
(1694, 12, '幸运喵星人', NULL, 1, 3, 3, 'EG-SLOT-S004', NULL, 2, 'Game_20171220165138.jpg', 'Game_20171220165138.jpg', 'Game_20171220165138.jpg', 0, 0, 1000, '2017-12-20 09:51:38', '2018-05-10 09:33:45'),
(1695, 12, '魔鬼天使', NULL, 1, 3, 3, 'EG-SLOT-S005', NULL, 2, 'Game_20171220165412.png', 'Game_20171220165412.png', 'Game_20171220165412.png', 0, 0, 1000, '2017-12-20 09:54:12', '2018-01-27 18:09:36'),
(1696, 12, '美女沙排', NULL, 1, 3, 3, 'EG-SLOT-S006', NULL, 2, 'Game_20171220165604.jpg', 'Game_20171220165604.jpg', 'Game_20171220165604.jpg', 0, 0, 1000, '2017-12-20 09:56:04', '2018-05-10 09:33:43'),
(1697, 12, '丧尸猎人', NULL, 1, 3, 3, 'EG-SLOT-S007', NULL, 2, 'Game_20171220165735.jpg', 'Game_20171220165735.jpg', 'Game_20171220165735.jpg', 0, 0, 1000, '2017-12-20 09:57:35', '2018-05-10 09:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `game_lists2`
--

CREATE TABLE `game_lists2` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL COMMENT '平台ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏名称',
  `en_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '英文名称',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '游戏分类',
  `client_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1PC 2手机',
  `game_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '游戏类型',
  `game_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏ID',
  `game_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏名',
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机图片',
  `img_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机图片',
  `img_pc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC图片',
  `on_line` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线1下线',
  `is_hot` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0正常1热门',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '100' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_lists2`
--

INSERT INTO `game_lists2` (`id`, `api_id`, `name`, `en_name`, `type`, `client_type`, `game_type`, `game_id`, `game_name`, `img_path`, `img_phone`, `img_pc`, `on_line`, `is_hot`, `sort`, `created_at`, `updated_at`) VALUES
(1, 3, '水果拉霸', NULL, 1, 1, 3, '501', '', '501.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(2, 3, '复古花园', NULL, 1, 1, 3, '509', '', '509.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(3, 3, '太空漫遊', NULL, 1, 1, 3, '508', '', '508.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(4, 3, '性感女仆', NULL, 1, 1, 3, '537', '', '537.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(5, 3, '日本武士', NULL, 1, 1, 3, '513', '', '513.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(6, 3, '侏罗纪', NULL, 1, 1, 3, '531', '', '531.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(7, 3, '麻将老虎机', NULL, 1, 1, 3, '515', '', '515.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(8, 3, '武财神', NULL, 1, 1, 3, '535', '', '535.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(9, 3, '开心农场', NULL, 1, 1, 3, '517', '', '517.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(10, 3, '甜一甜屋', NULL, 1, 1, 3, '512', '', '512.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(11, 3, '关东煮', NULL, 1, 1, 3, '510', '', '510.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(12, 3, '海底漫遊', NULL, 1, 1, 3, '519', '', '519.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(13, 3, '西洋棋老虎机', NULL, 1, 1, 3, '516', '', '516.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(14, 3, '空中战争', NULL, 1, 1, 3, '526', '', '526.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(15, 3, '牧场咖啡', NULL, 1, 1, 3, '511', '', '511.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(16, 3, '鬼马小丑', NULL, 1, 1, 3, '520', '', '520.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(17, 3, '惊吓鬼屋', NULL, 1, 1, 3, '522', '', '522.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(18, 3, '越野机车', NULL, 1, 1, 3, '528', '', '528.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(19, 3, '土地神', NULL, 1, 1, 3, '532', '', '532.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(20, 3, '夏日营地', NULL, 1, 1, 3, '518', '', '518.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(21, 3, '疯狂马戏团', NULL, 1, 1, 3, '523', '', '523.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(22, 3, '埃及奥秘', NULL, 1, 1, 3, '529', '', '529.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(23, 3, '布袋和尚', NULL, 1, 1, 3, '533', '', '533.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(24, 3, '摇滚狂迷', NULL, 1, 1, 3, '527', '', '527.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(25, 3, '正财神', NULL, 1, 1, 3, '534', '', '534.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(26, 3, '幸运8', NULL, 1, 1, 3, '601', '', '601.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(27, 3, '闪亮女郎', NULL, 1, 1, 3, '602', '', '602.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(28, 3, '龙珠', NULL, 1, 1, 3, '600', '', '600.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(29, 3, '海盗王', NULL, 1, 1, 3, '605', '', '605.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(30, 3, '欢乐时光', NULL, 1, 1, 3, '530', '', '530.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(31, 3, '海洋剧场', NULL, 1, 1, 3, '524', '', '524.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(32, 3, '象棋老虎机', NULL, 1, 1, 3, '514', '', '514.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(33, 3, '偏财神', NULL, 1, 1, 3, '536', '', '536.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(34, 3, '水上乐园', NULL, 1, 1, 3, '525', '', '525.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(35, 3, '小熊猫', NULL, 1, 1, 3, '607', '', '607.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(36, 4, '金钱豹', NULL, 1, 1, 3, '5707', '', 'Game_5707.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(37, 4, '三国', NULL, 1, 1, 3, '5106', '', 'Game_5106.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(38, 4, '浓情巧克力', NULL, 1, 1, 3, '5706', '', 'Game_5706.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(39, 4, '聚宝盆', NULL, 1, 1, 3, '5705', '', 'Game_5705.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(40, 4, '斗牛', NULL, 1, 1, 3, '5704', '', 'Game_5704.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(41, 4, '发达啰', NULL, 1, 1, 3, '5703', '', 'Game_5703.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(42, 4, '大红帽与小野狼', NULL, 1, 1, 3, '5407', '', 'Game_5407.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(43, 4, '连环夺宝', NULL, 1, 1, 3, '5901', '', 'Game_5901.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(44, 4, '喜福牛年', NULL, 1, 1, 3, '5835', '', 'Game_5835.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(45, 4, '斗鸡', NULL, 1, 1, 3, '5095', '', 'Game_5095.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(46, 4, '百家乐大转轮', NULL, 1, 1, 3, '5073', '', 'Game_5073.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(47, 4, '钻石水果盘', NULL, 1, 1, 3, '5043', '', 'Game_5043.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(48, 4, '明星97II', NULL, 1, 1, 3, '5044', '', 'Game_5044.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(49, 4, '惑星战记', NULL, 1, 1, 3, '5005', '', 'Game_5005.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(50, 4, 'Staronic', NULL, 1, 1, 3, '5006', '', 'Game_5006.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(51, 4, '激爆水果盘', NULL, 1, 1, 3, '5007', '', 'Game_5007.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(52, 4, '足球拉霸', NULL, 1, 1, 3, '5066', '', 'Game_5004.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(53, 4, '筒子拉霸', NULL, 1, 1, 3, '5065', '', 'Game_5003.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(54, 4, '扑克拉霸', NULL, 1, 1, 3, '5064', '', 'Game_5002.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(55, 4, '水果拉霸', NULL, 1, 1, 3, '5063', '', 'Game_5001.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(56, 4, '疯狂水果盘', NULL, 1, 1, 3, '5058', '', 'Game_5058.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(57, 4, '明星97', NULL, 1, 1, 3, '5057', '', 'Game_5057.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(58, 4, '超级7', NULL, 1, 1, 3, '5061', '', 'Game_5061.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(59, 4, '龙在囧途', NULL, 1, 1, 3, '5062', '', 'Game_5062.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(60, 4, '动物奇观五', NULL, 1, 1, 3, '5060', '', 'Game_5060.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(61, 4, '三国', NULL, 1, 1, 3, '5106', '', 'Game_5106.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(62, 4, '斗鸡', NULL, 1, 1, 3, '5095', '', 'Game_5095.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(63, 4, '金瓶梅', NULL, 1, 1, 3, '5093', '', 'Game_5093.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(64, 4, '封神榜', NULL, 1, 1, 3, '5092', '', 'Game_5092.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(65, 4, '三国拉霸', NULL, 1, 1, 3, '5091', '', 'Game_5091.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(66, 4, '金瓶梅2', NULL, 1, 1, 3, '5094', '', 'Game_5094.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(67, 4, '幸运财神', NULL, 1, 1, 3, '5030', '', 'Game_5030.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(68, 4, '圣诞派对', NULL, 1, 1, 3, '5029', '', 'Game_5029.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(69, 4, '特务危机', NULL, 1, 1, 3, '5048', '', 'Game_5048.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(70, 4, '玉蒲团', NULL, 1, 1, 3, '5049', '', 'Game_5049.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(71, 4, '中秋月光派对', NULL, 1, 1, 3, '5028', '', 'Game_5028.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(72, 4, '功夫龙', NULL, 1, 1, 3, '5027', '', 'Game_5027.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(73, 4, '法海斗白蛇', NULL, 1, 1, 3, '5025', '', 'Game_5025.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(74, 4, '2012 伦敦奥运', NULL, 1, 1, 3, '5026', '', 'Game_5026.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(75, 4, '2014 FIFA', NULL, 1, 1, 3, '5204', '', 'Game_5204.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(76, 4, '水果乐园', NULL, 1, 1, 3, '5019', '', 'Game_5019.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(77, 4, '传统', NULL, 1, 1, 3, '5013', '', 'Game_5013.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(78, 4, '史前丛林冒险', NULL, 1, 1, 3, '5016', '', 'Game_5016.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(79, 4, '齐天大圣', NULL, 1, 1, 3, '5018', '', 'Game_5018.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(80, 4, '爱你一万年', NULL, 1, 1, 3, '5203', '', 'Game_5203.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(81, 4, '月光宝盒', NULL, 1, 1, 3, '5202', '', 'Game_5202.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(82, 4, '火焰山', NULL, 1, 1, 3, '5201', '', 'Game_5201.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(83, 4, '星际大战', NULL, 1, 1, 3, '5017', '', 'Game_5017.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(84, 4, 'FIFA2010', NULL, 1, 1, 3, '5015', '', 'Game_5015.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(85, 4, '大红帽与小野狼', NULL, 1, 1, 3, '5407', '', 'Game_5407.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(86, 4, '沙滩排球', NULL, 1, 1, 3, '5404', '', 'Game_5404.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(87, 4, '夜市人生', NULL, 1, 1, 3, '5402', '', 'Game_5402.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(88, 4, '秘境冒险', NULL, 1, 1, 3, '5601', '', 'Game_5601.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(89, 4, '神舟27', NULL, 1, 1, 3, '5406', '', 'Game_15027.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(90, 4, '钻石水果盘', NULL, 1, 1, 3, '5043', '', 'Game_5043.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(91, 4, '明星97II', NULL, 1, 1, 3, '5044', '', 'Game_5044.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(92, 4, '惑星战记', NULL, 1, 1, 3, '5005', '', 'Game_5005.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(93, 4, 'Staronic', NULL, 1, 1, 3, '5006', '', 'Game_5006.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(94, 4, '激爆水果盘', NULL, 1, 1, 3, '5007', '', 'Game_5007.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(95, 4, '喜福猴年', NULL, 1, 1, 3, '5837', '', 'Game_5837.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(96, 4, '喜福牛年', NULL, 1, 1, 3, '5835', '', 'Game_5835.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(97, 4, '发大财', NULL, 1, 1, 3, '5823', '', 'Game_5823.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(98, 4, '金莲', NULL, 1, 1, 3, '5825', '', 'Game_5825.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(99, 4, '阿基里斯', NULL, 1, 1, 3, '5802', '', 'Game_5802.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(100, 4, '阿兹特克宝藏', NULL, 1, 1, 3, '5803', '', 'Game_5803.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(101, 4, '大明星', NULL, 1, 1, 3, '5804', '', 'Game_5804.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(102, 4, '凯萨帝国', NULL, 1, 1, 3, '5805', '', 'Game_5805.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(103, 4, '奇幻花园', NULL, 1, 1, 3, '5806', '', 'Game_5806.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(104, 4, '浪人武士', NULL, 1, 1, 3, '5808', '', 'Game_5808.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(105, 4, '空战英豪', NULL, 1, 1, 3, '5809', '', 'Game_5809.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(106, 4, '航海时代', NULL, 1, 1, 3, '5810', '', 'Game_5810.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(107, 4, '恶龙传说', NULL, 1, 1, 3, '5824', '', 'Game_5824.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(108, 4, '金矿工', NULL, 1, 1, 3, '5826', '', 'Game_5826.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(109, 4, '老船长', NULL, 1, 1, 3, '5827', '', 'Game_5827.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(110, 4, '霸王龙', NULL, 1, 1, 3, '5828', '', 'Game_5828.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(111, 4, '龙卷风', NULL, 1, 1, 3, '5836', '', 'Game_5836.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(112, 4, '海豚世界', NULL, 1, 1, 3, '5801', '', 'Game_5801.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(113, 4, '狂欢夜', NULL, 1, 1, 3, '5811', '', 'Game_5811.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(114, 4, '国际足球', NULL, 1, 1, 3, '5821', '', 'Game_5821.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(115, 4, '高球之旅', NULL, 1, 1, 3, '5831', '', 'Game_5831.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(116, 4, '高速卡车', NULL, 1, 1, 3, '5832', '', 'Game_5832.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(117, 4, '沉默武士', NULL, 1, 1, 3, '5833', '', 'Game_5833.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(118, 4, '钻石列车', NULL, 1, 1, 3, '5083', '', 'Game_5083.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(119, 4, '圣兽传说', NULL, 1, 1, 3, '5084', '', 'Game_5084.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(120, 4, '百家乐大转轮', NULL, 1, 1, 3, '5073', '', 'Game_5073.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(121, 4, '黄金大转轮', NULL, 1, 1, 3, '8070', '', 'Game_5070.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(122, 4, '乐透转轮', NULL, 1, 1, 3, '5080', '', 'Game_5080.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(123, 4, '水果大转轮', NULL, 1, 1, 3, '5077', '', 'Game_5077.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(124, 4, '数字大转轮', NULL, 1, 1, 3, '5076', '', 'Game_5076.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(125, 4, '3D数字大转轮', NULL, 1, 1, 3, '5079', '', 'Game_5079.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(126, 4, '百搭二王', NULL, 1, 1, 3, '5040', '', 'Game_5040.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(127, 4, '加勒比扑克', NULL, 1, 1, 3, '5035', '', 'Game_5035.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(128, 4, '红狗', NULL, 1, 1, 3, '5089', '', 'Game_5089.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(129, 4, '斗大', NULL, 1, 1, 3, '5088', '', 'Game_5088.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(130, 4, '王牌5PK', NULL, 1, 1, 3, '5034', '', 'Game_5034.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(131, 4, '皇家德州扑克', NULL, 1, 1, 3, '5131', '', 'Game_5131.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(132, 4, '奖金21点', NULL, 1, 1, 3, '5118', '', 'Game_5118.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(133, 4, '维加斯21点', NULL, 1, 1, 3, '5117', '', 'Game_5117.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(134, 4, '西班牙21点', NULL, 1, 1, 3, '5116', '', 'Game_5116.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(135, 4, '经典21点', NULL, 1, 1, 3, '5115', '', 'Game_5115.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(136, 4, '彩金轮盘', NULL, 1, 1, 3, '5108', '', 'Game_5103.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(137, 4, '法式轮盘', NULL, 1, 1, 3, '5109', '', 'Game_5104.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(138, 4, '美式轮盘', NULL, 1, 1, 3, '5107', '', 'Game_5102.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(139, 4, '金刚爬楼', NULL, 1, 1, 3, '5009', '', 'Game_5009.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(140, 4, '连环夺宝', NULL, 1, 1, 3, '5901', '', 'Game_5901.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(141, 4, '糖果派对', NULL, 1, 1, 3, '5902', '', 'Game_5902.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(142, 4, '鱼虾蟹', NULL, 1, 1, 3, '5039', '', 'Game_5039.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(143, 4, '猴子爬树', NULL, 1, 1, 3, '5008', '', 'Game_5008.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(144, 6, '探索', NULL, 1, 2, 3, 'rng2', '', 'f9171b615fdb4d57f43e4e966d4b6dab.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(145, 6, '企鹅的假期', NULL, 1, 2, 3, 'pgv', '', 'd3e023803856678a7da2592601c93fab.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(146, 6, '疯狂水果', NULL, 1, 2, 3, 'fnfrj', '', 'W88-Slots-Funky-Fruits_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(147, 6, '三重猴子', NULL, 1, 2, 3, 'trpmnk', '', '775e181dad45be8f915d0024988df391.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(148, 6, '高速之王', NULL, 1, 2, 3, 'hk', '', 'W88-Slots-Highway-Kings_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(149, 6, '狂野赌徒', NULL, 1, 2, 3, 'gtswg', '', '022aeb45b32b7710749b9a86d1360a73_573631f2bd927.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(150, 6, '疯狂麻将', NULL, 1, 2, 3, 'fkmj', '', '2d3ebbe40d4e697bd1afdeafa122f3d3.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(151, 6, '百家乐', NULL, 1, 2, 3, 'ba', '', 'W88-Slots-Baccarat_4.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(152, 6, '海滨嘉年华', NULL, 1, 2, 3, 'bl', '', 'W88-Slots-Beach-Life_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(153, 6, '赌场德州扑克', NULL, 1, 2, 3, 'cheaa', '', 'W88-Slots-Casino-Hold-\'Em_0.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(154, 6, '夜间外出', NULL, 1, 2, 3, 'ano', '', 'W88-Slots-A-Night-Out_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(155, 6, '巨大累积奖池', NULL, 1, 2, 3, 'jpgt', '', '192a65e89f0718e510a3f17500195962_570488c733e07.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(156, 6, '烈焰钻石', NULL, 1, 2, 3, 'ght_a', '', '78c1c5ab98f211fdb6a149e0b04faa2f.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(157, 6, '招财进宝', NULL, 1, 2, 3, 'zcjb', '', 'W88-Slots-Zhao-Cai-Jin-Bao_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(158, 6, '舞龙累积奖池', NULL, 1, 2, 3, 'wlgjp', '', 'ebcb9bbad14156c56737ade353a1487b_57709976a6688.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(159, 6, '魔豆的赏金', NULL, 1, 2, 3, 'ashbob', '', 'cbf83605ec08fcbc5455ff36a5e89119_5742b84fac88b.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(160, 6, '巴西桑巴', NULL, 1, 2, 3, 'gtssmbr', '', 'W88-Slots-Samba-Brazil_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(161, 6, '熊之舞', NULL, 1, 2, 3, 'bob', '', '1031bb7a2fe32866903998bebd8a72e0_5735853610a45.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(162, 6, '沙漠宝藏II', NULL, 1, 2, 3, 'dt2', '', 'W88-Slots-Desert-Treasure-II_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(163, 6, '美丽佳人', NULL, 1, 2, 3, 'ashfta', '', '4ad063a9a40409a3f477a0c5af4d65d9_570487a867601.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(164, 6, '足球狂欢节', NULL, 1, 2, 3, 'gtsfc', '', 'W88-Slots-Football-Carnival_2.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(165, 6, '黄金游戏', NULL, 1, 2, 3, 'glg', '', 'W88-Slots-Golden-Games_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(166, 6, '冰讯时代', NULL, 1, 2, 3, 'ir', '', 'e67a0fc551ce1ce895f33e3989d8ce63_57362784230d3.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(167, 6, '吉祥8', NULL, 1, 2, 3, 'gtsjxb', '', 'ad2cf68d46541e445ece7e4267c00202_577088dadfafd.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(168, 6, '约翰韦恩', NULL, 1, 2, 3, 'gtsjhw', '', 'W88-Slots-John-Wayne_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(169, 6, '幸运女郎', NULL, 1, 2, 3, 'mfrt', '', '6316a2c9a9808d3f30e503e901a93062.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(170, 6, '万圣节财富', NULL, 1, 2, 3, 'hlf', '', 'W88-Slots-Halloween-Fortune_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(171, 6, '万世魔星', NULL, 1, 2, 3, 'ashlob', '', '16a94e37113efef09551b2c8773b4dd4_5704891d4597b.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(172, 6, '小猪和狼', NULL, 1, 2, 3, 'paw', '', 'W88-Slots-Piggies-and-The-Wolf_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(173, 6, '粉红豹', NULL, 1, 2, 3, 'pnp', '', '73e39f46c087a61eb9cc512d3100b4fa_57048982dcf10.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(174, 6, '奖金美式轮盘', NULL, 1, 2, 3, 'rodz_g', '', 'W88-Slots-Premium-American-Roulette_0.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(175, 6, '奖金欧式轮盘', NULL, 1, 2, 3, 'ro_g', '', 'W88-Slots-Premium-European-Roulette_0.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(176, 6, '精彩交易', NULL, 1, 2, 3, 'ashtmd', '', '3e99ae4536eb9b7634fddc5c75c5bd55.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(177, 6, '疯狂维京人', NULL, 1, 2, 3, 'gts52', '', 'W88-Slots-Vikingmania_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(178, 6, '狂热水果', NULL, 1, 2, 3, 'fmn', '', 'W88-Slots-Fruit-Mania_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(179, 6, '五路财神', NULL, 1, 2, 3, 'wlcsh', '', '11496380d4fb4deb3c883a46e375a2f9_57bbe8fb77701.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(180, 6, '圣诞老人的惊喜', NULL, 1, 2, 3, 'ssp', '', 'W88-Slots-Santa-Surprise_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(181, 6, '埃斯梅拉达', NULL, 1, 2, 3, 'esm', '', 'W88-Slots-Esmeralda_2.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(182, 6, '堂吉诃德的财富', NULL, 1, 2, 3, 'mfrt', '', '8e16a584a977f861dd958d3b5da5f1c7_573630d17d90e.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(183, 6, '复活节大惊喜', NULL, 1, 2, 3, 'eas', '', 'W88-Slots-Easter-Surprise_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(184, 6, '好运来', NULL, 1, 2, 3, 'sol', '', 'W88-Slots-Streak-of-Luck_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(185, 6, '年年有余', NULL, 1, 2, 3, 'nian', '', 'W88-Slots-Nian-Nian-You-Yu_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(186, 6, '幸运月', NULL, 1, 2, 3, 'ashfmf', '', 'W88-Slots-FullMoon-Fortunes_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(187, 6, '弗兰克•戴图理:神奇7', NULL, 1, 2, 3, 'fdt', '', 'W88-Slots-Frankie-Detorri\'s-Magic-Seven_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(188, 6, '怀特王', NULL, 1, 2, 3, 'whk', '', 'W88-Slots-White-King_0.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(189, 6, '沉默的武士', NULL, 1, 2, 3, 'sis', '', '8ce2f4a61507e74ae51c1e0da0521bff_57362e4ce5b1e.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(190, 6, '沙漠宝藏', NULL, 1, 2, 3, 'mobdt', '', 'W88-Slots-Desert-Treasure_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(191, 6, '泰国天堂', NULL, 1, 2, 3, 'tpd2', '', '8c5fda46d95eeb2195e3419ea689ba30_57362fc62e9ff.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(192, 6, '玛丽莲梦露', NULL, 1, 2, 3, 'gtsmrln', '', 'W88-Slots-Marilyn-Monroe_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(193, 6, '甜蜜派对', NULL, 1, 2, 3, 'cnpr', '', 'W88-Slots-Sweet-Party_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(194, 6, '疯狂7', NULL, 1, 2, 3, 'c7', '', 'W88-Slots-Crazy-7_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(195, 6, '疯狂乐透', NULL, 1, 2, 3, 'lm', '', 'W88-Slots-Lotto-Madness_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(196, 6, '神秘夏洛克', NULL, 1, 2, 3, 'shmst', '', 'W88-Slots-Sherlock-Mystery_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(197, 6, '舞龙', NULL, 1, 2, 3, 'wlg', '', 'W88-Slots-Wu-Long_0.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(198, 6, '船长的宝藏', NULL, 1, 2, 3, 'ct', '', 'W88-Slots-Captain\'s-Treasure_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(199, 6, '艺伎故事', NULL, 1, 2, 3, 'ges', '', '10d98569598be5e2ae30223875e9eee5_57358d9a2b3a2.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(200, 6, '财富宝箱', NULL, 1, 2, 3, 'ashcpl', '', '50c7cae995562dfc67c7959a8f726299_5704870459119.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(201, 6, '辛巴达黄金航程', NULL, 1, 2, 3, 'ashsbd', '', 'ce1e33106839ff71a5a815a2250d138e_57362ef3652a2.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(202, 6, '返利先生', NULL, 1, 2, 3, 'mrcb', '', 'W88-Slots-Mr.-Cash-Back_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(203, 6, '银子弹', NULL, 1, 2, 3, 'sib', '', 'W88-Slots-Silver-Bullet_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(204, 6, '马博士', NULL, 1, 2, 3, 'dlm', '', 'W88-Slots-Dr-Lovemore_1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(205, 6, '黑豹', NULL, 1, 2, 3, 'pmn', '', '2ec0af56643c7975f63cabfa0cff1c53_57362c9402d93.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(206, 6, '海豚礁', NULL, 1, 2, 3, 'dnr', '', 'ae3a1838cf6647c561aab54f6585fb11_5742d1a7aec6d.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(207, 6, '幸运万圣节2', NULL, 1, 2, 3, 'hlf2', '', '801691b8ded9850f0d5352c990918046.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(208, 6, '弓兵', NULL, 1, 1, 3, 'arc', '', 'arc.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(209, 6, '亚特兰蒂斯女王', NULL, 1, 1, 3, 'gtsatq', '', 'gtsatq.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(210, 6, '熊之舞', NULL, 1, 1, 3, 'bob', '', 'bob.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(211, 6, '猫女王', NULL, 1, 1, 3, 'catqk', '', 'catqk.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(212, 6, '樱桃之恋', NULL, 1, 1, 3, 'chl', '', 'chl.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(213, 6, '牛仔和外星人', NULL, 1, 1, 3, 'gtscbl', '', 'gtscbl.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(214, 6, '海豚礁', NULL, 1, 1, 3, 'dnr', '', 'dnr.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(215, 6, '足球狂欢节', NULL, 1, 1, 3, 'gtsfc', '', 'gtsfc.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(216, 6, '戴图理的神奇七', NULL, 1, 1, 3, 'fdt', '', 'fdt.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(217, 6, '生命之神', NULL, 1, 1, 3, 'athn', '', 'gts46.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(218, 6, '湛蓝深海', NULL, 1, 1, 3, 'bib', '', 'bib.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(219, 6, '丛林心脏', NULL, 1, 1, 3, 'ashhotj', '', 'ashhotj.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(220, 6, '超级高速公路之王', NULL, 1, 1, 3, 'gtshwkp', '', 'gtshwkp.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(221, 6, '激情桑巴', NULL, 1, 1, 3, 'gtssmbr', '', 'gtssmbr.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(222, 6, '亚马逊的秘密', NULL, 1, 1, 3, 'samz', '', 'samz.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(223, 6, '夏洛克的秘密', NULL, 1, 1, 3, 'shmst', '', 'shmst.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(224, 6, '沉默的武士', NULL, 1, 1, 3, 'sis', '', 'sis.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(225, 6, '泰国天堂', NULL, 1, 1, 3, 'tpd2', '', 'tpd2.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(226, 6, '爵士俱乐部', NULL, 1, 1, 3, 'gtsjzc', '', 'gtsjzc.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(227, 6, '真爱', NULL, 1, 1, 3, 'trl', '', 'trl.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(228, 6, '疯狂维京海盗', NULL, 1, 1, 3, 'gts52', '', 'gts52.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(229, 6, '白狮王', NULL, 1, 1, 3, 'whk', '', 'whk.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(230, 6, '赌徒', NULL, 1, 1, 3, 'gtswg', '', 'gtswg.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(231, 6, '豪华的开心假期', NULL, 1, 1, 3, 'vcstd', '', 'vcstd.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(232, 6, '浮冰流', NULL, 1, 1, 3, 'gtsir', '', 'gtsir.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(233, 6, '堂吉诃德的财富', NULL, 1, 1, 3, 'donq', '', 'donq.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(234, 6, '飞龙在天', NULL, 1, 1, 3, 'gtsflzt', '', 'gtsflzt.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(235, 6, '原始亚马逊', NULL, 1, 1, 3, 'ashamw', '', 'ashamw.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(236, 6, '招财童子', NULL, 1, 1, 3, 'zctz', '', 'zctz.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(237, 6, '孙悟空', NULL, 1, 1, 3, 'gtsswk', '', 'gtsswk.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(238, 6, '白狮', NULL, 1, 1, 3, 'bs', '', 'bs.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(239, 6, '神奇堆栈', NULL, 1, 1, 3, 'mgstk', '', 'mgstk.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(240, 6, '四象', NULL, 1, 1, 3, 'sx', '', 'sx.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(241, 6, '捍卫战士', NULL, 1, 1, 3, 'topg', '', 'topg.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(242, 6, '金钱蛙', NULL, 1, 1, 3, 'jqw', '', 'jqw.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(243, 6, '权杖女王', NULL, 1, 1, 3, 'qnw', '', 'qnw.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(244, 6, '欧莱里之黄金大田', NULL, 1, 1, 3, 'spud', '', 'spud.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(245, 6, '超级888', NULL, 1, 1, 3, 'chao', '', 'chao.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(246, 6, '宝石女王', NULL, 1, 1, 3, 'gemq', '', 'gemq.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(247, 6, '龙龙龙', NULL, 1, 1, 3, 'longlong', '', 'longlong.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(248, 6, '布法罗闪电战', NULL, 1, 1, 3, 'bfb', '', 'bfb.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(249, 6, '舞龙', NULL, 1, 1, 3, 'wlg', '', 'wlg.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(250, 6, '招财进宝', NULL, 1, 1, 3, 'zcjb', '', 'zcjb.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(251, 6, '开心假期', NULL, 1, 1, 3, 'er', '', 'er.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(252, 6, '万圣节财富', NULL, 1, 1, 3, 'hlf', '', 'hlf.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(253, 6, '百幕大三角', NULL, 1, 1, 3, 'bt', '', 'bt.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(254, 6, '中国厨房', NULL, 1, 1, 3, 'cm', '', 'cm.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(255, 6, '疯狂之七', NULL, 1, 1, 3, 'c7', '', 'c7.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(256, 6, '龙族', NULL, 1, 1, 3, 'gtsdgk', '', 'gtsdgk.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(257, 6, '惊喜复活节', NULL, 1, 1, 3, 'eas', '', 'eas.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(258, 6, '青春之泉', NULL, 1, 1, 3, 'foy', '', 'foy.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(259, 6, '酷炫水果农场', NULL, 1, 1, 3, 'fff', '', 'fff.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(260, 6, '古怪猴子', NULL, 1, 1, 3, 'fm', '', 'fm.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(261, 6, '黄金游戏', NULL, 1, 1, 3, 'glg', '', 'glg.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(262, 6, '鬼屋', NULL, 1, 1, 3, 'hh', '', 'hh.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(263, 6, '热力宝石', NULL, 1, 1, 3, 'gts50', '', 'gts50.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(264, 6, '无敌金刚', NULL, 1, 1, 3, 'kkg', '', 'kkg.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(265, 6, 'Cash back先生', NULL, 1, 1, 3, 'mcb', '', 'mcb.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(266, 6, '海王星王国', NULL, 1, 1, 3, 'nk', '', 'nk.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(267, 6, '舞线', NULL, 1, 1, 3, 'pl', '', 'pl.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(268, 6, '洛基传奇', NULL, 1, 1, 3, 'rky', '', 'rky.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(269, 6, '圣诞奇迹', NULL, 1, 1, 3, 'ssp', '', 'ssp.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(270, 6, '木乃伊迷城', NULL, 1, 1, 3, 'mmy', '', 'mmy.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(271, 6, '顶级王牌-明星', NULL, 1, 1, 3, 'ttc', '', 'ttc.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(272, 6, '三个朋友', NULL, 1, 1, 3, 'ta', '', 'ta.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(273, 6, '丛林巫师', NULL, 1, 1, 3, 'ub', '', 'ub.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(274, 6, '我心狂野', NULL, 1, 1, 3, 'wis', '', 'wis.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(275, 6, '黄金翅膀', NULL, 1, 1, 3, 'wis', '', 'wis.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(276, 6, '沙漠宝藏2', NULL, 1, 1, 3, 'dt2', '', 'dt2.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(277, 6, '满月财富', NULL, 1, 1, 3, 'ashfmf', '', 'ashfmf.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(278, 6, '角斗士', NULL, 1, 1, 3, 'glr', '', 'glr.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(279, 6, '约翰韦恩', NULL, 1, 1, 3, 'gtsjhw', '', 'gtsjhw.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(280, 6, '幸运熊猫', NULL, 1, 1, 3, 'gts51', '', 'gts51.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(281, 6, '玛丽莲·梦露', NULL, 1, 1, 3, 'gtsmrln', '', 'gtsmrln.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(282, 6, '现金魔块', NULL, 1, 1, 3, 'gtscb', '', 'gtscb.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(283, 6, '三个小丑刮刮乐', NULL, 1, 1, 3, 'tclsc', '', 'tclsc.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(284, 6, '经典老虎机刮刮乐', NULL, 1, 1, 3, 'scs', '', 'scs.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(285, 6, '3卡吹噓', NULL, 1, 1, 3, 'ash3brg', '', 'ash3brg.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(286, 6, '美式轮盘', NULL, 1, 1, 3, 'rodz', '', 'rodz.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(287, 6, '百家乐', NULL, 1, 1, 3, 'ba', '', 'ba.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(288, 6, '赌场HOLD\'EM游戏', NULL, 1, 1, 3, 'cheaa', '', 'cheaa.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(289, 6, '欧洲轮盘', NULL, 1, 1, 3, 'ro', '', 'ro.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(290, 6, '美式奖金轮盘赌', NULL, 1, 1, 3, 'rodz_g', '', 'rodz_g.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(291, 6, '欧式奖金轮盘赌', NULL, 1, 1, 3, 'ro_g', '', 'ro_g.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(292, 6, '五虎将', NULL, 1, 1, 3, 'ftg', '', 'ftg.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(293, 6, '诸神时代', NULL, 1, 1, 3, 'aogs', '', 'aogs.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(294, 6, '印加帝国头奖', NULL, 1, 1, 3, 'aztec', '', 'aztec.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(295, 6, '美国21点', NULL, 1, 1, 3, 'bja', '', 'bja.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(296, 6, '海滩生活', NULL, 1, 1, 3, 'bl', '', 'bl.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(297, 6, '甜蜜派对', NULL, 1, 1, 3, 'cnpr', '', 'cnpr.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(298, 6, '船长的宝藏', NULL, 1, 1, 3, 'ct', '', 'ct.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(299, 6, '情圣博士', NULL, 1, 1, 3, 'dlm', '', 'dlm.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(300, 6, '沙漠宝藏', NULL, 1, 1, 3, 'dt', '', 'dt.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(301, 6, '所有人的大奖', NULL, 1, 1, 3, 'evj', '', 'evj.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(302, 6, '终极足球', NULL, 1, 1, 3, 'fbr', '', 'fbr.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(303, 6, '完美二十一点', NULL, 1, 1, 3, 'pfbj_mh5', '', 'pfbj_mh5.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(304, 6, '水果狂', NULL, 1, 1, 3, 'fmn', '', 'fmn.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(305, 6, '趣味水果', NULL, 1, 1, 3, 'fnfrj', '', 'fnfrj.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(306, 6, '惊异之林', NULL, 1, 1, 3, 'fow', '', 'fow.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(307, 6, '艺伎故事', NULL, 1, 1, 3, 'ges', '', 'ges.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(308, 6, '角斗士彩池游戏', NULL, 1, 1, 3, 'glrj', '', 'glrj.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(309, 6, '金色召集', NULL, 1, 1, 3, 'grel', '', 'grel.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(310, 6, '一夜奇遇', NULL, 1, 1, 3, 'hb', '', 'hb.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(311, 6, '高速公路之王', NULL, 1, 1, 3, 'hk', '', 'hk.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(312, 6, '六福兽', NULL, 1, 1, 3, 'kfp', '', 'kfp.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(313, 6, '爱之船', NULL, 1, 1, 3, 'lvb', '', 'lvb.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(314, 6, '魔幻吃角子老虎', NULL, 1, 1, 3, 'ms', '', 'ms.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(315, 6, '粉红豹', NULL, 1, 1, 3, 'pnp', '', 'pnp.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(316, 6, '金字塔女王', NULL, 1, 1, 3, 'qop', '', 'qop.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(317, 6, '银弹', NULL, 1, 1, 3, 'sib', '', 'sib.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(318, 6, '五路财神', NULL, 1, 1, 3, 'wlcsh', '', 'wlcsh.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(319, 14, '英雄荣耀', NULL, 1, 1, 3, 'crystal', '', 'crystal.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(320, 14, '福禄寿', NULL, 1, 1, 3, 'fls', '', 'fls.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(321, 14, '四圣兽', NULL, 1, 1, 3, 'fourss', '', 'fourss.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(322, 14, '劲爆篮球', NULL, 1, 1, 3, 'btball5x20', '', 'btball5x20.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(323, 14, '白蛇传', NULL, 1, 1, 3, 'whitesnake', '', 'whitesnake.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(324, 14, '龙珠', NULL, 1, 1, 3, 'dragonball', '', 'dragonball.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(325, 14, '封神榜', NULL, 1, 1, 3, 'tlod', '', 'tlod.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(326, 14, '西游降妖', NULL, 1, 1, 3, 'jtw', '', 'jtw.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(327, 14, '新年到', NULL, 1, 1, 3, 'newyear', '', 'newyear.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(328, 14, '财神到', NULL, 1, 1, 3, 'tgow', '', 'tgow.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(329, 14, '三国-赤壁之战', NULL, 1, 1, 3, 'san', '', 'san.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(330, 14, '海贼王', NULL, 1, 1, 3, 'onepiece3x1', '', 'onepiece3x1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(331, 14, '武松传', NULL, 1, 1, 3, 'watermargin', '', 'watermargin.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(332, 14, '拳皇', NULL, 1, 1, 3, 'kof', '', 'kof.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(333, 14, '灌篮高手', NULL, 1, 1, 3, 'sd', '', 'sd.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(334, 14, '灌篮高手pro', NULL, 1, 1, 3, 'sd5', '', 'sd5.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(335, 14, '火影忍者', NULL, 1, 1, 3, 'naruto', '', 'naruto.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(336, 14, '圣斗士星矢', NULL, 1, 1, 3, 'seiya', '', 'seiya.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(337, 14, '梦幻森林', NULL, 1, 1, 3, 'fantasyforest3x1', '', 'fantasyforest3x1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(338, 14, '水浒传', NULL, 1, 1, 3, 'watermargin5x25', '', 'watermargin5x25.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(339, 14, '西游记', NULL, 1, 1, 3, 'xiyouji5x25', '', 'xiyouji5x25.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(340, 14, '阿拉丁神灯', NULL, 1, 1, 3, 'aladdin5x243', '', 'aladdin5x243.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(341, 14, '降妖传奇', NULL, 1, 1, 3, 'xiyouji5x9', '', 'xiyouji5x9.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(342, 14, '哆啦A梦', NULL, 1, 1, 3, 'doraemon3x5', '', 'doraemon3x5.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(343, 14, '高达', NULL, 1, 1, 3, 'gundam3x5', '', 'gundam3x5.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(344, 14, '海盗无双', NULL, 1, 1, 3, 'onepiece', '', 'onepiece.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(345, 14, '街霸', NULL, 1, 1, 3, 'streetfighter3x1', '', 'streetfighter3x1.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(346, 14, '3D老虎机', NULL, 1, 1, 3, 'casino', '', 'casino.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(347, 14, '拳皇98', NULL, 1, 1, 3, 'kof5x9', '', 'kof5x9.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(348, 14, '五行世界', NULL, 1, 1, 3, 'fiveelements5x9', '', 'fiveelements5x9.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(349, 14, '仙剑奇缘', NULL, 1, 1, 3, 'xjqy5x9', '', 'xjqy5x9.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(350, 14, '龙凤呈祥', NULL, 1, 1, 3, 'dnp', '', 'dnp.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(351, 14, '阿拉丁神灯', NULL, 1, 2, 3, 'aladdin5x243', '', '阿拉丁神灯.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(352, 14, '劲爆篮球', NULL, 1, 2, 3, 'btball5x20', '', '劲爆篮球.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(353, 14, '英雄荣耀', NULL, 1, 2, 3, 'crystal', '', '英雄荣耀.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(354, 14, '龙凤呈祥', NULL, 1, 2, 3, 'dnp', '', '龙凤呈祥.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(355, 14, '哆啦A梦', NULL, 1, 2, 3, 'doraemon3x5', '', '哆啦A梦.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(356, 14, '梦幻森林', NULL, 1, 2, 3, 'fantasyforest3x1', '', '梦幻森林.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(357, 14, '五行世界', NULL, 1, 2, 3, 'fiveelements5x9', '', '五行世界.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(358, 14, '赤壁之战', NULL, 1, 2, 3, 'san', '', '赤壁之战.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(359, 14, '高达', NULL, 1, 2, 3, 'gundam3x5', '', '高达.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(360, 14, '西游降妖', NULL, 1, 2, 3, 'jtw', '', '西游降妖.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(361, 14, '拳皇', NULL, 1, 2, 3, 'kof', '', '拳皇.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(362, 14, '拳皇98', NULL, 1, 2, 3, 'kof5x9', '', '拳皇98.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(363, 14, '火影忍者', NULL, 1, 2, 3, 'naruto', '', '火影忍者.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(364, 14, '新年到', NULL, 1, 2, 3, 'newyear', '', '新年到.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(365, 14, '海贼王', NULL, 1, 2, 3, 'onepiece', '', '海贼王.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(366, 14, '海贼王2', NULL, 1, 2, 3, 'onepiece3x1', '', '海贼王2.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(367, 14, '灌篮高手', NULL, 1, 2, 3, 'sd', '', '灌篮高手.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(368, 14, '灌篮高手pro', NULL, 1, 2, 3, 'sd5', '', '灌篮高手pro.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(369, 14, '圣斗士', NULL, 1, 2, 3, 'seiya', '', '圣斗士.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:36', '2017-09-20 15:15:36'),
(370, 14, '街霸', NULL, 1, 2, 3, 'streetfighter3x1', '', '街霸.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(371, 14, '财神到', NULL, 1, 2, 3, 'tgow', '', '财神到.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(372, 14, '封神榜', NULL, 1, 2, 3, 'tlod', '', '封神榜.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(373, 14, '武松传', NULL, 1, 2, 3, 'watermargin', '', '武松传.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(374, 14, '水浒传', NULL, 1, 2, 3, 'watermargin5x25', '', '水浒传.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(375, 14, '白蛇传', NULL, 1, 2, 3, 'whitesnake', '', '白蛇传.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(376, 14, '西游记', NULL, 1, 2, 3, 'xiyouji5x25', '', '西游记.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(377, 14, '降妖传奇', NULL, 1, 2, 3, 'xiyouji5x9', '', '降妖传奇.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(378, 14, '仙剑奇缘', NULL, 1, 2, 3, 'xjqy5x9', '', '仙剑奇缘.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(379, 14, '3D老虎机', NULL, 1, 2, 3, 'casino', '', '3D老虎机.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37');
INSERT INTO `game_lists2` (`id`, `api_id`, `name`, `en_name`, `type`, `client_type`, `game_type`, `game_id`, `game_name`, `img_path`, `img_phone`, `img_pc`, `on_line`, `is_hot`, `sort`, `created_at`, `updated_at`) VALUES
(380, 14, '四圣兽', NULL, 1, 2, 3, 'fourss', '', '四圣兽.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(381, 14, '福禄寿', NULL, 1, 2, 3, 'fls', '', '福禄寿.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(382, 14, '龙珠Z', NULL, 1, 2, 3, 'dragonball', '', '龙珠Z.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(383, 12, '丧尸猎人', NULL, 1, 1, 3, 'EG-SLOT-S007', '', 'zombieHunter.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(384, 12, '美女沙排', NULL, 1, 1, 3, 'EG-SLOT-S006', '', 'volleybeauties.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(385, 12, '魔鬼天使', NULL, 1, 1, 3, 'EG-SLOT-S005', '', 'AngelsDemons.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(386, 12, '幸运喵星人', NULL, 1, 1, 3, 'EG-SLOT-S004', '', 'BeckoningGirls.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(387, 12, '红楼春梦', NULL, 1, 1, 3, 'EG-SLOT-A008', '', 'redChamber.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(388, 12, '三星报喜', NULL, 1, 1, 3, 'EG-SLOT-A002', '', 'ThreeStarGod.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(389, 12, '龙虎', NULL, 1, 1, 3, 'EG-SLOT-A004', '', 'DragonTiger.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(390, 12, '张保仔', NULL, 1, 1, 3, 'EG-SLOT-A018', '', 'CheungPoTsai.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(391, 12, '梦幻女神', NULL, 1, 1, 3, 'EG-SLOT-A005', '', 'FantasyGoddess.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(392, 12, '济公', NULL, 1, 1, 3, 'EG-SLOT-A006', '', 'JiGong.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(393, 12, '过大年', NULL, 1, 1, 3, 'EG-SLOT-A001', '', 'NewYearRich.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(394, 12, '运财金鸡', NULL, 1, 1, 3, 'EG-SLOT-A020', '', 'goldenchicken.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(395, 12, '脆爆水果', NULL, 1, 1, 3, 'EG-SLOT-A015', '', 'FruitPoppers.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(396, 12, '南北狮王', NULL, 1, 1, 3, 'EG-SLOT-A017', '', 'LionDance.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(397, 12, '锦衣卫', NULL, 1, 1, 3, 'EG-SLOT-A003', '', 'guard.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(398, 12, '比基尼狂热', NULL, 1, 1, 3, 'EG-SLOT-A013', '', 'Bikini.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(399, 12, '趣怪丧尸', NULL, 1, 1, 3, 'EG-SLOT-A012', '', 'CreepyCuddlers.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(400, 12, '同校生', NULL, 1, 1, 3, 'EG-SLOT-A009', '', 'Classmate.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(401, 12, '黄飞鸿', NULL, 1, 1, 3, 'EG-SLOT-S003', '', 'WongFaiHung.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(402, 12, '热带宝藏', NULL, 1, 1, 3, 'EG-SLOT-A016', '', 'Fish.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(403, 12, '欢乐农场', NULL, 1, 1, 3, 'EG-SLOT-A010', '', 'FunnyFarm.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(404, 8, '猴年大吉', NULL, 1, 2, 3, '1035', 'YearOfTheMonkey', '45ec50a0287ca9a73991bc41495f1bc4_57f4703cb9589.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(405, 8, '疯狂的猴子', NULL, 1, 2, 3, '1016', 'MadMonkey', 'MadMonkey.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(406, 8, '幸运生肖', NULL, 1, 2, 3, '14229', 'BG_Zoodiac', 'ZodiacWild.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(407, 8, '21点幸运7', NULL, 1, 2, 3, '25', 'Lucky7Blackjack', 'Lucky7Blackjack.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(408, 8, '一杆进洞', NULL, 1, 2, 3, '18', 'HoleInOne', 'HoleInOne.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(409, 8, '三张牌扑克', NULL, 1, 2, 3, '32', 'ThreeCardPoker', 'ThreeCardPoker.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(410, 8, '丝绸之路', NULL, 1, 2, 3, '1024', 'TheSilkRoad', '54e1eb317ef57803bc3a62a3f55ad932_57f7614093d42.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(411, 8, '中子星', NULL, 1, 2, 3, '1031', 'NeutronStar', 'Neutron-Star.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(412, 8, '二十一点', NULL, 1, 2, 3, '5', 'Blackjack', 'Blackjack_0.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(413, 8, '五个海盗', NULL, 1, 2, 3, '1012', 'FivePirates', 'Five-Pirates.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(414, 8, '亚瑟的探索', NULL, 1, 2, 3, '63', 'ArthursQuest', 'ArthursQuest.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(415, 8, '亚瑟的探索 II', NULL, 1, 2, 3, '462', 'ArthursQuestIISlots', 'ArthursQuestII_0.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(416, 8, '亚马逊河大冒险', NULL, 1, 2, 3, '414', 'AmazonAdventureSlots', 'AmazonAdventure.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(417, 8, '企鹅冲浪', NULL, 1, 2, 3, '449', 'SurfsUpSlots', 'SurfsUp.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(418, 8, '伟大的卡西尼', NULL, 1, 2, 3, '453', 'TheGreatCasiniSlots', 'TheGreatCasini.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(419, 8, '头彩假日', NULL, 1, 2, 3, '413', 'JackpotHolidaySlots', 'JackpotHoliday.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(420, 8, '决战将军', NULL, 1, 2, 3, '14420', 'PP_ReligionofChampions', 'ShogunShowdown.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(421, 8, '出租车', NULL, 1, 2, 3, '516', 'Taxi', 'Taxi.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(422, 8, '加勒比海宝藏', NULL, 1, 2, 3, '6', 'CasinoStudPoker', 'Caribbean-Stud-Poker.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(423, 8, '吉李II:赏金猎人', NULL, 1, 2, 3, '1009', 'KatLeeII', 'Kat-Lee-Bounty-Hunter-2.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(424, 8, '龙王', NULL, 1, 2, 3, '14442', 'PP_LuckyDragons', '3f55499c3edfe2aab0989c021844081e_56653d8fbceb8.jpeg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(425, 8, '吸血鬼和狼人', NULL, 1, 2, 3, '480', 'VampiresVsWerewolves', 'VampiresvsWerewolves.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(426, 8, '哇哦', NULL, 1, 2, 3, '14235', 'BG_KawaiiDragons', 'Goooal.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(427, 8, '啤酒节', NULL, 1, 2, 3, '65', 'Oktoberfest', 'Oktoberfest.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(428, 8, '国际赛车', NULL, 1, 2, 3, '1028', 'GrandPrix', 'Grand-Prix.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(429, 8, '地狱的钞票', NULL, 1, 2, 3, '40', 'FiveReelSlots', 'CashInferno.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(430, 8, '埃及艳后', NULL, 1, 2, 3, '1034', 'Cleopatra', 'Cleopatra.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(431, 8, '塞伦盖提的钻石', NULL, 1, 2, 3, '14425', 'PP_BlackDiamond', 'SerengetiDiamonds.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(432, 8, '天使的触摸', NULL, 1, 2, 3, '477', 'AngelsTouch', 'AngelsTouch_0.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(433, 8, '天龙8s', NULL, 1, 2, 3, '475', 'DracosFire', 'Dragon8s.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(434, 8, '夺钞票', NULL, 1, 2, 3, '64', 'BullsEyeBucks', 'CashGrab.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(435, 8, '夺钞票2', NULL, 1, 2, 3, '64', 'BullsEyeBucks', 'CashGrabII.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(436, 8, '好莱坞卷轴', NULL, 1, 2, 3, '15', 'HollywoodReels', 'HollywoodReels.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(437, 8, '威尼斯万岁', NULL, 1, 2, 3, '438', 'VivaVeneziaSlots', 'VivaVenezia.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(438, 8, '威尼斯野玫瑰', NULL, 1, 2, 3, '1039', 'RoseOfVenice', 'Rose-of-Venice.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(439, 8, '完美对子21点', NULL, 1, 2, 3, '455', 'PerfectPairsBJSidebet', 'PerfectPairsBlackjack.jpg', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(440, 7, '冰上曲棍球', NULL, 1, 1, 3, 'Breakaway', '', 'BTN_BreakAway.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(441, 7, '幸运的锦鲤', NULL, 1, 1, 3, 'LuckyKoi', '', 'BTN_LuckyKoi.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(442, 7, '欧式黄金轮盘', NULL, 1, 1, 3, 'EuroRouletteGold', '', 'BTN_EuropeanRouletteGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(443, 7, '亚洲风情', NULL, 1, 1, 3, 'AsianBeauty', '', 'BTN_AsianBeauty.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(444, 7, '纯铂金', NULL, 1, 1, 3, 'pureplatinum', '', 'BTN_pureplatinum.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(445, 7, '复古旋转', NULL, 1, 1, 3, 'RetroReels', '', 'BTN_RetroReels.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(446, 7, '雷神', NULL, 1, 1, 3, 'Thunderstruck', '', 'BTN_Thunderstruck.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(447, 7, '足球明星', NULL, 1, 1, 3, 'FootballStar', '', 'BTN_FootballStar.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(448, 7, '花花公子', NULL, 1, 1, 3, 'Playboy', '', 'BTN_Playboy.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(449, 7, '好日子', NULL, 1, 1, 3, 'TheFinerReelsofLife', '', 'BTN_TheFinerReelsofLife.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(450, 7, '功夫小胖猪', NULL, 1, 1, 3, 'KaratePig', '', 'BTN_KaratePig.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(451, 7, '美女密探', NULL, 1, 1, 3, 'RubyAgentJaneBlonde', '', 'BTN_AgentJaneBlonde.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(452, 7, '终结者2', NULL, 1, 1, 3, 'Terminator2', '', 'BTN_Terminator2.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(453, 7, '钻石浮华', NULL, 1, 1, 3, 'RetroReelsDiamondGlitz', '', 'BTN_RetroReelsDiamondGlitz.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(454, 7, '阿瓦隆2', NULL, 1, 1, 3, 'Avalon2', '', 'BTN_AvalonII-L-QuestForTheGrail.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(455, 7, '财富联盟', NULL, 1, 1, 3, 'LeaguesOfFortune', '', 'BTN_LeaguesOfFortune.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(456, 7, '人人有奖', NULL, 1, 1, 3, 'InItToWinIt', '', 'BTN_InItToWinIt.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(457, 7, '混沌加农炮', NULL, 1, 1, 3, 'LooseCannon', '', 'BTN_LooseCannon.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(458, 7, '恐怖实验室', NULL, 1, 1, 3, 'DrWattsUp', '', 'BTN_DrWattsUp.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(459, 7, '狂野之鹰', NULL, 1, 1, 3, 'UntamedCrownedEagle', '', 'BTN_UntamedCrownedEagle.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(460, 7, '女孩与枪', NULL, 1, 1, 3, 'GirlsWithGuns', '', 'BTN_GirlsWithGuns-L-JungleHeat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(461, 7, '女孩与枪II', NULL, 1, 1, 3, 'GirlsWithGunsFrozenDawn', '', 'BTN_GirlswithGuns-L-FrozenDawn.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(462, 7, '抢劫银行', NULL, 1, 1, 3, 'BustTheBank', '', 'BTN_BustTheBank.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(463, 7, '上流社会', NULL, 1, 1, 3, 'HighSociety', '', 'BTN_HighSociety.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(464, 7, '神秘梦境', NULL, 1, 1, 3, 'MysticDreams', '', 'BTN_MysticDreams.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(465, 7, '圣诞老人的秘密', NULL, 1, 1, 3, 'SecretSanta', '', 'BTN_SecretSanta.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(466, 7, '为粉红而战', NULL, 1, 1, 3, 'RacingForPinks', '', 'BTN_RacingForPinks.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(467, 7, '星梦之吻', NULL, 1, 1, 3, 'StarlightKiss', '', 'BTN_StarlightKiss.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(468, 7, '寻访海豚', NULL, 1, 1, 3, 'DolphinQuest', '', 'BTN_DolphinQuest.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(469, 7, '藏宝时间', NULL, 1, 1, 3, 'BootyTime', '', 'BTN_BootyTime.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(470, 7, '新娘吉拉', NULL, 1, 1, 3, 'Bridezilla', '', 'BTN_Bridezilla.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(471, 7, '小猪财富', NULL, 1, 1, 3, 'PiggyFortunes', '', 'BTN_PiggyFortunes.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(472, 7, '财富转轮特别版', NULL, 1, 1, 3, 'WheelOfWealthSE', '', 'BTN_WheelOfWealthSpecialEdition.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(473, 7, '丛林摇摆', NULL, 1, 1, 3, 'BushTelegraph', '', 'BTN_BushTelegraph.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(474, 7, '地球生物', NULL, 1, 1, 3, 'WhatonEarth', '', 'BTN_WhatonEarth.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(475, 7, '反转马戏团', NULL, 1, 1, 3, 'TheTwistedCircus', '', 'BTN_TheTwistedCircus.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(476, 7, '疯狂的帽子', NULL, 1, 1, 3, 'MadHatters', '', 'BTN_MadHatters.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(477, 7, '古墓丽影', NULL, 1, 1, 3, 'TombRaider', '', 'BTN_TombRaider.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(478, 7, '古墓丽影2', NULL, 1, 1, 3, 'RubyTombRaiderII', '', 'BTN_TombRaider2.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(479, 7, '海底世界', NULL, 1, 1, 3, 'MermaidsMillions', '', 'BTN_MermaidsMillions.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(480, 7, '挥金如土', NULL, 1, 1, 3, 'Cashville', '', 'BTN_Cashville.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(481, 7, '芥末寿司', NULL, 1, 1, 3, 'RubyWasabiSan', '', 'BTN_WasabiSan.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(482, 7, '卡萨努瓦', NULL, 1, 1, 3, 'Cashanova', '', 'BTN_Cashanova.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(483, 7, '恐龙迪诺', NULL, 1, 1, 3, 'DinoMight', '', 'BTN_DinoMight.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(484, 7, '骷髅陷阱', NULL, 1, 1, 3, 'SkullDuggery', '', 'BTN_SkullDuggery.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(485, 7, '雷神2', NULL, 1, 1, 3, 'Thunderstruck2', '', 'BTN_Thunderstruck2.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(486, 7, '洛伯杰克', NULL, 1, 1, 3, 'RoboJack', '', 'BTN_RoboJack.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(487, 7, '蜜蜂乐园', NULL, 1, 1, 3, 'PollenNation', '', 'BTN_PollenNation.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(488, 7, '女巫的财富', NULL, 1, 1, 3, 'RubyWitchesWealth', '', 'BTN_WitchesWealth.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(489, 7, '圣诞老人的疯狂', NULL, 1, 1, 3, 'SantasWildRide', '', 'BTN_SantasWildRide.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(490, 7, '水果财富', NULL, 1, 1, 3, 'RubyWheelofWealth', '', 'BTN_WheelofWealth.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(491, 7, '万圣节', NULL, 1, 1, 3, 'RubyHalloweenies', '', 'BTN_Halloweenies.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(492, 7, '炫富一族', NULL, 1, 1, 3, 'Loaded', '', 'BTN_Loaded.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(493, 7, '野性的狼群', NULL, 1, 1, 3, 'UntamedWolfPack', '', 'BTN_UntamedWolfPack.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(494, 7, '野性的孟加拉虎', NULL, 1, 1, 3, 'UntamedBengalTiger', '', 'BTN_UntamedBengalTiger.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(495, 7, '银行爆破', NULL, 1, 1, 3, 'BreakDaBankAgain', '', 'BTN_BreakDaBankAgain.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(496, 7, '月光', NULL, 1, 1, 3, 'Moonshine', '', 'BTN_Moonshine.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(497, 7, '征服钱海', NULL, 1, 1, 3, 'BigKahuna', '', 'BTN_BigKahuna.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(498, 7, '终极杀手', NULL, 1, 1, 3, 'RubyHitman', '', 'BTN_HitMan.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(499, 7, '星云', NULL, 1, 1, 3, 'Starscape', '', 'BTN_Starscape.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(500, 7, '射击', NULL, 1, 1, 3, 'Shoot', '', 'BTN_Shoot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(501, 7, '狗爸爸', NULL, 1, 1, 3, 'RubyDogfather', '', 'BTN_RubyDogfather.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(502, 7, '地狱男爵', NULL, 1, 1, 3, 'RubyHellBoy', '', 'BTN_RubyHellBoy.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(503, 7, '幻影现金', NULL, 1, 1, 3, 'PhantomCash', '', 'BTN_PhantomCash.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(504, 7, '龙之家', NULL, 1, 1, 3, 'RubyHouseofDragons', '', 'BTN_RubyHouseofDragons.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(505, 7, '亚瑟王', NULL, 1, 1, 3, 'RubyKingArthur', '', 'BTN_RubyKingArthur.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(506, 7, '财富之轮', NULL, 1, 1, 3, 'Spectacular', '', 'BTN_SpectacularWheelOfWealth.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(507, 7, '财运疯狂', NULL, 1, 1, 3, 'CashCrazy', '', 'BTN_CashCrazy.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(508, 7, '超级厨王', NULL, 1, 1, 3, 'Belissimo', '', 'BTN_Belissimo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(509, 7, '超级飞行员', NULL, 1, 1, 3, 'RubyFlyingAce', '', 'BTN_FlyingAce.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(510, 7, '黄金海岸', NULL, 1, 1, 3, 'RubyGoldCoast', '', 'BTN_GoldCoast.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(511, 7, '黄金龙', NULL, 1, 1, 3, 'gdragon', '', 'BTN_GoldenDragon.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(512, 7, '急速转轮', NULL, 1, 1, 3, 'RubyRapidReels', '', 'BTN_RapidReels.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(513, 7, '酷巴克', NULL, 1, 1, 3, 'CoolBuck', '', 'BTN_CoolBuck.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(514, 7, '累计奖金快车', NULL, 1, 1, 3, 'jexpress', '', 'BTN_JackpotExpress.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(515, 7, '铃儿响叮当', NULL, 1, 1, 3, 'RubyJingleBells', '', 'BTN_JingleBells.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(516, 7, '罗马财富', NULL, 1, 1, 3, 'RomanRiches', '', 'BTN_RomanRiches.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(517, 7, '奇妙7', NULL, 1, 1, 3, 'fan7', '', 'BTN_Fantastic7s.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(518, 7, '抢银行', NULL, 1, 1, 3, 'BreakDaBank', '', 'BTN_BreakDaBank.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(519, 7, '燃尼巨蟒', NULL, 1, 1, 3, 'zebra', '', 'BTN_ZanyZebra.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(520, 7, '三魔法', NULL, 1, 1, 3, 'TripleMagic', '', 'BTN_TripleMagic.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(521, 7, '沙发土豆', NULL, 1, 1, 3, 'CouchPotato', '', 'BTN_CouchPotato.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(522, 7, '双魔', NULL, 1, 1, 3, 'dm', '', 'BTN_DoubleMagic.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(523, 7, '双重韦密', NULL, 1, 1, 3, 'DoubleWammy', '', 'BTN_DoubleWammy.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(524, 7, '水果老虎机', NULL, 1, 1, 3, 'fruits', '', 'BTN_FruitSlots.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(525, 7, '现金蚬', NULL, 1, 1, 3, 'CashClams', '', 'BTN_CashClams.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(526, 7, '幸运曲奇', NULL, 1, 1, 3, 'FortuneCookie', '', 'BTN_FortuneCookie.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(527, 7, '摇滚船', NULL, 1, 1, 3, 'RockTheBoat', '', 'BTN_RockTheBoat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(528, 7, '遗产L', NULL, 1, 1, 3, 'RubyLegacy', '', 'BTN_Legacy.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(529, 7, '宇宙猫', NULL, 1, 1, 3, 'cosmicc', '', 'BTN_CosmicCat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(530, 7, '野生捕鱼', NULL, 1, 1, 3, 'WildCatch', '', 'BTN_WildCatch.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(531, 7, '甜蜜的收获', NULL, 1, 1, 3, 'SweetHarvest', '', 'BTN_SweetHarvest.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(532, 7, '棒球直击', NULL, 1, 1, 3, 'RubyHotShot', '', 'BTN_HotShot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(533, 7, '不朽的爱情', NULL, 1, 1, 3, 'ImmortalRomance', '', 'BTN_ImmortalRomance.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(534, 7, '大狮鹫', NULL, 1, 1, 3, 'GreatGriffin', '', 'BTN_GreatGriffin.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(535, 7, '大熊猫', NULL, 1, 1, 3, 'UntamedGiantPanda', '', 'BTN_UntamedGiantPanda.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(536, 7, '东方财富', NULL, 1, 1, 3, 'OrientalFortune', '', 'BTN_OrientalFortune.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(537, 7, '疯狂的变色龙', NULL, 1, 1, 3, 'CrazyChameleons', '', 'BTN_CrazyChameleons.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(538, 7, '怪兽多多', NULL, 1, 1, 3, 'SoManyMonsters', '', 'BTN_SoManyMonsters.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(539, 7, '怪物躁狂症', NULL, 1, 1, 3, 'MonsterMania', '', 'BTN_MonsterMania.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(540, 7, '红衣女郎', NULL, 1, 1, 3, 'LadyInRed', '', 'BTN_LadyInRed.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(541, 7, '紅唇誘惑', NULL, 1, 1, 3, 'RedHotDevil', '', 'BTN_RedHotDevil.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(542, 7, '黄金囊地鼠', NULL, 1, 1, 3, 'GopherGold', '', 'BTN_GopherGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(543, 7, '黃金時代', NULL, 1, 1, 3, 'GoldenEra', '', 'BTN_GoldenEra.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(544, 7, '精灵宝石', NULL, 1, 1, 3, 'GeniesGems', '', 'BTN_GeniesGems.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(545, 7, '狂欢节', NULL, 1, 1, 3, 'Carnaval', '', 'BTN_Carnaval.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(546, 7, '昆虫派对', NULL, 1, 1, 3, 'RubyCashapillar', '', 'BTN_Cashapillar.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(547, 7, '雷电击', NULL, 1, 1, 3, 'ReelThunder', '', 'BTN_ReelThunder.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(548, 7, '马戏篷', NULL, 1, 1, 3, 'BigTop', '', 'BTN_BigTop.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(549, 7, '猫头鹰乐园', NULL, 1, 1, 3, 'WhatAHoot', '', 'BTN_WhatAHoot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(550, 7, '燃烧的欲望', NULL, 1, 1, 3, 'RubyBurningDesire', '', 'BTN_BurningDesire.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(551, 7, '闪亮的圣诞节', NULL, 1, 1, 3, 'RubyDeckTheHalls', '', 'BTN_DeckTheHalls.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(552, 7, '守财奴', NULL, 1, 1, 3, 'RubyScrooge', '', 'BTN_Scrooge.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(553, 7, '寿司多多', NULL, 1, 1, 3, 'SoMuchSushi', '', 'BTN_SoMuchSushi.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(554, 7, '探索太阳', NULL, 1, 1, 3, 'SunQuest', '', 'BTN_SunQuest.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(555, 7, '糖果多多', NULL, 1, 1, 3, 'SoMuchCandy', '', 'BTN_SoMuchCandy.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(556, 7, '图腾宝藏', NULL, 1, 1, 3, 'RubyTotemTreasure', '', 'BTN_TotemTreasure.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(557, 7, '新年快樂', NULL, 1, 1, 3, 'HappyNewYear', '', 'BTN_HappyNewYear.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(558, 7, '乙烯基倒计时', NULL, 1, 1, 3, 'VinylCountdown', '', 'BTN_VinylCountdown.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(559, 7, '赢得向导', NULL, 1, 1, 3, 'wwizards', '', 'BTN_WinningWizards.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(560, 7, '招财鞭炮', NULL, 1, 1, 3, 'LuckyFirecracker', '', 'BTN_LuckyFirecracker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(561, 7, '太阳神之许珀里翁', NULL, 1, 1, 3, 'TitansoftheSunHyperion', '', 'BTN_TitansoftheSunHyperion.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(562, 7, '爱丽娜', NULL, 1, 1, 3, 'Ariana', '', 'BTN_Ariana.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(563, 7, '橄榄球明星', NULL, 1, 1, 3, 'RugbyStar', '', 'BTN_RugbyStar.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(564, 7, '地府烈焰', NULL, 1, 1, 3, 'HotAsHades', '', 'BTN_HotAsHades.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(565, 7, '千金', NULL, 1, 1, 3, 'GoldenPrincess', '', 'BTN_GoldenPrincess.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(566, 7, '幸运生肖', NULL, 1, 1, 3, 'LuckyZodiac', '', 'BTN_LuckyZodiac.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(567, 7, '阿瓦隆', NULL, 1, 1, 3, 'RubyAvalon', '', 'BTN_Avalon.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(568, 7, '宝石迷阵', NULL, 1, 1, 3, 'ReelGems', '', 'BTN_ReelGems.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(569, 7, '春假', NULL, 1, 1, 3, 'SpringBreak', '', 'BTN_SpringBreak.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(570, 7, '疯狂赛道', NULL, 1, 1, 3, 'RubyGoodToGo', '', 'BTN_GoodToGo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(571, 7, '复古卷轴钻石耀眼', NULL, 1, 1, 3, 'RetroReelsDiamondGlitz', '', 'BTN_RetroReelsDiamondGlitz.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(572, 7, '复古旋转', NULL, 1, 1, 3, 'RetroReels', '', 'BTN_RetroReels.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(573, 7, '宫廷历险', NULL, 1, 1, 3, 'AdventurePalace', '', 'BTN_AdventurePalace.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(574, 7, '怪兽曼琪肯', NULL, 1, 1, 3, 'RubyMunchkins', '', 'BTN_Munchkins.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(575, 7, '哈维斯的晚餐', NULL, 1, 1, 3, 'RubyHarveys', '', 'BTN_Harveys.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(576, 7, '海滨财富', NULL, 1, 1, 3, 'MonteCarloRiches', '', 'BTN_RivieraRiches.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(577, 7, '嗬嗬嗬', NULL, 1, 1, 3, 'HoHoHo', '', 'BTN_HoHoHo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(578, 7, '黄金工厂', NULL, 1, 1, 3, 'GoldFactory', '', 'BTN_GoldFactory.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(579, 7, '卷行使价', NULL, 1, 1, 3, 'ReelStrike', '', 'BTN_ReelStrike.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(580, 7, '卡萨缦都', NULL, 1, 1, 3, 'RubyKathmandu', '', 'BTN_Kathmandu.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(581, 7, '酷狼', NULL, 1, 1, 3, 'CoolWolf', '', 'BTN_CoolWolf.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(582, 7, '秘密崇拜者', NULL, 1, 1, 3, 'SecretAdmirer', '', 'BTN_SecretAdmirer.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(583, 7, '女仕之夜', NULL, 1, 1, 3, 'LadiesNite', '', 'BTN_LadiesNite.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(584, 7, '派对鱼', NULL, 1, 1, 3, 'FishParty', '', 'BTN_FishParty.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(585, 7, '神奇墨水', NULL, 1, 1, 3, 'HotInk', '', 'BTN_HotInk.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(586, 7, '水果怪兽', NULL, 1, 1, 3, 'rubyelementals', '', 'BTN_Elementals.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(587, 7, '泰利嗬', NULL, 1, 1, 3, 'TallyHo', '', 'BTN_TallyHo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(588, 7, '幸运女巫', NULL, 1, 1, 3, 'LuckyWitch', '', 'BTN_LuckyWitch.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(589, 7, '银芳', NULL, 1, 1, 3, 'SilverFang', '', 'BTN_SilverFang.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(590, 7, '疯狂假面', NULL, 1, 1, 3, 'MugshotMadness', '', 'BTN_MugshotMadness.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(591, 7, '玛雅公主', NULL, 1, 1, 3, 'MayanPrincess', '', 'BTN_MayanPrincess.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(592, 7, '章鱼', NULL, 1, 1, 3, 'Octopays', '', 'BTN_Octopays.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(593, 7, '对J高手', NULL, 1, 1, 3, 'Jackspwrpoker', '', 'BTN_Jackspwrpoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(594, 7, '红利扑克', NULL, 1, 1, 3, 'DoubleJoker', '', 'BTN_DoubleJoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(595, 7, 'A与人头扑克', NULL, 1, 1, 3, 'AcesfacesPwrPoker', '', 'BTN_AcesAndFaces.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(596, 7, '小丑扑克', NULL, 1, 1, 3, 'JokerPwrPoker', '', 'BTN_JokerPoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(597, 7, '换牌扑克', NULL, 1, 1, 3, 'DoubleDoubleBonus', '', 'BTN_DoubleDoubleBonus.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(598, 7, '路易斯安那双', NULL, 1, 1, 3, 'LouisianaDouble', '', 'BTN_LouisianaDouble.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(599, 7, '千斤顶或更好', NULL, 1, 1, 3, 'jacks', '', 'BTN_JacksOrBetter.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(600, 7, '数万或更好', NULL, 1, 1, 3, 'TensorBetterPwrPoker', '', 'BTN_TensOrBetter.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(601, 7, '万能两点', NULL, 1, 1, 3, 'DeucesWildPwrPoker', '', 'BTN_DeucesWild.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(602, 7, '超级马车赛', NULL, 1, 1, 3, 'PremierTrotting', '', 'BTN_PremierTrotting.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(603, 7, '超级赛马', NULL, 1, 1, 3, 'PremierRacing', '', 'BTN_PremierRacing.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(604, 7, '电动宾果', NULL, 1, 1, 3, 'ElectroBingo', '', 'BTN_ElectroBingo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(605, 7, '法老宾果', NULL, 1, 1, 3, 'PharaohBingo', '', 'BTN_PharaohBingo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(606, 7, '国际鱼虾蟹骰宝', NULL, 1, 1, 3, 'CrownAndAnchor', '', 'BTN_CrownAndAnchor.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(607, 7, '魔法森林', NULL, 1, 1, 3, 'EnchantedWoods', '', 'BTN_EnchantedWoods.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(608, 7, '萨巴宾果', NULL, 1, 1, 3, 'SambaBingo', '', 'BTN_SambaBingo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(609, 7, '细菌对对碰', NULL, 1, 1, 3, 'Germinator', '', 'BTN_Germinator.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(610, 7, 'A&8 红利5PK', NULL, 1, 1, 3, 'RubyAcesAndEights', '', 'BTN_RubyAcesAndEights.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(611, 7, 'All Aces 超级红利5PK', NULL, 1, 1, 3, 'RubyAllAces', '', 'BTN_RubyAllAces.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(612, 7, '百搭二王', NULL, 1, 1, 3, 'deuceswi', '', 'BTN_deuceswi.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(613, 7, '百搭二王与小丑', NULL, 1, 1, 3, 'DeucesandJoker', '', 'BTN_DeucesandJoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(614, 7, '百搭二王与小丑 (多组)', NULL, 1, 1, 3, 'DeucesJokerPwrPoker', '', 'BTN_DeucesJokerPwrPoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(615, 7, '超级百搭二王', NULL, 1, 1, 3, 'RubyBonusDeucesWild', '', 'BTN_RubyBonusDeucesWild.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(616, 7, '对十天王5PK', NULL, 1, 1, 3, 'TensorBetter', '', 'BTN_TensorBetter.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(617, 7, '红利5PK', NULL, 1, 1, 3, 'RubyBonusPokerDeluxe', '', 'BTN_RubyBonusPokerDeluxe.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(618, 7, '经典5PK', NULL, 1, 1, 3, 'acesfaces', '', 'BTN_acesfaces.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(619, 7, '美式经典5PK', NULL, 1, 1, 3, 'RubyAllAmerican', '', 'BTN_RubyAllAmerican.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(620, 7, '双倍红利5PK', NULL, 1, 1, 3, 'RubyDoubleBonusPoker', '', 'BTN_RubyDoubleBonusPoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(621, 7, '双倍小丑百搭5PK', NULL, 1, 1, 3, 'Jokerpok', '', 'BTN_Jokerpok.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(622, 7, '小丑百搭5PK(多组牌)', NULL, 1, 1, 3, 'DoubleJokerPwrPoker', '', 'BTN_DoubleJokerPwrPoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(623, 7, '百万动物园', NULL, 1, 1, 3, 'MegaMoolah', '', 'BTN_MegaMoolah.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(624, 7, '百万富翁', NULL, 1, 1, 3, 'MajorMillions', '', 'BTN_MajorMillions.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(625, 7, '百万富翁5线', NULL, 1, 1, 3, 'MajorMillions5Reel', '', 'BTN_MajorMillions5Reel.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(626, 7, '百万伊西斯', NULL, 1, 1, 3, 'MegaMoolahIsis', '', 'BTN_MegaMoolahIsis.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(627, 7, '彩金二王', NULL, 1, 1, 3, 'JackpotDeuces', '', 'BTN_JackpotDeuces.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(628, 7, '富裕的国王', NULL, 1, 1, 3, 'KingCashaLot', '', 'BTN_KingCashaLot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(629, 7, '加勒比海', NULL, 1, 1, 3, 'ProgCyberstud', '', 'BTN_ProgCyberstud.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(630, 7, '惊爆奖金', NULL, 1, 1, 3, 'WowPot', '', 'BTN_WowPot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(631, 7, '尼罗河宝藏', NULL, 1, 1, 3, 'TreasureNile', '', 'BTN_TreasureNile.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(632, 7, '水果嘉年华(3线)', NULL, 1, 1, 3, 'FruitFiesta', '', 'BTN_FruitFiesta.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(633, 7, '水果嘉年华(5线)', NULL, 1, 1, 3, 'FruitFiesta5Reel', '', 'BTN_FruitFiesta5Reel.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(634, 7, '图拉姆尼', NULL, 1, 1, 3, 'Tunzamunni', '', 'BTN_Tunzamunni.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(635, 7, '现金飞溅(3线)', NULL, 1, 1, 3, 'CashSplash', '', 'BTN_CashSplash.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(636, 7, '现金飞溅(5线)', NULL, 1, 1, 3, 'CashSplash5Reel', '', 'BTN_CashSplash5Reel.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(637, 7, '现金累积(3线)', NULL, 1, 1, 3, 'LotsofLoot', '', 'BTN_LotsofLoot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(638, 7, '现金累积(5线)', NULL, 1, 1, 3, 'LotsaLoot5Reel', '', 'BTN_LotsaLoot5Reel.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(639, 7, '108好汉', NULL, 1, 1, 3, '108Heroes', '', 'BTN_108Heroes.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(640, 7, '21点矿坑', NULL, 1, 1, 3, 'BlackjackBonanza', '', 'BTN_BlackjackBonanza.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(641, 7, '777大哥大', NULL, 1, 1, 3, 'RubyGrand7s', '', 'BTN_RubyGrand7s.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(642, 7, 'K歌乐韵', NULL, 1, 1, 3, 'KaraokeParty', '', 'BTN_KaraokeParty.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(643, 7, '阿拉斯加垂钓', NULL, 1, 1, 3, 'AlaskanFishing', '', 'BTN_AlaskanFishing.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(644, 7, '埃及王朝', NULL, 1, 1, 3, 'ThroneOfEgypt', '', 'BTN_ThroneOfEgypt.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(645, 7, '爱虫', NULL, 1, 1, 3, 'LoveBugs', '', 'BTN_LoveBugs.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(646, 7, '爱尔兰之眼', NULL, 1, 1, 3, 'IrishEyes', '', 'BTN_IrishEyes.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(647, 7, '爱情医生', NULL, 1, 1, 3, 'DoctorLove', '', 'BTN_DoctorLove.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(648, 7, '奥林帕斯山的传说', NULL, 1, 1, 3, 'LegendOfOlympus', '', 'BTN_LegendOfOlympus.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(649, 7, '白金俱乐部', NULL, 1, 1, 3, 'PurePlatinum', '', 'BTN_PurePlatinum.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(650, 7, '板球明星', NULL, 1, 1, 3, 'Cricketstar', '', 'BTN_Cricketstar.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(651, 7, '伴娘我最大', NULL, 1, 1, 3, 'Bridesmaids', '', 'BTN_Bridesmaids.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(652, 7, '北极祕宝', NULL, 1, 1, 3, 'ArcticFortune', '', 'BTN_ArcticFortune.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(653, 7, '北极特务', NULL, 1, 1, 3, 'ArcticAgents', '', 'BTN_ArcticAgents.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(654, 7, '比基尼派对', NULL, 1, 1, 3, 'bikiniparty', '', 'BTN_bikiniparty.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(655, 7, '必胜', NULL, 1, 1, 3, 'RubySureWin', '', 'BTN_RubySureWin.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(656, 7, '冰雪圣诞村', NULL, 1, 1, 3, 'RubySantaPaws', '', 'BTN_RubySantaPaws.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(657, 7, '不给糖就捣蛋', NULL, 1, 1, 3, 'trickortreat', '', 'BTN_trickortreat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(658, 7, '财炮连连', NULL, 1, 1, 3, 'GungPow', '', 'BTN_GungPow.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(659, 7, '城堡建筑师', NULL, 1, 1, 3, 'CastleBuilder', '', 'BTN_CastleBuilder.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(660, 7, '纯银3D', NULL, 1, 1, 3, 'SterlingSilver3D', '', 'BTN_SterlingSilver3D.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(661, 7, '刺热蝎子', NULL, 1, 1, 3, 'RubySizzlingScorpions', '', 'BTN_RubySizzlingScorpions.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(662, 7, '丛林吉姆', NULL, 1, 1, 3, 'RubyJungleJim', '', 'BTN_RubyJungleJim.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(663, 7, '丛林吉姆黄金国?', NULL, 1, 1, 3, 'JungleJim_ElDorado', '', 'BTN_JungleJim_ElDorado.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(664, 7, '丛林五霸', NULL, 1, 1, 3, 'big5', '', 'BTN_big5.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(665, 7, '丛林早餐', NULL, 1, 1, 3, 'RubyBigBreak', '', 'BTN_RubyBigBreak.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(666, 7, '大厨师', NULL, 1, 1, 3, 'BigChef', '', 'BTN_BigChef.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(667, 7, '大航海时代', NULL, 1, 1, 3, 'RubyAgeOfDiscovery', '', 'BTN_RubyAgeOfDiscovery.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(668, 7, '电音歌后', NULL, 1, 1, 3, 'ElectricDiva', '', 'BTN_ElectricDiva.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(669, 7, '东方珍兽', NULL, 1, 1, 3, 'wildorient', '', 'BTN_wildorient.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(670, 7, '东方之珠', NULL, 1, 1, 3, 'JewelsOfTheOrient', '', 'BTN_JewelsOfTheOrient.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(671, 7, '动物足球', NULL, 1, 1, 3, 'RubySoccerSafari', '', 'BTN_RubySoccerSafari.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(672, 7, '多台-银行抢匪2', NULL, 1, 1, 3, 'MSBreakDaBankAgain', '', 'BTN_MSBreakDaBankAgain.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(673, 7, '躲猫猫', NULL, 1, 1, 3, 'PeekaBoo5Reel', '', 'BTN_PeekaBoo5Reel.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(674, 7, '发财法老', NULL, 1, 1, 3, 'TootinCarMan ', '', 'BTN_TootinCarMan .png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(675, 7, '法老王的财富', NULL, 1, 1, 3, 'pharaohs', '', 'BTN_pharaohs.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(676, 7, '愤怒金猴', NULL, 1, 1, 3, 'RubyMoneyMadMonkey', '', 'BTN_RubyMoneyMadMonkey.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(677, 7, '丰满歌手', NULL, 1, 1, 3, 'FatLadySings', '', 'BTN_FatLadySings.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(678, 7, '疯狂80年代', NULL, 1, 1, 3, 'RubyCrazy80s', '', 'BTN_RubyCrazy80s.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(679, 7, '疯狂鳄鱼', NULL, 1, 1, 3, 'crocs', '', 'BTN_crocs.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(680, 7, '疯狂世界盃', NULL, 1, 1, 3, 'RubyWorldCupMania', '', 'BTN_RubyWorldCupMania.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(681, 7, '佛洛晚餐', NULL, 1, 1, 3, 'RubyFlosDiner', '', 'BTN_RubyFlosDiner.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(682, 7, '富裕人生', NULL, 1, 1, 3, '?LifeOfRiches', '', 'BTN_?LifeOfRiches.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(683, 7, '海盗天堂', NULL, 1, 1, 3, 'pirates', '', 'BTN_pirates.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(684, 7, '海派甜心', NULL, 1, 1, 3, 'RubyCutesyPie', '', 'BTN_RubyCutesyPie.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(685, 7, '寒冰精灵', NULL, 1, 1, 3, 'RubyFrostBite', '', 'BTN_RubyFrostBite.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(686, 7, '黑绵羊咩咩叫', NULL, 1, 1, 3, 'BarBarBlackSheep5Reel', '', 'BTN_BarBarBlackSheep5Reel.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(687, 7, '红利炮竹', NULL, 1, 1, 3, 'crackerjack', '', 'BTN_crackerjack.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(688, 7, '猴子的宝藏', NULL, 1, 1, 3, 'monkeys', '', 'BTN_monkeys.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(689, 7, '蝴蝶仙境', NULL, 1, 1, 3, 'ButterFlies', '', 'BTN_ButterFlies.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(690, 7, '花粉之国', NULL, 1, 1, 3, 'PollenParty', '', 'BTN_PollenParty.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(691, 7, '欢乐骰子乐', NULL, 1, 1, 3, 'joyofsix', '', 'BTN_joyofsix.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(692, 7, '欢乐小丑', NULL, 1, 1, 3, 'jesters', '', 'BTN_jesters.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(693, 7, '环游世界', NULL, 1, 1, 3, 'RubyAroundTheWorld', '', 'BTN_RubyAroundTheWorld.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(694, 7, '黄金城市', NULL, 1, 1, 3, 'RubyCityofGold', '', 'BTN_RubyCityofGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(695, 7, '黄金哥布林', NULL, 1, 1, 3, 'goblinsgold', '', 'BTN_goblinsgold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(696, 7, '黄金角斗士', NULL, 1, 1, 3, 'GladiatorsGold', '', 'BTN_GladiatorsGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(697, 7, '急冻钻石?', NULL, 1, 1, 3, 'FrozenDiamonds', '', 'BTN_FrozenDiamonds.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(698, 7, '疾风老鹰', NULL, 1, 1, 3, 'EaglesWings', '', 'BTN_EaglesWings.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(699, 7, '杰克与吉儿', NULL, 1, 1, 3, 'RRJackAndJill', '', 'BTN_RRJackAndJill.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(700, 7, '金毛骑士团', NULL, 1, 1, 3, 'JasonAndTheGoldenFleece', '', 'BTN_JasonAndTheGoldenFleece.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(701, 7, '金字塔的财富', NULL, 1, 1, 3, 'RiverofRiches', '', 'BTN_RiverofRiches.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(702, 7, '橘子摩卡', NULL, 1, 1, 3, 'RubyMochaOrange', '', 'BTN_RubyMochaOrange.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(703, 7, '开心点心', NULL, 1, 1, 3, 'WinSumDimSum', '', 'BTN_WinSumDimSum.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(704, 7, '凯蒂小屋', NULL, 1, 1, 3, 'KittyCabana', '', 'BTN_KittyCabana.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(705, 7, '酷热经典', NULL, 1, 1, 3, 'RetroReelsExtremeHeat', '', 'BTN_RetroReelsExtremeHeat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(706, 7, '快乐假日', NULL, 1, 1, 3, 'HappyHolidays', '', 'BTN_HappyHolidays.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(707, 7, '拉美西斯宝藏', NULL, 1, 1, 3, 'RamessesRiches', '', 'BTN_RamessesRiches.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(708, 7, '篮球巨星', NULL, 1, 1, 3, 'BasketballStar', '', 'BTN_BasketballStar.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(709, 7, '劳斯莱斯', NULL, 1, 1, 3, 'royce', '', 'BTN_royce.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(710, 7, '老国王柯尔', NULL, 1, 1, 3, 'RROldKingColeV90', '', 'BTN_RROldKingColeV90.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(711, 7, '老虎月亮', NULL, 1, 1, 3, 'TigerMoon', '', 'BTN_TigerMoon.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(712, 7, '老鼠霸王', NULL, 1, 1, 3, 'RubyTheRatPack', '', 'BTN_RubyTheRatPack.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(713, 7, '力量之花', NULL, 1, 1, 3, 'flowerpower', '', 'BTN_flowerpower.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(714, 7, '烈火雄鹰', NULL, 1, 1, 3, 'FireHawk', '', 'BTN_FireHawk.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(715, 7, '猎犬酒店', NULL, 1, 1, 3, 'HoundHotel', '', 'BTN_HoundHotel.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(716, 7, '龙宫', NULL, 1, 1, 3, 'houseofdragons', '', 'BTN_houseofdragons.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(717, 7, '玫瑰之戒', NULL, 1, 1, 3, 'RubyRingsnRoses', '', 'BTN_RubyRingsnRoses.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(718, 7, '梅林的百万奖金', NULL, 1, 1, 3, 'MerlinsMillions', '', 'BTN_MerlinsMillions.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(719, 7, '美式酒吧', NULL, 1, 1, 3, 'BarsAndStripesV90', '', 'BTN_BarsAndStripesV90.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(720, 7, '迷失拉斯维加斯', NULL, 1, 1, 3, 'LostVegas', '', 'BTN_LostVegas.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(721, 7, '迷走星球', NULL, 1, 1, 3, 'Galacticons', '', 'BTN_Galacticons.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(722, 7, '咩咩黑羊', NULL, 1, 1, 3, 'RubyBarBarBlackSheep', '', 'BTN_RubyBarBarBlackSheep.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37');
INSERT INTO `game_lists2` (`id`, `api_id`, `name`, `en_name`, `type`, `client_type`, `game_type`, `game_id`, `game_name`, `img_path`, `img_phone`, `img_pc`, `on_line`, `is_hot`, `sort`, `created_at`, `updated_at`) VALUES
(723, 7, '命运女神', NULL, 1, 1, 3, 'RubyFortuna', '', 'BTN_RubyFortuna.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(724, 7, '命中红星', NULL, 1, 1, 3, 'RubyBullsEye', '', 'BTN_RubyBullsEye.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(725, 7, '魔鳄大帝', NULL, 1, 1, 3, 'Crocodopolis', '', 'BTN_Crocodopolis.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(726, 7, '魔法美人鱼', NULL, 1, 1, 3, 'EnchantedMermaid', '', 'BTN_EnchantedMermaid.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(727, 7, '魔法学园', NULL, 1, 1, 3, 'RubyMagicSpell', '', 'BTN_RubyMagicSpell.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(728, 7, '魔法阵', NULL, 1, 1, 3, 'RubySpellBound', '', 'BTN_RubySpellBound.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(729, 7, '魔术酋长', NULL, 1, 1, 3, 'chiefsmagic', '', 'BTN_chiefsmagic.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(730, 7, '魔术兔', NULL, 1, 1, 3, 'rabbitinthehat', '', 'BTN_rabbitinthehat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(731, 7, '魔术箱', NULL, 1, 1, 3, 'MagicBoxes', '', 'BTN_MagicBoxes.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(732, 7, '内线交易', NULL, 1, 1, 3, 'RubyDonDeal', '', 'BTN_RubyDonDeal.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(733, 7, '宁静', NULL, 1, 1, 3, 'Serenity', '', 'BTN_Serenity.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(734, 7, '扭转世界', NULL, 1, 1, 3, 'RubyTwister', '', 'BTN_RubyTwister.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(735, 7, '女皇之心', NULL, 1, 1, 3, 'RRQueenOfHearts', '', 'BTN_RRQueenOfHearts.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(736, 7, '派对时刻', NULL, 1, 1, 3, 'partytime', '', 'BTN_partytime.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(737, 7, '泡泡矿坑', NULL, 1, 1, 3, 'BubbleBonanza', '', 'BTN_BubbleBonanza.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(738, 7, '漂亮猫咪', NULL, 1, 1, 3, 'PrettyKitty', '', 'BTN_PrettyKitty.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(739, 7, '七海的主权', NULL, 1, 1, 3, 'SovereignOfTheSevenSeas', '', 'BTN_SovereignOfTheSevenSeas.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(740, 7, '七武士', NULL, 1, 1, 3, 'RubySamuraiSevens', '', 'BTN_RubySamuraiSevens.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(741, 7, '企鹅家族', NULL, 1, 1, 3, 'PenguinSplash', '', 'BTN_PenguinSplash.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(742, 7, '千岛湖', NULL, 1, 1, 3, 'RubyThousandIslands', '', 'BTN_RubyThousandIslands.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(743, 7, '乔治与柏志', NULL, 1, 1, 3, 'RRGeorgiePorgie', '', 'BTN_RRGeorgiePorgie.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(744, 7, '青龙出海', NULL, 1, 1, 3, 'EmperorOfTheSea', '', 'BTN_EmperorOfTheSea.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(745, 7, '酋长的财富', NULL, 1, 1, 3, 'RubyChiefsFortune', '', 'BTN_RubyChiefsFortune.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(746, 7, '饶舌礼物', NULL, 1, 1, 3, 'GiftRap', '', 'BTN_GiftRap.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(747, 7, '忍者法宝', NULL, 1, 1, 3, 'ninjamagic', '', 'BTN_ninjamagic.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(748, 7, '森林之王-蛇和梯子', NULL, 1, 1, 3, 'RubyBigKahunaSnakesAndLadders', '', 'BTN_RubyBigKahunaSnakesAndLadders.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(749, 7, '神秘的百慕达', NULL, 1, 1, 3, 'TheBermudaMysteries', '', 'BTN_TheBermudaMysteries.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(750, 7, '神秘的诱惑', NULL, 1, 1, 3, 'magiccharms', '', 'BTN_magiccharms.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(751, 7, '神秘女枪手', NULL, 1, 1, 3, 'Pistoleras', '', 'BTN_Pistoleras.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(752, 7, '失落的国度', NULL, 1, 1, 3, 'ForsakenKingdom', '', 'BTN_ForsakenKingdom.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(753, 7, '暑假时光', NULL, 1, 1, 3, 'RubySummertime', '', 'BTN_RubySummertime.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(754, 7, '双倍剂量', NULL, 1, 1, 3, 'RubyDoubleDose', '', 'BTN_RubyDoubleDose.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(755, 7, '水果vs糖果', NULL, 1, 1, 3, 'FruitVSCandy', '', 'BTN_FruitVSCandy.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(756, 7, '水果大战', NULL, 1, 1, 3, 'RubyFrootLoot', '', 'BTN_RubyFrootLoot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(757, 7, '水果沙拉', NULL, 1, 1, 3, 'RubyFruitSalad', '', 'BTN_RubyFruitSalad.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(758, 7, '松鼠幼稚园', NULL, 1, 1, 3, 'RubyCabinFever', '', 'BTN_RubyCabinFever.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(759, 7, '锁子甲', NULL, 1, 1, 3, 'Chainmailnew', '', 'BTN_Chainmailnew.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(760, 7, '太阳神之忒伊亚', NULL, 1, 1, 3, 'TitansoftheSunTheia', '', 'BTN_TitansoftheSunTheia.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(761, 7, '太阳征程?', NULL, 1, 1, 3, 'suntide', '', 'BTN_suntide.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(762, 7, '泰山传奇', NULL, 1, 1, 3, 'Tarzan', '', 'BTN_Tarzan.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(763, 7, '泰坦帝国', NULL, 1, 1, 3, 'StashoftheTitans', '', 'BTN_StashoftheTitans.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(764, 7, '天王星', NULL, 1, 1, 3, 'RubyAstronomical', '', 'BTN_RubyAstronomical.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(765, 7, '外星大袭击', NULL, 1, 1, 3, 'MaxDamageSlot', '', 'BTN_MaxDamageSlot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(766, 7, '万兽之王', NULL, 1, 1, 3, 'lions', '', 'BTN_lions.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(767, 7, '网球冠军', NULL, 1, 1, 3, 'RubyCentreCourt', '', 'BTN_RubyCentreCourt.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(768, 7, '舞动佛罗里达', NULL, 1, 1, 3, 'RubyFloriditaFandango', '', 'BTN_RubyFloriditaFandango.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(769, 7, '舞龙', NULL, 1, 1, 3, 'dragondance', '', 'BTN_dragondance.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(770, 7, '西部边境', NULL, 1, 1, 3, 'westernfrontier', '', 'BTN_westernfrontier.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(771, 7, '侠盗猎车手', NULL, 1, 1, 3, '5ReelDrive', '', 'BTN_5ReelDrive.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(772, 7, '现金船长', NULL, 1, 1, 3, 'RubyCaptainCash', '', 'BTN_RubyCaptainCash.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(773, 7, '现金之王', NULL, 1, 1, 3, 'KingsOfCash', '', 'BTN_KingsOfCash.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(774, 7, '小丑8000', NULL, 1, 1, 3, 'RubyJoker8000', '', 'BTN_RubyJoker8000.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(775, 7, '小丑杰克', NULL, 1, 1, 3, 'RubyJackintheBox', '', 'BTN_RubyJackintheBox.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(776, 7, '星尘', NULL, 1, 1, 3, 'StarDust', '', 'BTN_StarDust.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(777, 7, '幸运鲍比', NULL, 1, 1, 3, 'Bobby7s', '', 'BTN_Bobby7s.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(778, 7, '幸运海洋', NULL, 1, 1, 3, 'oceans', '', 'BTN_oceans.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(779, 7, '幸运连线', NULL, 1, 1, 3, 'HighFive', '', 'BTN_HighFive.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(780, 7, '幸运龙宝贝', NULL, 1, 1, 3, 'Dragonz', '', 'BTN_Dragonz.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(781, 7, '幸运魔术师', NULL, 1, 1, 3, 'LuckyCharmer', '', 'BTN_LuckyCharmer.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(782, 7, '幸运双星', NULL, 1, 1, 3, 'luckytwins', '', 'BTN_luckytwins.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(783, 7, '幸运小妖', NULL, 1, 1, 3, 'LuckyLeprechaunsLoot', '', 'BTN_LuckyLeprechaunsLoot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(784, 7, '幸运妖精', NULL, 1, 1, 3, 'LuckyLeprechaun', '', 'BTN_LuckyLeprechaun.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(785, 7, '幸运鑽石', NULL, 1, 1, 3, 'RubyDiamond7s', '', 'BTN_RubyDiamond7s.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(786, 7, '轩辕帝传', NULL, 1, 1, 3, 'Huangdi_TYE', '', 'BTN_Huangdi_TYE.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(787, 7, '旋转大战', NULL, 1, 1, 3, 'reelspinner', '', 'BTN_reelspinner.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(788, 7, '寻找天堂', NULL, 1, 1, 3, 'ParadiseFound ', '', 'BTN_ParadiseFound .png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(789, 7, '妖精之环', NULL, 1, 1, 3, 'RubyFairyRing', '', 'BTN_RubyFairyRing.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(790, 7, '伊西斯', NULL, 1, 1, 3, 'Isis', '', 'BTN_Isis.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(791, 7, '音速战机', NULL, 1, 1, 3, 'RubySonicBoom', '', 'BTN_RubySonicBoom.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(792, 7, '银行抢匪2', NULL, 1, 1, 3, 'RubyBreakDaBankAgainV90', '', 'BTN_RubyBreakDaBankAgainV90.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(793, 7, '樱桃红', NULL, 1, 1, 3, 'CherryRed', '', 'BTN_CherryRed.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(794, 7, '优质房仲', NULL, 1, 1, 3, 'RubyPrimePropertyV90', '', 'BTN_RubyPrimePropertyV90.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(795, 7, '游乐园', NULL, 1, 1, 3, 'RubyFunHouse', '', 'BTN_RubyFunHouse.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(796, 7, '增强马力', NULL, 1, 1, 3, 'RubySupeItUp', '', 'BTN_RubySupeItUp.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(797, 7, '正中红心', NULL, 1, 1, 3, 'BullseyeGameshow', '', 'BTN_BullseyeGameshow.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(798, 7, '重金属', NULL, 1, 1, 3, 'RubyHeavyMetal', '', 'BTN_RubyHeavyMetal.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(799, 7, '侏儸纪彩金', NULL, 1, 1, 3, 'jurassicjackpot', '', 'BTN_jurassicjackpot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(800, 7, '侏儸纪彩金 (超级)', NULL, 1, 1, 3, 'jurassicbr', '', 'BTN_jurassicbr.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(801, 7, '侏儸纪公园', NULL, 1, 1, 3, 'jurassicpark', '', 'BTN_jurassicpark.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(802, 7, '珠宝大盗', NULL, 1, 1, 3, 'RubyJewelThief', '', 'BTN_RubyJewelThief.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(803, 7, '逐鹿三国', NULL, 1, 1, 3, '3empires', '', 'BTN_3empires.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(804, 7, '抓鬼躲猫猫', NULL, 1, 1, 3, 'RubyPeekaBoo', '', 'BTN_RubyPeekaBoo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(805, 7, '自由精神-财富之轮', NULL, 1, 1, 3, 'RubyFreeSpirit', '', 'BTN_RubyFreeSpirit.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(806, 7, '鑽石交易', NULL, 1, 1, 3, 'RubyDiamondDeal', '', 'BTN_RubyDiamondDeal.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(807, 7, '3张牌扑克', NULL, 1, 1, 3, '3CardPoker', '', 'BTN_3CardPoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(808, 7, '3张牌扑克(多组牌)', NULL, 1, 1, 3, 'MH3CardPokerGold', '', 'BTN_MH3CardPokerGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(809, 7, '百家乐', NULL, 1, 1, 3, 'Baccarat', '', 'BTN_Baccarat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(810, 7, '德洲扑克(多组牌)', NULL, 1, 1, 3, 'RubyMHHoldemHigh', '', 'BTN_RubyMHHoldemHigh.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(811, 7, '法式轮盘', NULL, 1, 1, 3, 'FrenchRoulette', '', 'BTN_FrenchRoulette.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(812, 7, '高限额百家乐', NULL, 1, 1, 3, 'HighLimitBaccarat', '', 'BTN_HighLimitBaccarat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(813, 7, '红狗', NULL, 1, 1, 3, 'RedDog', '', 'BTN_RedDog.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(814, 7, '猴子基诺', NULL, 1, 1, 3, 'MonkeyKeno', '', 'BTN_MonkeyKeno.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(815, 7, '花旗骰', NULL, 1, 1, 3, 'Craps', '', 'BTN_Craps.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(816, 7, '换牌德扑', NULL, 1, 1, 3, 'RubyTriplePocketPoker', '', 'BTN_RubyTriplePocketPoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(817, 7, '皇家赛马', NULL, 1, 1, 3, 'RubyRoyalDerby', '', 'BTN_RubyRoyalDerby.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(818, 7, '黄金版3张牌扑克', NULL, 1, 1, 3, '3CardPokerGold', '', 'BTN_3CardPokerGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(819, 7, '黄金版百家乐', NULL, 1, 1, 3, 'BaccaratGold', '', 'BTN_BaccaratGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(820, 7, '黄金版複式轮盘', NULL, 1, 1, 3, 'MultiWheelRouletteGold', '', 'BTN_MultiWheelRouletteGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(821, 7, '加勒比海扑克', NULL, 1, 1, 3, 'Cyberstud', '', 'BTN_Cyberstud.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(822, 7, '快乐彩', NULL, 1, 1, 3, 'Keno', '', 'BTN_Keno.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(823, 7, '玛雅宾果', NULL, 1, 1, 3, 'mayanbingo', '', 'BTN_mayanbingo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(824, 7, '美式轮盘', NULL, 1, 1, 3, 'AmericanRoulette', '', 'BTN_AmericanRoulette.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(825, 7, '欧洲21点', NULL, 1, 1, 3, 'Roulette', '', 'BTN_Roulette.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(826, 7, '扑克游戏', NULL, 1, 1, 3, 'FlipCard', '', 'BTN_FlipCard.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(827, 7, '扑克追击', NULL, 1, 1, 3, 'PokerPursuit', '', 'BTN_PokerPursuit.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(828, 7, '三张扑克(多组牌)', NULL, 1, 1, 3, 'HighSpeedPoker', '', 'BTN_HighSpeedPoker.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(829, 7, '骰宝', NULL, 1, 1, 3, 'Sicbo', '', 'BTN_Sicbo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(830, 7, '完美欧洲21点', NULL, 1, 1, 3, 'RubyMHPerfectPairs', '', 'BTN_RubyMHPerfectPairs.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(831, 7, '义大利轮盘', NULL, 1, 1, 3, 'Spingo', '', 'BTN_Spingo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(832, 7, '越位罚球', NULL, 1, 1, 3, 'RubyOffsideAndSeek', '', 'BTN_RubyOffsideAndSeek.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(833, 7, '总统轮盘', NULL, 1, 1, 3, 'RubyPremierRoulette', '', 'BTN_RubyPremierRoulette.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(834, 7, '鑽石总统轮盘', NULL, 1, 1, 3, 'PremierRouletteDE', '', 'BTN_PremierRouletteDE.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(835, 7, '阿嬷赛车', NULL, 1, 1, 3, 'RubyGrannyPrix', '', 'BTN_RubyGrannyPrix.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(836, 7, '保龄球', NULL, 1, 1, 3, 'RubyBowledOver', '', 'BTN_RubyBowledOver.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(837, 7, '超级零英雄', NULL, 1, 1, 3, 'RubySuperZeroes', '', 'BTN_RubySuperZeroes.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(838, 7, '打地鼠', NULL, 1, 1, 3, 'RubyWhackAJackpot', '', 'BTN_RubyWhackAJackpot.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(839, 7, '地穴探索', NULL, 1, 1, 3, 'RubyCryptCrusade', '', 'BTN_RubyCryptCrusade.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(840, 7, '放克篮球', NULL, 1, 1, 3, 'RubySlamFunk', '', 'BTN_RubySlamFunk.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(841, 7, '刮刮乐玩家', NULL, 1, 1, 3, 'IWCardSelector', '', 'BTN_IWCardSelector.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(842, 7, '刮刮乐玩家', NULL, 1, 1, 3, 'IWCardSelector', '', 'BTN_IWCardSelector.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(843, 7, '怪怪小精灵', NULL, 1, 1, 3, 'RubyHairyFairies', '', 'BTN_RubyHairyFairies.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(844, 7, '好运泡沫', NULL, 1, 1, 3, 'RubyFoamyFortunes', '', 'BTN_RubyFoamyFortunes.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(845, 7, '黄金地穴探索', NULL, 1, 1, 3, 'RubyCryptCrusadeGold', '', 'BTN_RubyCryptCrusadeGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(846, 7, '黄金强劫西部银行', NULL, 1, 1, 3, 'RubySixShooterLooterGold', '', 'BTN_RubySixShooterLooterGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(847, 7, '黄金兔子逃脱', NULL, 1, 1, 3, 'RubyBunnyBoilerGold', '', 'BTN_RubyBunnyBoilerGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(848, 7, '黄金外星探险', NULL, 1, 1, 3, 'RubySpaceEvaderGold', '', 'BTN_RubySpaceEvaderGold.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(849, 7, '急冻冰块', NULL, 1, 1, 3, 'RubyFreezingFuzzballs', '', 'BTN_RubyFreezingFuzzballs.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(850, 7, '金黄怪物足球', NULL, 1, 1, 3, 'RubyGoldenGhouls', '', 'BTN_RubyGoldenGhouls.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(851, 7, '恐怖麵包', NULL, 1, 1, 3, 'RubyDawnOfTheBread', '', 'BTN_RubyDawnOfTheBread.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(852, 7, '掠夺海洋', NULL, 1, 1, 3, 'RubyPlunderTheSea', '', 'BTN_RubyPlunderTheSea.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(853, 7, '孟买水晶球', NULL, 1, 1, 3, 'RubyMumbaiMagic', '', 'BTN_RubyMumbaiMagic.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(854, 7, '啤酒节', NULL, 1, 1, 3, 'RubyBeerFest', '', 'BTN_RubyBeerFest.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(855, 7, '强劫西部银行', NULL, 1, 1, 3, 'RubySixShooterLooter', '', 'BTN_RubySixShooterLooter.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(856, 7, '兔子逃脱', NULL, 1, 1, 3, 'RubyBunnyBoiler', '', 'BTN_RubyBunnyBoiler.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(857, 7, '外星探险', NULL, 1, 1, 3, 'RubySpaceEvader', '', 'BTN_RubySpaceEvader.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(858, 7, '网球刮刮乐', NULL, 1, 1, 3, 'RubyGameSetAndScratch', '', 'BTN_RubyGameSetAndScratch.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(859, 7, '财富轮盘', NULL, 1, 1, 3, 'RubyWheelOfRiches', '', 'BTN_RubyWheelOfRiches.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(860, 7, '彩色蜂窝', NULL, 1, 1, 3, 'Hexaline', '', 'BTN_Hexaline.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(861, 7, '彩色三角', NULL, 1, 1, 3, 'Triangulation', '', 'BTN_Triangulation.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(862, 7, '超级宾果', NULL, 1, 1, 3, 'RubySuperBonusBingo', '', 'BTN_RubySuperBonusBingo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(863, 7, '冲浪度假', NULL, 1, 1, 3, 'RubyIWBigBreak', '', 'BTN_RubyIWBigBreak.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(864, 7, '冲浪海龟', NULL, 1, 1, 3, 'RubyTurtleyAwesome', '', 'BTN_RubyTurtleyAwesome.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(865, 7, '弹道宾果', NULL, 1, 1, 3, 'RubyBallisticBingo', '', 'BTN_RubyBallisticBingo.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(866, 7, '动物冠军', NULL, 1, 1, 3, 'RubyWildChampions', '', 'BTN_RubyWildChampions.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(867, 7, '法老王的宝物', NULL, 1, 1, 3, 'RubyPharaohsGems', '', 'BTN_RubyPharaohsGems.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(868, 7, '刮刮乐', NULL, 1, 1, 3, 'Scratch', '', 'BTN_Scratch.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(869, 7, '火山弹珠台', NULL, 1, 1, 3, 'RubyKashatoa', '', 'BTN_RubyKashatoa.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(870, 7, '剪刀石头布', NULL, 1, 1, 3, 'RubyHandToHandCombat', '', 'BTN_RubyHandToHandCombat.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(871, 7, '晋级扑克', NULL, 1, 1, 3, 'RubyCardClimber', '', 'BTN_RubyCardClimber.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(872, 7, '昆虫派对', NULL, 1, 1, 3, 'RubyIWCashapillar', '', 'BTN_RubyIWCashapillar.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(873, 7, '三转轮', NULL, 1, 1, 3, 'RubyThreeWheeler', '', 'BTN_RubyThreeWheeler.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(874, 7, '杀手俱乐部', NULL, 1, 1, 3, 'RubyKillerClubs', '', 'BTN_RubyKillerClubs.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(875, 7, '圣龙赐福', NULL, 1, 1, 3, 'RubyDragonsFortune', '', 'BTN_RubyDragonsFortune.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(876, 7, '万圣节派对', NULL, 1, 1, 3, 'RubyIWHalloweenies', '', 'BTN_RubyIWHalloweenies.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(877, 7, '幸运数字', NULL, 1, 1, 3, 'RubyLuckyNumbers', '', 'BTN_RubyLuckyNumbers.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(878, 7, '致富宾果', NULL, 1, 1, 3, 'RubyBingoBonanza', '', 'BTN_RubyBingoBonanza.png', NULL, NULL, 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(879, 24, '千炮捕鱼', '', 1, 1, 3, '50', '', 'Game_20171124181821.jpg', '', '', 0, 0, 100, '2017-09-20 15:15:37', '2017-09-20 15:15:37'),
(880, 24, '森林舞会', NULL, 1, 1, 3, '40', NULL, 'Game_20171125182731.jpg', NULL, NULL, 0, 0, 100, '2018-03-27 13:32:28', '2018-03-28 13:32:33'),
(881, 24, '水浒传', NULL, 1, 1, 3, '110', NULL, 'Game_20171125182810.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(882, 24, '百家乐', NULL, 1, 1, 3, '141', NULL, 'Game_20171125182855.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(883, 24, '超级斗地主', NULL, 1, 1, 3, '20', NULL, 'Game_20171125182933.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(884, 24, '太极', NULL, 1, 1, 3, '140', NULL, 'Game_20171125183029.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(885, 24, '舞狮报喜', NULL, 1, 1, 3, '144', NULL, 'Game_20171125183112.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(886, 24, '五龙争霸', NULL, 1, 1, 3, '111', NULL, 'Game_20171125183213.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(887, 24, '天龙虎地', NULL, 1, 1, 3, '114', NULL, 'Game_20171125183258.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(888, 24, '百乐牛牛', NULL, 1, 1, 3, '139', NULL, 'Game_20171125183346.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(889, 24, '水浒英雄', NULL, 1, 1, 3, '112', NULL, 'Game_20171125183457.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(890, 24, '皇家轮盘', NULL, 1, 1, 3, '138', NULL, 'Game_20171125183536.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(891, 24, '洪福齐天', NULL, 1, 1, 3, '120', NULL, 'Game_20171125183615.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(892, 24, '好运5扑克', NULL, 1, 1, 3, '22', NULL, 'Game_20171125183648.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(893, 24, '黄金777', NULL, 1, 1, 3, '115', NULL, 'Game_20171125183744.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(894, 24, '魔豆', NULL, 1, 1, 3, '113', NULL, 'Game_20171125183912.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(895, 24, '经典水果机', NULL, 1, 1, 3, '21', NULL, 'Game_20171125183948.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(896, 24, 'HUGA', NULL, 1, 1, 3, '125', NULL, 'Game_20171125184100.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(897, 24, '明星97', NULL, 1, 1, 3, '117', NULL, 'Game_20171125184204.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(898, 20, '节庆假日', NULL, 1, 1, 3, '327', 'holidayseason', '1.JPG', NULL, NULL, 0, 0, 100, NULL, NULL),
(899, 23, '新版虎机老爷', NULL, 1, 1, 3, '334', NULL, '1.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(900, 32, '捕鱼多福-奖池版', NULL, 1, 1, 3, 'sw_fufish-jp', NULL, '1.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(901, 20, '七宗罪', NULL, 1, 1, 3, '321', 'sevensins', '2.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(902, 20, '火焰小丑', NULL, 1, 1, 3, '307', 'firejoker', '3.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(903, 20, '超级翻转', NULL, 1, 1, 3, '295', 'superflip', '4.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(904, 20, '北部荒野', NULL, 1, 1, 3, '294', 'wildnorth', '5.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(905, 20, '酷炫一族', NULL, 1, 1, 3, '291', 'pimped', '6.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(906, 20, '黄金传奇', NULL, 1, 1, 3, '290', 'goldenlegend', '7.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(907, 20, '五彩宝石', NULL, 1, 1, 3, '286', 'gemix', '8.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(908, 20, '黄金入场卷', NULL, 1, 1, 3, '285', 'goldenticket', '9.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(910, 20, '神秘小丑', NULL, 1, 1, 3, '283', 'mysteryjoke', '10.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(909, 20, '能量小精灵', NULL, 1, 1, 3, '262', 'energoonz', '11.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(911, 20, '巨魔猎人', NULL, 1, 1, 3, '254', 'trollhunters', '12.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(912, 20, '珠宝盒', NULL, 1, 1, 3, '242', 'jewelbox', '13.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(913, 20, '迷你百家乐', NULL, 1, 1, 3, '11', 'minibaccarat', '14.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(914, 20, '德赛斯小丑', NULL, 1, 1, 3, '275', 'deucesandjoker', '15.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(915, 20, '双倍奖金', NULL, 1, 1, 3, '274', 'doublebonus', '16.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(916, 20, '小丑扑克', NULL, 1, 1, 3, '271', 'jokerpoker', '17.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(917, 20, '德赛斯野生', NULL, 1, 1, 3, '270', 'deuceswild', '18.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(918, 20, '杰克高手', NULL, 1, 1, 3, '269', 'jacksorbetter', '19.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(919, 20, '黑桃A', NULL, 1, 1, 3, '99', 'aceofspades', '20.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(920, 23, '钓鱼者', NULL, 1, 1, 3, '747', NULL, '2.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(921, 23, '魔术店', NULL, 1, 1, 3, '751', NULL, '3.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(922, 23, '烈火金刚', NULL, 1, 1, 3, '755', NULL, '4.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(923, 23, 'Fa-Fa双胞胎', NULL, 1, 1, 3, '692', NULL, '5.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(924, 23, '罪恶之夜', NULL, 1, 1, 3, '791', NULL, '6.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(925, 23, '卡威威小猫', NULL, 1, 1, 3, '727', NULL, '7.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(926, 23, '好88', NULL, 1, 1, 3, '700', NULL, '8.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(927, 23, '魅力和三叶草', NULL, 1, 1, 3, '691', NULL, '9.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(928, 23, '鸟类', NULL, 1, 1, 3, '654', NULL, '10.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(929, 23, '弗兰肯斯洛特的怪物', NULL, 1, 1, 3, '647', NULL, '11.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(930, 23, '四个季节', NULL, 1, 1, 3, '637', NULL, '12.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(931, 23, '一个圣诞颂歌', NULL, 1, 1, 3, '619', NULL, '13.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(932, 23, '阿尔克托尔塔', NULL, 1, 1, 1, '553', NULL, '14.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(933, 23, '黑金', NULL, 1, 1, 1, '256', NULL, '15.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(934, 23, '小旅游', NULL, 1, 1, 1, '597', NULL, '16.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(935, 23, '宝箱', NULL, 1, 1, 1, '158', NULL, '17.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(936, 23, '妈妈咪呀', NULL, 1, 1, 1, '238', NULL, '18.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(937, 23, '周末在拉斯维加斯', NULL, 1, 1, 1, '590', NULL, '19.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(938, 23, '大魅力生活', NULL, 1, 1, 1, '554', NULL, '20.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(939, 23, '木偶奇遇记', NULL, 1, 1, 1, '520', NULL, '21.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(940, 23, '活动地平线', NULL, 1, 1, 1, '548', NULL, '22.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(941, 23, '巨型宝石', NULL, 1, 1, 1, '534', NULL, '23.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(942, 23, '大亨PLUS', NULL, 1, 1, 1, '471', NULL, '24.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(943, 23, 'WhoSpunIt', NULL, 1, 1, 1, '490', NULL, '25.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(944, 23, '小狗爱加PLUS', NULL, 1, 1, 1, '309', NULL, '26.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(945, 23, '好奇机PLUS', NULL, 1, 1, 1, '461', NULL, '27.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(946, 23, '博士和海德先生', NULL, 1, 1, 1, '500', NULL, '28.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(947, 23, '水果禅', NULL, 1, 1, 1, '512', NULL, '29.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(948, 23, '吉普赛玫瑰', NULL, 1, 1, 1, '478', NULL, '30.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(949, 32, '传奇巨龙', NULL, 1, 1, 1, 'sw_ld', NULL, '2.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(950, 32, '黄金花园', NULL, 1, 1, 1, 'sw_ggdn', NULL, '3.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(951, 32, '老夫子', NULL, 1, 1, 1, 'sw_omqjp', NULL, '4.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(952, 32, '龙鲤传奇', NULL, 1, 1, 1, 'sw_lodk', NULL, '5.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(953, 32, '崛起的武士', NULL, 1, 1, 1, 'sw_rs', NULL, '6.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(954, 32, '生财有道', NULL, 1, 1, 1, 'sw_scyd', NULL, '7.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(955, 32, '金龟发发发', NULL, 1, 1, 1, 'sw_888t', NULL, '8.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(956, 32, '心连心', NULL, 1, 1, 1, 'sw_h2h', NULL, '9.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(957, 32, '天上凤凰', NULL, 1, 1, 1, 'sw_hp', NULL, '10.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(958, 32, '吉祥招财猫', NULL, 1, 1, 1, 'sw_mf', NULL, '11.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(959, 32, '闪电之神', NULL, 1, 1, 1, 'sw_gol', NULL, '12.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(960, 32, '虎虎生财', NULL, 1, 1, 1, 'sw_tc', NULL, '13.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(961, 32, '欲火凤凰', NULL, 1, 1, 1, 'sw_fp', NULL, '14.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(962, 32, '猴子先生', NULL, 1, 1, 1, 'sw_mrmnky', NULL, '15.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(963, 32, '美人鱼', NULL, 1, 1, 1, 'sw_mer', NULL, '16.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(964, 32, '亚马逊美人', NULL, 1, 1, 1, 'sw_al', NULL, '17.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(965, 32, '捕鱼多福', NULL, 1, 1, 1, 'sw_fufish_intw', NULL, '18.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(966, 32, '钻石交响曲', NULL, 1, 1, 1, 'sw_sod', NULL, '19.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(967, 32, '冰火女王', NULL, 1, 1, 1, 'sw_qoiaf', NULL, '20.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(968, 32, '熊猫厨神', NULL, 1, 1, 1, 'sw_pc', NULL, '21.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(969, 32, '神龙宝石', NULL, 1, 1, 1, 'sw_slbs', NULL, '22.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(970, 32, '新年财富', NULL, 1, 1, 1, 'sw_nyf', NULL, '23.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(971, 32, '双倍奖金', NULL, 1, 1, 1, 'sw_db', NULL, '24.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(972, 32, '快乐海豚', NULL, 1, 1, 1, 'sw_dd', NULL, '25.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(973, 32, '拉美西斯财富', NULL, 1, 1, 1, 'sw_rf', NULL, '26.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(974, 32, '疯狂重转', NULL, 1, 1, 1, 'sw_rm', NULL, '27.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(975, 32, '冰雪女王', NULL, 1, 1, 1, 'sw_sq', NULL, '28.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(976, 32, '大黑赐福', NULL, 1, 1, 1, 'sw_dhcf', NULL, '29.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(977, 32, '从林翻倍赢', NULL, 1, 1, 1, 'sw_dj', NULL, '30.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(978, 32, '水果财富', NULL, 1, 1, 1, 'sw_sgcf', NULL, '31.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(979, 32, '猩猩月亮', NULL, 1, 1, 1, 'sw_gm', NULL, '32.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(980, 32, '迎财神', NULL, 1, 1, 1, 'sw_ycs', NULL, '33.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(981, 32, '三福', NULL, 1, 1, 1, 'sw_sf', NULL, '34.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(982, 32, '福宝宝', NULL, 1, 1, 1, 'sw_fbb', NULL, '35.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(983, 34, '奔跑吧!猴子', NULL, 1, 1, 1, '1457711002', NULL, 'pr-go!-monkey.jpg', NULL, NULL, 0, 0, 100, NULL, NULL),
(984, 35, '传奇海神', NULL, 1, 1, 1, 'CQ0115', NULL, NULL, NULL, NULL, 0, 0, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_record`
--

CREATE TABLE `game_record` (
  `id` int(10) UNSIGNED NOT NULL,
  `rowid` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `billNo` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '注单流水号',
  `api_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '接口平台 如 AG MG',
  `playerName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '玩家各平台账号',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '玩家账号',
  `member_id` int(11) NOT NULL COMMENT '用户 ID',
  `agentCode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代理商编号',
  `gameCode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏局号',
  `netAmount` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '玩家输赢额度',
  `betTime` timestamp NULL DEFAULT NULL COMMENT '投注时间',
  `gameType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏类型',
  `betAmount` decimal(16,2) DEFAULT '0.00' COMMENT '投注金额',
  `validBetAmount` decimal(16,2) DEFAULT '0.00' COMMENT '有效投注额度',
  `flag` int(11) DEFAULT '0' COMMENT '结算状态',
  `playType` int(11) DEFAULT '0' COMMENT '游戏玩法',
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货币类型',
  `tableCode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '桌子编号',
  `loginIP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '玩家IP',
  `recalcuTime` timestamp NULL DEFAULT NULL COMMENT '注单重新派彩时间',
  `platformId` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台编号',
  `platformType` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台类型',
  `stringex` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品附注(通常为空)',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '返回信息',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyFlag` int(11) DEFAULT '0' COMMENT '更新标志',
  `filePath` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件路径',
  `prefix` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '站点前缀',
  `result` text COLLATE utf8mb4_unicode_ci COMMENT '返回信息',
  `is_fs_handle` tinyint(1) DEFAULT '0',
  `reAmount` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '备用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hongbao_lists`
--

CREATE TABLE `hongbao_lists` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `money` decimal(16,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hongbao_lists`
--

INSERT INTO `hongbao_lists` (`id`, `member_id`, `name`, `money`, `created_at`, `updated_at`) VALUES
(17, 183, 'luogang530', '2318.00', '2018-01-28 00:27:20', '2018-01-28 00:27:20'),
(18, 183, 'luogang530', '4478.00', '2018-01-28 00:27:29', '2018-01-28 00:27:29'),
(19, 183, 'luogang530', '17074.00', '2018-01-28 00:27:32', '2018-01-28 00:27:32'),
(20, 183, 'luogang530', '11582.00', '2018-01-28 00:27:35', '2018-01-28 00:27:35'),
(21, 183, 'luogang530', '9463.00', '2018-01-28 00:27:38', '2018-01-28 00:27:38'),
(22, 182, 'luogang520', '2352.00', '2018-01-28 15:47:04', '2018-01-28 15:47:04'),
(23, 182, 'luogang520', '4951.00', '2018-01-28 15:47:06', '2018-01-28 15:47:06'),
(24, 182, 'luogang520', '2074.00', '2018-01-28 15:47:11', '2018-01-28 15:47:11'),
(25, 182, 'luogang520', '4590.00', '2018-01-28 15:47:15', '2018-01-28 15:47:15'),
(26, 182, 'luogang520', '3688.00', '2018-01-28 15:47:18', '2018-01-28 15:47:18'),
(27, 182, 'luogang520', '1399.00', '2018-01-28 15:47:19', '2018-01-28 15:47:19'),
(28, 182, 'luogang520', '3060.00', '2018-01-28 15:47:22', '2018-01-28 15:47:22'),
(29, 182, 'luogang520', '3283.00', '2018-01-28 15:47:24', '2018-01-28 15:47:24'),
(30, 203, 'luogang1', '190.00', '2018-01-28 16:02:46', '2018-01-28 16:02:46'),
(31, 203, 'luogang1', '146.00', '2018-01-28 16:02:54', '2018-01-28 16:02:54'),
(32, 203, 'luogang1', '566.00', '2018-01-28 16:04:39', '2018-01-28 16:04:39'),
(33, 203, 'luogang1', '574.00', '2018-01-28 16:04:42', '2018-01-28 16:04:42'),
(34, 203, 'luogang1', '926.00', '2018-01-28 16:04:49', '2018-01-28 16:04:49'),
(35, 203, 'luogang1', '1093.00', '2018-01-28 16:04:54', '2018-01-28 16:04:54'),
(36, 203, 'luogang1', '868.00', '2018-01-28 16:04:56', '2018-01-28 16:04:56'),
(37, 203, 'luogang1', '820.00', '2018-01-28 16:04:58', '2018-01-28 16:04:58'),
(41, 204, 'luogang2', '557.00', '2018-01-28 16:12:08', '2018-01-28 16:12:08'),
(42, 204, 'luogang2', '880.00', '2018-01-28 16:12:15', '2018-01-28 16:12:15'),
(43, 204, 'luogang2', '895.00', '2018-01-28 16:12:24', '2018-01-28 16:12:24'),
(44, 204, 'luogang2', '982.00', '2018-01-28 16:12:26', '2018-01-28 16:12:26'),
(45, 204, 'luogang2', '571.00', '2018-01-28 16:12:28', '2018-01-28 16:12:28'),
(46, 191, 'cn518519', '15.00', '2018-01-30 23:03:44', '2018-01-30 23:03:44'),
(47, 191, 'cn518519', '15.00', '2018-01-30 23:03:47', '2018-01-30 23:03:47'),
(48, 191, 'cn518519', '15.00', '2018-01-30 23:03:48', '2018-01-30 23:03:48'),
(49, 189, 's19940228', '5.00', '2018-01-31 12:41:45', '2018-01-31 12:41:45'),
(50, 189, 's19940228', '3.00', '2018-01-31 12:42:35', '2018-01-31 12:42:35'),
(51, 231, 'dd8844111', '17.00', '2018-04-28 16:29:06', '2018-04-28 16:29:06'),
(53, 241, 'a12345', '20.00', '2018-07-29 13:46:54', '2018-07-29 13:46:54'),
(54, 241, 'a12345', '13.00', '2018-07-29 13:46:58', '2018-07-29 13:46:58'),
(55, 241, 'a12345', '10.00', '2018-07-29 13:47:00', '2018-07-29 13:47:00'),
(56, 242, 'b12345', '7.00', '2018-08-01 23:40:53', '2018-08-01 23:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `hongbao_settings`
--

CREATE TABLE `hongbao_settings` (
  `id` int(11) NOT NULL,
  `min_num` int(11) DEFAULT '0' COMMENT '最小充值金额',
  `max_num` int(11) DEFAULT '0' COMMENT '最大充值金额',
  `times` int(3) DEFAULT '1' COMMENT '抢红包次数',
  `min_per` int(3) DEFAULT '0' COMMENT '最小红包比例',
  `max_per` int(3) DEFAULT '0' COMMENT '最大红包比例',
  `sort` int(3) DEFAULT '1' COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hongbao_settings`
--

INSERT INTO `hongbao_settings` (`id`, `min_num`, `max_num`, `times`, `min_per`, `max_per`, `sort`, `created_at`, `updated_at`) VALUES
(4, 100, 500, 2, 1, 5, 1, '2017-12-18 16:10:30', '2018-07-26 15:58:37'),
(2, 501, 5000, 3, 1, 4, 2, '2017-12-18 15:04:39', '2018-07-26 16:00:51'),
(5, 5001, 50000, 4, 1, 3, 3, '2017-12-18 21:20:23', '2018-07-28 19:02:08'),
(6, 50001, 1000000, 5, 1, 2, 4, '2017-12-19 11:37:56', '2018-07-28 19:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `real_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '真实姓名',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `qq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'QQ',
  `weixin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `original_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始密码',
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0男1女',
  `is_daili` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1为代理',
  `top_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级 id',
  `invite_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邀请注册码',
  `qk_pwd` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '取款密码',
  `money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '中心账户余额',
  `fs_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '反水账户余额',
  `total_amount` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '平台总投注额',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `register_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '注册IP',
  `last_login_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最后登录ip',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `bank_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户人名字',
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行名称',
  `bank_branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行网点',
  `bank_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行卡号',
  `bank_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户地址',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `is_login` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未登录 1已登录',
  `o_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录密码',
  `agent_uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代理链接',
  `agent_uri_pre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代理链接前缀',
  `last_session` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tips_on` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否开启登录提示',
  `is_in_on` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否内部账号',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `real_name`, `email`, `phone`, `qq`, `weixin`, `password`, `original_password`, `gender`, `is_daili`, `top_id`, `invite_code`, `qk_pwd`, `money`, `fs_money`, `total_amount`, `score`, `register_ip`, `last_login_ip`, `last_login_at`, `bank_username`, `bank_name`, `bank_branch_name`, `bank_card`, `bank_address`, `status`, `is_login`, `o_password`, `agent_uri`, `agent_uri_pre`, `last_session`, `is_tips_on`, `is_in_on`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(250, 'a12345', 'xiaoxiao', NULL, '13888888888', NULL, NULL, '$2y$10$ToPMIckuXXmuZlkQVKZrEeFvaqQKsTv30o19fv51N51jper5Rxcoe', 'd8cbec4d46', 0, 1, 0, '95HR0VU', '456123', '0.00', '0.00', '0.00', 0, '172.68.146.112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'a456123', NULL, NULL, 'kM6mdHgxLP9CKCKUzNfhkg2FOVhbKKwc9gupFnhm', 1, 1, 'Xllk45Q4ICIZtH6OtKIxH9xo6GWmHBmpzY9oyNQPD6KP5lJbf3YgRPFkSGxm', '2018-08-03 00:15:16', '2018-08-03 23:21:59', NULL),
(251, 'b12345', 'xiaoxiao', NULL, '13888888888', NULL, NULL, '$2y$10$WdVmSugsl4SEyOLsvLDRleVJMWnRbI0n.fcBcqf.wS4iOsxPJ4pGm', '4ee36fb3ae', 0, 1, 0, '2HSUKU9', '456123', '0.00', '0.00', '0.00', 0, '172.68.146.112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'b456123', NULL, NULL, 'iZGkqbc2P37HrqgDe1b7H6fQEtqxHFC1IaZtFFMM', 1, 1, 'cas213Ml7R1oOgfQPzDQCxDkfNjILwk0zxaatWTmVdXgRWDV55VL2qEClg5J', '2018-08-03 00:15:54', '2018-08-03 04:10:25', NULL),
(252, 'a88888', 'xiaoxiao', NULL, '13888888888', NULL, NULL, '$2y$10$/dgC.jdzpKb4DXx2nVjTlu7iinqn7Nh0qKthc9yOHT91hyYv30kqa', 'cbca2dc73d', 0, 1, 0, '31de6fI', '456123', '0.00', '0.00', '0.00', 0, '162.158.167.104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'a888888', NULL, NULL, 'ZrsB4vOqXOvi1FAbN9Mxjf28sD6ZCi2oB3moOnYy', 1, 1, 'Oy21oC18fwVMRkDuUvCEhPK4ULBsUkcxRe1G3w3W8KDlNPT9zsTN94Z7TIhw', '2018-08-03 00:16:35', '2018-08-03 00:17:07', NULL),
(253, 'a66666', 'xiaoxiao', NULL, '13888888888', NULL, NULL, '$2y$10$oloR3LEMbhCIZYfPJ89HtecMoy0eVVPFp999kBlMMgTkUHDXhsIYy', '8e09c4caf6', 0, 1, 0, '43PoHO6', '456123', '0.00', '0.00', '0.00', 0, '162.158.166.229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'a666666', NULL, NULL, '2tzS6RMqArfiESjsQFQYXDV5AMaaCIVBOjvUfKJJ', 1, 1, 'xW8ksPZivtNBbO29TnwcqlZxs7rqWpkzzItuYO80s8dTiCHttdMY1ztfiICf', '2018-08-03 00:17:41', '2018-08-03 00:18:05', NULL),
(254, 'abc12345', '65447885', NULL, '13000000000', NULL, NULL, '$2y$10$qoMRdoiquDqERLPAVq5A5.Nv7EwgyB0BCWHYvu0hFL1b3ea0H3wDq', 'e8f9ad8e2b', 0, 0, 0, '5I1bVj3', '456123', '0.00', '0.00', '0.00', 0, '162.158.167.116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'abc123456', NULL, NULL, 'IrcRtm0pepXMDi7mmwiHl5KBMfQz6bm5G7rGptHX', 1, 1, '1fNwOqxrRss0JpZvh05sgPesDg8XLBV9nfowi6ua2Qq0uNV3nokSIomO3o4y', '2018-08-03 00:54:38', '2018-08-03 00:55:39', NULL),
(255, 'bb12345', '123abc', NULL, '13232564789', NULL, NULL, '$2y$10$/wrD8ujdSmgCS1LbDGMe5.UTaidnU1jNgzqSFvzID9z8lg3o5mOGm', '9ac2c4105e', 0, 0, 0, '9slNLnA', '123456', '0.00', '0.00', '0.00', 0, '162.158.167.98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'bb456123', NULL, NULL, 'a0meF4ImsNkDJQX5TVqW5frwlYwI2IhTalfZpnu6', 1, 1, 'dWInZwokspYhNf7MjCYce9wkpMEuvyYgogrZLleDVQDRF4kyZhLlX5EBS4qB', '2018-08-03 01:02:15', '2018-08-03 01:04:07', NULL),
(256, 'c12345', 'xiaoxiao', NULL, '13888888888', NULL, NULL, '$2y$10$3jrT8FikMViOo97D.1oTMewzpxj1kki0cl2PkNrtJTLdNIAi9PkeW', '9ea658e482', 0, 1, 0, '4GR5Uzk', '456123', '100.00', '0.00', '0.00', 0, '162.158.166.31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'c456123', NULL, NULL, 'Gj06rrr245cQDZFEFI7A4vHz57FwVEX6BOLdJ06n', 1, 1, 'iRorrwWWJ7mNprCVgVNA4brTLvoAqEaEhgrATadQV2vnzpnXbN0PeXBW0TlU', '2018-08-03 04:17:43', '2018-08-03 23:52:43', NULL),
(257, 'lingling', 'lingling', NULL, '13333333333', NULL, NULL, '$2y$10$6NCCR4vtLQcov/FqqtVU3uC11vZFhRfpJPLiSy/SsJ1FPaI9vpiiS', '320c44275b', 0, 0, 0, '8fePgpK', '123456', '0.00', '0.00', '0.00', 0, '162.158.167.104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'gj001001', NULL, NULL, 'WXNNPJipJZhG7JhVRZYjhXaZMSp0WTB401RSJVKg', 1, 1, NULL, '2018-08-03 17:41:26', '2018-08-03 20:22:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_api`
--

CREATE TABLE `member_api` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台账号',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台密码',
  `money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '平台余额',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员-api';

--
-- Dumping data for table `member_api`
--

INSERT INTO `member_api` (`id`, `member_id`, `api_id`, `username`, `password`, `money`, `description`, `created_at`, `updated_at`) VALUES
(544, 182, 12, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 09:38:11', '2018-01-29 16:59:14'),
(543, 182, 11, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 09:37:49', '2018-01-29 16:59:40'),
(542, 182, 5, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 09:15:22', '2018-01-29 16:59:40'),
(541, 182, 4, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 09:05:49', '2018-01-30 06:56:09'),
(540, 182, 27, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 09:04:51', '2018-01-29 16:59:16'),
(539, 182, 26, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 08:58:33', '2018-01-20 08:42:16'),
(538, 184, 27, 'mytest123', '694757de09', '0.00', NULL, '2018-01-18 08:58:09', '2018-01-18 08:58:09'),
(537, 184, 7, 'mytest123', '694757de09', '0.00', NULL, '2018-01-18 08:57:14', '2018-01-18 08:57:14'),
(536, 184, 4, 'mytest123', '694757de09', '0.00', NULL, '2018-01-18 08:57:05', '2018-01-18 08:57:05'),
(535, 182, 6, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 08:56:22', '2018-01-29 16:59:18'),
(534, 182, 7, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 08:55:49', '2018-01-29 16:59:14'),
(533, 182, 3, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 08:55:44', '2018-01-31 17:35:53'),
(532, 184, 3, 'mytest123', '694757de09', '0.00', NULL, '2018-01-18 08:53:22', '2018-01-18 08:53:22'),
(531, 184, 13, 'mytest123', '694757de09', '0.00', NULL, '2018-01-18 08:46:37', '2018-01-18 08:46:37'),
(530, 182, 13, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-18 08:45:09', '2018-01-29 16:59:16'),
(545, 183, 3, 'luogang530', '293f2d1a69', '0.00', NULL, '2018-01-18 09:58:59', '2018-01-25 08:45:11'),
(546, 185, 3, 'abcdef123', '60a05b756b', '0.00', NULL, '2018-01-19 17:26:30', '2018-01-19 17:48:43'),
(547, 185, 7, 'abcdef123', '60a05b756b', '0.00', NULL, '2018-01-19 17:30:23', '2018-01-21 06:25:32'),
(548, 185, 27, 'abcdef123', '60a05b756b', '0.00', NULL, '2018-01-19 20:45:12', '2018-01-21 06:25:33'),
(549, 185, 26, 'Zgabcdef123', '60a05b756b', '0.00', NULL, '2018-01-20 04:36:03', '2018-01-20 04:36:05'),
(550, 185, 13, 'Zgabcdef123', '60a05b756b', '0.00', NULL, '2018-01-20 04:36:08', '2018-01-21 06:25:33'),
(551, 185, 12, 'Zgabcdef123', '60a05b756b', '0.00', NULL, '2018-01-20 04:36:14', '2018-01-21 06:25:31'),
(552, 185, 4, 'Zgabcdef123', '60a05b756b', '0.00', NULL, '2018-01-20 04:36:22', '2018-01-21 06:25:31'),
(553, 185, 5, 'Zgabcdef123', '60a05b756b', '0.00', NULL, '2018-01-20 04:36:27', '2018-01-21 06:25:32'),
(554, 185, 6, 'Zgabcdef123', '60a05b756b', '0.00', NULL, '2018-01-20 04:36:28', '2018-01-21 06:25:32'),
(555, 185, 11, 'Zgabcdef123', '60a05b756b', '0.00', NULL, '2018-01-20 04:36:37', '2018-01-21 06:25:35'),
(556, 188, 3, 'yangliang', '7e01c864cf', '0.00', NULL, '2018-01-21 11:24:28', '2018-01-21 11:24:28'),
(557, 189, 3, 's19940228', '9a756c45e9', '0.20', NULL, '2018-01-21 12:50:17', '2018-01-31 11:54:16'),
(558, 189, 4, 's19940228', '9a756c45e9', '0.00', NULL, '2018-01-21 12:58:44', '2018-01-28 10:41:35'),
(559, 189, 7, 's19940228', '9a756c45e9', '0.00', NULL, '2018-01-21 13:00:42', '2018-01-21 13:00:42'),
(560, 182, 21, 'k1luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-21 21:06:01', '2018-01-21 21:06:01'),
(561, 183, 12, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:15', '2018-01-27 11:32:15'),
(562, 183, 4, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:15', '2018-01-27 13:50:47'),
(563, 183, 5, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:16', '2018-01-28 13:10:17'),
(564, 183, 7, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:16', '2018-01-27 11:32:15'),
(565, 183, 26, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:16', '2018-01-22 04:26:18'),
(566, 183, 6, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:17', '2018-01-27 11:32:16'),
(567, 183, 13, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:17', '2018-01-22 04:26:17'),
(568, 183, 27, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:18', '2018-01-27 11:32:16'),
(569, 183, 11, 'Zgluogang530', '293f2d1a69', '0.00', NULL, '2018-01-22 04:26:23', '2018-01-27 11:32:22'),
(570, 190, 3, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:06', '2018-01-24 06:56:23'),
(571, 190, 12, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:06', '2018-01-24 08:18:34'),
(572, 190, 4, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:07', '2018-01-24 08:18:36'),
(573, 190, 6, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:08', '2018-01-24 08:18:38'),
(574, 190, 7, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:08', '2018-01-24 08:18:38'),
(575, 190, 26, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:08', '2018-01-23 06:19:10'),
(576, 190, 13, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:09', '2018-01-24 08:18:39'),
(577, 190, 27, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:14', '2018-01-24 08:18:40'),
(578, 190, 5, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:15', '2018-01-24 07:14:15'),
(579, 190, 11, 'Zgss30002', 'f97fc0eed0', '0.00', NULL, '2018-01-23 06:19:18', '2018-01-24 08:14:25'),
(580, 191, 3, 'cn518519', '16edd4f6c0', '0.38', NULL, '2018-01-24 05:20:32', '2018-01-31 07:33:23'),
(581, 192, 12, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 11:46:29', '2018-01-25 05:47:07'),
(582, 192, 3, 'Zgluogang888', 'f6d947a46e', '88.00', NULL, '2018-01-24 11:46:30', '2018-01-24 12:10:43'),
(583, 192, 6, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 11:46:30', '2018-01-25 05:47:08'),
(584, 192, 4, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 11:46:30', '2018-01-25 05:47:07'),
(585, 192, 5, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 11:46:39', '2018-01-25 05:47:16'),
(586, 192, 7, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 11:46:45', '2018-01-25 05:47:07'),
(587, 192, 13, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 12:03:37', '2018-01-25 05:47:08'),
(588, 192, 26, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 12:03:38', '2018-01-24 12:03:39'),
(589, 192, 27, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 12:03:39', '2018-01-25 05:47:09'),
(590, 192, 11, 'Zgluogang888', 'f6d947a46e', '0.00', NULL, '2018-01-24 12:04:08', '2018-01-25 05:47:17'),
(591, 193, 4, 'luogang000', 'd7545e6a0c', '0.00', NULL, '2018-01-26 07:31:54', '2018-01-26 07:31:54'),
(592, 193, 3, 'luogang000', 'd7545e6a0c', '0.00', NULL, '2018-01-26 07:32:15', '2018-01-26 07:32:15'),
(593, 189, 12, 's19940228', '9a756c45e9', '0.00', NULL, '2018-01-26 07:34:22', '2018-01-26 07:34:22'),
(594, 193, 7, 'luogang000', 'd7545e6a0c', '0.00', NULL, '2018-01-26 07:34:22', '2018-01-26 07:34:22'),
(595, 193, 26, 'luogang000', 'd7545e6a0c', '0.00', NULL, '2018-01-26 07:34:39', '2018-01-26 07:34:39'),
(596, 194, 7, 'Zgydx1111', 'da17bb592e', '0.00', NULL, '2018-01-26 09:56:32', '2018-01-26 09:56:32'),
(597, 194, 4, 'Zgydx1111', 'da17bb592e', '0.00', NULL, '2018-01-26 09:58:39', '2018-01-26 10:04:13'),
(598, 194, 3, 'Zgydx1111', 'da17bb592e', '38.00', NULL, '2018-01-26 10:04:32', '2018-01-26 10:04:36'),
(599, 195, 3, 'Zgydx1234', '22be352671', '38.00', NULL, '2018-01-26 10:18:39', '2018-01-26 10:18:42'),
(600, 189, 13, 's19940228', '9a756c45e9', '0.00', NULL, '2018-01-27 06:21:45', '2018-01-27 06:21:45'),
(601, 189, 13, 's19940228', '9a756c45e9', '0.00', NULL, '2018-01-27 06:21:48', '2018-01-27 06:21:48'),
(602, 189, 11, 's19940228', '9a756c45e9', '0.00', NULL, '2018-01-27 06:22:22', '2018-01-27 06:22:22'),
(603, 196, 3, 'Zged8561458', '4b7b0f7d6b', '0.00', NULL, '2018-01-27 06:41:27', '2018-01-27 06:41:27'),
(604, 196, 4, 'Zged8561458', '4b7b0f7d6b', '0.00', NULL, '2018-01-27 06:41:27', '2018-01-27 06:41:27'),
(605, 196, 5, 'Zged8561458', '4b7b0f7d6b', '0.00', NULL, '2018-01-27 06:41:35', '2018-01-27 06:41:35'),
(606, 198, 12, 'Zged8561458e', '0aa841b317', '0.00', NULL, '2018-01-27 11:24:32', '2018-01-27 11:24:32'),
(607, 198, 26, 'Zged8561458e', '0aa841b317', '0.00', NULL, '2018-01-27 11:24:32', '2018-01-27 11:24:32'),
(608, 198, 3, 'Zged8561458e', '0aa841b317', '0.00', NULL, '2018-01-27 11:24:32', '2018-01-27 11:24:32'),
(609, 198, 4, 'Zged8561458e', '0aa841b317', '0.00', NULL, '2018-01-27 11:24:33', '2018-01-27 11:24:33'),
(610, 198, 5, 'Zged8561458e', '0aa841b317', '0.00', NULL, '2018-01-27 11:24:41', '2018-01-27 11:24:41'),
(611, 199, 3, 'aa2761037', '5d904c4752', '0.00', NULL, '2018-01-27 11:38:23', '2018-01-27 16:28:21'),
(612, 199, 6, 'aa2761037', '5d904c4752', '0.00', NULL, '2018-01-27 11:38:44', '2018-01-27 11:38:44'),
(613, 200, 4, '8msunset990', '783be05cd2', '0.00', NULL, '2018-01-27 11:39:17', '2018-01-27 13:06:03'),
(614, 200, 3, 'sunset990', '783be05cd2', '0.00', NULL, '2018-01-27 11:39:25', '2018-01-27 11:39:25'),
(615, 200, 7, 'Zgsunset990', '783be05cd2', '0.00', NULL, '2018-01-27 13:04:16', '2018-01-27 13:04:17'),
(616, 200, 12, 'Zgsunset990', '783be05cd2', '0.00', NULL, '2018-01-27 13:04:17', '2018-01-27 13:04:18'),
(617, 200, 26, 'Zgsunset990', '783be05cd2', '0.00', NULL, '2018-01-27 13:04:17', '2018-01-27 13:04:18'),
(618, 200, 27, 'Zgsunset990', '783be05cd2', '0.00', NULL, '2018-01-27 13:04:18', '2018-01-27 13:04:19'),
(619, 200, 13, 'Zgsunset990', '783be05cd2', '0.00', NULL, '2018-01-27 13:04:18', '2018-01-27 13:04:19'),
(620, 200, 6, 'Zgsunset990', '783be05cd2', '0.00', NULL, '2018-01-27 13:04:19', '2018-01-27 13:04:21'),
(621, 200, 5, 'Zgsunset990', '783be05cd2', '0.00', NULL, '2018-01-27 13:04:27', '2018-01-27 13:04:37'),
(622, 200, 11, 'Zgsunset990', '783be05cd2', '0.00', NULL, '2018-01-27 13:04:32', '2018-01-27 13:04:35'),
(623, 199, 4, 'Zgaa2761037', '5d904c4752', '0.00', NULL, '2018-01-27 16:24:41', '2018-01-27 16:28:03'),
(624, 199, 5, 'Zgaa2761037', '5d904c4752', '0.00', NULL, '2018-01-27 16:25:09', '2018-01-27 16:30:16'),
(625, 189, 6, 's19940228', '9a756c45e9', '0.00', NULL, '2018-01-27 23:36:01', '2018-01-27 23:36:01'),
(626, 208, 3, 'cyx970726', 'f9cb2daf07', '276.00', NULL, '2018-01-28 13:00:17', '2018-01-28 14:06:17'),
(627, 208, 7, 'cyx970726', 'f9cb2daf07', '0.00', NULL, '2018-01-28 13:14:38', '2018-01-28 13:14:38'),
(628, 208, 12, 'cyx970726', 'f9cb2daf07', '0.00', NULL, '2018-01-28 13:55:29', '2018-01-28 13:55:29'),
(629, 208, 6, 'cyx970726', 'f9cb2daf07', '0.00', NULL, '2018-01-28 13:57:22', '2018-01-28 13:57:22'),
(630, 207, 3, 'lxl104669', '5232ef3b88', '0.00', NULL, '2018-01-28 14:19:34', '2018-01-28 20:19:59'),
(631, 206, 3, 'ak123456', 'b5bd03f7f0', '0.75', NULL, '2018-01-28 15:05:24', '2018-01-30 19:24:47'),
(632, 207, 4, '8mlxl104669', '5232ef3b88', '0.00', NULL, '2018-01-28 15:24:48', '2018-01-28 17:41:31'),
(633, 207, 11, 'Zglxl104669', '5232ef3b88', '0.00', NULL, '2018-01-28 16:12:39', '2018-01-28 16:12:45'),
(634, 207, 11, 'Zglxl104669', '5232ef3b88', '0.00', NULL, '2018-01-28 16:12:39', '2018-01-28 16:12:42'),
(635, 210, 6, 'lg13000222', '50252314a7', '0.00', NULL, '2018-01-28 18:26:14', '2018-01-28 18:26:14'),
(636, 210, 3, 'lg13000222', '50252314a7', '9.50', NULL, '2018-01-28 18:26:23', '2018-01-31 12:38:12'),
(637, 210, 12, 'lg13000222', '50252314a7', '0.00', NULL, '2018-01-28 18:26:30', '2018-01-28 18:26:30'),
(638, 210, 27, 'lg13000222', '50252314a7', '0.00', NULL, '2018-01-28 18:26:32', '2018-01-28 18:26:32'),
(639, 210, 7, 'lg13000222', '50252314a7', '0.00', NULL, '2018-01-28 18:26:34', '2018-01-28 18:26:34'),
(640, 210, 4, '8mlg13000222', '50252314a7', '0.00', NULL, '2018-01-28 18:55:55', '2018-01-28 18:55:55'),
(641, 182, 29, 'luogang520', '6fcbd11bfb', '0.00', NULL, '2018-01-29 06:18:45', '2018-01-29 06:18:45'),
(642, 212, 3, 'Zgzwl989898', '1dcb6ddc13', '0.00', NULL, '2018-01-30 13:32:06', '2018-01-30 13:36:43'),
(643, 212, 4, '8mzwl989898', '1dcb6ddc13', '0.00', NULL, '2018-01-30 15:30:46', '2018-01-30 15:30:46'),
(644, 212, 11, 'zwl989898', '1dcb6ddc13', '0.00', NULL, '2018-01-30 15:32:55', '2018-01-30 15:32:55'),
(645, 213, 3, 'Zgak19840518', '1e2b0fa845', '47.00', NULL, '2018-01-30 17:31:34', '2018-01-30 17:41:26'),
(646, 214, 3, 'Zgchen519999', '177a5f3dab', '0.00', NULL, '2018-01-30 17:50:42', '2018-01-30 17:54:24'),
(647, 215, 3, 'Zgak518518', '050fbb75e5', '0.00', NULL, '2018-01-30 18:00:01', '2018-01-30 18:04:31'),
(648, 218, 3, 'Zgakcn518519', 'ded44c5004', '0.45', NULL, '2018-01-30 19:41:19', '2018-01-31 01:18:11'),
(649, 219, 3, 'Zgchen7758', 'dd5af78271', '0.00', NULL, '2018-01-31 00:27:33', '2018-01-31 11:42:55'),
(650, 220, 3, 'Zgcn84518', 'ca24ee0fb7', '18.00', NULL, '2018-01-31 01:42:23', '2018-01-31 06:57:41'),
(651, 209, 3, 'Zgcxl1979', 'c3a7ed9177', '18.00', NULL, '2018-01-31 01:48:39', '2018-01-31 06:59:26'),
(652, 189, 5, 's19940228', '9a756c45e9', '0.00', NULL, '2018-01-31 05:47:35', '2018-01-31 05:47:35'),
(653, 221, 3, 'Zgwkp1978', 'd3d5a03bcd', '0.00', NULL, '2018-01-31 07:03:18', '2018-01-31 07:23:43'),
(654, 222, 3, 'Zgakcn1985', 'd43aa54374', '28.00', NULL, '2018-01-31 11:45:54', '2018-01-31 11:45:57'),
(655, 226, 3, 'fj7436737', '2d07364949', '0.00', NULL, '2018-03-21 17:23:03', '2018-03-21 17:23:03'),
(656, 226, 4, '8mfj7436737', '2d07364949', '0.00', NULL, '2018-03-21 17:55:49', '2018-03-21 17:55:49'),
(657, 226, 5, 'fj7436737', '2d07364949', '0.00', NULL, '2018-03-21 17:56:03', '2018-03-21 17:56:03'),
(658, 227, 4, '8mqq779661', '29933d9055', '0.00', NULL, '2018-03-22 04:07:30', '2018-03-22 04:07:30'),
(659, 227, 3, 'qq779661', '29933d9055', '0.00', NULL, '2018-03-22 04:11:27', '2018-03-22 04:11:27'),
(660, 229, 3, 'sdrjh453', '0d8b39b25c', '0.00', NULL, '2018-04-02 09:55:36', '2018-04-02 09:55:36'),
(661, 229, 4, '8msdrjh453', '0d8b39b25c', '0.00', NULL, '2018-04-02 10:44:36', '2018-04-02 10:44:36'),
(662, 230, 3, 'a555666', '6464b9ce70', '0.00', NULL, '2018-04-04 19:23:54', '2018-04-04 19:23:54'),
(663, 230, 4, '8ma555666', '6464b9ce70', '0.00', NULL, '2018-04-04 19:26:06', '2018-04-04 19:26:06'),
(664, 231, 3, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 09:49:41', '2018-04-28 09:49:41'),
(665, 231, 29, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 10:07:53', '2018-05-10 12:51:54'),
(666, 231, 20, 'Hcdd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 10:42:32', '2018-05-10 12:52:25'),
(667, 231, 5, 'Hcdd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 10:42:38', '2018-04-30 03:50:43'),
(668, 231, 13, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 10:48:35', '2018-05-10 12:51:52'),
(669, 231, 26, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 10:49:02', '2018-04-28 10:49:02'),
(670, 231, 4, '8mdd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 11:17:02', '2018-05-10 17:21:51'),
(671, 231, 10, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 11:17:28', '2018-04-28 11:17:28'),
(672, 231, 6, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 11:18:37', '2018-05-10 12:52:08'),
(673, 231, 14, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 11:20:09', '2018-05-10 12:52:28'),
(674, 231, 12, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 12:14:29', '2018-04-28 12:14:29'),
(675, 231, 27, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-28 12:19:00', '2018-04-28 12:19:00'),
(676, 231, 7, 'Hcdd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-30 03:51:45', '2018-04-30 03:51:48'),
(677, 231, 11, 'Hcdd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-30 03:51:49', '2018-04-30 03:51:51'),
(678, 231, 21, 'k1dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-30 03:51:54', '2018-05-10 12:52:10'),
(679, 231, 23, 'Hcdd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-30 03:51:57', '2018-04-30 03:51:57'),
(680, 231, 9, '52dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-30 07:06:41', '2018-04-30 07:06:45'),
(681, 231, 22, '52dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-30 07:07:22', '2018-05-10 12:52:19'),
(682, 231, 24, '52dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-30 07:07:26', '2018-04-30 07:07:27'),
(683, 231, 8, '52dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-04-30 07:07:28', '2018-04-30 07:07:29'),
(684, 233, 24, 'der5544222', '720b42d5f2', '0.00', NULL, '2018-05-03 14:14:03', '2018-05-03 14:14:03'),
(685, 231, 30, '52dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-05-09 05:02:40', '2018-05-10 12:51:55'),
(686, 231, 31, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-05-09 05:03:58', '2018-05-10 12:51:56'),
(687, 231, 32, '52dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-05-09 11:32:00', '2018-05-10 12:51:58'),
(688, 231, 33, 'dd8844111', 'd08bf70d8e', '0.00', NULL, '2018-05-10 03:21:36', '2018-05-10 17:21:44'),
(689, 234, 3, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 10:19:38', '2018-07-19 10:19:38'),
(690, 234, 5, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 10:34:34', '2018-07-19 10:34:34'),
(691, 234, 31, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 10:41:37', '2018-07-19 10:41:37'),
(692, 234, 6, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 10:46:38', '2018-07-19 10:46:38'),
(693, 234, 12, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 10:55:12', '2018-07-19 10:55:12'),
(694, 234, 26, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 11:16:08', '2018-07-19 11:16:08'),
(695, 234, 6, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 11:26:12', '2018-07-19 11:26:12'),
(696, 234, 6, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 11:26:38', '2018-07-19 11:26:38'),
(697, 234, 6, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 11:27:28', '2018-07-19 11:27:28'),
(698, 234, 6, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-19 11:27:41', '2018-07-19 11:27:41'),
(699, 234, 30, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-23 08:24:39', '2018-07-23 08:24:39'),
(700, 234, 4, '8maa123456', '00c3516770', '0.00', NULL, '2018-07-23 09:21:02', '2018-07-23 09:21:02'),
(701, 234, 7, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-23 09:21:12', '2018-07-23 09:21:12'),
(702, 234, 13, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-23 10:12:39', '2018-07-23 10:12:39'),
(703, 234, 32, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-23 10:47:52', '2018-07-23 10:47:52'),
(704, 234, 27, 'aa123456', '00c3516770', '0.00', NULL, '2018-07-23 11:25:53', '2018-07-23 11:25:53'),
(705, 235, 3, 'gj001001', 'fe89e531e6', '0.00', NULL, '2018-07-25 04:06:36', '2018-07-25 04:06:36'),
(706, 235, 4, '8mgj001001', 'fe89e531e6', '0.00', NULL, '2018-07-25 04:08:17', '2018-07-25 04:08:17'),
(707, 236, 14, 'aa1234567', 'b1246db183', '0.00', NULL, '2018-07-25 16:18:21', '2018-07-25 16:18:21'),
(708, 236, 3, 'aa1234567', 'b1246db183', '0.00', NULL, '2018-07-25 16:32:46', '2018-07-25 16:32:46'),
(709, 237, 6, 'aaa123456', 'a51892631a', '0.00', NULL, '2018-07-25 19:03:14', '2018-07-25 19:03:14'),
(710, 239, 3, '5Fgj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 20:03:56', '2018-07-25 20:03:57'),
(711, 239, 6, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 20:23:29', '2018-07-25 20:23:29'),
(712, 239, 26, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 20:29:57', '2018-07-25 20:29:57'),
(713, 239, 12, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 20:30:07', '2018-07-25 20:30:07'),
(714, 239, 11, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 21:04:20', '2018-07-25 21:04:20'),
(715, 239, 10, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 21:22:35', '2018-07-25 21:22:35'),
(716, 239, 29, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 21:22:46', '2018-07-25 21:22:46'),
(717, 239, 21, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 21:23:00', '2018-07-25 21:23:00'),
(718, 239, 4, '8mgj001com', '2f84fcf63a', '0.00', NULL, '2018-07-25 21:23:13', '2018-07-25 21:23:13'),
(719, 237, 7, 'aaa123456', 'a51892631a', '0.00', NULL, '2018-07-25 22:40:24', '2018-07-25 22:40:24'),
(720, 237, 12, 'aaa123456', 'a51892631a', '0.00', NULL, '2018-07-25 22:40:32', '2018-07-25 22:40:32'),
(721, 240, 6, '5Faa1234', '8128985b1e', '0.00', NULL, '2018-07-26 00:03:29', '2018-07-26 00:03:29'),
(722, 240, 3, 'aa1234', '8128985b1e', '0.00', NULL, '2018-07-26 00:06:35', '2018-07-26 00:06:35'),
(723, 240, 13, 'aa1234', '8128985b1e', '0.00', NULL, '2018-07-26 00:11:07', '2018-07-26 00:11:07'),
(724, 239, 31, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-26 05:53:55', '2018-07-26 05:53:55'),
(725, 239, 5, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-26 05:56:45', '2018-07-26 05:56:45'),
(726, 239, 7, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-26 05:57:43', '2018-07-26 05:57:43'),
(727, 239, 13, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-26 06:01:39', '2018-07-26 06:01:39'),
(728, 239, 24, 'gj001com', '2f84fcf63a', '0.00', NULL, '2018-07-26 06:07:27', '2018-07-26 06:07:27'),
(729, 241, 3, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-26 06:42:02', '2018-08-01 00:25:45'),
(730, 241, 7, 'a12345', 'd8cbec4d46', '0.00', NULL, '2018-07-26 18:57:29', '2018-07-26 18:57:29'),
(731, 241, 6, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-26 18:58:20', '2018-07-26 18:58:20'),
(732, 242, 10, 'b12345', '4ee36fb3ae', '0.00', NULL, '2018-07-26 23:24:12', '2018-07-26 23:24:12'),
(733, 242, 10, 'b12345', '4ee36fb3ae', '0.00', NULL, '2018-07-26 23:24:12', '2018-07-26 23:24:12'),
(734, 241, 10, 'a12345', 'd8cbec4d46', '0.00', NULL, '2018-07-27 01:21:12', '2018-07-27 01:21:12'),
(735, 242, 29, 'b12345', '4ee36fb3ae', '0.00', NULL, '2018-07-27 01:21:27', '2018-07-27 01:21:27'),
(736, 241, 22, 'a12345', 'd8cbec4d46', '0.00', NULL, '2018-07-27 05:07:12', '2018-07-27 05:07:12'),
(737, 240, 29, '5Faa1234', '8128985b1e', '0.00', NULL, '2018-07-27 23:12:06', '2018-07-27 23:12:06'),
(738, 240, 10, '5Faa1234', '8128985b1e', '0.00', NULL, '2018-07-27 23:13:39', '2018-07-27 23:13:39'),
(739, 241, 29, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-27 23:22:58', '2018-07-27 23:22:58'),
(740, 244, 4, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 00:22:04', '2018-07-28 00:22:04'),
(741, 240, 22, '5Faa1234', '8128985b1e', '0.00', NULL, '2018-07-28 00:35:56', '2018-07-28 00:35:56'),
(742, 240, 9, '5Faa1234', '8128985b1e', '0.00', NULL, '2018-07-28 00:36:11', '2018-07-28 00:36:11'),
(743, 244, 3, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 00:43:33', '2018-07-28 00:43:33'),
(744, 244, 6, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 00:47:55', '2018-07-28 00:47:55'),
(745, 244, 12, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 00:53:17', '2018-07-28 00:53:17'),
(746, 244, 14, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 00:55:36', '2018-07-28 00:55:36'),
(747, 244, 5, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 01:07:26', '2018-07-28 01:07:26'),
(748, 242, 22, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-07-28 01:11:40', '2018-07-28 01:11:40'),
(749, 244, 26, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 01:23:41', '2018-07-28 01:23:41'),
(750, 244, 22, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 01:27:57', '2018-07-28 01:27:57'),
(751, 244, 9, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 01:28:44', '2018-07-28 01:28:44'),
(752, 244, 10, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 01:30:23', '2018-07-28 01:30:23'),
(753, 244, 29, '5Flingling', '320c44275b', '10.00', NULL, '2018-07-28 01:31:19', '2018-08-01 19:17:07'),
(754, 244, 21, '5Flingling', '320c44275b', '0.00', NULL, '2018-07-28 02:10:54', '2018-07-28 02:10:54'),
(755, 243, 6, '5Fc12345', '9ea658e482', '0.00', NULL, '2018-07-28 02:57:12', '2018-07-28 02:57:12'),
(756, 245, 3, '5Fa123456', 'd477887b06', '0.00', NULL, '2018-07-28 19:49:01', '2018-07-28 19:49:01'),
(757, 245, 3, '5Fa123456', 'd477887b06', '0.00', NULL, '2018-07-28 19:49:02', '2018-07-28 19:49:02'),
(758, 245, 31, '5Fa123456', 'd477887b06', '0.00', NULL, '2018-07-28 19:52:31', '2018-07-28 19:52:31'),
(759, 245, 31, '5Fa123456', 'd477887b06', '0.00', NULL, '2018-07-28 19:52:31', '2018-07-28 19:52:31'),
(760, 241, 12, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 00:10:23', '2018-07-29 00:10:23'),
(761, 241, 4, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 00:11:28', '2018-07-29 00:11:28'),
(762, 241, 13, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 00:13:15', '2018-07-29 00:13:15'),
(763, 241, 27, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 00:14:38', '2018-07-29 00:14:38'),
(764, 241, 11, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 00:14:56', '2018-07-29 00:14:56'),
(765, 241, 14, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 00:19:10', '2018-07-29 00:19:10'),
(766, 242, 14, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-07-29 00:20:56', '2018-07-29 00:20:56'),
(767, 242, 6, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-07-29 00:26:08', '2018-07-29 00:26:08'),
(768, 242, 24, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-07-29 00:26:51', '2018-07-29 00:26:51'),
(769, 242, 32, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-07-29 00:27:08', '2018-07-29 00:27:08'),
(770, 242, 3, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-07-29 00:31:03', '2018-07-29 00:31:03'),
(771, 246, 4, '5Fa12050796', '8c4c7fcde5', '0.00', NULL, '2018-07-29 00:55:07', '2018-07-29 00:55:07'),
(772, 241, 9, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 00:58:47', '2018-07-29 00:58:47'),
(773, 241, 21, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 00:59:19', '2018-07-29 00:59:19'),
(774, 245, 10, '5Fa123456', 'd477887b06', '0.00', NULL, '2018-07-29 01:47:47', '2018-07-29 01:47:47'),
(775, 241, 26, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-07-29 03:33:17', '2018-07-29 03:33:17'),
(776, 246, 22, '5Fa12050796', '8c4c7fcde5', '0.00', NULL, '2018-07-29 04:45:34', '2018-07-29 04:45:34'),
(777, 246, 9, '5Fa12050796', '8c4c7fcde5', '0.00', NULL, '2018-07-29 04:46:47', '2018-07-29 04:46:47'),
(778, 246, 3, '5Fa12050796', '8c4c7fcde5', '0.00', NULL, '2018-07-29 04:52:34', '2018-07-29 04:52:34'),
(779, 246, 13, '5Fa12050796', '8c4c7fcde5', '0.00', NULL, '2018-07-29 04:54:54', '2018-07-29 04:54:54'),
(780, 247, 3, '5Fzb1226', '9a733b49e6', '0.00', NULL, '2018-07-29 21:11:40', '2018-07-29 21:11:40'),
(781, 247, 3, '5Fzb1226', '9a733b49e6', '0.00', NULL, '2018-07-29 21:11:40', '2018-07-29 21:11:40'),
(782, 247, 10, '5Fzb1226', '9a733b49e6', '0.00', NULL, '2018-07-29 21:12:14', '2018-07-29 21:12:14'),
(783, 247, 29, '5Fzb1226', '9a733b49e6', '0.00', NULL, '2018-07-29 21:12:25', '2018-07-29 21:12:25'),
(784, 247, 21, '5Fzb1226', '9a733b49e6', '0.00', NULL, '2018-07-29 21:12:36', '2018-07-29 21:12:36'),
(785, 247, 4, '5Fzb1226', '9a733b49e6', '0.00', NULL, '2018-07-29 21:12:46', '2018-07-29 21:12:46'),
(786, 247, 29, '5Fzb1226', '9a733b49e6', '0.00', NULL, '2018-07-29 21:13:07', '2018-07-29 21:13:07'),
(787, 237, 4, '5Faaa123456', 'a51892631a', '0.00', NULL, '2018-07-30 18:12:18', '2018-07-30 18:12:18'),
(788, 237, 3, '5Faaa123456', 'a51892631a', '0.00', NULL, '2018-07-30 18:14:41', '2018-07-30 18:14:41'),
(789, 242, 13, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-07-31 19:57:18', '2018-07-31 19:57:19'),
(790, 248, 4, '5Fa888888', '24d1b6f6d8', '0.00', NULL, '2018-07-31 22:49:33', '2018-07-31 22:49:33'),
(791, 248, 21, '5Fa888888', '24d1b6f6d8', '0.00', NULL, '2018-07-31 22:50:31', '2018-07-31 22:50:31'),
(792, 248, 10, '5Fa888888', '24d1b6f6d8', '0.00', NULL, '2018-08-01 04:10:15', '2018-08-01 04:10:15'),
(793, 248, 22, '5Fa888888', '24d1b6f6d8', '0.00', NULL, '2018-08-01 04:10:56', '2018-08-01 04:10:56'),
(794, 248, 29, '5Fa888888', '24d1b6f6d8', '0.00', NULL, '2018-08-01 04:11:31', '2018-08-01 04:11:31'),
(795, 241, 31, '5Fa12345', 'd8cbec4d46', '0.00', NULL, '2018-08-01 19:28:59', '2018-08-01 19:28:59'),
(796, 242, 33, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-08-02 06:45:25', '2018-08-02 06:45:26'),
(797, 242, 7, '5Fb12345', '4ee36fb3ae', '0.00', NULL, '2018-08-02 06:48:46', '2018-08-02 06:48:46'),
(798, 234, 24, '5Faa123456', '00c3516770', '0.00', NULL, '2018-08-02 17:40:43', '2018-08-02 17:40:43'),
(799, 257, 3, '5Flingling', '320c44275b', '0.00', NULL, '2018-08-03 17:42:18', '2018-08-03 17:42:18'),
(800, 257, 10, '5Flingling', '320c44275b', '0.00', NULL, '2018-08-03 20:22:44', '2018-08-03 20:22:44'),
(801, 257, 29, '5Flingling', '320c44275b', '0.00', NULL, '2018-08-03 20:23:08', '2018-08-03 20:23:08'),
(802, 250, 3, '5Fa12345', 'd8cbec4d46', '1.00', NULL, '2018-08-03 21:56:58', '2018-08-03 22:19:55'),
(803, 256, 6, '5Fc12345', '9ea658e482', '0.00', NULL, '2018-08-03 22:02:46', '2018-08-03 22:02:46'),
(804, 256, 12, '5Fc12345', '9ea658e482', '0.00', NULL, '2018-08-03 23:11:15', '2018-08-03 23:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `member_daili_apply`
--

CREATE TABLE `member_daili_apply` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msn_qq` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '申请状态',
  `fail_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_daili_apply`
--

INSERT INTO `member_daili_apply` (`id`, `member_id`, `name`, `phone`, `email`, `msn_qq`, `about`, `status`, `fail_reason`, `created_at`, `updated_at`) VALUES
(16, 256, NULL, '1388888888', NULL, '123456', '54985', 2, '123684546', '2018-08-03 04:18:00', '2018-08-03 04:18:15'),
(15, 251, NULL, '13888888888', NULL, '123456', '123456', 1, NULL, '2018-08-03 00:22:11', '2018-08-03 00:22:21'),
(14, 250, NULL, '13888888888', NULL, '123456', '123456', 1, NULL, '2018-08-03 00:21:26', '2018-08-03 00:21:37'),
(13, 253, NULL, '13888888888', NULL, '123456', '123456', 1, NULL, '2018-08-03 00:17:56', '2018-08-03 00:18:05'),
(12, 252, NULL, '13888888888', NULL, '123456', '123456', 1, NULL, '2018-08-03 00:16:56', '2018-08-03 00:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `member_login_log`
--

CREATE TABLE `member_login_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录ip',
  `is_login` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0登录 1登出',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_login_log`
--

INSERT INTO `member_login_log` (`id`, `member_id`, `ip`, `is_login`, `created_at`, `updated_at`) VALUES
(1359, 250, '172.68.146.112', 0, '2018-08-03 00:15:16', '2018-08-03 00:15:16'),
(1360, 251, '172.68.146.112', 0, '2018-08-03 00:15:54', '2018-08-03 00:15:54'),
(1361, 252, '162.158.167.104', 0, '2018-08-03 00:16:35', '2018-08-03 00:16:35'),
(1362, 253, '162.158.166.229', 0, '2018-08-03 00:17:41', '2018-08-03 00:17:41'),
(1363, 250, '162.158.167.116', 0, '2018-08-03 00:21:12', '2018-08-03 00:21:12'),
(1364, 251, '162.158.167.116', 0, '2018-08-03 00:21:57', '2018-08-03 00:21:57'),
(1365, 250, '172.68.254.98', 0, '2018-08-03 00:49:53', '2018-08-03 00:49:53'),
(1366, 254, '162.158.167.116', 0, '2018-08-03 00:54:38', '2018-08-03 00:54:38'),
(1367, 254, '162.158.166.217', 0, '2018-08-03 00:55:04', '2018-08-03 00:55:04'),
(1368, 254, '172.68.146.82', 0, '2018-08-03 00:55:39', '2018-08-03 00:55:39'),
(1369, 250, '162.158.166.79', 0, '2018-08-03 00:57:54', '2018-08-03 00:57:54'),
(1370, 250, '162.158.166.43', 0, '2018-08-03 00:59:55', '2018-08-03 00:59:55'),
(1371, 251, '172.68.253.205', 0, '2018-08-03 01:02:09', '2018-08-03 01:02:09'),
(1372, 255, '162.158.167.98', 0, '2018-08-03 01:02:15', '2018-08-03 01:02:15'),
(1373, 255, '162.158.167.116', 0, '2018-08-03 01:02:43', '2018-08-03 01:02:43'),
(1374, 255, '172.68.144.75', 0, '2018-08-03 01:04:07', '2018-08-03 01:04:07'),
(1375, 250, '162.158.166.43', 0, '2018-08-03 01:04:56', '2018-08-03 01:04:56'),
(1376, 250, '162.158.166.31', 0, '2018-08-03 01:05:25', '2018-08-03 01:05:25'),
(1377, 250, '162.158.167.116', 0, '2018-08-03 01:10:39', '2018-08-03 01:10:39'),
(1378, 250, '172.69.134.131', 0, '2018-08-03 01:13:23', '2018-08-03 01:13:23'),
(1379, 250, '162.158.167.98', 0, '2018-08-03 01:14:32', '2018-08-03 01:14:32'),
(1380, 250, '162.158.167.98', 0, '2018-08-03 01:15:06', '2018-08-03 01:15:06'),
(1381, 250, '162.158.166.31', 0, '2018-08-03 01:17:14', '2018-08-03 01:17:14'),
(1382, 251, '162.158.166.43', 0, '2018-08-03 04:10:25', '2018-08-03 04:10:25'),
(1383, 256, '162.158.166.31', 0, '2018-08-03 04:17:43', '2018-08-03 04:17:43'),
(1384, 257, '162.158.167.104', 0, '2018-08-03 17:41:26', '2018-08-03 17:41:26'),
(1385, 250, '162.158.166.229', 0, '2018-08-03 18:17:44', '2018-08-03 18:17:44'),
(1386, 250, '162.158.166.79', 0, '2018-08-03 19:32:30', '2018-08-03 19:32:30'),
(1387, 257, '162.158.167.104', 0, '2018-08-03 20:22:32', '2018-08-03 20:22:32'),
(1388, 250, '162.158.166.79', 0, '2018-08-03 21:40:59', '2018-08-03 21:40:59'),
(1389, 256, '172.69.134.131', 0, '2018-08-03 21:49:43', '2018-08-03 21:49:43'),
(1390, 256, '172.68.255.4', 0, '2018-08-03 22:02:43', '2018-08-03 22:02:43'),
(1391, 250, '162.158.167.104', 0, '2018-08-03 22:19:44', '2018-08-03 22:19:44'),
(1392, 256, '162.158.166.43', 0, '2018-08-03 22:23:29', '2018-08-03 22:23:29'),
(1393, 256, '172.68.253.109', 0, '2018-08-03 23:11:13', '2018-08-03 23:11:13'),
(1394, 250, '172.68.144.75', 0, '2018-08-03 23:13:53', '2018-08-03 23:13:53'),
(1395, 250, '172.68.144.135', 0, '2018-08-03 23:14:30', '2018-08-03 23:14:30'),
(1396, 250, '162.158.166.229', 0, '2018-08-03 23:14:42', '2018-08-03 23:14:42'),
(1397, 250, '162.158.167.116', 0, '2018-08-03 23:16:28', '2018-08-03 23:16:28'),
(1398, 250, '162.158.166.217', 0, '2018-08-03 23:16:41', '2018-08-03 23:16:41'),
(1399, 250, '172.68.144.135', 0, '2018-08-03 23:19:34', '2018-08-03 23:19:34'),
(1400, 250, '162.158.167.104', 0, '2018-08-03 23:19:48', '2018-08-03 23:19:48'),
(1401, 250, '172.68.146.82', 0, '2018-08-03 23:21:18', '2018-08-03 23:21:18'),
(1402, 250, '162.158.166.43', 0, '2018-08-03 23:21:59', '2018-08-03 23:21:59'),
(1403, 256, '172.68.144.135', 0, '2018-08-03 23:35:17', '2018-08-03 23:35:17'),
(1404, 256, '172.68.255.4', 0, '2018-08-03 23:52:43', '2018-08-03 23:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `member_message`
--

CREATE TABLE `member_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0未读1已读',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员-message';

--
-- Dumping data for table `member_message`
--

INSERT INTO `member_message` (`id`, `member_id`, `message_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 182, 1, 0, '2018-01-24 08:30:28', '2018-01-24 08:30:28'),
(2, 183, 1, 0, '2018-01-24 08:30:28', '2018-01-24 08:30:28'),
(3, 185, 1, 0, '2018-01-24 08:30:28', '2018-01-24 08:30:28'),
(4, 188, 1, 0, '2018-01-24 08:30:28', '2018-01-24 08:30:28'),
(5, 189, 1, 0, '2018-01-24 08:30:28', '2018-01-24 08:30:28'),
(6, 190, 1, 0, '2018-01-24 08:30:28', '2018-01-24 08:30:28'),
(7, 191, 1, 0, '2018-01-24 08:30:28', '2018-01-24 08:30:28'),
(8, 182, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(9, 183, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(10, 185, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(11, 188, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(12, 189, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(13, 190, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(14, 191, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(15, 194, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(16, 195, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(17, 206, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(18, 208, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(19, 209, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(20, 210, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(21, 212, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(22, 213, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(23, 214, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(24, 215, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(25, 216, 2, 0, '2018-01-30 18:27:08', '2018-01-30 18:27:08'),
(26, 182, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(27, 188, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(28, 189, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(29, 190, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(30, 191, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(31, 194, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(32, 195, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(33, 206, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(34, 208, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(35, 209, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(36, 210, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(37, 212, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(38, 213, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(39, 214, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(40, 215, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(41, 216, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(42, 217, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(43, 218, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(44, 219, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(45, 220, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(46, 221, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(47, 222, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(48, 223, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(49, 224, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(50, 225, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(51, 226, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(52, 227, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(53, 228, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(54, 229, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(55, 230, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(56, 231, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(57, 232, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(58, 233, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(59, 234, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(60, 235, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(61, 236, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(62, 237, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(63, 238, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(64, 239, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(65, 240, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(66, 241, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(67, 242, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(68, 243, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(69, 244, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(70, 245, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(71, 246, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00'),
(72, 247, 3, 0, '2018-07-30 03:59:00', '2018-07-30 03:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题 系统公告 活动公告',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告内容',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '跳转链接',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_12_26_171107_create_member_table', 1),
(3, '2017_04_24_103644_create_finances_table', 1),
(4, '2017_04_24_143636_create_transfers_table', 1),
(5, '2017_04_25_134304_create_game_record_table', 1),
(6, '2017_04_25_163600_create_system_config_table', 1),
(7, '2017_04_26_124242_create_activities_table', 1),
(8, '2017_04_28_195111_create_api_tables', 1),
(9, '2017_05_08_090943_create_roles_table', 1),
(10, '2017_05_19_132945_create_game_list_table', 1),
(11, '2017_07_29_125746_create_pay_records_table', 1),
(12, '2017_08_16_195057_create_game_lists_table', 1),
(13, '2018_08_03_114813_update_system_config', 2),
(14, '2018_08_03_165158_update_system_config_3rdpayment', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pay_records`
--

CREATE TABLE `pay_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单号 唯一',
  `opeNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付订单号',
  `money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `member_id` int(11) NOT NULL COMMENT '用户 ID',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `payTime` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `pay_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1网银支付2扫码支付',
  `bankId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '若为银行卡支付 银行代码',
  `typeId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '若为扫码 1支付宝2微信',
  `clientIp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before_request_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1',
  `after_request_result` text COLLATE utf8mb4_unicode_ci COMMENT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_records`
--

INSERT INTO `pay_records` (`id`, `order_no`, `opeNo`, `money`, `member_id`, `status`, `payTime`, `pay_type`, `bankId`, `typeId`, `clientIp`, `before_request_result`, `after_request_result`, `created_at`, `updated_at`) VALUES
(1, '20180130152909SC8TO', NULL, '100.00', 191, 0, NULL, 1, 'ICBC', NULL, '61.185.130.214', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/www.mon8888.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/www.mon8888.com\\/pay\\/return\",\"sdorderno\":\"20180130152909SC8TO\",\"total_fee\":\"100.00\",\"paytype\":\"alipay\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":nu', NULL, '2018-01-30 08:29:09', '2018-01-30 08:29:09'),
(2, '20180131230817DEAKF', NULL, '50.00', 225, 0, NULL, 1, 'ICBC', NULL, '110.90.143.208', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/m3.5k138\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/m3.5k138\\/pay\\/return\",\"sdorderno\":\"20180131230817DEAKF\",\"total_fee\":\"50.00\",\"paytype\":\"weixin\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":nul', NULL, '2018-01-31 16:08:17', '2018-01-31 16:08:17'),
(3, '20180131232556mcWgt', NULL, '800.00', 182, 0, NULL, 1, 'ICBC', NULL, '117.136.31.218', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/www.mom8888.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/www.mom8888.com\\/pay\\/return\",\"sdorderno\":\"20180131232556mcWgt\",\"total_fee\":\"800.00\",\"paytype\":\"weixin\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":nu', NULL, '2018-01-31 16:25:56', '2018-01-31 16:25:56'),
(4, '20180329010611ElRIy', NULL, '100.00', 228, 0, NULL, 1, 'ICBC', NULL, '172.69.98.210', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/m3.5k138.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/m3.5k138.com\\/pay\\/return\",\"sdorderno\":\"20180329010611ElRIy\",\"total_fee\":\"100.00\",\"paytype\":\"CEB\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sign\"', NULL, '2018-03-28 18:06:11', '2018-03-28 18:06:11'),
(5, '20180428160506gG9yo', NULL, '10.00', 231, 0, NULL, 1, 'ICBC', NULL, '127.0.0.1', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/77277vip.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/77277vip.com\\/pay\\/return\",\"sdorderno\":\"20180428160506gG9yo\",\"total_fee\":\"10.00\",\"paytype\":\"alipay\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sig', NULL, '2018-04-28 09:05:06', '2018-04-28 09:05:06'),
(6, '20180428160521Ej9cf', NULL, '10.00', 231, 0, NULL, 1, 'ICBC', NULL, '127.0.0.1', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/77277vip.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/77277vip.com\\/pay\\/return\",\"sdorderno\":\"20180428160521Ej9cf\",\"total_fee\":\"10.00\",\"paytype\":\"weixin\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sig', NULL, '2018-04-28 09:05:21', '2018-04-28 09:05:21'),
(7, '20180428160611lf15g', NULL, '10.00', 231, 0, NULL, 1, 'ICBC', NULL, '127.0.0.1', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/77277vip.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/77277vip.com\\/pay\\/return\",\"sdorderno\":\"20180428160611lf15g\",\"total_fee\":\"10.00\",\"paytype\":\"weixin\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sig', NULL, '2018-04-28 09:06:11', '2018-04-28 09:06:11'),
(8, '20180428162841D7FRn', NULL, '500.00', 231, 0, NULL, 1, 'ICBC', NULL, '127.0.0.1', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/77277vip.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/77277vip.com\\/pay\\/return\",\"sdorderno\":\"20180428162841D7FRn\",\"total_fee\":\"500.00\",\"paytype\":\"alipay\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"si', NULL, '2018-04-28 09:28:41', '2018-04-28 09:28:41'),
(9, '20180429204116bFHNu', NULL, '100.00', 231, 0, NULL, 1, 'ICBC', NULL, '127.0.0.1', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/77277vip.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/77277vip.com\\/pay\\/return\",\"sdorderno\":\"20180429204116bFHNu\",\"total_fee\":\"100.00\",\"paytype\":\"weixin\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"si', NULL, '2018-04-29 13:41:16', '2018-04-29 13:41:16'),
(10, '20180508121037YDOZN', NULL, '10.00', 231, 0, NULL, 1, 'ICBC', NULL, '127.0.0.1', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/77277vip.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/77277vip.com\\/pay\\/return\",\"sdorderno\":\"20180508121037YDOZN\",\"total_fee\":\"10.00\",\"paytype\":\"alipay\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sig', NULL, '2018-05-08 05:10:37', '2018-05-08 05:10:37'),
(11, '20180508121130jswXV', NULL, '10.00', 231, 0, NULL, 1, 'ICBC', NULL, '127.0.0.1', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/77277vip.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/77277vip.com\\/pay\\/return\",\"sdorderno\":\"20180508121130jswXV\",\"total_fee\":\"10.00\",\"paytype\":\"weixin\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sig', NULL, '2018-05-08 05:11:30', '2018-05-08 05:11:30'),
(12, '20180727132105TJLL6', NULL, '100.00', 241, 0, NULL, 1, 'ICBC', NULL, '27.77.253.205', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/001gj.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/001gj.com\\/pay\\/return\",\"sdorderno\":\"20180727132105TJLL6\",\"total_fee\":\"100.00\",\"paytype\":\"alipay\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sign\":\"b', NULL, '2018-07-27 20:21:05', '2018-07-27 20:21:05'),
(13, '20180731163006ggmUl', NULL, '100.00', 242, 0, NULL, 1, 'ICBC', NULL, '172.68.255.46', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/009gj.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/009gj.com\\/pay\\/return\",\"sdorderno\":\"20180731163006ggmUl\",\"total_fee\":\"100.00\",\"paytype\":\"weixinwap\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sign\"', NULL, '2018-07-31 23:30:06', '2018-07-31 23:30:06'),
(14, '20180802124852BuR0j', NULL, '100.00', 242, 0, NULL, 1, 'ICBC', NULL, '172.68.255.76', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/009gj.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/009gj.com\\/pay\\/return\",\"sdorderno\":\"20180802124852BuR0j\",\"total_fee\":\"100.00\",\"paytype\":\"alipay\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sign\":\"8', NULL, '2018-08-02 19:48:52', '2018-08-02 19:48:52'),
(15, '20180803104955GVuVX', NULL, '100.00', 257, 0, NULL, 1, 'ICBC', NULL, '162.158.166.217', '{\"version\":\"1.0\",\"customerid\":null,\"notifyurl\":\"http:\\/\\/001gj.com\\/pay\\/notify\",\"returnurl\":\"http:\\/\\/001gj.com\\/pay\\/return\",\"sdorderno\":\"20180803104955GVuVX\",\"total_fee\":\"100.00\",\"paytype\":\"CCB\",\"bankcode\":\"ICBC\",\"get_code\":0,\"remark\":null,\"sign\":\"09d5', NULL, '2018-08-03 17:49:55', '2018-08-03 17:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE `recharge` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '交易流水号',
  `member_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '充值人名称、昵称',
  `money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `payment_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '转账类型 1支付宝2微信3银行转账',
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账户 支付宝账户 微信账户 银行卡号 例子 ： 11231@qq.com',
  `payment_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1待确认2充值成功3充值失败',
  `diff_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '赠送金额',
  `before_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '充值前金额',
  `after_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '充值后金额',
  `score` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '积分',
  `fail_reason` text COLLATE utf8mb4_unicode_ci COMMENT '失败原因',
  `hk_at` timestamp NULL DEFAULT NULL COMMENT '客户填写的汇款时间',
  `confirm_at` timestamp NULL DEFAULT NULL COMMENT '确认转账时间',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recharge`
--

INSERT INTO `recharge` (`id`, `bill_no`, `member_id`, `name`, `money`, `payment_type`, `account`, `payment_desc`, `status`, `diff_money`, `before_money`, `after_money`, `score`, `fail_reason`, `hk_at`, `confirm_at`, `user_id`, `created_at`, `updated_at`) VALUES
(119, '20180802174737vzKFF', 251, 'b12345', '1.00', 1, '', NULL, 3, '0.00', '0.00', '0.00', '0.00', '000', '0000-00-00 00:00:00', NULL, 0, '2018-08-03 00:47:37', '2018-08-03 00:47:59'),
(120, '20180803104955GVuVX', 257, 'lingling', '100.00', 4, '第三方支付', NULL, 3, '0.00', '0.00', '0.00', '0.00', '35425', '2018-08-03 17:49:55', NULL, 0, '2018-08-03 17:49:55', '2018-08-03 17:50:26'),
(121, '20180803105043c1vk5', 257, 'lingling', '1.00', 1, '', NULL, 3, '0.00', '0.00', '0.00', '0.00', '3542', '0000-00-00 00:00:00', NULL, 0, '2018-08-03 17:50:43', '2018-08-03 17:51:05'),
(122, '201808031051157PHsa', 257, 'lingling', '1.00', 1, '', NULL, 3, '0.00', '0.00', '0.00', '0.00', '362', '0000-00-00 00:00:00', NULL, 0, '2018-08-03 17:51:15', '2018-08-03 17:51:35'),
(123, '201808031441109bCdW', 250, 'a12345', '1.00', 1, '', NULL, 2, '0.00', '0.00', '0.00', '0.00', NULL, '0000-00-00 00:00:00', '2018-08-03 21:43:44', 0, '2018-08-03 21:41:10', '2018-08-03 21:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理组';

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '001管理员', NULL, '2017-02-03 02:52:51', '2018-07-30 04:15:48'),
(2, '01管理员', NULL, '2017-11-18 14:46:22', '2018-07-30 04:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_router`
--

CREATE TABLE `role_router` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `router` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理组-权限';

--
-- Dumping data for table `role_router`
--

INSERT INTO `role_router` (`id`, `role_id`, `router`, `created_at`, `updated_at`) VALUES
(119, 2, 'bank_card.index', '2018-07-30 04:15:14', '2018-07-30 04:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `single`
--

CREATE TABLE `single` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `alias` varchar(255) DEFAULT NULL,
  `sort` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `single`
--

INSERT INTO `single` (`id`, `title`, `content`, `alias`, `sort`, `created_at`, `updated_at`) VALUES
(1, '关于我们', '<p>001国际娱乐注册于菲律宾马尼拉，持有菲律宾政府卡格扬经济特区 First Cagayan leisure and Resort Corporation颁发的体育博彩与线上赌场执照，接受菲律宾政府和卡格扬经济特区CEZA授权和监管，我们一切博彩营业行为皆遵从菲律宾政府博彩条约。在竞争日益激烈的网络博彩市场中，我们不断地求新求变，寻找最新的创意，秉持最好的服务。向客户提供高品质的服务、先进的产品、丰富的娱乐体验，是我们001国际娱乐城永恒的宗旨。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">我们思您所想，提供高标准全方位的个人隐私保密措施以及高强度的资金安全体系。进入玩家帐户数据必须有玩家唯一的登录ID和密码，确保客户的资金安全有保障。同时也采用最先进的加密措施来保证玩家的游戏安全，7×24小时的后台检测和监控，确保我们可以提供一个完全公正和安全的网络游戏空间。客户在本平台的所有活动均严格保密，我们绝不会向第三方（包括相关单位）透露客户数据。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">我们向您承诺：</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">以诚信为本</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">作为国际专业的网上博彩游戏运营商，我们承诺，为每一位客户提供最安全、最公平的博彩游戏，以及全方位的服务。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">提供最多样化与最真实的游戏</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">我们的真人视讯里面的荷官都是经国际赌场专业训练的，专业、高效、严谨！每一局派牌均由荷官现场实时派发，而不是预设的电脑机率结果。通过高科技的网路直播技术，带给您身临赌场现场的刺激经验!</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">我们的运动博彩拥有顶级的盘房操盘，投入大量的人力以及资源，以求将完整的赛事，丰富的玩法带给热爱体育的玩家。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">各式彩票游戏，是依官方赛果产生的游戏结果，让玩家在活泼的投注界面，享受最真实的娱乐。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">我们的电子游戏是与国际顶尖的电子游艺开发团队共同研发，采用最先进的动漫视觉效果，使用最公平的随机数产生机率，让您安心享受多元、刺激，观感丰富的电子游艺。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">本公司所有的游戏皆有共同的优点: 无须下载、介面操作简易、功能齐全、画面精致、游戏秉持公平、公正、公开!</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">提供优质的客户服务</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">我们有以最高标准选拔、最严格训练的客服团队，向您提供365天×24小时实时在线的客户服务。每位玩家的咨询，都将以专业、亲切的态度解答，在帮您解决问题的同时带给您宾至如归的体验!提供多渠道的与客户的互动交流，了解客户的需求，随时关注客户的意见及建议；举办更多的优惠及促销活动，给客户提供更多的回馈及惊喜。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">本公司提倡有节制的赌博。为了引起不必要的纠纷，我们建议你熟悉规则条款。</p><p><br/></p>', 'GYWM', 8, '2018-07-25 06:07:32', '2018-07-25 21:07:32'),
(2, '存款帮助', '<p>会员登陆后请点击&lt;在线存款&gt;选择对应的存款模式，请您确认您所充值金额的准确性并送出。订单送出后会在10分钟内自动到达所充值账号。如果需要充值的账号和所登陆的账号不一致，建议登陆所要充值的账号进行充值或者联系客服帮你充值。</p><p>如充值金额未到账，请及时联系客服人员帮你解决。</p><p>有如何疑问或者需要，请联系客服人员。</p>', 'CKBZ', 7, '2018-07-25 03:20:58', '2018-07-25 18:20:58'),
(3, '取款帮助', '<p>会员登入后点选&quot;在线取款&quot;。输入取款密码，确认提款人姓名与您银行账号持有人相符并确认银行账号的正确。输入出款额度并提交。</p><p>取款注意事项：</p><p>001国际娱乐单次最低取款为100，最高单次2000000。</p><p>001国际娱乐保留权利审核会员账户，审核有效投注金额达到各游戏所制定出款条件。如未达到条件，001国际娱乐有权利撤销取款请求，在多次撤销无果后，将扣除取款金额的10%为行政费用及手续费。</p><p><br/></p><p>请注意：不同游戏将依照不同的投注方式进行有效的计算。各游戏和局/未接受/取消注单等，皆不纳入有效投注计算。</p><p><br/></p><p>如有如何疑问或者建议，请联系客服人员。</p>', 'QKBZ', 6, '2018-07-25 03:36:50', '2018-07-25 18:36:50'),
(4, '联系我们', '<p>001国际为你提供优质的客服服务。如果你有任何的疑问或者需要，您可以通过以下任意一种方式联系客服：</p><p>A : 请点击界面上的在线客服可以直接与客服在线对话。</p><p>B : 可添加客服QQ：2460069151&nbsp;</p><p>C : 其他联系方式可咨询在线客服</p>', 'LXWM', 5, '2018-08-03 08:38:19', '2018-08-03 23:38:19'),
(5, '常见问题', '<p>Q: 如何加入001国际娱乐？<br/></p><p>A: 请您直接点选 &quot;开户&quot;，确实填写数据进行注册，注册完成即可登入!</p><p>Q: 我注册时显示姓名已注册，怎么办？<br/></p><p>A: 注册时显示姓名已注册请联系在线客服人员，帮您做资料比对与调整。</p><p>Q: 我的帐号/密码忘了怎么办？<br/></p><p>A: 会员若是忘记帐号或密码，可提供注册信息（真实姓名、注册电话等相关信息）联系在线客服协助找回。</p><p>Q: 我的帐号冻结了怎么办？<br/></p><p>A: 帐号显示冻结可能是因为密码输入错误多次导致系统安全锁启动自动冻结会员帐号，请联系在线客服协助解除冻结。</p><p>Q: 如何更改我的密码？<br/></p><p>A: 登入账号，点击网页顶部“修改密码”即可进行密码修改。</p><p>Q: 如何更改个人注册信息?<br/></p><p>A: 帐号成功注册后，您所填写的数据将无法自行更改。如需更改，请联系在线客服协助更改。</p><p>Q: 我想删除/注销我的会员帐号可以吗？<br/></p><p>A: 会员帐号一旦注册就无法删除或注销，会员可向在线客服申请冻结会员帐号，以停止其帐号的使用。</p><p>Q: 我可以直接在网络上存款吗？</p><p>A: 可以，001国际娱乐提供便利的在线存款选择，登入帐号即可选择对应的存款方式。</p><p>Q: 存取款最低、最高限制是多少？<br/></p><p>A: 001国际娱乐最低存取款为100元人民币，取款单笔上限2000000元人民币，存款最高存款无上限。</p><p>Q: 为什么线上支付成功后额度没有立即返到我的游戏帐号呢？<br/></p><p>A: 在线支付系统需要经过密锁切换及内部验证程序，这也是保证安全程序之一，一般10分钟内会到账，也请您不必担心，款项一定不会丢失。如果您在线支付超过10分钟后仍然还未收到您的款项，请与在线客服联系处理。</p><p>Q: 取款多久时间到帐？<br/></p><p>A: 取款到账时间一般3-5分钟，如遇到银行系统维护或财务清算等不可抗拒因素，到账将有所延迟或暂停出款。</p><p>Q: 取款有没有收取手续费？<br/></p><p>A: 会员完成常态稽核所要求的流水申请取款手续费全免，如未达到要求流水提款时，会有提示。</p><p>Q: 取款有没有什么条件？<br/></p><p>A: 会员取款必须先绑定取款银行账号；此账号必须是本人的银行账号。</p><p>Q: 取款银行账号一定要本人的吗？<br/></p><p>A: 会员取款绑定的取款银行账号必须要与注册时所填写的真实姓名一致，否则无法出款。真实姓名是无法变更的，若注册时因真实姓名没有确实填写而造成无法取款， 001国际娱乐概不负责。</p><p>Q: 我已经申请取款了，为何一直没有收到款？<br/></p><p>A: 一般取款到账时间3-5分钟，最迟不超过2小时，逾时未收到款项可能是取款银行账号数据有误或银行账号小额管理费未缴等问题所造成。财务人员在无法出款时都会给予会员通知。会员也可随时询问在线客服人员，查询您的取款状态。</p><p>Q: 我可使用何种货币向自己的帐户进行存款？<br/></p><p>A: 目前001国际娱乐只支持人民币存款服务。</p><p>Q: 取款是否可绑定多个银行账号方便使用<br/></p><p>A: 不可以，但可以进行更换，如需更换时，请提供注册信息与在线客服进行验证更换，所更换的新银行账号户名必须与会员姓名一致。</p><p>Q: 要怎么查看存款记录和取款记录？<br/></p><p>A: 登入账号→交易记录/投注记录→选择交易类别、交易时间→查询。</p>', 'CJWT', 4, '2018-07-25 04:31:22', '2018-07-25 19:31:22'),
(6, '招募代理', '<p>001国际娱乐给予代理合作最优势的营利回报! 无论您拥有的是网络资源，或是人脉资源，都欢迎您来加入001国际娱乐代理合作的行列， 无须负担任何费用，就可以开始无上限的收入。加入001国际娱乐，绝对是您最聪明的选择!</p><p><br/></p><p>注册申请：</p><p>请点击【代理注册】在线提出申请，并确实填写各项资料。001国际娱乐会评估审核申请讯息，3日内由专员与您联系开通，并提供您的注册帐号、密码及推广链接。</p><p><br/></p><p>佣金计算：</p><p>结算区间为每月第一天至最后一天，以分红方案公式计算，佣金由承办客服于次月的1号至5号与代理确认金额后，在1个工作天内将佣金直接汇入代理联盟登记之账号。</p><p><br/></p><p>请谨记任何使用不诚实方法以骗取佣金将会永久冻结账户，佣金一律不予发还！ 新合作伙伴正式确立合作关系之后，须用心推广，前三个月需有每月3个或以上的有效会员增长，否则公司有权终止合作关系并冻结代理账号。</p>', 'DLHZ', 3, '2018-07-25 03:49:50', '2018-07-25 18:49:50'),
(9, '规则条款', '<ul class=\" list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"margin: 0px 10px; padding: 0px; text-align: left; color: rgb(255, 255, 255); line-height: 28px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"margin: 0px auto; padding: 0px; font-size: 24px;\"><strong style=\"margin: 0px auto; padding: 0px;\">规则条款</strong></span></p></li><li><p style=\"margin: 0px 10px; padding: 0px; text-align: left; color: rgb(255, 255, 255); line-height: 28px;\"><br style=\"margin: 0px auto; padding: 0px;\"/></p></li><li><p style=\"margin: 0px 10px; padding: 0px; text-align: left; color: rgb(255, 255, 255); line-height: 28px;\">● 01. 为避免于本网站投注时之争议，请会员务必于进入网站前详阅本娱乐城所定之各项规则，客户进入本网站进行投注时，即被视为已接受本娱乐城的所有协议与规则。</p></li><li><p style=\"margin: 0px 10px; padding: 0px; text-align: left; color: rgb(255, 255, 255); line-height: 28px;\">● 02. 使用本公司网站的客户，请留意阁下所在的国家或居住地的相关法律规定，如有疑问应就相关问题，寻求当地法律意见。</p></li><li><p style=\"margin: 0px 10px; padding: 0px; text-align: left; color: rgb(255, 255, 255); line-height: 28px;\">● 03. 若发生遭黑客入侵破坏行为或不可抗拒之灾害导致网站故障或资料损坏、资料丢失等情况，我们将以本公司之后备资料为最后处理依据；为确保各方利益，请各会员投注后打印资料。本公司不会接受没有打印资料的投诉。</p></li><li><p style=\"margin: 0px 10px; padding: 0px; text-align: left; color: rgb(255, 255, 255); line-height: 28px;\">● 04. 会员有责任确保自己的帐户以及登入资料的保密性，以会员帐号及密码进行的任何网上投注，将被视为有效。敬请不定时做密码变更之动作。若帐号密码被盗用，进行的投注，本公司一概不负赔偿责任。</p></li><li><p style=\"margin: 0px 10px; padding: 0px; text-align: left; color: rgb(255, 255, 255); line-height: 28px;\">● 05. 本平台以接口外接官网形式开奖，结果以官方公布的结果为准。如遇到官方停止销售或者开奖结果不确定的情况，本公司将对相关注单进行无效处理，并且返还下注本金。</p></li><li><p style=\"margin: 0px 10px; padding: 0px; color: rgb(255, 255, 255); line-height: 28px;\">● 06. 棋牌等游戏凡玩家于出牌途中且尚无结果前自动或强制断线时，并不影响比赛之结果。若因网络断线等致网上投注如未能成功提交，投注将被视为无效。</p></li><li><p style=\"margin: 0px 10px; padding: 0px; color: rgb(255, 255, 255); line-height: 28px;\">● 07. 若经本公司发现会员以不正当手法&lt;利用外挂程式&gt;进行投注或以任何非正常方式进行的个人、团体投注，或者刷活动等行为。有损公司利益之投注情事发生，本公司保留权利取消产生之红利，不退还本金并停用该会员帐号。</p></li><li><p style=\"margin: 0px 10px; padding: 0px; color: rgb(255, 255, 255); line-height: 28px;\">● 08. 本公司保留不定时更改适当公告，本协定或游戏规则或保密条例的权利。更改之条款将从更改发生后指定之日或即时起生效，并保留一切有争议事项及最后的决策权。</p></li><li><p style=\"margin: 0px 10px; padding: 0px; color: rgb(255, 255, 255); line-height: 28px;\">● 09. 为防止非法恶意套现行为，充值金额需要满足1倍押注流水才可进行提现操作。</p></li></ul><p><span style=\"font-size: 20px;\"><br/></span></p><p><span style=\"font-size: 20px;\"><br/></span></p><p><span style=\"font-size: 20px;\">附加：</span><br/></p><p>博彩是一种娱乐消遣方式，对大多数人而言，都可以轻松享受博彩游戏所带来的乐趣，为了您在访问我们的赌场时，能有一个愉快的体验，请您遵循以下基本原则：</p><p>- 已年满18岁</p><p>- 确定赌博是您个人的决定；</p><p>- 评估自己所能承受的损失；</p><p>适度是一种享受，过度则会成为灾难。因此我们提倡有节制的赌博，我们希望客户您在尽情享受网站服务的同时调整好您的游戏心态，郑重的提醒各位玩家，有以下情形的谢绝赌博︰</p><p>- 受酒精或其他物品影响的</p><p>- 赌博严重影响到您的工作责任的</p><p>- 赌博严重影响到您的家庭生活的</p><p>- 企图弥补以前赌博的损失而孤注一掷的</p><p>如一些人会对酒精和香烟上瘾，而有些人则会对博彩上瘾，对于一些有赌瘾的客户，我们将提供自我隔离的功能：<br/></p><p>- 协助卸载所有博彩相关的客户端</p><p>- 联系在线客服人员关闭账户及限制其访问网站</p><p>- 联系在线客服人员要求不接收来自网站的任何信息及致电</p><p style=\"margin: 0px 10px; padding: 0px; color: rgb(255, 255, 255); line-height: 28px;\"><br/></p>', 'GZTK', 1, '2018-07-25 14:21:21', '2018-07-26 05:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '网站logo',
  `m_site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机站网站logo',
  `site_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '网站名称',
  `site_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '网站标题',
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `phone1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户电话1',
  `phone2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户电话2',
  `site_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '网站主域名',
  `qq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'qq',
  `qq2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'qq',
  `qq3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'qq',
  `down_name` tinyint(4) NOT NULL DEFAULT '0',
  `down_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客服链接',
  `is_maintain` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 正常1维护',
  `maintain_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '维护提示语',
  `active_member_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '活跃用户月充值金额',
  `alipay_nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付宝昵称',
  `alipay_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付宝账号',
  `alipay_qrcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付宝 二维码图片',
  `wechat_nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信昵称',
  `wechat_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信账号',
  `wechat_qrcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信 二维码图片',
  `qq_nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq_qrcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_alipay_on` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0上线1下线',
  `is_wechat_on` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0上线1下线',
  `is_bankpay_on` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0上线1下线',
  `is_thirdpay_on` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线1下线',
  `is_qq_on` tinyint(1) NOT NULL DEFAULT '0',
  `third_version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '版本',
  `third_userid` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'id',
  `third_userkey` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'key',
  `third_pay_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '提交链接',
  `web_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '网站域名',
  `is_sms_on` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线1下线',
  `sms_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 ID',
  `sms_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 key',
  `sms_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 token',
  `sms_temp_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模板 ID',
  `alert_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '弹框图片',
  `is_alert_on` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线1下线',
  `left_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '左侧悬浮图片',
  `is_left_on` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线1下线',
  `right_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '右侧悬浮图片',
  `is_right_on` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线1下线',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_useridw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_userkeyw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_pay_urlw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `site_logo`, `m_site_logo`, `site_name`, `site_title`, `keyword`, `phone1`, `phone2`, `site_domain`, `qq`, `qq2`, `qq3`, `down_name`, `down_desc`, `service_link`, `is_maintain`, `maintain_desc`, `active_member_money`, `alipay_nickname`, `alipay_account`, `alipay_qrcode`, `wechat_nickname`, `wechat_account`, `wechat_qrcode`, `qq_nickname`, `qq_account`, `qq_qrcode`, `is_alipay_on`, `is_wechat_on`, `is_bankpay_on`, `is_thirdpay_on`, `is_qq_on`, `third_version`, `third_userid`, `third_userkey`, `third_pay_url`, `web_domain`, `is_sms_on`, `sms_id`, `sms_key`, `sms_token`, `sms_temp_id`, `alert_img`, `is_alert_on`, `left_img`, `is_left_on`, `right_img`, `is_right_on`, `created_at`, `updated_at`, `payment_id`, `payment_key`, `third_useridw`, `third_userkeyw`, `third_pay_urlw`) VALUES
(1, '/uploads/2018-07-25/acbf32839d3ea180da722d4e11b3d466b870c69a.png', '/uploads/2018-07-25/1be1fe20b130fc64a28e1f668af2ecc20a85bae9.png', '001国际娱乐平台', '001国际娱乐平台', '001国际娱乐平台', NULL, 'dl.001gj.com', 'www.001gj.com', '2460069151', 'QQ711744', 'QQ711744', 0, '您的程序未被授权使用，请使用正版 www.fywl8.com, QQ896497655', 'http://tb.53kf.com/code/client/10181052/1', 0, '现在系统维护时间,预计维护到12：30', '100.00', '001国际', '001国际', '/uploads/2018-07-27/57ff09d0b0d168e127677b2e76144f7cb9b11019.png', '001国际', '001国际', '/uploads/2018-07-27/6fd2f741c326818dfad14eac24550716dbdeed3f.png', '001国际', '001国际', '/uploads/2018-07-27/afdfcf54de63afde86cd81a753c0900b77fe36d4.png', 1, 1, 1, 1, 0, '1.0', NULL, NULL, 'http://pay.1977.cm/apisubmit', NULL, 1, NULL, NULL, NULL, NULL, '/uploads/2018-07-26/b1cdd1f28404c08353093049b731dacac6292ea6.jpg', 0, NULL, 1, NULL, 1, '2017-02-03 02:52:51', '2018-08-03 23:58:17', '3065859557', '670c825c88b2f18732a4cf3e591eb282', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_notice`
--

CREATE TABLE `system_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题 系统公告 活动公告',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告内容',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_line` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0上线 1下线',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_notice`
--

INSERT INTO `system_notice` (`id`, `title`, `content`, `sort`, `url`, `on_line`, `created_at`, `updated_at`) VALUES
(7, '温馨提示：尊敬的会员您好!', '001国际娱乐平台易记域名001gj.com   002gj.com   003gj.com  009gj.com', 1, NULL, 0, '2018-01-21 02:44:32', '2018-08-03 23:33:47'),
(10, '温馨提示：尊敬的会员您好!', '001国际即日起充值领红包，达到对应金额可增加领红包次数，详细请关注优惠活动！！！', 4, NULL, 0, '2018-08-03 21:52:33', '2018-08-03 23:32:00'),
(11, '温馨提示：尊敬的会员您好!', '001国际微信扫码暂时下架，有需要微信充值的请联系客服！！！', 2, NULL, 0, '2018-08-03 23:32:58', '2018-08-03 23:33:07'),
(12, '温馨提示：尊敬的会员您好!', '001国际8月2日返水已经处理完成，如有问题，请联系客服！！！', 3, NULL, 0, '2018-08-03 23:33:37', '2018-08-03 23:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `tcg_game_list`
--

CREATE TABLE `tcg_game_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `displayStatus` tinyint(4) NOT NULL DEFAULT '0',
  `gameType` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏类型',
  `gameName` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏名称',
  `tcgGameCode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏代码',
  `productCode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `platform` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支持的平台 flash,html5',
  `productType` int(11) DEFAULT NULL COMMENT '产品编号',
  `sort` int(11) NOT NULL DEFAULT '1000' COMMENT '排序',
  `on_line` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0上线1下线',
  `client_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pc' COMMENT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 AG账户 2BBIN 账户 3MG账户',
  `member_id` int(11) NOT NULL COMMENT '用户ID',
  `transfer_type` tinyint(4) DEFAULT '0' COMMENT '0 转入游戏 1转出游戏',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '转换类型 1 中心账户转入MG账户',
  `money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '用户填写的转换金额',
  `diff_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '差价金额，即红利',
  `real_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '实际转换金额',
  `before_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '转账前的金额',
  `after_money` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '转账后的金额',
  `transfer_in_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '转入账户',
  `transfer_out_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '转出账户',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `result` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `bill_no`, `api_type`, `member_id`, `transfer_type`, `type`, `money`, `diff_money`, `real_money`, `before_money`, `after_money`, `transfer_in_account`, `transfer_out_account`, `status`, `result`, `created_at`, `updated_at`) VALUES
(347, '201808031519515QpKP', 3, 250, 0, 1, '1.00', '0.00', '0.00', '0.00', '0.00', 'AG账户', '中心账户', 0, '{\"retCode\":0,\"retMsg\":\"1.00\"}', '2018-08-03 22:19:55', '2018-08-03 22:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '1' COMMENT '角色 id 1游客',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台用户表';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_super_admin`, `role_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'admin@qq.com', 'admin@qq.com', '$2y$10$MjKD91IVowUPggszxSTz2OiLMAZXEH6XdUjYXsnIOsQ9X/WbUiw1y', 1, 1, 'hsluKeUYpTaixWqwwPs9uRM1iuuHp8K8j6XfexQxufNocahq72g3av72d2AV', '2018-01-11 18:08:47', '2018-08-03 19:29:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yj_level`
--

CREATE TABLE `yj_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '等级',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '等级名称',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃人数',
  `min` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '最小金额',
  `max` decimal(16,2) DEFAULT NULL COMMENT '最大金额',
  `rate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '佣金比例',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yj_level`
--

INSERT INTO `yj_level` (`id`, `level`, `name`, `num`, `min`, `max`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, '青铜代理', 1, '100.00', '200000.00', '20', '2018-01-04 08:28:01', '2018-08-03 00:12:57'),
(2, 2, '白银代理', 5, '200001.00', '500000.00', '25', '2018-01-04 08:28:46', '2018-08-03 00:13:12'),
(6, 3, '黄金代理', 10, '500001.00', '5000000.00', '30', '2018-08-03 00:13:43', '2018-08-03 00:13:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities_apply`
--
ALTER TABLE `activities_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_action_money_log`
--
ALTER TABLE `admin_action_money_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_cards`
--
ALTER TABLE `bank_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `black_list_ip`
--
ALTER TABLE `black_list_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daili_money_log`
--
ALTER TABLE `daili_money_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dividend`
--
ALTER TABLE `dividend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drawing`
--
ALTER TABLE `drawing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_level`
--
ALTER TABLE `fs_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_log`
--
ALTER TABLE `fs_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_lists`
--
ALTER TABLE `game_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_lists2`
--
ALTER TABLE `game_lists2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_record`
--
ALTER TABLE `game_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_record_billno_index` (`billNo`),
  ADD KEY `game_record_api_type_index` (`api_type`),
  ADD KEY `game_record_playername_index` (`playerName`),
  ADD KEY `game_record_bettime_index` (`betTime`),
  ADD KEY `game_record_gametype_index` (`gameType`),
  ADD KEY `copyFlag` (`copyFlag`),
  ADD KEY `prefix` (`prefix`);

--
-- Indexes for table `hongbao_lists`
--
ALTER TABLE `hongbao_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hongbao_settings`
--
ALTER TABLE `hongbao_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_name_unique` (`name`),
  ADD UNIQUE KEY `members_invite_code_unique` (`invite_code`);

--
-- Indexes for table `member_api`
--
ALTER TABLE `member_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_daili_apply`
--
ALTER TABLE `member_daili_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_login_log`
--
ALTER TABLE `member_login_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_message`
--
ALTER TABLE `member_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_records`
--
ALTER TABLE `pay_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_records_order_no_unique` (`order_no`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_router`
--
ALTER TABLE `role_router`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `single`
--
ALTER TABLE `single`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_notice`
--
ALTER TABLE `system_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tcg_game_list`
--
ALTER TABLE `tcg_game_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `yj_level`
--
ALTER TABLE `yj_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `activities_apply`
--
ALTER TABLE `activities_apply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `admin_action_money_log`
--
ALTER TABLE `admin_action_money_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `bank_cards`
--
ALTER TABLE `bank_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `black_list_ip`
--
ALTER TABLE `black_list_ip`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daili_money_log`
--
ALTER TABLE `daili_money_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dividend`
--
ALTER TABLE `dividend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `drawing`
--
ALTER TABLE `drawing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fs_level`
--
ALTER TABLE `fs_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `fs_log`
--
ALTER TABLE `fs_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_lists`
--
ALTER TABLE `game_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1698;

--
-- AUTO_INCREMENT for table `game_lists2`
--
ALTER TABLE `game_lists2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=985;

--
-- AUTO_INCREMENT for table `game_record`
--
ALTER TABLE `game_record`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1455;

--
-- AUTO_INCREMENT for table `hongbao_lists`
--
ALTER TABLE `hongbao_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `hongbao_settings`
--
ALTER TABLE `hongbao_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `member_api`
--
ALTER TABLE `member_api`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=805;

--
-- AUTO_INCREMENT for table `member_daili_apply`
--
ALTER TABLE `member_daili_apply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `member_login_log`
--
ALTER TABLE `member_login_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1405;

--
-- AUTO_INCREMENT for table `member_message`
--
ALTER TABLE `member_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pay_records`
--
ALTER TABLE `pay_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_router`
--
ALTER TABLE `role_router`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `single`
--
ALTER TABLE `single`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_notice`
--
ALTER TABLE `system_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tcg_game_list`
--
ALTER TABLE `tcg_game_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `yj_level`
--
ALTER TABLE `yj_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
