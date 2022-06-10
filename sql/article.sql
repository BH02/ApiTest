/*
 Navicat MySQL Data Transfer

 Source Server         : db_bh
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : apitest

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 10/06/2022 13:55:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `router` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (0, '帧', '[\'./img/frame.bf28b5db.png\']', '`帧就是影像动画中最小单位的单幅影像画面，相当于电影胶片上的每一格镜头。一帧就是一幅静止的画面，连续的帧就形成动画，如电视图像等。`', '');
INSERT INTO `article` VALUES (1, '关键帧', '[\'./img/keyframe.1e5c3bec.png\']', '关键帧相当于二维动画中的原画。指角色或者物体运动或变化中的关键动作所处的那一帧。关键帧与关键帧之间的动画可以由软件来创建，叫做过渡帧或者中间帧。在AE里面，我们只需要添加关键帧．电脑会自动生成过渡动画。', '');
INSERT INTO `article` VALUES (2, 'FPS（Frames Per Second）', '[\'./img/fps.f467ecc7.png\']', 'FPS是图像领域中的定义，是指画面每秒传输帧敌，通俗来讲就是指动画或视频的画面致。FPS是测量用于保存、显示动态视频的信息数量。每秒钟帧政愈多，所显示的动作就会愈流畅。通常．要避免动作不流畅的最低是30。某些计算机视频格式．每秒只能提供15帧。', '');
INSERT INTO `article` VALUES (3, '视频格式', '[\'./img/format.b24912ca.png\']', '`\r\n                MP4 \n\r\n                MP4是一套用于音频、视频信息的压缩编码标准，由国际标准化组织(ISO）和国际电工委员会(IEC）下属的“动态图像专家组”(Moving Picture Experts Group，即MPEG〉制定，第一版在1998年10月通过，第二版在1999年12月通过。MPEG-4格式的主要用途在于网上流、光盘、语音发送（视频电话)，以及电视广播，\r\n                AVI \n\r\n                AVI，音频视频交错(Audio Video Interleaved)的英文缩写。AVI这个由微软公司发表的视频格式，在视频领域可以说是最悠久的格式之一。AVI格式调用方便、图像质量好，压缩标准可任意选择，是应用最广泛、也是应用时间最长的格式之一。\r\n                MOV \n\r\n                使用过Me机的朋友应该多少按触过QuickTime。QuickTime原本是Apple公司用于Mac计算机上的一种图像视频处理软件。Quick-Time提供了两种标准图像和数字视频格式，即可以支持静态的*.PIC和 .JPG图像格式，动态的基于Indeo压缩法的*.MOV和基于MPEG压缩法的* .MPG视频格式。\r\n                WMV \n\r\n                一种独立于编码方式的在Internet上实时传播多媒体的技术标准，Microsoft公司希望用其取代OuickTime之类的技术标准以及WAV、AVI之类的文件扩展名。WMV的主要优点在于:可扩充的媒体类型、本地或网络回放、可伸缩的媒体类型、流的优先级化、多语言支持、扩展性等。\r\n                MKV \n\r\n                种后缀为MKV的视频文件频频出现在网络上，它可在一个文件中集成多条不同类型的音轨和字幕轨，而且其视频编码的自由度也非常大，可以是常见的DivX、XviD、3IVX.甚至可以是RealVideo 、Quick Time、WMV这类流式视频。\r\n                FLV \n\r\n                FLV是FLASH VIDEO的简称，FLV流媒体格式是一种新的视频格式。由于它形成的文件极小、加载速度极快，使得网络观看视频文件成为可能，它的出现有效地解决了视频文件导入Flash后，使导出的SWF文件体积庞大，不能在网络上很好的使用等缺点。\r\n                `', '');
INSERT INTO `article` VALUES (4, '常见格式', '[\'./img/Db1.a1fd25e5.png\']', '', '');
INSERT INTO `article` VALUES (5, '比特率', '[\'./img/Bitrate.03ec56db.png\']', '`比特率是指每秒传送的比特(bit)数。单位为bp(Bit Per Second)，比特率越高，传送数据速度越快。声音中的比特率是指将模拟声音信号转换成数字声音信号后，单位时间内的二进制数据量，是间接衡量音频质量的一个指标。视频中的比特率（码率）原理与声音中的相同，都是指由模拟信号转换为数字信号后，单位时间内的二进制数据量。`', '');
INSERT INTO `article` VALUES (6, '格式转换', '[\'./img/FF150.91a8545c.png\']', '视频格式转换主指通过一些软件，将视频的格式互相转化，使其达到用户的需求。常用的视频格式有影像格式（Video)、流媒体格式(Stream Video)。每一种格式的文件需要有对应的播放器。MOV格式文件用OuickTime据放，RM格式的文件用RealPlayer播放。若出现只装有RealPlayer播放器，所有的却是一个MOV格式文件，为了播放．需要对视频进行格式转换。', '');
INSERT INTO `article` VALUES (7, '窗口功能', '[\'./img/aeWindow.522f8359.png\']', 'Adobe系列的软件大都提供了高自由度的面板调整，每一个窗口都能自由的显示、隐藏或者放在软件的各个位置，用户一般不用调整窗口的位置，但是根据自身需求调整窗口布局能让AE使用更加得心应手。当然，你不知道怎么摆放窗口位置的时候你也可以试试AE给出的默认工作区样式', '');
INSERT INTO `article` VALUES (8, '菜单栏', '[\'./img/aenav.d4efd8c0.png\']', '`菜单栏提供了许多重要的操作，比如项目的创建与设置、文件的导入导出、面板的详细设置入口。当然一些常用的操作他会默认提供快捷键，一些功能也会集成到相应的面板上，可以进行图形化的操作。\r\n                \n 文件\r\n                可以新建项目，导入导出，与其他Adobe软件动态链接和设置脚本。\r\n                \n 编辑\r\n                计算机常规的复制粘贴都在这里，AE的基础设置就在这。\r\n                \n 合成\r\n                合成面板的基础信息和设置。\r\n                \n 图层\r\n                图层与PS中的类似，大都是图层的基础样式。\r\n                \n 效果\r\n                一些简单的效果预设，比如颜色变暗、变亮。\r\n                \n 动画\r\n                提供了关键帧的调整，以及摄像机的运动调整，还有表达式的编写。\r\n                \n 窗口\r\n                调整窗口设置，显示隐藏你要操作的窗口，还有默认的工作区样式可供选择。\r\n                \n 帮助\r\n                可以查看软件的信息、查看官网论坛、登录账号，新版还提供了Adobe官方的教程。\r\n                `', '');
INSERT INTO `article` VALUES (9, '工具栏', '[\'./img/aenav.d4efd8c0.png\']', '`\r\n                \n 选取工具（快捷键V）\r\n                最常用的工具，鼠标默认就是选择工具，用于选择各个文件、各项属性，并且改变位置。\r\n                \n 手型工具（快捷键H）\r\n                随意的拖动合成窗口。\r\n                \n 缩放工具（快捷键Z）\r\n                缩放合成窗口，注意并不是缩放素材。\r\n                \n 旋转工具（快捷键W）\r\n                字面意思，可以旋转素材。\r\n                \n 形状工具（快捷键Q）\r\n                快速生成默认形状，并且能调整填充颜色与描边样式。\r\n                \n 钢笔工具（快捷键G）\r\n                绘画路径，是路径动画的基础。\r\n                \n 文字工具（快捷键ctrl+T）\r\n                生成文字图层输入文字，能调整文字样式，并且制作文字动画，也能附着在路径上。\r\n                \n 画笔工具（快捷键ctrl+B在这同样快捷键的工具中切换）\r\n                自由的绘制线条，有各种各样的画笔样式预设。\r\n                \n 仿制图章工具（快捷键ctrl+B在这同样快捷键的工具中切换）\r\n                将图案的一部分进行复制，操作和PS相同。\r\n                \n 橡皮擦工具（快捷键ctrl+B在这同样快捷键的工具中切换）\r\n                将图案的一部分擦除，操作和PS相同。\r\n                \n Roto笔刷（快捷键Alt+W）\r\n                快速选区，自动识别图案内容建立选区。后续还能追踪物体变化而更新选区，这样就能将视频中的运动物体实时选取出来。\r\n                `', '');
INSERT INTO `article` VALUES (10, '项目面板和参数', '[\'./img/projectPanel.2d540f26.png\']', '项目面板是容纳素材和合成的一个窗口，可以新建文件夹对杂乱的素材进行整理。在面板上方会显示所选素材的基础信息比如分辨率、时长、编码信息。', '');
INSERT INTO `article` VALUES (11, '图层面板', '[\'./img/layersPanel.1282c3a3.png\']', '虽然他是叫图层，但是不同格式的素材都会形成一个层。对于可以显示的素材来说，图层面板里的显示优先级是自上而下的，在上方的素材会最优先显示。', '');
INSERT INTO `article` VALUES (12, '图层的基本属性', '[\'./img/layerBasic.ff6195b5.png\']', '`图层的五个基础属性\r\n                \n 锚点（单独显示快捷键A）\r\n                相对于素材自身的坐标而定位的一个点，一些对素材的操作是以锚点来进行的，比如缩放。\r\n                \n 位置（单独显示快捷键P）\r\n                相对于整个项目的坐标而定位的，它能直接的表达你这个素材在这个项目里处在一个什么位置。\r\n                \n 缩放（单独显示快捷键S）\r\n                基于锚点对素材自身进行缩放。\r\n                \n 旋转（单独显示快捷键R）\r\n                基于锚点对素材自身进行旋转。\r\n                \n 不透明度（单独显示快捷键T）\r\n                字面意思，调整素材的不透明度，从0%~100%。\r\n                `', '');
INSERT INTO `article` VALUES (13, '获取AE', '[\'./img/Db1.a1fd25e5.png\']', '`\r\n                百度搜索Adobe，进入Adobe官网付费获取正版AE（推荐）。\r\n                微博关注@vposy，在置顶微博查看下载链接（不推荐）。\r\n                `', '');
INSERT INTO `article` VALUES (14, '关键帧属性', '[\'./img/frame2.5c672f2a.png\']', '在某个时间记录素材的属性，并且自动计算出两个关键帧之间发生的变化。如果两个关键帧之间的时间长度一致，但是首位的数值差距不一样，它们的运行速度就会不一样，如图所示1~7的数值增长速度会更快一些。', '');
INSERT INTO `article` VALUES (15, '动画案例', '[\'./img/trigger.48572e21.gif\',\'./img/ringRotation.dea76612.gif\']', '', '');
INSERT INTO `article` VALUES (16, '文字工具', '[\'./img/textTool.611b76cc.png\',\'./img/textTool2.e3b40c71.png\']', '新建一个文本图层，拥有图层基本属性，与其他软件的文字编辑相同，在此之上还能对文本进行关键帧设置实现显示文字动画。', '');
INSERT INTO `article` VALUES (17, '效果控件', '[\'./img/effect1.5106e506.png\']', '选中一个图层在效果控件窗口右键即可弹出效果菜单，或者直接在\"效果与预设\"窗口寻找想要的预设。效果控件里有大量AE自带的基础效果。', '');
INSERT INTO `article` VALUES (18, '蒙板遮罩', '[\'./img/mask1.f05eb60f.png\',\'./img/mask2.c19452f2.png\', \'./img/mask3.5dfa62f5.png\']', '`遮罩（mask），是一个路径或者轮廓图，用于修改层的Alpha通道。\r\n                简而言之，这个遮罩层可以允许你阻止某幅图片不透过该层、其下一层或背景显示出来，也就是我们传统中遮掩图片的某部分的一种方式。也就是说，遮罩是由至少2个对象组合起来的，一个是被改变的对象，另一个是作为遮罩的对象。`', '');
INSERT INTO `article` VALUES (19, '元素间的父子关系。', '[\'./img/fs.cb95862b.png\', \'./img/fs.c0d83a82.gif\']', '子层级的一些基础属性会随父层级变化，而且在改变子层级的基础属性时父层级不会发生变化。', '');
INSERT INTO `article` VALUES (20, '简单表达式', '[\'./img/wiggle1.4594e0fe.png\',\'./img/expression1.cb31e9d8.png\']', '`按住Alt点击图层基本属性旁边的秒表即可打开表达式界面。通过表达式设置的数值有最高优先级。\r\n                \n 抖动表达式 wiggle(每秒钟抖动次数,数值范围)\r\n                wiggle(5，20)则代表每秒钟抖动五次，每次抖动修改的数值范围是20。\r\n                \n 随机表达式 random(最小值,最大值)\r\n                按照最小值最大值随机返回一个符合该范围的数值，属性有多个值时需要用数组如[random(10,20),random(0,99),……]。\r\n                \n 时间表达式 time\r\n                随时间对数值进行叠加，同随机数值一样，属性有多个值的时候需要用到数组。\r\n                \n 索引表达式 index\r\n                返回当前图层所在层级的层数，第一层的图层的index会返回数字1\r\n                `', '');
INSERT INTO `article` VALUES (21, '渲染设置以及常用格式', '[\'./img/output.3a7ce429.png\',\'./img/output2.519f6f66.png\']', '基本上渲染输出只会用到AVI和QuickTime两个格式，前者输出质量高体积大，后者支持透明通道的视频。', '');
INSERT INTO `article` VALUES (22, 'KeyLight一键扣绿', '[\'./img/keylight1.eccac615.png\']', '`曾是一个非常优秀的外部插件，现在已经被官方集成到正版AE里，新版AE不用下载安装就能直接使用。\r\n                单击Screen Color旁边的取色吸管选取要抠除的颜色即可大致去掉所选颜色，并且生成透明通道。\r\n                适当拖动调节Screen Gain的值,使得抠图区域更加纯净。\r\n                Dispill Bias 顔色溢出抑制,吸管吸取皮肤颜色,则皮肤周围的黑边就会改善,Alpha Bias 透明度偏移同时也会改变。\r\n                `', '');

SET FOREIGN_KEY_CHECKS = 1;
