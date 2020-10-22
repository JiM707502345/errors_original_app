### アプリケーション名
errors_original_app

## アプリケーション概要
この世界から「失敗はいけないものだ」という概念をなくすことを誓います。失敗から学ぶ社会を作るために「ERRORS」を開発しました。失敗は恥ずかしいという文化が終わって欲しい。向学心のある国民性を実現したい。挑戦する人を応援できる社会にしたい。学べるウェブサービスを作りたい。こういった思いで制作しました。また失敗と個人のデータが取れることでデータに強くなり、必然的に通信機能やサーバーシステムを強くなり、軍事システムも強くなり、国が強くなりということが実現すれば米中に対抗できるような国になリます。善い国を作るためのツールです。

## URL
heroku：https://errors-original-app.herokuapp.com/<br>
AWS：18.180.167.170


テスト用アカウント	ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。

## 利用方法
簡易なユーザー登録をしていただいた上で、失敗について投稿し、他者が見る際に共有したりできます。マイページもあり、そこでは自身の失敗を分析したり、振り返ったりできます。これにより失敗と向き合う上で大切な「隠さない」「誠実な対処」「記録」を実現できます。

## 目指した課題解決
失敗はマイナスなものであるという考えの人が多すぎます。その中には主に良い人止まりの方、エリート止まりの方、仕事ができる人止まりの方、良い人生なのになんだか満足はしていないという方といったような優秀な方たちなのに、周囲によって押し潰されてしまいます。失敗の根底の概念から変えてしまおう、マイナスをプラスに変えようというのがこのサービスの意図です。

## 洗い出した要件
|機能                      |目的                               |詳細                                                               |ストーリー(ユースケース)                      |
|------------------------ |---------------------------------- |----------------------------------------------------------------- |------------------------------------------|
|ユーザー管理機能            |ユーザーアカウントを登録する           |匿名で簡易な登録にする                                                |ユーザー登録、ログイン画面により利用できる        |
|お気に入り機能             |お気に入り登録する                    |ユーザーが情報収集しやすくする                                          |マイページからお気に入りとして閲覧できる         |
|フォロー機能               |ユーザー同士をフォローする             |コミュニケーションを図るためフォローできる                               |フォローボタンを押すとフォローできる             |
|投稿検索機能               |内容を検索する                       |自身と照らし関連性を見つけるため検索できるようにする                       |自分と同じような事象に引っかからないか検索できる   |
|ページネーション機能        |内容が多くなることを想定し次ページを作る  |多くのデータを閲覧するためにページネーションさせる                         |kaminariを使用して2,3ページ目となるように実装   |
|共有機能                  |共有することで隠すことをやめる文化を作る  |共有し学びに変えるため、共有機能を実装する                                |投稿詳細画面に共有ボタンを設置。そこからURLを共有 |
|投稿機能                  |投稿することで記録する                 |記録し過去の過ちを繰り返さないようにする                                 |失敗原因を追求できるフォーマット               |
|編集機能                  |ユーザーの権利を守る                   |データは編入できないみたいな権利がないのはおかしいので編集機能を実装         |詳細画面にて編集ボタンから編集できる             |
|削除機能                  |ユーザーの権利を守る                   |データは消せないみたいな権利がないのはおかしいので削除機能を実装             |詳細画面にて削除ボタンから削除できる            |
|一覧表示機能               |一覧を表示する                        |一覧ページに一覧を表示する	一覧を表示する                              |トップページ投稿一覧が表示される                |
|コメント機能               |コミュニケーションで学習の幅を広げる      |詳細画面にて投稿にコメント機能を実装	詳細画面にてコメントできる           |詳細画面で詳細が表示される                      |
|メッセージ機能             |コミュニケーションを取れる              |フォローしあったユーザー同士がメッセージのやりとりをする                   |フォローしていユーザーにDMを送る                |
|カテゴリ分け機能	          |ジャンルから逆引きできるようにする        |ジャンル別に取ったデータからジャンル別に見つけ出す                        |逆引きでジャンルから見つけ出す                 |
|クラウドファウンディング機能 |サービスを向上する                     |寄付してもらうことでサービスをよりよくする支援をいただく                   |PAYJPで寄付できる                            |
|マイページ機能             |自身の情報の詳細を確認する              |自分のデータを見つめることで今後に活かす	自身のプロフイールや投稿          |フォロしているユーザーやお気に入りの投稿一覧を表示す|
|詳細機能                  |投稿の詳細を確認できる                  |一覧ページから遷移し、その投稿の詳細を閲覧できるよう実装                   |投稿の詳細を確認することができる               |
|調子管理機能               |自身の体調を管理する                   |睡眠、食事、精神、運動を分析することで体調を一定に保つ                     |グラフ化された自身の調子の点数を可視化する       |
|誤判断防止機能             |バイアスを回避してくれるバイアス集総まとめ |判断には思い込みというのを避けなければならないため、バイアスを確認する機能を実装 |バイアス一覧を表示                          |
|バイアス検索機能           |バイアスを見つけ出すため                |誤判断防止機能に追加で検索欄も実装                                       |バイアス一覧ページから検索欄より検索できる      |
|パンくずリスト機能         |ページを楽に遷移するため                |どのページにも統一してページ遷移を楽にするためにパンクずを仕掛ける             |楽に遷移可能                               |
|いいね機能                |非同期でいいねする                     |いいねボタンを押すと非同期でいいねが加算される                             |いいねを押すと色がつく                       |
|レコメンド機能            |レコメンドする                         |ユーザーに合わせてAPIを使用しレコメンドする	トップページにお勧め一覧が表示される |トップページにレコメンドが表示される           |


## 実装した機能についてのGIFと説明
実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。

実装予定の機能##
洗い出した要件の中から、今後実装予定のものがあれば記述しましょう。

## データベース設計

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

## cloud_foundings テーブル
| Column | Type    | Options     |
| ------ | ------- | ----------- |
| fund   | integer | null: false |

### association
-belongs_to :cloud_founding

## ER図
[ER図]: https://gyazo.com/79dc6a9be51314596a97b2ba233309ca "ER図"

ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。
Ruby 2.6.5<br>
Python<br>
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