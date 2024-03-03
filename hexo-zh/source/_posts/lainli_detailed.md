---
title: 大连1号-连理卫星（技术文档）
date: 2024-2-29 12:00
updated:
tags: 
 - 连理卫星
 - 技术文档
 - 研制团队
categories: 
 - 技术文档
keywords:
description: 大连1号-连理卫星官方技术文档
top_img: https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli/working.jpg
comments:
cover: https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli/working.jpg
toc:
toc_number:
toc_style_simple:
copyright:
copyright_author:
copyright_author_href:
copyright_url:
copyright_info:
mathjax:
katex:
aplayer:
highlight_shrink:
aside:
abcjs:
---

## 卫星概述

**大连1号—连理卫星**（Lianli）（以下简称连理卫星）是一颗12U的高分辨率对地遥感立方星，质量为17 kg，体积为1012.3mmx428mmx403mm（展开状态），并使用大连理工大学自有X频段地面测控站（辽宁省第一套地面站）进行测控，主要功能是验证高分辨率遥感成像、国产高可靠OpenHarmony操作系统、先进卫星部组件与基于3D打印技术的超轻型部署器等一系列创新技术。

卫星的主载荷为**高分辨率多光谱相机**，相机具有全色谱和多光谱共5个谱段，能够在轨实现低成本亚米级高分辨率的海洋/对地观测。**OpenHarmony操作系统与国产处理芯片**综合方案的使用，让系统的性能与可靠性大幅提高。不同于传统的卫星姿轨控动力系统所采用的肼类有毒推进剂，这颗卫星使用了创新的**硝酸羟胺(HAN)单组元模块推进系统**，具有绿色无毒、能量高、功耗低、可预包装等特点，大幅提升了微纳卫星在轨快速机动能力。

北京时间2024年1月18日14时许，连理卫星从天舟六号货运飞船成功释放入轨，现正常在轨飞行。

![连理卫星实体](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli/satellink_real.jpg)

## 总体指标

| 指标名称 | 设计值 | 指标名称 | 设计值 |
| ---      | ---    |   ---    |  ---  |  
| 轨道 | 400 km x 400 km | 定轨精度 | 优于5m(1σ) |
| 轨道倾角 | 42.8° |  国际卫星标识符 | 2023-063A |
| 姿态确定精度  | 优于0.03°(3σ) | 姿态指向精度 | 优于0.05°(3σ)  |  
| 姿态稳定度| 优于0.003°/s(3σ)|姿态机动能力 |优于2°/s |
| 母线电压 | 9~12.3V| 蓄电池容量| ≥15Ah|  
| 数传模式| 明传/密传| 数传码速率| 400Mbps|  
| 分辨率| 优于1m@400km| 推扫幅宽| 优于9.2km@400km|  
| 卫星质量| 17kg | 卫星寿命| ≥1年 |  

推扫模式谱段：

* PAN：450~700nm
* B1：430~510nm
* B2：510~580nm
* B3：630~690nm
* B4：740~895nm

## 方案设计

### 姿态控制分系统

![姿态控制分系统组成](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/1-zitai.png)

* 轨道测量由导航接收机提供导航位速信息(位置精度5m，速度精度0.1m/s)；
* 姿态测量部件包括磁强计、MEMS陀螺仪、数字太阳敏感器(精度0.5°)、光纤陀螺(零偏稳定性1.5°/h)、星敏感器(定姿精度5″)；
* 中心控制单元与综合电子共用计算机，负责统一调度控制算法、任务流程、数据接口和时序等，控制频率4Hz；
* 执行机构包括反作用飞轮(最大力矩2.22mNm)、磁力矩器(最大磁矩1Am²)、推进系统(比冲0.5N，总冲600Ns)。

![卫星工作模式](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/2-zitai.png)

卫星的工作模式主要有箭上模式、星箭分离模式、速度阻尼模式、在轨待机模式、业务模式、轨控模式、安全模式7个工作模式；业务模式细化为推扫成像、凝视成像模式、凝视数传模式、AI图像识别模式以及数据压缩模式；当满足模式切换条件时，卫星可自主进行模式跳转，在各个模式跳转过程中，卫星能够完成各种工况下的自主配置，从而实现卫星从发射到在轨执行各种业务的稳定运行。

