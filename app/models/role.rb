class Role < ActiveHash::Base

  self.data = [
    {id: 1, name:'------'},
    {id: 2, name:'メンバー'},
    {id: 3, name:'副主任'},
    {id: 4, name:'主任'},
    {id: 5, name:'係長'},
    {id: 6, name:'課長'},
    {id: 7, name:'次長'},
    {id: 8, name:'部長'},
    {id: 9, name:'執行役員'},
    {id: 10, name:'常務'},
    {id: 11, name:'専務'},
    {id: 12, name:'副社長'},
    {id: 13, name:'社長'},
    {id: 14, name:'会長'}
  ]

  include ActiveHash::Associations
  has_many :users

end