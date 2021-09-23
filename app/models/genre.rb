class Genre < ActiveHash::Base

 self.data = [
   {id: 1, name: '------'},
   {id: 2, name: '政治・経済'},
   {id: 3, name: '健康・フィットネス'},
   {id: 4, name: '自己啓発・マインド'},
   {id: 5, name: '人事'},
   {id: 6, name: 'ファイナンス'},
   {id: 7, name: 'トレンド'},
   {id: 8, name: '生産性・時間管理'},
   {id: 9, name: 'マーケティング'},
   {id: 10, name: 'テクノロジー・IT'},
   {id: 11, name: 'リーダーシップ・マネジメント'},
   {id: 12, name: '産業・業界'},
   {id: 13, name: 'サイエンス'},
   {id: 14, name: '経営戦略'},
   {id: 15, name: 'グローバル'},
   {id: 16, name: 'リベラルアーツ'},
   {id: 17, name: 'スキルアップ・キャリア'}
 ]

 include ActiveHash::Associations
 has_many :posts

end