const { Document, Packer, Paragraph, TextRun, Table, TableRow, TableCell,
        Header, Footer, AlignmentType, HeadingLevel, LevelFormat,
        BorderStyle, WidthType, ShadingType, PageNumber } = require('docx');
const fs = require('fs');

const border = { style: BorderStyle.SINGLE, size: 1, color: "CCCCCC" };
const borders = { top: border, bottom: border, left: border, right: border };

const doc = new Document({
  styles: {
    default: { document: { run: { font: "微软雅黑", size: 24 } } },
    paragraphStyles: [
      { id: "Heading1", name: "Heading 1", basedOn: "Normal", next: "Normal", quickFormat: true,
        run: { size: 36, bold: true, font: "微软雅黑" },
        paragraph: { spacing: { before: 300, after: 200 }, outlineLevel: 0 } },
      { id: "Heading2", name: "Heading 2", basedOn: "Normal", next: "Normal", quickFormat: true,
        run: { size: 28, bold: true, font: "微软雅黑" },
        paragraph: { spacing: { before: 240, after: 120 }, outlineLevel: 1 } },
      { id: "Heading3", name: "Heading 3", basedOn: "Normal", next: "Normal", quickFormat: true,
        run: { size: 24, bold: true, font: "微软雅黑" },
        paragraph: { spacing: { before: 200, after: 100 }, outlineLevel: 2 } },
    ]
  },
  numbering: {
    config: [
      { reference: "bullets",
        levels: [{ level: 0, format: LevelFormat.BULLET, text: "\u2022", alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 720, hanging: 360 } } } }] },
      { reference: "numbers",
        levels: [{ level: 0, format: LevelFormat.DECIMAL, text: "%1.", alignment: AlignmentType.LEFT,
          style: { paragraph: { indent: { left: 720, hanging: 360 } } } }] },
    ]
  },
  sections: [{
    properties: {
      page: {
        size: { width: 11906, height: 16838 },
        margin: { top: 1440, right: 1440, bottom: 1440, left: 1440 }
      }
    },
    headers: {
      default: new Header({
        children: [new Paragraph({
          alignment: AlignmentType.RIGHT,
          children: [new TextRun({ text: "PandaSU 项目工作报告", color: "666666", size: 20 })]
        })]
      })
    },
    footers: {
      default: new Footer({
        children: [new Paragraph({
          alignment: AlignmentType.CENTER,
          children: [
            new TextRun({ text: "第 ", size: 20 }),
            new TextRun({ children: [PageNumber.CURRENT], size: 20 }),
            new TextRun({ text: " 页 / 共 ", size: 20 }),
            new TextRun({ children: [PageNumber.TOTAL_PAGES], size: 20 }),
            new TextRun({ text: " 页", size: 20 })
          ]
        })]
      })
    },
    children: [
      // 标题
      new Paragraph({
        alignment: AlignmentType.CENTER,
        spacing: { after: 400 },
        children: [new TextRun({ text: "PandaSU 项目工作报告", bold: true, size: 48, font: "微软雅黑" })]
      }),
      new Paragraph({
        alignment: AlignmentType.CENTER,
        spacing: { after: 600 },
        children: [new TextRun({ text: "（2026年3月-4月）", size: 28, color: "666666" })]
      }),

      // 一、项目概述
      new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("一、项目概述")] }),
      new Paragraph({
        spacing: { after: 200 },
        children: [new TextRun({ text: "PandaSU 是一款面向 Android 系统的 Root 环境隐藏与隔离工具，旨在帮助已 Root 的设备在使用需要检测 Root 状态的应用时（如金融类、支付类 App）绕过 Root 检测。项目支持 Android 8 至 Android 16 主流定制系统（HyperOS、ColorOS、OriginOS 等）。", size: 24 })]
      }),

      // 二、技术架构
      new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("二、技术架构")] }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("2.1 核心组件")] }),
      new Paragraph({
        spacing: { after: 200 },
        children: [new TextRun({ text: "项目由三个核心组件构成，各组件协同工作实现 Root 隐藏：", size: 24 })]
      }),

      new Table({
        width: { size: 9026, type: WidthType.DXA },
        columnWidths: [2200, 2500, 4326],
        rows: [
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2200, type: WidthType.DXA },
                shading: { fill: "D5E8F0", type: ShadingType.CLEAR },
                margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "组件", bold: true })] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA },
                shading: { fill: "D5E8F0", type: ShadingType.CLEAR },
                margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "版本", bold: true })] })] }),
              new TableCell({ borders, width: { size: 4326, type: WidthType.DXA },
                shading: { fill: "D5E8F0", type: ShadingType.CLEAR },
                margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "功能说明", bold: true })] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2200, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("主应用 PandaSU")] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("v3.0.32")] })] }),
              new TableCell({ borders, width: { size: 4326, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("Root检测、隔离操作、UI界面")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2200, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("Zygisk模块")] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("v3.1.0")] })] }),
              new TableCell({ borders, width: { size: 4326, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("系统层文件隐藏、属性伪装、Native Hook")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2200, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("LSPosed模块")] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("v3.1.0")] })] }),
              new TableCell({ borders, width: { size: 4326, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("包名过滤、Activity拦截、AppsFilter Hook")] })] }),
            ]
          }),
        ]
      }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("2.2 支持环境")] }),
      new Table({
        width: { size: 9026, type: WidthType.DXA },
        columnWidths: [3000, 6026],
        rows: [
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, shading: { fill: "E8F4E8", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "项目", bold: true })] })] }),
              new TableCell({ borders, width: { size: 6026, type: WidthType.DXA }, shading: { fill: "E8F4E8", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "详情", bold: true })] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("Android 版本")] })] }),
              new TableCell({ borders, width: { size: 6026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("Android 8 (API 26) 至 Android 16 (API 36)")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("Root 方案")] })] }),
              new TableCell({ borders, width: { size: 6026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("KernelSU（当前）、Magisk（兼容）")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("测试设备")] })] }),
              new TableCell({ borders, width: { size: 6026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("HyperOS (Xiaomi), SDK 36, 设备代号 695b931f")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("定制系统支持")] })] }),
              new TableCell({ borders, width: { size: 6026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("HyperOS、ColorOS、OriginOS、OneUI、EMUI、FuntouchOS")] })] }),
            ]
          }),
        ]
      }),

      // 三、版本迭代记录
      new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("三、版本迭代记录")] }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("3.1 v3.0.32（2026-04-01）Android 16 包过滤重构")] }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "问题背景：", bold: true }), new TextRun("原有 PmsHookTarget36 尝试 Hook shouldFilterApplication 方法，但 Android 16 上该方法已变为抽象方法，AppsFilterImpl 可能被移除或重命名，系统层 Hook 策略失效。")]
      }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "解决方案：", bold: true }), new TextRun("采用多层次结果过滤策略，在 PackageManagerService 返回结果前拦截并过滤隐藏的包名。")]
      }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "实现方法：", bold: true })]
      }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("hook PMS 的 getInstalledPackages 方法 — 过滤包列表")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("hook PMS 的 getPackageInfo 方法 — 过滤单个包信息")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("hook PMS 的 getApplicationInfo 方法 — 过滤应用信息")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("hook queryIntentActivities/Services — 过滤 Intent 解析结果")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("hook resolveIntent — 过滤 ResolveInfo")] }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "版本信息：", bold: true }), new TextRun("versionCode 123, APK 大小 16.6 MB")]
      }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("3.2 v3.0.30（2026-04-01）LSPosed 模块修复")] }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "问题：", bold: true }), new TextRun("LSPosed Manager 未扫描到 PandaSU 模块，数据库无模块注册记录。")]
      }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "根因：", bold: true })]
      }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("日志捕获问题：Log.i() 不被 LSPosed 捕获，需使用 XposedBridge.log()")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("Android 16 上 ServiceManager.addService 方法签名变更，需 Hook 4 参数版本 addService(String, IBinder, Boolean, Int)")] }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "修复结果：", bold: true }), new TextRun("PmsHookTarget34、ActivityHook、ContentProviderHook 成功加载；ZygoteHook 和 AppDataIsolationHook 因依赖 EzXHelper 暂未支持。")]
      }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("3.3 v3.0.16-safe（2026-04-01）关键安全修复")] }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "禁用危险的 mount --bind：", bold: true }), new TextRun("在 HyperOS 上使用 mount --bind 隐藏 su 文件会导致 /system/bin 被覆盖，引发系统崩溃。")]
      }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "xposedscope 修正：", bold: true }), new TextRun("改为 system 而不是 android，LSPosed Manager 正确配置。")]
      }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "IXposedHookZygoteInit：", bold: true }), new TextRun("添加该接口实现，让模块在 Zygote 阶段加载，不依赖 LSPosed 注入 system_server。")]
      }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "XposedBridgeHook：", bold: true }), new TextRun("在 Zygote 阶段 Hook XposedBridge.getModules() 隐藏模块列表。")]
      }),
      new Paragraph({
        numbering: { reference: "numbers", level: 0 },
        children: [new TextRun({ text: "验证结果：", bold: true }), new TextRun("个人所得税 App 显示"安全"。")]
      }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("3.4 v3.0.9 / v3.0.8（2026-03-31）XposedBridge API Hook 集成")] }),
      new Paragraph({
        spacing: { after: 200 },
        children: [new TextRun({ text: "新增 XposedBridge API Hook，实现对检测框架的深度隐藏：", size: 24 })]
      }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("XposedBridge.getModules — 获取已加载模块列表")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("XposedBridge.getInstalledModules — 获取已安装模块")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("XposedBridge.getDisabledModules — 获取已禁用模块")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("LSPosedConfig.getModules — LSPosed 配置级模块获取")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("LSPosedManager.getEnabledModules — LSPosed 管理器启用模块查询")] }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("3.5 v3.0.0-v3.0.7 隔离功能完善")] }),
      new Paragraph({
        spacing: { after: 200 },
        children: [new TextRun({ text: "主要修复内容：", size: 24 })]
      }),
      new Table({
        width: { size: 9026, type: WidthType.DXA },
        columnWidths: [1500, 2500, 5026],
        rows: [
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 1500, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "版本", bold: true })] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "问题", bold: true })] })] }),
              new TableCell({ borders, width: { size: 5026, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "修复方案", bold: true })] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 1500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("v3.0.0")] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("Root 权限检测逻辑分散")] })] }),
              new TableCell({ borders, width: { size: 5026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("IsolationViewModel 统一处理权限检查")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 1500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("v3.0.1")] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("无检测结果时也显示隔离按钮")] })] }),
              new TableCell({ borders, width: { size: 5026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("只有检测到可疑应用时才显示一键隔离按钮")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 1500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("v3.0.3")] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("点击隔离无响应")] })] }),
              new TableCell({ borders, width: { size: 5026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("修复隔离操作核心 BUG")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 1500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("v3.0.5")] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("KernelSU 误判为 STANDALONE")] })] }),
              new TableCell({ borders, width: { size: 5026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("增强 KernelSU/Magisk 多层次检测")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 1500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("v3.0.7")] })] }),
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("隔离后评分不更新")] })] }),
              new TableCell({ borders, width: { size: 5026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("autoIsolateDetectors 添加延迟等待 DataStore 写入")] })] }),
            ]
          }),
        ]
      }),

      // 四、核心问题修复
      new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("四、核心问题修复记录")] }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("4.1 SQLite3 依赖问题")] }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "问题：", bold: true }), new TextRun("SQLite3 命令在设备上不可用，影响 Magisk Hide 策略配置。")]
      }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "修复：", bold: true }), new TextRun("添加 SQLite3 可用性检查，提供 Magisk 原生命令作为备选方案 (magisk --denylist add)，增强错误处理。")]
      }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("4.2 mount 命令权限问题")] }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "问题：", bold: true }), new TextRun("mount --bind 命令执行失败，权限或路径问题导致隔离操作失败。")]
      }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "修复：", bold: true }), new TextRun("创建安全的 mount --bind 辅助函数 safeMountBind()，添加路径验证和权限检查，HyperOS 上禁用该功能防止系统崩溃。")]
      }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("4.3 Root 检测逻辑问题")] }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "问题：", bold: true }), new TextRun("Root 检测状态异常，数据库和守护进程不可访问，导致检测结果不准确。")]
      }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "修复：", bold: true }), new TextRun("增强 Magisk 和 KernelSU 检测逻辑，添加数据库访问权限检查，提供更详细的检测状态日志。")]
      }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("4.4 隔离操作错误处理")] }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "问题：", bold: true }), new TextRun("隔离操作失败时无回滚机制，部分成功部分失败时状态不一致。")]
      }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "修复：", bold: true }), new TextRun("添加操作跟踪和结果记录，实现 verifyIsolation() 验证机制，添加 rollbackOperations() 和 emergencyRollback() 紧急回滚。")]
      }),

      // 五、架构演进
      new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("五、架构演进")] }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("5.1 LSPosed 模块架构重构")] }),
      new Paragraph({
        spacing: { after: 200 },
        children: [new TextRun({ text: "参考 HMA-OSS (frknkrc44 分支) 完成架构重构，从内嵌在主应用中的简化实现演进为独立模块：", size: 24 })]
      }),
      new Table({
        width: { size: 9026, type: WidthType.DXA },
        columnWidths: [2000, 3513, 3513],
        rows: [
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2000, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "对比项", bold: true })] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "旧架构", bold: true })] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "新架构", bold: true })] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("模块位置")] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("内嵌在主应用 app/")] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("独立项目 PandaSU-LSPosed/")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("更新方式")] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("随主应用更新")] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("可独立更新")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("依赖库")] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("复杂 Hook 实现")] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("原生 Xposed API（无 EzXHelper）")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("版本分治")] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("单一实现")] })] }),
              new TableCell({ borders, width: { size: 3513, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("PmsHookTarget29-36")] })] }),
            ]
          }),
        ]
      }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("5.2 Android 16 兼容性挑战")] }),
      new Paragraph({
        spacing: { after: 100 },
        children: [new TextRun({ text: "Android 16 (API 36) 对比旧版本的主要变化：", size: 24 })]
      }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun({ text: "shouldFilterApplication", bold: true }), new TextRun(" 方法从普通方法变为抽象方法，无法直接 Hook")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun({ text: "AppsFilterImpl", bold: true }), new TextRun(" 类可能被移除或重命名")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun({ text: "Computer 接口", bold: true }), new TextRun(" 成为新的核心，过滤机制改变")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun({ text: "ServiceManager.addService", bold: true }), new TextRun(" 方法签名从 2 参数变为 4 参数")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun({ text: "LSPosed 1.9.2", bold: true }), new TextRun(" 在 Android 16 上无法注入 system_server 进程")] }),

      // 六、构建与部署
      new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("六、构建与部署")] }),
      new Table({
        width: { size: 9026, type: WidthType.DXA },
        columnWidths: [2500, 6526],
        rows: [
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "项目", bold: true })] })] }),
              new TableCell({ borders, width: { size: 6526, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "详情", bold: true })] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("GitHub Actions")] })] }),
              new TableCell({ borders, width: { size: 6526, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("build.yml 自动构建 APK，release.yml 创建 Release (v* tag)")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("本地构建")] })] }),
              new TableCell({ borders, width: { size: 6526, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("app/build/outputs/apk/debug/app-debug.apk")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("桌面部署")] })] }),
              new TableCell({ borders, width: { size: 6526, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("C:\\Users\\Administrator\\Desktop\\PandaSU-v{version}.apk")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 2500, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("ADB 安装")] })] }),
              new TableCell({ borders, width: { size: 6526, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("adb install -r {apk_path}")] })] }),
            ]
          }),
        ]
      }),

      // 七、第三方组件
      new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("七、第三方组件与致谢")] }),
      new Table({
        width: { size: 9026, type: WidthType.DXA },
        columnWidths: [3000, 3000, 3026],
        rows: [
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "组件", bold: true })] })] }),
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "作者", bold: true })] })] }),
              new TableCell({ borders, width: { size: 3026, type: WidthType.DXA }, shading: { fill: "D5E8F0", type: ShadingType.CLEAR }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun({ text: "许可证", bold: true })] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("Magisk Zygisk API")] })] }),
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("John \"topjohnwu\" Wu")] })] }),
              new TableCell({ borders, width: { size: 3026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("0BSD")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("ZygiskNext")] })] }),
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("第三方开源框架")] })] }),
              new TableCell({ borders, width: { size: 3026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("开源")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("LSPosed")] })] }),
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("LSPosed Team")] })] }),
              new TableCell({ borders, width: { size: 3026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("GPL v3")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("HMA-OSS")] })] }),
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("frknkrc44 / Dr-TSNG")] })] }),
              new TableCell({ borders, width: { size: 3026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("GPL v3")] })] }),
            ]
          }),
          new TableRow({
            children: [
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("主应用")] })] }),
              new TableCell({ borders, width: { size: 3000, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("PandaSU Team")] })] }),
              new TableCell({ borders, width: { size: 3026, type: WidthType.DXA }, margins: { top: 80, bottom: 80, left: 120, right: 120 },
                children: [new Paragraph({ children: [new TextRun("MIT")] })] }),
            ]
          }),
        ]
      }),

      // 八、总结与计划
      new Paragraph({ heading: HeadingLevel.HEADING_1, children: [new TextRun("八、总结与计划")] }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("8.1 阶段成果")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("完成 Android 8-16 全版本兼容支持")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("实现多层次包过滤策略，解决 Android 16 上系统层 Hook 失效问题")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("重构 LSPosed 模块架构，参考 HMA-OSS 实现版本分治")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("完善隔离操作错误处理和回滚机制")] }),
      new Paragraph({ numbering: { reference: "bullets", level: 0 }, children: [new TextRun("集成 XposedBridge API Hook，深度隐藏模块列表")] }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("8.2 待解决问题")] }),
      new Paragraph({ numbering: { reference: "numbers", level: 0 }, children: [new TextRun({ text: "LSPosed 1.9.2 在 Android 16 上无法注入 system_server：", bold: true }), new TextRun("等待 LSPosed 更新或降级到 Android 35 测试") ] }),
      new Paragraph({ numbering: { reference: "numbers", level: 0 }, children: [new TextRun({ text: "ZygoteHook 和 AppDataIsolationHook 依赖 EzXHelper：", bold: true }), new TextRun("需评估是否引入额外依赖") ] }),
      new Paragraph({ numbering: { reference: "numbers", level: 0 }, children: [new TextRun({ text: "HyperOS 应用列表获取不完全：", bold: true }), new TextRun("系统级限制，需进一步适配") ] }),

      new Paragraph({ heading: HeadingLevel.HEADING_2, children: [new TextRun("8.3 后续计划")] }),
      new Paragraph({ numbering: { reference: "numbers", level: 0 }, children: [new TextRun("持续跟进 LSPosed Android 16 支持进展") ] }),
      new Paragraph({ numbering: { reference: "numbers", level: 0 }, children: [new TextRun("评估 ZygiskNext 作为替代方案的可能性") ] }),
      new Paragraph({ numbering: { reference: "numbers", level: 0 }, children: [new TextRun("完善更多定制系统的兼容性测试") ] }),
      new Paragraph({ numbering: { reference: "numbers", level: 0 }, children: [new TextRun("优化隔离操作的成功率和稳定性") ] }),

      // 结尾
      new Paragraph({ spacing: { before: 600 } },
        new Paragraph({
          alignment: AlignmentType.RIGHT,
          children: [new TextRun({ text: "报告生成时间：2026年4月2日", color: "888888", size: 22 })]
        })
      ),
    ]
  }]
});

Packer.toBuffer(doc).then(buffer => {
  fs.writeFileSync("C:\\Users\\Administrator\\Desktop\\PandaSU_工作报告_2026-04-02.docx", buffer);
  console.log("报告已生成: C:\\Users\\Administrator\\Desktop\\PandaSU_工作报告_2026-04-02.docx");
});
