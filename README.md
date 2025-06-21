# conky-16core

![image](https://github.com/user-attachments/assets/da23949d-d62b-41a2-8ece-7910d28586cc)

## 概要

多コアCPU（最大16コア）に対応したConkyテーマです。システム情報をリング状のグラフィカルな表示で可視化し、リアルタイムでモニタリングできます。

## 特徴

- **CPUモニタリング**: 最大16コアの個別CPU使用率表示
- **メモリ管理**: RAM/Swap使用量とプロセス情報
- **ディスク監視**: 複数パーティションの使用状況とI/O活動LED
- **ネットワーク**: アップロード/ダウンロード速度とネットワーク情報
- **バッテリー**: 容量、残り時間、消費電力の詳細表示
- **天気予報**: OpenWeatherMap API連携
- **システム制御**: 画面輝度・音量の視覚的表示
- **多彩なテーマ**: monochrome、blue、green、yellow、purple、cyan、gruvbox

## 必要な依存関係

```bash
# Ubuntu/Debian
sudo apt install conky-all curl

# Arch Linux
sudo pacman -S conky curl

# Fedora
sudo dnf install conky curl
```

## インストール手順

1. リポジトリをクローン

```bash
git clone　https://github.com/tanikotaro/conky-16core_public.git
cd conky-16core
```

2. 設定ファイルをカスタマイズ

```bash
cp settings.lua.example settings.lua
# エディタで設定を編集
```

3. 起動

```bash
conky -c .conkyrc
```

## 設定

### 基本設定 ([`settings.lua`](settings.lua))

```lua
-- テーマ選択
THEME = "gruvbox dark"

-- CPUコア数（対応: 0, 2, 4, 6, 8, 10, 12, 16）
cpu_cores = 16

-- ネットワークインターフェース
net_interface = "wlo1"

-- 通信速度上限
download_rate_maximum = 1000  -- kb
upload_rate_maximum = 1000    -- kb
```

### 天気予報設定

[`start.lua`](start.lua)の `weather_config`セクションを編集：

```lua
local weather_config = {
    api_key = "YOUR_OPENWEATHERMAP_API_KEY",
    city_id = "1850147",  -- 東京の場合
    units = "metric",
    lang = "en",
    update_interval = 10
}
```

## 使用方法

### 起動コマンド

```bash
# 基本起動
conky -c .conkyrc

# バックグラウンド起動
conky -c .conkyrc &

# デバッグモード
conky -c .conkyrc -d
```

### エイリアス設定（推奨）

```bash
# .bashrcや.zshrcに追加
alias co="cd ~/conky-16core && conky -c .conkyrc"
```

### 自動起動設定

#### systemd（推奨）

```bash
# ユーザーサービスファイル作成
mkdir -p ~/.config/systemd/user
cat > ~/.config/systemd/user/conky.service << EOF
[Unit]
Description=Conky System Monitor
After=graphical-session.target

[Service]
Type=simple
ExecStart=/usr/bin/conky -c /path/to/conky-16core/.conkyrc
Restart=always
RestartSec=5

[Install]
WantedBy=default.target
EOF

# サービス有効化
systemctl --user enable conky.service
systemctl --user start conky.service
```

#### 起動アプリケーション

デスクトップ環境の起動アプリケーションに以下を追加：

```
名前: Conky
コマンド: /path/to/conky-16core/start_conky.sh
```

## カスタマイズ

### 表示位置の調整

[`start.lua`](start.lua)の `S`テーブルでコンポーネントの位置を調整：

```lua
local S = {
    cpu = { x = 200, y = 200 },
    mem = { x = 1020, y = 200 },
    -- ...
}
```

### 色テーマの追加

[`settings.lua`](settings.lua)で新しいテーマを定義：

```lua
elseif THEME == "custom" then
    color0 = 0x282828   -- background
    color1 = 0xebdbb2   -- foreground
    -- ...
```

## トラブルシューティング

### よくある問題

1. **Conkyが起動しない**

   ```bash
   # 設定ファイルの構文チェック
   conky -c .conkyrc -t
   ```
2. **天気情報が表示されない**

   - OpenWeatherMap APIキーが正しく設定されているか確認
   - インターネット接続を確認
3. **バッテリー情報が表示されない**

   - デスクトップPCの場合は正常な動作
   - ノートPCで表示されない場合は `acpi`パッケージをインストール
4. **ネットワーク情報が表示されない**

   - `net_interface`設定を確認

   ```bash
   # インターフェース名確認
   ip link show
   ```

### デバッグ

```bash
# コンソール出力確認
conky -c .conkyrc -d

# ログファイル確認
tail -f ~/.local/share/conky/conky.log
```

## 動作環境

- **OS**: Linux（Ubuntu、Arch、Fedora等）
- **Conky**: 1.10以上
- **解像度**: 1920x1080以上推奨
- **依存関係**: cairo、imlib2、curl

## ライセンス

GPL-3.0 License

## 作者

- **Original Author**: Zineddine SAIBI
- **Repository**: [auzia-conky](https://www.github.com/SZinedine/auzia-conky)
- **16core Adaptation**: tanikotaro

## 参考記事

- [Qiita記事](https://qiita.com/okinawa_lion/private/06da6797c20087492fd9)

## 貢献

プルリクエストやイシューの報告を歓迎します。
