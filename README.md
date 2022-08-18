# Time-Brainfuxk-D
これは[Brainfuxk-D](https://github.com/PenguinCabinet/Brainfuxk-D)を使って、D言語コンパイラの性能をベンチマークするリポジトリです。
|処理系をコンパイルしたコンパイラ|Brainfuxkのマンデルブロ集合の処理時間|
|---|---|
|dmd(v2.100.0-dirty) デフォルト|68s|
|dmd(v2.100.0-dirty) -O -release -inline|34s|
|ldc2(1.30.0) デフォルト|69s|
|ldc2(1.30.0) -O3|30s|