class Material < ActiveHash::Base
  self.data = [
    {id: 1, name: 'リンク1' , image: "material/templete/material1.png"},
    {id: 2, name: 'リンク2' , image: "material/templete/material2.png"},
    {id: 3, name: 'リンク3' , image: "material/templete/material3.png"},
  ]
end