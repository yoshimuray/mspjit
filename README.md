# mspjit

x の n 乗を計算するプログラム `power(n, x)` の実行時間を次の 3 つの実装で比較

- default: OCaml でシンプルに実装

- staged: MetaOCaml で多段階計算を利用して実装

- lambda: ラムダ計算に変換してトレーシング JIT を適用する実装

## ビルド/実行

- default
  
  ```
  $ dune build 
  $ dune exec default
  ```

- staged
  
  ```
  $ dune build 
  $ dune exec staged
  ```

- lambda
  
  ```
  $ pypy main.py
  ```

## メモ

- 実行時間の計測方法

  - default, staged (OCaml): `unix.gettimeofday()` (C の gettimeofday() システムコール)

  - lambda (Python): `time.time()` (C の clock_gettime() が使えるならそれを、使えなければ gettimeofday() を呼び出す)

- staged のネイティブビルドはできるが、バイトコードビルドができない
