# アプリケーション名
BOOK REVIEW SITE

# アプリケーション概要
おすすめのビジネス書を投稿できる。  
ユーザーは投稿内容や投稿者のバックグラウンドから自分に合った本かどうかを判断できる。  
いいね機能から人気記事をランキング形式で閲覧することができる。


# URL
http://54.95.24.223 

# テスト用アカウント
- メールアドレス hoge@hoge
- パスワード 111111  

# 利用方法

新規登録またはログインすることにより記事の投稿や、他のユーザーが投稿した記事の閲覧が可能になる。  
また、他のユーザーが投稿した記事に対していいねを押すことができ、いいねの総数に応じてトップ画面のランキングが表示される。    

# 目指した課題解決

社会人になってから読むべきおすすめの本を一覧化して分かりやすくしたい。  
会社の若手メンバーより若年時にどのような本を読むべきなのか教えてほしいとの要望を多数受けた＝多くのメンバーがどのような学習をすればいいのか迷っている（課題）。  
先輩社員が過去に読んだ（または最近読んで若手におすすめしたい本）を投稿することで課題を解決する。

# 洗い出した要件
- ユーザー登録
- 投稿
- いいね
- 検索
- ランキング表示

# 実装した機能についての画像やGIFおよびその説明

## サインイン
[![Image from Gyazo](https://i.gyazo.com/31d8722c0fcae88aa00ff5f11f327838.gif)](https://gyazo.com/31d8722c0fcae88aa00ff5f11f327838)

## ログイン
[![Image from Gyazo](https://i.gyazo.com/374162dcea26ec05bf07baa782800e2d.gif)](https://gyazo.com/374162dcea26ec05bf07baa782800e2d)

## ログアウト
[![Image from Gyazo](https://i.gyazo.com/22f53e3547e3ca105f26ea6533f4222b.gif)](https://gyazo.com/22f53e3547e3ca105f26ea6533f4222b)

## 投稿機能
- ログイン中のユーザーのみ「投稿する」のボタンが表示される
[![Image from Gyazo](https://i.gyazo.com/8e7dcbf2199edea602fc12260861a691.gif)](https://gyazo.com/8e7dcbf2199edea602fc12260861a691)

## 投稿詳細
- ユーザー＝投稿者の場合は編集ボタンと削除ボタンを表示
- ユーザー≠投稿者の場合はいいねボタンを表示
[![Image from Gyazo](https://i.gyazo.com/14d900df7fb66efabee73157fdcca030.gif)](https://gyazo.com/14d900df7fb66efabee73157fdcca030)

## 投稿編集
- ユーザー＝投稿者の場合のみ編集可能
[![Image from Gyazo](https://i.gyazo.com/49bfc46895176673af72a16a7481a361.gif)](https://gyazo.com/49bfc46895176673af72a16a7481a361)

## 投稿削除
- ユーザー＝投稿者の場合のみ削除可能
[![Image from Gyazo](https://i.gyazo.com/4fc9d1d47cdb4c954edbe19c372d6742.gif)](https://gyazo.com/4fc9d1d47cdb4c954edbe19c372d6742)

## いいね機能
- ユーザー≠投稿者の場合のみいいね可能
[![Image from Gyazo](https://i.gyazo.com/435ed5f6325cbb13b83bab7d1bd322cb.gif)](https://gyazo.com/435ed5f6325cbb13b83bab7d1bd322cb)

## いいね取り消し
[![Image from Gyazo](https://i.gyazo.com/d05201d8365790e03b418dda8376ded3.gif)](https://gyazo.com/d05201d8365790e03b418dda8376ded3)

## ランキング表示機能
- いいねの数に応じて上位４つの記事をランキング表示
[![Image from Gyazo](https://i.gyazo.com/7254bb1d53afd5cdd10ab2ab8cfac5e9.gif)](https://gyazo.com/7254bb1d53afd5cdd10ab2ab8cfac5e9)

## 検索機能
[![Image from Gyazo](https://i.gyazo.com/e442d24e1bdfc2f4057949d5ac0ec1ac.gif)](https://gyazo.com/e442d24e1bdfc2f4057949d5ac0ec1ac)

# 今後実装予定の機能
- ユーザーのフォロー機能
- 投稿者の詳細が見れる機能
- フォローしたユーザーの記事のみが表示される機能
- いいね！した記事のマイページでの閲覧
- マイページ機能

# データベース設計

# ローカルでの動作方法
git clone https://github.com/kaji0913/furima-35484.git  
cd original_app  
bundle install  
yarn install  
rails db:create  
rails db:migrate  
rails s

## 使用した環境
ruby 2.6.5


# テーブル設計

## users テーブル
| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| name                | string     | null: false                    |
| nickname            | string     | null: false, unique: true      |
| email               | string     | null: false, unique: true      |
| encrypted_password  | string     | null: false                    |
| age                 | integer    | null: false                    |
| work_kind_id        | integer    | null: false                    |
| role_id             | integer    | null: false                    |
| work_year           | integer    | null: false                    |
| profile             | string     |                                |

### Association
- has_many :posts
- has_many :comments


## posts テーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| title                  | string     | null: false                    |
| writer                 | string     | null: false                    |
| genre_id               | integer    | null: false                    |
| degree_of_difficult_id | integer    | null: false                    |
| to_whom                | text       | null: false                    |
| overview               | text       | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_one_attached :image


## comment テーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| comment                | text       | null :false                    |
| user                   | references | null :false, foreign_key: true |
| post                   | references | null :false, foreign_key: ture |

### Association
- belongs_to :user
- belongs_to :post