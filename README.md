# IPMI Worker

IPMItoolで実行可能なコマンドを定期的に叩くためのコンテナイメージです．

# Configuration

以下の環境変数を設定してください．
- INTERVAL
    - 実行間隔（秒）　デフォルト：1
- BMC_USER
    - BMCのユーザー名　デフォルト："USERID"
- BMC_PASSWORD
    - BMCのパスワード　デフォルト："PASSWORD"
- BMC_IPADDRESS
    - BMCのIPアドレス　デフォルト："127.0.0.1"
- IPMI_CMD
    - 実行するコマンド　例："sdr type 'Fan'"

# Run
```
$ docker build . -t ipmi-worker
$ docker run -d --restart=always ipmi-worker 
```

# Hardware

x86_64環境では動作しました．  
Raspberry Piなどのarmhfやarm64環境でも動作すると思います．