class DegreeOfDifficult < ActiveHash::Base

  self.data = [
    {id: 1, name:"------" },
    {id: 2, name:"かなり難しい" },
    {id: 3, name:"難しい" },
    {id: 4, name:"普通" },
    {id: 5, name:"簡単" },
    {id: 6, name:"かなり簡単" }
  ]

  include ActiveHash::Associations
   has_many :posts

end