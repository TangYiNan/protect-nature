/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50743 (5.7.43)
 Source Host           : localhost:3306
 Source Schema         : protect-nature

 Target Server Type    : MySQL
 Target Server Version : 50743 (5.7.43)
 File Encoding         : 65001

 Date: 10/05/2024 17:30:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (39);

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `first_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `views` int(11) NULL DEFAULT NULL,
  `type_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自然文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (32, b'0', b'0', '\r\n# 挑战\r\n淡水生态系统支撑着地球上绝大多数的生命活动，虽然淡水生态系统不足地球表面积的2%，却庇护着全世界大约12%的已知物种，并为数十亿人类的生存与发展提供不可或缺的产品与服务。然而全球淡水生态系统正处于危机之中，全球范围内约三分之一的淡水生物面临灭绝的风险，这个比例远高于陆地生物。世界上只有17%自由流动的河流受到了不同形式的保护，而其中大部分是河流和溪流。淡水保护管理过程中经常忽略维持淡水生态系统完整性所需的流域边界管理、水力学和河流连通性等关键内容，导致无法维护淡水生态系统的健康和完整性。此外，人类对淡水需求的不断增加也被认为是未来十年间对政治、社会和经济安全影响最严重的全球风险。\r\n> 在中国，长期以来，受拦河筑坝、水域污染、过度捕捞、航道整治、挖沙采石等高强度人类活动的影响，长江流域生态环境遭到严重破坏，导致白暨豚、白鲟、鲥鱼功能性灭绝，中华鲟、长江鲟、长江江豚极度濒危，珍稀特有物种全面衰退，经济鱼类资源接近枯竭，长江生物完整性指数到了最差的“无鱼”等级。面对现在和未来的压力，我们需要立刻行动起来！\r\n\r\n\r\n# 目标\r\n\r\n围绕中国“十四五”规划和持续改善水质的目标，同时通过实施水生态修复，实现“清水绿岸、鱼翔浅底”的美好景象，TNC中国淡水项目进一步制定未来十年的目标战略，即“通过提供水生态科学工具以及开发规模化机制来促进基于自然的水生态保护措施得到广泛的应用，提升关键流域的淡水生态系统健康”。在项目策略行动上，将围绕“实践示范、赋能提升和政策建议”三个方面展开，重点着手于“生态护水”和“健康河流”两大方向，与合作伙伴一起，推动实现健康、连通和富有韧性的淡水生态系统，造福人类和自然。\r\n\r\n在“生态护水”方向，将继续实施水基金试点创新项目，通过科学设计和优化管理机制，将公共、私营和民间的利益相关方凝聚在同一目标下，共同利用基于自然的解决方案和可持续的流域管理来保障水安全。同时将通过水源地保护工具的开发和推广，推动乡村小水源地的保护交流和互动，改善和提高乡村水源地。\r\n\r\n在“健康河流”方向，将全面分享TNC全球的淡水保护和恢复工具方法和实践经验，为中国水资源和水生态的保护、修复、管理和研究等提供参考。并将通过“生物多样性保护中国水利行动（New Green Line）”项目等推动将生物多样性保护理念和做法融入中国水资源管理政策、规划和技术标准及水库大坝等建设管理工作中，为推进水生态文明建设做出贡献，如生态流实施、湿地修复和保护以及健康河流评估等。\r\n\r\n依托TNC中国项目与中国环境与发展国际合作委员会（CCICED）的合作平台，将与中外方联合专家组共同开展气候变化背景下的流域管理专题政策研究，推动跨部门与多主体参与的高质量、系统性流域管理政策制定，促进长江、黄河等大河流域的国际交流和经验分享。\r\n\r\n![图片](https://www.tnc.org.cn/Upload/image/20220704/20220704161506_3140.jpg \"图片\")\r\n同时，TNC与国家林业和草原局湿地管理司就黄河湿地保护网络达成长期合作，联合举办年会及相关活动，共同设计发挥好黄河湿地保护网络的作用，将其作为推进落实黄河大保护战略的重要抓手和平台。\r\n\r\n', '2024-02-28 18:13:51', 'https://www.tnc.org.cn/Upload/image/20220704/20220704161506_3140.jpg', '原创', b'1', b'1', b'1', '中国淡水保护项目', '2024-05-10 16:45:18', 18, 23, 1, '淡水生态系统支撑着地球上绝大多数的生命活动，虽然淡水生态系统不足地球表面积的2%，却庇护着全世界大约12%的已知物种，并为数十亿人类的生存与发展提供不可或缺的产品与服务。然而全球淡水生态系统正处于危机之中，全球范围内约三分之一的淡水生物面临灭绝的风险，这个比例远高于陆地生物。');
