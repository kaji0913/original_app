class WorkKind < ActiveHash::Base

  self.data = [
    {id: 1, name:"------" },
    {id: 2, name:"金融" },
    {id: 3, name:"IT・メディア" },
    {id: 4, name:"自動車・機械" },
    {id: 5, name:"小売・卸" },
    {id: 6, name:"サービス" },
    {id: 7, name:"建設・不動産" },
    {id: 8, name:"エネルギー＾・資源" },
    {id: 9, name:"電気・精密" },
    {id: 10, name:"生活関連" },
    {id: 11, name:"娯楽・レジャー" },
    {id: 12, name:"物流・運送" },
    {id: 13, name:"食品" }
  ]

  include ActiveHash::Associations
   has_many :users

end