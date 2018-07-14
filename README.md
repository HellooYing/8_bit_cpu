# 8_bit_cpu
ALINX ALTERA FPGA黑金开发学习板 CYCLONE IV 数电课设八位模型机

东北大学数电课设指南！

运行到板子上：
1.选黑金板子不要选睿智板子

2.根据https://blog.csdn.net/chengbozhe/article/details/47335391下载usb blaster驱动

3.quartus ii（版本号1.8）打开cpu_bz目录下的cpu.qpf文件打开工程

点上方的运行按钮（小三角号，start compilation），应该会运行上好几十秒，等下面显示0 error，好几十warning就ok了。

一般来说下到板子之前还要连管脚，就是把程序里的输入输出跟具体板子上的元件连起来，我这个写好了，可以打开qsf文件查看。

点三角号右边第六个的programmer，进去以后单击Hardware Setup按钮，设置下载线。不会的话看上传的“Quartus使用说明（清华版）.pdf”程序下载部分，有带图说明。

把板子的开关打开，在程序里点start，板子会循环显示0-2-5-2-4，显示的是acc累加器的运算结果，过程是默认0---执行sta赋值变成2---执行add加变成5---执行sub减变成2---执行and没变还是2---执行shl逻辑左移变成4。想要答辩过得去最好自己手算一遍cpuuu.vhd，一个多小时就ok，会具体问到哪一步从几变成几，对应的代码在哪一行，某个变量是什么东西干啥的。


仿真：
1.quartus ii（版本号1.8）打开cpu_fz目录下的cpu.qpf文件打开工程,点三角运行

2.file-open-(点开all files）-打开Waveform2.vwf，点击simulation，点击run functional simulation，如果不报错的话波形就出来了。如果报错的话就自己新建。

不过事实上学会然后自己做比试图理解别人的东西要简单一些。要按照红书做的话就是把每个模块调通然后导出bsf再新建bdf把模块连起来。建议是做成分模块的，我这个没有分模块估计会拿良或者中。

—————————————————————————————————————————————————————

文件目录

alu是单独拿出来写的算术逻辑模块，cpu是8位模型机，后缀bz的是上板子用的，后缀fz的是仿真用的。之所以要分上板子和仿真是因为上板子的要分频否则显示的0-2-5-2-4会肉眼不可见的飞快循环，于是就显示08。差点因为这个凉了。

————————————8_bit_cpu————————————————————————————————

│  Quartus使用说明（清华版）.pdf

│  黑金板子的管脚.tcl

│  微指令流程图.png

│  微指令编码.png

│  指令编码.png

│  控制信号作用.png

│  流程图.png

│  结构图.png

│

├─alu_bz--------------------可以在板子上跑的算数逻辑模块

│  │  alu.bdf--------------------主要的bdf原理图文件

│  │  alu.qpf

│  │  alu.qsf--------------------管脚的配置写在这里

│  │  aluu.bsf--------------------aluu.vhd导出的bsf元件图

│  │  aluu.vhd--------------------vhdl写的主要程序

│  │  shuchu.bsf--------------------译码器shuchu和yima是把8位2进制output转换为2位16进制数字显示在数码管上的程序。

│  │  shuchu.vhd

│  │  yima.bsf

│  │  yima.vhd

│  │

│  ├─db

│  ├─incremental_db

│  ├─output_files

│  └─simulation

│

├─alu_fz--------------------可以仿真的算术逻辑模块

│  │  alu.bsf

│  │  alu.qpf

│  │  alu.qsf

│  │  alu.vhd

│  │  shuchu.bsf

│  │  yima.bsf

│  │

│  ├─db

│  ├─incremental_db

│  ├─output_files

│  └─simulation

│

├─cpu_bz--------------------在板子上跑的cpu

│  │  cpu.bdf

│  │  cpu.qpf

│  │  cpu.qsf

│  │  cpu.qws

│  │  cpufz.bdf

│  │  cpuuu.bsf

│  │  cpuuu.vhd

│  │  cpu_defs.vhd

│  │  shuchu.bsf

│  │  shuchu.vhd

│  │  yima.bsf

│  │  yima.vhd

│  │

│  ├─db

│  ├─output_files

│  └─simulation

│

└─cpu_fz--------------------用来仿真的cpu
 
│  cpu.bdf

│  cpu.qpf

│  cpu.qsf

│  cpubz.bdf

│  cpuu.bsf

│  cpuu.vhd

│  cpu_defs.vhd

│  shuchu.bsf

│  shuchu.vhd

│  yima.bsf

│  yima.vhd

│

├─db

├─incremental_db

├─output_files

└─simulation
