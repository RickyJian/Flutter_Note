# 資源部署

將照片或檔案部署在專案中

pubspec.yaml 為 Dart、Flutter 部署檔案

[原文](https://www.dartlang.org/tools/pub/pubspec)

## Dart 基本部署

部署用檔案，描述專案細項

```yaml

# 專案名稱
name: resources

# 專案描述
description: deploy assets and images

# 專案版本
version: 1.0.0

# Dart 版本
environment:
  sdk: ">=2.0.0-dev.68.0 <3.0.0"

# 依賴套件，若無套件可以不用配置
dependencies:
  flutter:
    sdk: flutter

# 開發環性依賴套件
dev_dependencies:
  flutter_test:
    sdk: flutter

```

### Flutter 部署

```yaml

# 專案名稱
name: resources

# 專案描述
description: deploy assets and images

# 專案版本
version: 1.0.0

# Dart 版本
environment:
  sdk: ">=2.0.0-dev.68.0 <3.0.0"

# 依賴套件，由於我們要使用 Framework Flutter 所以邀依賴它
dependencies:
  flutter:
    sdk: flutter
    # App icon
    cupertino_icons: ^0.1.2

# 開發環境依賴套件
dev_dependencies:
  flutter_test:
    sdk: flutter

```
