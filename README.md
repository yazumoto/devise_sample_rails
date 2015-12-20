DeviseSampleRails
===

# 概要
Railsにdevise_token_authのGemを利用して認証機能を入れたサンプルプロジェクト
https://github.com/lynndylanhurley/devise_token_auth

# 起動方法

```
# プロジェクトをクローン
git clone git@github.com:seteen/devise_sample_rails.git
# 必要なライブラリをインストール
bundle install --path vendor/bundle
# サーバを起動
bundle exec rails s
```

# アクセス方法
```
# ユーザ作成
POST http://localhost:3000/auth # email, password, password_confirmationのパラメータをJSONに入れる
# ログイン
POST http://localhost:3000/auth/sign_in # email, passwordのパラメータをJSONに入れる
# ユーザリストの取得
GET http://localhost:3000/users
# ログインのレスポンスのヘッダについているUid, Client, Access-Tokenをリクエストヘッダに入れると
# 登録されているユーザのemailのリストが返るが、間違っていると401が返る
```
