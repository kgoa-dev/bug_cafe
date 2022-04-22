# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

def take_order(menus)   #注文indexと入力indexがずれてる
  menus.each.with_index(1) do |menu, i| 
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_number = gets.to_i - 1.to_i  #入力に-1をして入力indexを帳尻合わせ
  puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
  order_number
end
#例外処理入れたいけどまた後日。。

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
order1 = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
order2 = take_order(FOODS)

total = DRINKS[order1][:price].to_i + FOODS[order2][:price].to_i
#str型→int型に変換
#DRINKS[order2]とFOODS[order1]を変更

puts "お会計は#{total}円になります。ありがとうございました！"