### 综合电子分系统

![综合电子分系统](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/3-zonghedianzi.png)

主要完成星务管理、整星时统管理、姿态控制运算、测控通信及有效载荷任务的控制管理。

* 采用SOC片上系统处理器作为主控芯片，主频100MHz，集成Mems陀螺仪和磁强计；
* 提供2路CAN总线接口；
* 提供4路RS422接口；
* 提供磁力矩器驱动控制；
* 提供帆板展开信号；
* 提供星箭分离信号。

### 测控数传分系统

![测控和数传原理示意图](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/5-shuchuan.png)

采用X频段测控和数传一体化设计，降低系统的体积、重量和功耗。

* 负责遥控、遥测信号在卫星与地面站之间的传输，以及地面测控网对卫星的跟踪；
* 负责实现载荷数据对地数传功能；
* 遥测与数传采取分时工作方式；
* 遥控遥测采用BPSK加直序扩频方式；
* 数传采用QPSK方式，速率400Mbps。

![测控数传一体机](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/4-shuchuan.png)

### 电源分系统

![电源分系统示意图](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/6-dianyuan.png)
电源分系统示意图

电源分系统由太阳电池阵、锂离子蓄电池组和电源控制器组成。母线电压范围9V～12.3V。采用限压式的充电方式，太阳供电与充电功能合一。

* 在轨期间，为卫星提供一次电源，保证各仪器设备的正常工作；
* 发射前，由太阳电池阵模拟器为蓄电池充电；
* 为分系统单机设备或部件供电；
* 蓄电池组3串6并，容量15Ah；
* 一次母线可控配电8路，二次母线可控配电11路；
* 太阳电池阵供电能力：≥48W；
* 实现整星温度测量及加热带控制。

### 载荷分系统

![光学相机结构示意图](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/7-guangxuexiangji.png)
光学相机结构示意图

相机（不含对外接口）主要由反射镜组件、校正镜、主承力结构以及主背板等组成。

* 成像模式：推扫、凝视视频；
* 谱段：全色，多光谱B/G/R/NIR；
* 1m@500km;
* 静态传函：≥0.15；
* 信噪比： ≥38dB；
* 焦距：1300mm；
* 重量：3.5kg;
* 功耗：13W(成像)，20W(在轨识别);
* 像元尺寸：3.2μm。

### 试验载荷分系统

![一体姿态测量单元（AMU）与OpenHarmony](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/8-zitai.png)
一体姿态测量单元（AMU）与OpenHarmony

一体姿态测量单元（AMU）采用开源鸿蒙航天实时操作系统，内部集成太阳敏感器、三轴陀螺仪、三轴磁强计、温度传感器以及高性能处理器，可以实时测量航天器的三轴姿态信息，并进一步实现低精度的姿态确定功能。

* 体积：40mm×40mm×10mm；
* 质量：40g；
* 姿态确定精度：≤1°；
* 通信接口：CAN；
* 供电电压：5V±5%；
* 数据更新率：≥10Hz。

![推进器结构示意图-1](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/9-tuijinqi.png)
![推进器结构示意图-2](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/10-tuinjinqi.png)

HAN推进具有绿色无毒、能量高、可实现预包装（免现场加注）等优点。推进系统采用模块化设计，集成了包括推进剂贮箱、电磁阀、压力传感器等。系统高度集成在1U空间内。

* 体积：96mm×93mm×119mm；
* 推力：~0.5N；
* 羽流全角：30°；
* 额定真空比冲：210s；
* 总冲：≥600Ns（1200Ns）；
* 最小脉宽：100ms；
* 工作电压：12V。

## 轨道部署

### UMSD部署器

![试验操作间拍摄图](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/11-UMSD.jpg)

部署器通过弹簧将立方星弹射出箱体，开关是通过记忆合金分离螺母完成。主要包括舱门、展开锁定机构、3D打印框架结构、分离弹簧、舱门解锁机构、蒙皮、热控组件及分离控制盒等组成。

* 分离速度：1.2m/s；
* 角度偏差：<3°；
* 解锁机构：记忆合金分离螺母;
* 通电时间：2s;
* 分离电阻：1±0.2Ω;
* 分离能量需求：<50J;
* 包络：343.5mm×470mm×516.3mm。

### 部署器各动作时机

