


# 作業概要
- [開発環境構築](#開発環境構築)
- [サンプルプログラムの実行](#サンプルプログラムの実行)
- [サンプルプログラムの改修](#サンプルプログラムの改修)

# 開発環境構築
#### pleadesのインストール
- pleades2023 JAVAのダウンロード
  - WINDOWS
  https://ftp.jaist.ac.jp/pub/mergedoc/pleiades/2023/pleiades-2023-12-java-win-64bit-jre_20240218.exe
  - MAC
  https://ftp.jaist.ac.jp/pub/mergedoc/pleiades/2023/pleiades-2023-12-java-mac-jre_20240218.dmg
- インストール、eclipseの起動
  - 下記手順を参照
  https://lab4ict.com/system/archives/12437
  - ワークスペース名はデフォルトの「workspace」のまま
  <img width="100%" alt="image" src="https://github.com/takakou32/SpringSample/assets/110706928/3dd8b084-34ba-4b6e-87e0-9761b06f4424">

#### gitのインストール
- windows
  - gitのダウンロード
windows
https://github.com/git-for-windows/git/releases/download/v2.44.0.windows.1/Git-2.44.0-64-bit.exe

  - インストール
  下記手順を参照
  https://www.sejuku.net/blog/73444
  ※テキストファイルの改行の設定については
  「Checkout Windows-style,commit Unix-style line endings」を設定する。

- mac
  -下記手順を参照
  https://tracpath.com/bootcamp/git-install-to-mac.html

# サンプルプログラムの実行
#### ソースコード取得
- git bush（CMD、ターミナルでも可）を起動し、ソースコードを展開したいディレクトリに移動後に下記コマンドを実行
```bash
git clone -b feature https://github.com/takakou32/SpringSample
```
- 下記結果が表示されることを確認
```bash
Cloning into 'SpringSample'...
remote: Enumerating objects: 124, done.
remote: Counting objects: 100% (124/124), done.
remote: Compressing objects: 100% (82/82), done.
remote: Total 124 (delta 8), reused 120 (delta 7), pack-reused 0
Receiving objects: 100% (124/124), 193.02 KiB | 878.00 KiB/s, done.
Resolving deltas: 100% (8/8), done.
```
#### プロジェクトをeclipseワークスペースにインポート
- eclipseのメニュー左上のファイル->インポート->Gradle->既存のGradleプロジェクト　を選択
  <img width="100%" alt="image" src="https://github.com/takakou32/SpringSample/assets/110706928/01fdb484-04fb-4b5d-812a-c4402db20c60">
- プロジェクト・ルート・ディレクトリにgit cloneで取得したプロジェクトのディレクトリ（SpringSample）を指定
- 「完了」をクリック

  <img width="100%" alt="image" src="https://github.com/takakou32/SpringSample/assets/110706928/6887b33f-da58-45ae-90fe-64d6a89294dd">

#### プロジェクトの実行
- 「gradleタスク」タブ->SpringSample->apprication->bootrunを右クリック -> 「gradleタスクの実行」をクリック
  <img width="100%" alt="image" src="https://github.com/takakou32/SpringSample/assets/110706928/6bbbb4f0-f75a-413b-a3db-94238d0e0c16">

- 「コンソール」タブにエラーが出力されていないことを確認
```bash
作業ディレクトリー: D:\SpringSample
Gradle ユーザー・ホーム: C:\Users\ユーザー名\.gradle
Gradle ディストリビューション: ターゲット・ビルドからの Gradle ラッパー
Gradle バージョン: 8.7
Java ホーム: C:\pleiades\2023-12\java\17
JVM 引数: なし
プログラムの引数: -Dorg.gradle.warning.mode=all
Build Scans Enabled: false
Offline Mode Enabled: false
Gradle タスク: bootRun

> Task :compileJava
> Task :processResources
> Task :classes
> Task :resolveMainClassName

> Task :bootRun

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v3.2.4)

2024-04-26T14:29:50.920+09:00  INFO 25768 --- [  restartedMain] c.example.demo.SpringSampleApplication   : Starting SpringSampleApplication using Java 17.0.9 with PID 25768 (D:\SpringSample\build\classes\java\main started by APPC37 in D:\SpringSample)
2024-04-26T14:29:50.923+09:00  INFO 25768 --- [  restartedMain] c.example.demo.SpringSampleApplication   : No active profile set, falling back to 1 default profile: "default"
2024-04-26T14:29:51.037+09:00  INFO 25768 --- [  restartedMain] .e.DevToolsPropertyDefaultsPostProcessor : Devtools property defaults active! Set 'spring.devtools.add-properties' to 'false' to disable
2024-04-26T14:29:51.037+09:00  INFO 25768 --- [  restartedMain] .e.DevToolsPropertyDefaultsPostProcessor : For additional web related logging consider setting the 'logging.level.web' property to 'DEBUG'
2024-04-26T14:29:53.503+09:00  INFO 25768 --- [  restartedMain] .s.d.r.c.RepositoryConfigurationDelegate : Bootstrapping Spring Data JDBC repositories in DEFAULT mode.
2024-04-26T14:29:53.627+09:00  INFO 25768 --- [  restartedMain] .s.d.r.c.RepositoryConfigurationDelegate : Finished Spring Data repository scanning in 61 ms. Found 0 JDBC repository interfaces.
2024-04-26T14:29:55.248+09:00  INFO 25768 --- [  restartedMain] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port 8080 (http)
2024-04-26T14:29:55.308+09:00  INFO 25768 --- [  restartedMain] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2024-04-26T14:29:55.309+09:00  INFO 25768 --- [  restartedMain] o.apache.catalina.core.StandardEngine    : Starting Servlet engine: [Apache Tomcat/10.1.19]
2024-04-26T14:29:55.404+09:00  INFO 25768 --- [  restartedMain] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2024-04-26T14:29:55.406+09:00  INFO 25768 --- [  restartedMain] w.s.c.ServletWebServerApplicationContext : Root WebApplicationContext: initialization completed in 4366 ms
2024-04-26T14:29:55.582+09:00  INFO 25768 --- [  restartedMain] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Starting...
2024-04-26T14:29:56.373+09:00  INFO 25768 --- [  restartedMain] com.zaxxer.hikari.pool.HikariPool        : HikariPool-1 - Added connection conn0: url=jdbc:h2:mem:testdb user=SA
2024-04-26T14:29:56.376+09:00  INFO 25768 --- [  restartedMain] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Start completed.
2024-04-26T14:29:56.386+09:00  INFO 25768 --- [  restartedMain] o.s.b.a.h2.H2ConsoleAutoConfiguration    : H2 console available at '/h2-console'. Database available at 'jdbc:h2:mem:testdb'
2024-04-26T14:29:57.713+09:00  INFO 25768 --- [  restartedMain] o.s.b.d.a.OptionalLiveReloadServer       : LiveReload server is running on port 35729
2024-04-26T14:29:57.855+09:00  INFO 25768 --- [  restartedMain] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port 8080 (http) with context path ''
2024-04-26T14:29:57.867+09:00  INFO 25768 --- [  restartedMain] c.example.demo.SpringSampleApplication   : Started SpringSampleApplication in 8.079 seconds (process running for 12.001)
```
- ブラウザを立ち上げ、「localhost:8080/hello」にアクセス後、下記画面が表示されることを確認
 <img width="100%" alt="image" src="https://github.com/takakou32/SpringSample/assets/110706928/997abbf8-796d-48be-86f3-af9ab06f6931">


# サンプルプログラムの改修

- [00_jpaRepositoryの実装.md](./doc/00_jpaRepositoryの実装.md)を参照

以上