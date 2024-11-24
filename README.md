# flutter_gen_sample

Type-safe asset management using flutter_gen

## セットアップと生成

以下のコマンドを使う

`flutter pub add --dev build_runner flutter_gen_runner`

ソースコード生成ツールの`build_runner`と**flutter_gen**のコードジェネレータである`flutter_gen_runner`を導入している

コードの生成には以下のコマンドを使う

`flutter packages pub run build_runner build`

## アセットのパスやファイル名を変えたい場合は...？

### 手順1 ~ pubspec.yamlのアセットのパス（またはファイル名）を修正

`pubspec.yaml`に記載したアセットのパスを修正します。

```
flutter:
  assets:
    - assets/check_mark.png
```

`pub get`も忘れずに！

### 手順2 ~ リソースファイルの配置（またはファイル名）を修正 ~

次に上記`pubspec.yaml`で指定した位置にアセットのリソースファイルを配置します。

ここまではflutter_genを使わない方法でも同じかと思います。

この時、`pubspec.yaml`で指定したアセットのパスやファイル名と、

実際のそれらが異なる場合は、手順3でコマンドが成功していても

コードがうまく生成されません。

`pubspec.yaml`に「**リソースファイルがない**」、といった**黄色の警告**が出ていたら、パスやファイル名が合っているか確認します。

修正後は`pub get`も忘れずに！

### 手順3 ~ コマンド実行~

先ほどのコード生成時に使ったコマンドと同じコマンドを使います。

`flutter packages pub run build_runner build`

この時、

```
[INFO] Building new asset graph completed, took 728ms
[INFO] Found 1 declared outputs which already exist on disk. This is likely because the`.dart_tool/build` folder was deleted, or you are submitting generated files to your source repository.
Delete these files?
1 - Delete
2 - Cancel build
3 - List conflicts
```

このような質問を返されると思いますので、

どのファイルでコンフリクトが起こっているかを確認したい場合は「3」

コンフリクトを起こしているファイルを消して再生成させたいなら「1」

そもそも、このコマンドを中止したいなら「2」

上記数字を選択します。

今回は直接「1」を選択しています。

すると、同名のファイルが新しく生成されます。

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