INSERT INTO `t_blog` VALUES (34, b'0', b'0', '- 和林格尔生态修复与可持续发展项目\r\n\r\n![231](https://www.tnc.org.cn/Upload/image/20220706/20220706132135_6969.jpg \"231\")\r\n\r\n# 挑战\r\n\r\n\r\n\r\n内蒙古自治区位于中国北部，在中国生态安全战略格局中占据十分重要的位置，发挥着重要生态屏障作用。长期以来，由于过度放牧、不适当的开垦和耕作、森林过度采伐以及水资源的不合理利用等原因，在气候变化的推动下，致使内蒙古关键生态系统遭到了破坏，生态系统服务功能逐渐丧失，生态屏障的作用逐渐减弱。气候变化、土地荒漠化、水资源短缺、生物多样性丧失，这些全球重要的环境问题，在内蒙古都有突出的表现，这已成为北方生态安全屏障建设和经济可持续发展的最大威胁，严重影响区域的生态安全与可持续发展，脆弱的生态急需修复。\r\n\r\n\r\n\r\n# 目标\r\n\r\n\r\n\r\n2010年，TNC启动了内蒙古生态修复和保护项目，致力于探索适应内蒙古干旱及半干旱地区关键生态系统的解决方案，从“探索适应气候变化的生态修复与保护规划”和“因地制宜的实地示范”两方面寻求解决之道。在内蒙古干旱半干旱区典型生态系统的关键区域，以适应气候变化的生态修复规划为基础，进行多维度、科学的系统性修复与保护；以当地社区为主体的多方参与和基于自然的解决方案为基础，通过技术引进和机制创新，探索并践行生态价值实现路径，在带动社区增收的同时，保证生态系统持续发挥其生态服务功能，增强对气候变化的适应能力，形成可复制可推广的干旱半干旱区退化土地的综合修复与管理模式，在中国更广阔的干旱半干旱区推广，为全球干旱半干旱区修复提供经验。\r\n# 相关图片\r\n\r\n![111](https://www.tnc.org.cn/Upload/image/20220706/20220706132206_0397.jpg \"111\")', '2024-02-29 20:22:22', 'https://www.tnc.org.cn/Upload/image/20220706/20220706132206_0397.jpg', '转载', b'1', b'1', b'1', '中国内蒙古生态修复与保护项目', '2024-05-10 16:53:58', 10, 25, 1, '内蒙古自治区位于中国北部，在中国生态安全战略格局中占据十分重要的位置，发挥着重要生态屏障作用。长期以来，由于过度放牧、不适当的开垦和耕作、森林过度采伐以及水资源的不合理利用等原因，在气候变化的推动下，致使内蒙古关键生态系统遭到了破坏，生态系统服务功能逐渐丧失，生态屏障的作用逐渐减弱');
INSERT INTO `t_blog` VALUES (35, b'0', b'0', '# 挑战\r\n\r\n\r\n1998年，受云南省政府邀请进入云南开展生物多样性保护工作。自古以来，云南就以丰富的动植物资源和壮美的景色吸引着世人的目光。在这片青藏高原至云贵高原的过渡地带，高山挺立、峡谷纵横。巨大的海拔高差与复杂的地形，孕育了丰富而独特的生物多样性。虽然这里的人们一直有着尊重自然，与自然和谐相处的传统，但随着人口不断增长和经济高速发展，环境承载的压力越来越大，我们急需一个“双赢”的解决方案：既能保护云南这片生物多样性最密集、也最敏感最脆弱的区域，又能满足当地居民发展的需求。\r\n\r\n\r\n# 目标\r\n\r\n\r\n我们需要与政府、科研院所和民间组织等伙伴一起探索平衡保护与发展的创新模式，包括：创新的保护模式、可持续的保护融资模式、以及环境友好型的社区可持续发展模式，促进自然保护与可持续发展相结合。其中保护云南生物多样性的一个重要策略是围绕旗舰物种和伞护物种开展工作。滇金丝猴便是三江并流地区最具代表性的旗舰物种和伞护种，对滇金丝猴的保护即是对三江并流原始森林生态系统的保护，将惠及与之共栖于原始森林中的多种珍稀濒危动植物，为以国家公园为主体的自然保护体系提供示范。\r\n\r\n![111](https://www.tnc.org.cn/Upload/image/20220705/20220705105752_1860.jpg \"111\")\r\n思考与解决方案\r\n\r\n\r\nTNC认为，如果希望保护行动发挥长效作用，当地社区居民的积极参与至关重要。在项目设计中，TNC充分考虑到在生态保护的同时，兼顾当地社区的利益。在过去的二十多年的工作中，TNC在滇西北支持成立完全由当地村民组成的滇金丝猴巡护队；发放绿色信贷，帮助社区居民转变传统的生计方式，采用环境友好型的绿色生计；推动替代能源，减少当地社区为满足取暖烹饪而产生的薪柴消耗，保护森林和生物多样性；同时TNC也在当地开展了形式多样的环境教育项目，唤起更多人对当地生态环境的关注。“国家公园”这一模式是国际上目前比较认可的兼顾保护和可持续利用的模式之一。2001年，TNC协助云南省政府编制了《滇西北保护与发展行动计划》，同时将国家公园模式引入中国，推动中国首个国家公园（普达措国家公园）的建立，并帮助相关部门开展能力建设，编撰国家公园审核标准、管理办法等。在进行科学保护的同时，帮助公众亲近自然。\r\n\r\n![1111](https://www.tnc.org.cn/Upload/image/20220705/20220705110029_6146.jpg \"1111\")\r\n', '2024-03-31 18:06:37', 'https://www.tnc.org.cn/Upload/image/20220705/20220705105752_1860.jpg', '转载', b'0', b'0', b'0', '中国云南保护项目', '2024-05-10 16:49:59', 41, 22, 1, '1998年，受云南省政府邀请进入云南开展生物多样性保护工作。自古以来，云南就以丰富的动植物资源和壮美的景色吸引着世人的目光。在这片青藏高原至云贵高原的过渡地带，高山挺立、峡谷纵横。巨大的海拔高差与复杂的地形，孕育了丰富而独特的生物多样性');
INSERT INTO `t_blog` VALUES (37, b'0', b'0', '海洋覆盖了地球表面的四分之三，孕育着世界上超过半数的生命，我们的星球因此被称为蓝色星球。然而, 全世界的海洋资源都面临挑战和危机，如栖息地的退化，海洋垃圾污染，气候变化带来的升温和海洋酸化，过度捕捞导致的渔业资源枯竭。中国的海洋环境也同样不容乐观，与上个世纪50年代相比，中国已累计丧失57%的温带滨海湿地，其中包括73%的红树林和80%的珊瑚礁。\r\n![图片](https://www.tnc.org.cn/Upload/image/20220704/20220704163909_5906.jpg \"图片\")\r\n\r\nTNC在全球海洋保护领域已有超过25年的实践经验，工作领域涵盖海洋栖息地的保护与修复、可持续渔业、海岸带弹性提升、海洋及海岸带区域综合管理各个方面，致力于保护海洋与海岸带的生态多样性，从而保障数亿人生产和生活所依赖的海洋生态环境。2016年TNC中国启动了海洋项目，将中国海岸带栖息地保护和修复与可持续渔业确定为主要工作领域。\r\n\r\n\r\n\r\n#海岸带栖息地保护与修复\r\n\r\n\r\n\r\n滨海岸带的栖息地，如红树林，海草床，盐沼，珊瑚礁和牡蛎礁是重要的生态系统，发挥着不可忽视的生态系统服务功能，如：\r\n\r\n> 1）增加生物多样性，养护渔业资源，为滨海岸带的其他生物提供庇护，觅食和繁殖的场所；\r\n2）减灾防灾，消减波浪能和浪高，减少灾害损失；\r\n3）净化水质，吸收水体中的氮磷等营养物，减轻富营养化程度；\r\n4）固碳，将空气中的二氧化碳固定和沉积到植物和土壤中；\r\n5）为沿海居民提供就业、游憩和文化的机会。\r\n\r\n\r\n在这些栖息地类型中，牡蛎礁是具有重要生态服务功能，但还没有受到广泛关注和研究的生态系统，TNC借鉴国际上牡蛎礁保护和修复的经验，在中国进行保护修复政策到实地实践的探索。\r\n\r\n\r\n\r\n蓝碳生态系统（红树林、海草床和盐沼湿地）的固碳潜力已经得到国际社会的广泛认可，在国际志愿碳市场也具备了相应的碳汇方法学，然而这些方法学的运用还十分有限，TNC与合作伙伴积极探索蓝碳方法学在中国的应用以及中国CCER湿地碳汇方法学的开发。同时，TNC也开发了蓝碳生态系统的减灾效益计量方法学，使蓝碳生态系统的减灾效益量化并具有交易的潜力。\r\n\r\n\r\n\r\n# 可持续渔业\r\n\r\n\r\n\r\n据世界粮农组织2018年统计，全球的水产品生产达到了前所未有的一亿七千九百万公吨，这既包括了捕捞的水产品，也包含了养殖的水产品，这些水产品每天为全球数十亿人口提供食物，占全球动物蛋白消耗量的16%。水产品的生产相较其他动物蛋白生产碳排放相对较小，在管理的得当的情况下，将成为重要的可持续食物来源。可持续养殖与捕捞都是TNC海洋项目关注的领域。\r\n\r\n\r\n\r\n早期水产养殖业快速且粗放的增长对环境产生了一定程度的负面影响，如生境退化、水体污染、干扰野生鱼类种群等。然而，越来越多的科学研究指出，在选址合理、养殖密度适宜、设施环保等养殖条件下，一些水产养殖系统不仅不污染环境，还能发挥多重生态系统服务功能，我们将其称之为“修复性水产养殖”。TNC与合作伙伴们探索如何通过改善管理发挥贝藻类养殖的水环境修复效益。\r\n# 展望\r\n\r\n![tupian](https://www.tnc.org.cn/Upload/image/20220704/20220704163328_1281.jpg \"tupian\")', '2024-04-17 23:26:32', 'https://www.tnc.org.cn/Upload/image/20220704/20220704163909_5906.jpg', '', b'1', b'1', b'0', '中国海洋项目', '2024-05-10 16:45:05', 7, 24, 1, '海洋覆盖了地球表面的四分之三，孕育着世界上超过半数的生命，我们的星球因此被称为蓝色星球。然而, 全世界的海洋资源都面临挑战和危机，如栖息地的退化，海洋垃圾污染，气候变化带来的升温和海洋酸化，过度捕捞导致的渔业资源枯竭。中国的海洋环境也同样不容乐观，与上个世纪50年代相比，中国已累计丧失57%的温带滨海湿地，其中包括73%的红树林和80%的珊瑚礁。');
INSERT INTO `t_blog` VALUES (38, b'0', b'0', '# 挑战\r\n\r\n**观测表明**：人为活动引起的碳排放使2017年全球地表平均温度相对工业化前上升了约1℃，平均每10年增温0.2℃（IPCC, 2018）。如果不采取减排措施，本世纪末升温幅度将超过4℃。在人类面临的数十个全球风险中，与气候有关的风险（包括气候变化和极端天气）是未来10年面临的最严峻的危机。《中国气候变化蓝皮书（2021）》指出中国是全球气候变化的敏感区和影响显著区，1951—2020年，中国年平均气温每10年升高0.26℃，明显高于同期全球平均水平；近20年是20世纪初以来的最暖时期。而为了将全球长期升温幅度控制在1.5 ℃以内，以避免气候变化造成的严重后果，需要全球于2050年左右实现净零排放。人类社会和自然生态系统，如何减缓和适应气候变化已成为十分紧迫的问题。\r\n\r\n# 目标\r\n\r\n大自然保护协会（TNC）与中国政府以及其他合作伙伴紧密合作，以科学证据为基础，通过实地示范和政策推动，减缓气候变化，同时提高自然和社会经济系统适应气候变化的能力。一方面，积极践行“基于自然的解决方案（NbS）”应对气候变化的策略。通过开展生态系统（森林、草地、湿地、海洋、农田等）减排增汇示范，从实践者的角度提供可复制可推广的NbS最佳实践方案。同时推动NbS在应对气候变化相关政策以及生态系统管理和修复中主流化。另一方面，中国TNC 与合作伙伴一起，开展平衡生态保护与经济建设需求的可再生能源发展的空间规划，并开发可再生能源的选址工具，推动“碳中和”和“生态保护”协同发展。\r\n![气候变化被广泛认为是当今全球所面临的最为严峻的挑战，遏制气候变暖、力争在本世纪中期实现碳中和是人类的共同使命](https://www.tnc.org.cn/Upload/image/20220704/20220704154511_7972.jpg \"气候变化被广泛认为是当今全球所面临的最为严峻的挑战，遏制气候变暖、力争在本世纪中期实现碳中和是人类的共同使命\")\r\n# TNC的思考与解决方案\r\n\r\n\r\n应对气候变化的“基于自然的解决方案（Nature-based Solutions, NbS）\r\nTNC一直致力于探索、实践和推广通过NbS应对气候变化、生物多样性丧失、自然灾害、水安全、食物安全等全球挑战。2021年，TNC的生态保护工作者和科学家在机构70年科学和实践经验积淀的基础上发布《基于自然的解决方案：研究与实践》一书，这是国内首部NbS领域中文书籍，发布后在内业受到广泛关注。我们认识到，在气候变化方面，能源、工业、交通等排放行业的减排是未来减排的重点行业。然而，即使在最乐观情况下，单靠这些重点减排行业的努力，我们也难以实现2℃的温控目标，更不能奢望控制在1.5℃。除了在排放行业采取更强有力的减排措施外，基于自然的解决方案（NbS）能够为实现《巴黎协定》的控温目标发挥不可替代的作用。相比传统的以节能减排为主的气候变化解决方案，基于自然的解决方案能够在减缓气候变化的同时，发挥生物多样性保护、水源涵养、土壤保育等多重协同效益，从而提升对气候变化的适应能力。中国TNC多年来一直与多方合作伙伴紧密合作，通过实地示范和政策建议，推进NbS应对气候变化政策与行动。', '2024-04-21 11:53:10', 'https://www.tnc.org.cn/Upload/image/20220704/20220704154511_7972.jpg', '转载', b'1', b'1', b'1', '中国气候变化项目', '2024-05-10 16:35:58', 11, 21, 1, 'TNC一直致力于探索、实践和推广通过NbS应对气候变化、生物多样性丧失、自然灾害、水安全、食物安全等全球挑战。2021年，TNC的生态保护工作者和科学家在机构70年科学和实践经验积淀的基础上发布《基于自然的解决方案：研究与实践》一书，这是国内首部NbS领域中文书籍，发布后在内业受到广泛关注');
INSERT INTO `t_blog` VALUES (39, b'0', b'0', '# 项目背景\r\n\r\n大自然保护协会（TNC）长期致力于全球自然保护事业。在中国，TNC实施了多个陆地保护项目，旨在引入国际前沿的保护理念和方法，结合本土实际，提升自然保护地的管理水平和技术手段。\r\n\r\n# 核心工作\r\n\r\n**增强科学保护能力**:TNC通过示范并创新管理模式和技术，协助自然保护机构提升科学保护能力。\r\n\r\n**推动制度建设**：致力于促进中国自然保护体系的多方参与，完善相关的制度和政策法规。\r\n\r\n**保护关键生态区域**：目标是确保中国生态功能重要和生物多样性丰富的关键土地得到有效保护和修复。\r\n\r\n**关注农业土地健康**：同时，项目还聚焦于农业土壤的生态保护，并探索基于自然的可持续农业生产模式。\r\n# 全球与中国自然保护现状\r\n\r\n全球生物多样性正面临严峻挑战，自1970年以来，脊椎动物种群数量大幅下降。\r\n中国虽已建立众多自然保护地，但国家公园建设尚处于起步阶段，且存在系统性不足、管理效能不高等问题。\r\n# TNC的贡献\r\n\r\n自1998年进入中国以来，TNC不断引入国际先进的保护理念，结合中国国情，努力提升自然保护地的管理和保护效果，同时推动农业土地的生态保护与可持续发展。\r\n\r\n# 相关图片\r\n\r\n[![内蒙古和林格尔地区的秋](https://www.tnc.org.cn/Upload/image/20220711/20220711105822_1676.jpg \"荒地\")](https://www.tnc.org.cn/Upload/image/20220711/20220711105822_1676.jpg \"荒地\")\r\n\r\n', '2024-05-10 15:46:57', 'https://www.tnc.org.cn/Upload/image/20220711/20220711105822_1676.jpg', '转载', b'1', b'1', b'1', '中国陆地保护项目', '2024-05-10 16:45:23', 5, 22, 1, '大自然保护协会（TNC）长期致力于全球自然保护事业。在中国，TNC实施了多个陆地保护项目，旨在引入国际前沿的保护理念和方法，结合本土实际，提升自然保护地的管理水平和技术手段。');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章地域关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (38, 29);
INSERT INTO `t_blog_tags` VALUES (37, 29);
INSERT INTO `t_blog_tags` VALUES (37, 34);
INSERT INTO `t_blog_tags` VALUES (32, 34);
INSERT INTO `t_blog_tags` VALUES (39, 24);
INSERT INTO `t_blog_tags` VALUES (39, 26);
INSERT INTO `t_blog_tags` VALUES (35, 24);
INSERT INTO `t_blog_tags` VALUES (35, 34);
INSERT INTO `t_blog_tags` VALUES (34, 26);
INSERT INTO `t_blog_tags` VALUES (34, 34);

