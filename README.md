# README

## APIの起動

```
bundle install
bin/rails db:create db:migrate
bin/rails s
```

## APIのテスト方法

### ユーザー登録

```sh
curl localhost:3000/api/v1/auth -X POST -d '{"email":"test@example.com", "password":"password", "password_confirmation": "password"}' -H "content-type:application/json" -i
```

### ログイン

```sh
curl localhost:3000/api/v1/auth/sign_in -X POST -d '{"email":"test@example.com", "password":"password"}' -H "content-type:application/json" -i
```

### 気分一覧

```sh
curl localhost:3000/api/v1/nikos -H "content-type:application/json" -i
```

### 気分登録

```sh
curl localhost:3000/api/v1/nikos -X POST -d '{"mood": "good", "date": "2023-04-23", "comment": "hello world."}' -H "content-type:application/json" -H "uid:test@example.com" -H "client:$CLIENT" -H  "access-token:$TOKEN" -i
```
