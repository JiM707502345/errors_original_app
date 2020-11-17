### アプリケーション名
errors_original_app

## アプリケーション概要
この世界から「失敗はいけないものだ」という概念をなくすことを誓います。失敗から学ぶ社会を作るために「ERRORS」を開発しました。失敗は恥ずかしいという文化が終わって欲しい。向学心のある国民性を実現したい。挑戦する人を応援できる社会にしたい。学べるウェブサービスを作りたい。こういった思いで制作しました。また失敗と個人のデータが取れることでデータに強くなり、必然的に通信機能やサーバーシステムを強くなり、軍事システムも強くなり、国が強くなりということが実現すれば米中に対抗できるような国になリます。善い国を作るためのツールです。

# URL
http://18.180.167.170/

# Basic認証
ID:jin/Pass:0139

# テスト用アカウント
-投稿用アカウント
ユーザー名：テスト投稿<br>
メールアドレス：xxx@xxx<br>
パスワード：xxxxxx<br>

-閲覧用アカウント
ユーザー名：テスト閲覧<br>
メールアドレス：yyy@yyy<br>
パスワード：yyyyyy<br>

## 利用方法
簡易なユーザー登録をしていただいた上で、失敗について投稿する。マイページもあり、そこでは自身の失敗を分析したり、振り返ったりできます。これにより失敗と向き合う上で大切な「隠さない」「誠実な対処」「記録」を実現できます。

## 目指した課題解決
失敗はマイナスなものであるという考えの人が多すぎます。その中には主に良い人止まりの方、エリート止まりの方、仕事ができる人止まりの方、良い人生なのになんだか満足はしていないという方といったような優秀な方たちなのに、周囲によって押し潰されてしまいます。失敗の根底の概念から変えてしまおう、マイナスをプラスに変えようというのがこのサービスの意図です。

## 洗い出した要件
|機能                      |目的                               |詳細                                                               |ストーリー(ユースケース)                      |
|------------------------ |---------------------------------- |----------------------------------------------------------------- |------------------------------------------|
|ユーザー管理機能            |ユーザーアカウントを登録する           |匿名で簡易な登録にする                                                |ユーザー登録、ログイン画面により利用できる        |
|フォロー機能               |ユーザー同士をフォローする             |コミュニケーションを図るためフォローできる                               |フォローボタンを押すとフォローできる             |
|投稿検索機能               |内容を検索する                       |自身と照らし関連性を見つけるため検索できるようにする                       |自分と同じような事象に引っかからないか検索できる   |
|共有機能                  |共有することで隠すことをやめる文化を作る  |共有し学びに変えるため、共有機能を実装する                                |投稿詳細画面に共有ボタンを設置。そこからURLを共有 |
|投稿機能                  |投稿することで記録する                 |記録し過去の過ちを繰り返さないようにする                                 |失敗原因を追求できるフォーマット               |
|編集機能                  |ユーザーの権利を守る                   |データは編入できないみたいな権利がないのはおかしいので編集機能を実装         |詳細画面にて編集ボタンから編集できる             |
|削除機能                  |ユーザーの権利を守る                   |データは消せないみたいな権利がないのはおかしいので削除機能を実装             |詳細画面にて削除ボタンから削除できる            |
|一覧表示機能               |一覧を表示する                        |一覧ページに一覧を表示する	一覧を表示する                              |トップページ投稿一覧が表示される                |
|コメント機能               |コミュニケーションで学習の幅を広げる      |詳細画面にて投稿にコメント機能を実装	詳細画面にてコメントできる           |詳細画面で詳細が表示される                      |
|メッセージ機能             |コミュニケーションを取れる              |フォローしあったユーザー同士がメッセージのやりとりをする                   |フォローしていユーザーにDMを送る                |
|カテゴリ分け機能	          |ジャンルから逆引きできるようにする        |ジャンル別に取ったデータからジャンル別に見つけ出す                        |逆引きでジャンルから見つけ出す                 |
|マイページ機能             |自身の情報の詳細を確認する              |自分のデータを見つめることで今後に活かす	自身のプロフイールや投稿          |フォロしているユーザーやお気に入りの投稿一覧を表示す|
|詳細機能                  |投稿の詳細を確認できる                  |一覧ページから遷移し、その投稿の詳細を閲覧できるよう実装                   |投稿の詳細を確認することができる               |
|調子管理機能               |自身の体調を管理する                   |睡眠、食事、精神、運動を分析することで体調を一定に保つ                     |グラフ化された自身の調子の点数を可視化する       |
|誤判断防止機能             |バイアスを回避してくれるバイアス集総まとめ |判断には思い込みというのを避けなければならないため、バイアスを確認する機能を実装 |バイアス一覧を表示                          |
|いいね機能                |非同期でいいねする                     |いいねボタンを押すと非同期でいいねが加算される                             |いいねを押すと色がつく                       |

