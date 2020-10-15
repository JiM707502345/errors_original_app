class HumanFactor < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '気分（高揚/沈潜）' },
    { id: 3, name: '欲得/（経済的/地位）' },
    { id: 4, name: '自失（無判断/未知遭遇）' },
    { id: 5, name: '思い入れが逆に働いた（生きがい/使命感）' },
    { id: 6, name: '横着（手抜き/責任転嫁）' },
    { id: 7, name: 'プライド（体裁/ええ格好）' },
    { id: 8, name: '惰性（性癖/習慣/行き掛かり/思い込み）' },
    { id: 9, name: '決まり違反（無知/無視/手抜き）' },
    { id: 10, name: '考え不足（浅慮/無思慮）' },
    { id: 11, name: 'うっかり（誤判断/忘却/看過）' },
    { id: 12, name: 'その他' }
  ]
end