![部署器结构示意图-1](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/13-UMSD.jpg)
![部署器结构示意图-2](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/13-2-UMSD.png)
![部署器结构示意图-3](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/13-3-UMSD.png)

* 发射段：部署器承受火箭加速度及振动引起的载荷作用。
* 停靠段：为卫星提供存储空间以及合适的空间环境，包括温度控制及空间防护。分离控制盒提供配电、温度模拟量采集转发等功能。
* 撤离段：接收到卫星分离指令后，控制解锁机构内分离螺母将销子拔出将舱门打开。卫星在弹簧的作用下弹出，实现部署。

### 与货船接口设计

![货运飞船结构示意图-1](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/15-tianzhou.png)
![货运飞船结构示意图-2](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/16-tainzhou.png)

* 安装位置需求：后锥段；
* 电气接口：提供1路100V供电，稳态功率50W；
* 指令需要：2次分离脉冲信号；
* 分离电压：0~5V；脉宽：200ms；脉冲间隔：2s；
* 在轨操作需求：无需航天员在轨操作。

![部署器工作原理图](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/17-bushuqi.jpg)

### 空间站在轨飞行

2023年5月10日21时，大连1号—连理卫星搭载天舟六号货运飞船，随长征七号遥七运载火箭成功发射，连理卫星位于天舟六号货船后锥段。直至2024年1月12日分离前，天舟六号货船作为中国空间站的一部分在轨飞行，北京航天飞行控制中心的实时监控数据监测，连理卫星一切状态正常。

![空间站视角-1](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/18-tiangong.jpg)
![空间站视角-2](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli_detailed/19-tiangong.jpg)

2024年1月18日14时，连理卫星与天舟六号分离，进入独立飞行阶段.
截止目前，连理卫星各系统工作正常。

## 技术牵引

* 连理卫星获取高分辨率图像并实现在轨目标识别，代表了同量级卫星遥感的较高水平，对相关领域发展具有重要的促进作用（图像数据将面向校内各学科免费开放下载）;
* 连理卫星采用了一系列创新先进技术，包括绿色HAN推进技术、一体姿态测量技术等，对于国内微纳卫星发展具有重大意义。
* 新型微纳卫星超轻型释放机构将验证一系列先进技术。包括整体3D打印技术、多星释放与状态监测控制器技术、记忆合金分离螺母解锁机构等。已经用于国内近10种火箭/飞船型号飞行任务中。
* 连理卫星多个部组件所采用的OpenHarmony实时操作系统，在任务调度机制、硬件支持程度、开发费用、稳定性等方面都表现优异，该系统针对航天场景进行了优化，大幅提高了操作系统及各单机的可靠性。目前，大连理工大学正在牵头制定两项基于OpenHarmony的星载实时操作系统标准。

## 团队简介

**总设计师**：夏广庆，工学博士，大连理工大学力学与航空航天学院教授，现任大连理工大学力学与航空航天学院党委书记，主要研究方向为电推进理论与实验、先进空间推进系统设计、微纳卫星总体设计、飞行器流固耦合模拟与测试等。[夏广庆--大连理工大学教师主页](http://faculty.dlut.edu.cn/xiaguangqing/zh_CN/index.htm)

**总指挥**：于晓洲，工学博士，大连理工大学力学与航空航天学院教授，主要研究方向为微小卫星、航天器系统工程、微小卫星先进部组件等。目前全世界唯一一支团队，其研制的立方星搭载过美国的天鹅座(Cygnus)飞船也搭乘过中国的天舟飞船，去过国际空间站也去过中国空间站。[于晓洲--大连理工大学教师主页](http://faculty.dlut.edu.cn/yuxiaozhou/zh_CN/index.htm)

![微纳卫星与先进推进技术研究团队部分成员](https://intellink-01.oss-cn-beijing.aliyuncs.com/images/lianli/%E5%BE%AE%E7%BA%B3%E5%8D%AB%E6%98%9F%E4%B8%8E%E5%85%88%E8%BF%9B%E6%8E%A8%E8%BF%9B%E6%8A%80%E6%9C%AF%E7%A0%94%E7%A9%B6%E5%9B%A2%E9%98%9F%E9%83%A8%E5%88%86%E6%88%90%E5%91%98.jpg)

（英语版王怿辰译）