## 実装した機能についてのGIFと説明
# ログイン/サインアップ
https://i.gyazo.com/7937648baed453b63deb8eb42bf40c5f.gif
### 検索/詳細/コメント
https://i.gyazo.com/c5a99d09e8f735b3f1801ac06b8ed662.gif
### カテゴリ検索
https://i.gyazo.com/6aaa6e7293de7d911d0d6cefdc126bb8.gif
### ユーザー詳細/ダイレクトメッセージ/フォロー
https://i.gyazo.com/6ff6ba19f8af1aa98ba27af42e535282.gif
### いいね機能
https://i.gyazo.com/b658b350443ae3c1b16b0b9c0ec3985e.gif
### およそ180の人間の思い込み/バイアス一覧
https://i.gyazo.com/73bd3c68562f8a52e33eeab66ba9906d.gif

### 実装予定の機能
失敗と原因やバイアスを照らし合わせて、データ化する機能

## データベース設計
[ER図]: https://gyazo.com/be362dc10866675ff714640cd0192c9e "ER図"

## users テーブル
| Column    | Type    | Options     |
| --------- | ------- | ----------- |
| name      | string  | null: false |
| email     | string  | null: false |
| password  | string  | null: false |
| gender_id | integer | null: false |
| age       | integer | null: false |

### association
-has_many :relationships
-has_many :cloud_foundings
-has_many :entries
-has_many :messages
-has_many :comments
-has_many :bookmarks
-has-many :errors

## errors テーブル
| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| industry_id     | integer    | null: false                    |
| own_error_id    | integer    | null: false                    |
| human_factor_id | integer    | null: false                    |
| in_my_head_id   | integer    |                                |
| frequency_id    | integer    |                                |
| try             | text       | null: false                    |
| error           | text       | null: false                    |
| learning        | text       | null: false                    |
| next_action     | text       | null: false                    |
| user            | references | null: false, foreign_key: true |

### association
-belongs_to :user
-has_many :bookmarks
-has_many :comments

## comments テーブル
| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| comment         | text       | null: false                    |
| user            | references | null: false, foreign_key: true |
| error           | references | null: false, foreign_key: true |

### association
-belongs_to :user
-belongs_to :error

## relationships テーブル
| Column          | Type       | Options                           |
| --------------- | ---------- | --------------------------------- |
| user            | references | null: false, foreign_key: true    |
| follow          | references | foreign_key: { to_table: :users } |

### association
-belongs_to :user

## bookmarks テーブル
| Column          | Type       | Options                           |
| --------------- | ---------- | --------------------------------- |
| user            | references | null: false, foreign_key: true    |
| error           | references | null: false, foreign_key: true    |

### association
-belongs_to :user
-belongs_to :errors

## rooms テーブル
| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| user   | references | null: false |

### association
belongs_to :entry
belongs_to :message

## entries テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### association
-belongs_to :user
-belongs_to :room

## messages テーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| message | text       |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### association
-belongs_to :room
-belongs_to :user

### ローカルでの動作方法
$ git clone git@github.com:JiM707502345/errors_original_app.git<br>
$ bundle install<br>
$ rails db:create<br>
$ rails db:migrate<br>

Ruby 2.6.5<br>
JavaScript<br>
Ruby on Rails 6.0.3.4<br>
mysql<br>
AWS<br>
GitHub<br>
Docker<br>
CircleCI<br>
Linux<br>
HTML<br>
CSS<br>
Ajax<br>
jQuery<br>
heroku<br>