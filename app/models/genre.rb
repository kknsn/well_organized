class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '文学・小説' },
    { id: 3, name: '趣味・雑学' },
    { id: 4, name: 'ビジネス・経済' },
    { id: 5, name: '政治・社会・歴史' },
    { id: 6, name: '芸能・エンターテインメント' },
    { id: 7, name: 'エッセイ' },
    { id: 8, name: '自己啓発' },
    { id: 9, name: '健康・暮らし' },
    { id: 10, name: 'スポーツ' },
    { id: 11, name: '教育・学習' },
    { id: 12, name: '哲学・思想・宗教' },
    { id: 13, name: '子供向け' }
  ]

  include ActiveHash::Associations
  has_many :books
  end