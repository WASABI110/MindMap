<?xml version="1.0" encoding="UTF-8" standalone="no"?><map version="0.8.1"><node CREATED="1523406960739" ID="7tbh32sm8vuecmg96khoen2p5v" MODIFIED="1523406960739" TEXT="2018Q2"><node CREATED="1523406960740" ID="2i415q72pdckt8i28nb75h9sqe" MODIFIED="1523406960740" POSITION="right" TEXT="运维"><node CREATED="1523406960740" ID="02ddvqc0ckdqte3u2hegp3kh4u" MODIFIED="1523406960740" TEXT="CSC"><node CREATED="1523406960740" ID="249o4b3amdksmu29o6blnjr2dk" MODIFIED="1523406960740" TEXT="根据供应商+车型+工厂三者生成BM单。(预计开发工作量为1-2d)。&#13;&#10;对于BM单维护界面，采购工厂字段可编辑，老数据需要维护，新数据的话就按照生成的工厂附上值。"/><node CREATED="1523406960740" ID="68mpolt4ql6fg7v0na31th7aea" MODIFIED="1523406960740" TEXT="供应商有效期管理"><hook NAME="accessories/plugins/NodeNote.properties"><text>—供应商登陆
http://10.122.16.163:8888/sol-csc/pages_v4/comp-test/changeuser.jsf 

—供应商人员管理
http://10.122.16.163:8888/sol-csc/pages_v4/supplier/supplier_contextmenu_manage.jsf 

—供应商激活页面
http://10.122.16.163:8888/sol-csc/public_v4/supplier/ppsupplier_user_activate.jsf 

—供应商报价
http://10.122.16.163:8888/sol-csc/pages_v4/supplier_quotation/supplier_quotation_frame.jsf </text></hook></node><node CREATED="1523406960740" ID="2v8nmkglerrr3ov59mottf1qc1" MODIFIED="1523406960740" TEXT="BUG LIST"><node CREATED="1523406960740" ID="27ptr6kd93vdjgdv46qmpjnnmu" MODIFIED="1523406960740" TEXT="零公里读取退货单号发票号，但是文件没有打上时间戳，任务每天都会执行历史数据，导致任务耗时长、一旦有服务器中断就会影响最新文件的读取"><node CREATED="1523406960740" ID="22foq0sc6nfodruapkgncv5s1a" MODIFIED="1523406960740" TEXT="为何没有打上时间戳"/><node CREATED="1523406960740" ID="3rsmdqp6mcd87mvcuc10l48tlu" MODIFIED="1523406960740" TEXT="如何修复"/><node CREATED="1523406960740" ID="7g2g52lif3os0o92k9ge5hetch" MODIFIED="1523406960740" TEXT="临时：将18年前的数据均备份至/0KM_ARCHIVE"/></node></node></node><node CREATED="1523406960740" ID="5nnkp4eluc39t2toheucvjnvhk" MODIFIED="1523406960740" TEXT="IM"><node CREATED="1523406960740" ID="7s7f57rgim821v4b4m7aogrqe8" MODIFIED="1523406960740" TEXT="TOMCAT测试升级"><node CREATED="1523406960740" ID="228h2fcd2p70nqenvctibher4d" MODIFIED="1523406960740" TEXT="修改默认端口"/></node></node><node CREATED="1523406960740" ID="0uf0ggd92m66puthm49s01gd3p" MODIFIED="1523406960740" TEXT="BNK"><node CREATED="1523406960740" ID="2pv3qk7mc8t3og9tfik942qbe0" MODIFIED="1523406960740" TEXT="5月初新版本"><node CREATED="1523406960740" ID="376bfcs0jfjos2t2acj0h0n8jl" MODIFIED="1523406960740" TEXT="临时剥离（条件价格控制）"/><node CREATED="1523406960740" ID="4th1dimg9f1r4hg77fb0jtcc28" MODIFIED="1523406960740" TEXT="BNK参考价"/><node CREATED="1523406960740" ID="0kffmnm09iasu0hqkpenglh6gk" MODIFIED="1523406960740" TEXT="强制审批"/></node></node><node CREATED="1523406960740" ID="0dkjlc8vkqsr8qb6c8i84i59e3" MODIFIED="1523406960740" TEXT="BIDLINK"><node CREATED="1523406960740" ID="3eihpa8jo5ll7u9oi60g10svk3" MODIFIED="1523406960740" TEXT="5分钟内必须出价"><node CREATED="1523406960740" ID="77a9oerbv3bgj7s96jukuhtod2" MODIFIED="1523406960740" TEXT="结论：CSG项目默认规则可以调整；但是5分钟出价提醒和低于20%均价提醒无法完成"/></node></node><node CREATED="1523406960740" ID="5haolc19lrvqc4fl85k9tqare6" MODIFIED="1523406960740" TEXT="BKM"><node COLOR="#FF0303" CREATED="1523406960740" ID="187oq4d3drkkhb44isi25ceqro" MODIFIED="1523406960741" TEXT="BKM账号无法同步到定点供应商数据"><hook NAME="accessories/plugins/NodeNote.properties"><text>SVCD仅仅维护内部用户和外部用户的帐号表（流程审批），即对于供应商和经销商，这块数据无法
做关联查询输出给应用，按照需求，针对供应商和经销商会做一个调整，即在分发供应商和经销商数据时，不做关联查询。

