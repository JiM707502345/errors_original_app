class OwnError < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '未知' },
    { id: 3, name: '無知' },
    { id: 4, name: '不注意' },
    { id: 5, name: '手順の不順守' },
    { id: 6, name: '誤判断' },
    { id: 7, name: '調査・検討の不足' },
    { id: 8, name: '規制条件の変化' },
    { id: 9, name: '企画不良' },
    { id: 10, name: '価値観不良' },
    { id: 11, name: '組織運営不良' },
    { id: 12, name: 'その他' }
  ]
end
