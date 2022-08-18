# Time-Brainfuxk-D
これは[Brainfuxk-D](https://github.com/PenguinCabinet/Brainfuxk-D)を使って、D言語コンパイラの性能をベンチマークするリポジトリです。
|処理系をコンパイルしたコンパイラ|Brainfuckのマンデルブロ集合の処理時間|
|---|---|
|dmd(v2.100.0-dirty) デフォルト|78s|
|dmd(v2.100.0-dirty) -O -release -inline|46s|
|ldc2(1.30.0) デフォルト|98s|
|ldc2(1.30.0) -O3|38s|