数据分发接口功能逻辑：
1）  内部人员（5-6位数字的人员）和外部人员（EXT+5位数字）
支持全量分发和按应用分发（即输出关联应用帐号查询后的数据）

2）  经销商人员和供应商人员（全部所用）
仅支持全量分发。（取消关联查询，即针对TB_CSC_USER_CHANGE_LOG和TB_MDM_USER_CHANGE_LOG表）</text></hook><node CREATED="1523406960741" ID="0ikllna6h52ji9f6gejlp4skta" MODIFIED="1523406960741" TEXT="sp10742015 "/><node CREATED="1523406960741" ID="33ed5m52vtt14f89epf102f9i9" MODIFIED="1523406960741" TEXT="SVCD对接：需要审批通过后，才能从SVCD同步到用户账号"/></node><node CREATED="1523406960741" ID="1q464ucpi2502hoapg89hlk8mb" MODIFIED="1523406960741" TEXT="BKM同步新增用户报错"><hook NAME="accessories/plugins/NodeNote.properties"><text>用户偏好表的ID重复</text></hook></node><node CREATED="1523406960741" ID="2f4n0cecuutv9dl0dkbusq4qva" MODIFIED="1523406960741" TEXT="三个月运维问题清单"><hook NAME="accessories/plugins/NodeNote.properties"><text>1)在Chrome浏览器的特定版本上,Filter中筛选供应商的插件,输入关键字不会自动显示结果,需要按回车键才能显示

2)登录日志页面上的查询条件不起作用

3)供应商用户登录时,在同一秒中会记录多条登录日志"

4)导入n-tier定点供应商数据任务报错,
No Dialect mapping for JDBC type: -9
(NtierSupplierDataDaoImpl.java:874

5)AI标签/数值化及传输任务报错	
ORA-00942: 表或视图不存在
BkaDaoImpl.java:1498

6)导出Excel加入session控制

7) MAC无法识别登陆用户设备是移动端还是PC</text></hook></node></node><node CREATED="1523406960741" ID="5iooge77g4f7vb7p9ih8i2hmvv" MODIFIED="1523406960741" TEXT="审计"><node CREATED="1523406960741" ID="2mvo64c7huu8tt6mmgpaisas3t" MODIFIED="1523406960741" TEXT="授权概念文档"/></node></node><node CREATED="1523406960741" ID="5ic24ksc32en7uapb175gl66v3" MODIFIED="1523406960741" POSITION="right" TEXT="项目"><node CREATED="1523406960741" ID="2b2qit7imnja1it6gq7rg3adgt" MODIFIED="1523406960741" TEXT="MP"><node CREATED="1523406960741" ID="4m3ig9qllad01715k3rliuj3ki" MODIFIED="1523406960741" TEXT="MP"><node CREATED="1523406960741" ID="77uljpfqris0u8vkh1lfhd9vd7" MODIFIED="1523406960741" TEXT="测试计划"/><node CREATED="1523406960741" ID="4u2fg91d5g862jsnvg746fs4fj" MODIFIED="1523406960741" TEXT="JUNCTION配置"><node CREATED="1523406960741" ID="498lfncpfn4ojuq2jjtk4t2ckj" MODIFIED="1523406960741" TEXT="EP门户添加入口"/><node CREATED="1523406960741" ID="2pr521sht9lgpq77voejmkm9fi" LINK="http://cnsvwshvm01203.csvw.com/MORE/portal" MODIFIED="1523406960741" TEXT="http://cnsvwshvm01203.csvw.com/MORE/portal"><hook NAME="accessories/plugins/NodeNote.properties"><text>必须是大写MORE
</text></hook></node></node><node CREATED="1523406960741" ID="4i8no3fjpfpte04rckpnprd51p" MODIFIED="1523406960741" TEXT="第二阶段工作"><node CREATED="1523406960741" ID="060pendd0h2o1ikfoig4k2fado" MODIFIED="1523406960741" TEXT="一阶段回归迭代的内容如何处理？"><icon BUILTIN="flag"/></node></node></node><node CREATED="1523406960741" ID="1q5at2p17rcchkm3cgkaanerv1" MODIFIED="1523406960741" TEXT="CSC"><node COLOR="#FF0303" CREATED="1523406960741" ID="2b67saod7ujgvib0m34fgghavu" MODIFIED="1523406960741" TEXT="第一次代码检查"/></node></node></node><node CREATED="1523406960741" ID="6r7t043gkv33smjo8kuepojaqh" MODIFIED="1523406960741" POSITION="left" TEXT="战略"><node CREATED="1523406960741" ID="0puj4kn5nubcn7l2lijpg9ji4f" MODIFIED="1523406960741" TEXT="采购顾问"><node CREATED="1523406960741" ID="39iot164p9l75febk85vnn042d" MODIFIED="1523406960741" TEXT="整理一般采购业务"/><node CREATED="1523406960741" ID="1o3jqi8ff878siecfmj708m4s0" MODIFIED="1523406960741" TEXT="生产采购流程梳理"/></node><node CREATED="1523406960741" ID="74hkh5r430u9lumj99rd17odav" MODIFIED="1523406960742" TEXT="数据分析"/><node CREATED="1523406960742" ID="0nulu28bal8hl9epa87767n6cf" MODIFIED="1523406960742" TEXT="敏捷管理"/></node></node></map>