-- ----------------------------
-- Table structure for t_blog_types
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_types`;
CREATE TABLE `t_blog_types`  (
  `blogs_id` bigint(20) NOT NULL,
  `types_id` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章领域关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog_types
-- ----------------------------
INSERT INTO `t_blog_types` VALUES (32, 24);
INSERT INTO `t_blog_types` VALUES (32, 28);
INSERT INTO `t_blog_types` VALUES (34, 24);
INSERT INTO `t_blog_types` VALUES (34, 33);
INSERT INTO `t_blog_types` VALUES (35, 24);
INSERT INTO `t_blog_types` VALUES (35, 33);
INSERT INTO `t_blog_types` VALUES (37, 26);
INSERT INTO `t_blog_types` VALUES (38, 26);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地域名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自然地域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (24, '云南');
INSERT INTO `t_tag` VALUES (26, '内蒙古');
INSERT INTO `t_tag` VALUES (29, '上海');
INSERT INTO `t_tag` VALUES (34, '中国');
INSERT INTO `t_tag` VALUES (35, '澳大利亚');
INSERT INTO `t_tag` VALUES (36, '非洲');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领域名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自然领域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (21, '气候变化');
INSERT INTO `t_type` VALUES (22, '陆地');
INSERT INTO `t_type` VALUES (23, '淡水');
INSERT INTO `t_type` VALUES (24, '海洋');
INSERT INTO `t_type` VALUES (25, '高原');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保护大自然后台管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '../images/touxiang.png', '2024-04-02 21:25:33', '1443592788@qq.com', '贾玉杰', 'e10adc3949ba59abbe56e057f20f883e', 1, '2024-04-02 21:26:10', 'jiayujie');

SET FOREIGN_KEY_CHECKS = 1;
