class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '男性' },
    { id: 3, name: '女性' },
    { id: 4, name: 'レズビアン' },
    { id: 5, name: 'ゲイ' },
    { id: 6, name: 'バイセクシュアル' },
    { id: 7, name: 'トランスジェンダー' },
    { id: 8, name: 'パンセクシュアル' },
    { id: 9, name: 'アセクシュアル' },
    { id: 10, name: 'ポリアモリー' },
    { id: 11, name: 'Xジェンダー' },
    { id: 12, name: 'その他' }
  ]
end
