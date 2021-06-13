# jmeter

## ツールの使い方

### GUI

以下のコマンドを実行する。

```bash
./jmeter-gui.sh -t /path/to/test.jmx -q /path/to/properties.properties
```

propertiesファイルはなくても良い。なお、GUIモードで負荷試験をしてはならない。画面更新のオーバヘッドが大きく正しく測定できないためである。

### CUI

以下のコマンドを実行する。

```bash
./jmeter-cui.sh -t /path/to/test.jmx -q /path/to/properties.properties
```

propertiesファイルはなくても良い。

## Jmeterの使い方

[jmeter.md](jmeter.md) 参照。
