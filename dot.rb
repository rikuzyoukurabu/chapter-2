# # if
# score = gets.to_i


# if score > 80 
#   puts "gureat!"
# elsif score > 60
#   puts "good!!"
# else
#   puts "so so...!"
# end

# puts "great" if score > 80

# case

# signal = gets.chomp

# case signal
# when "red"
#   puts "stop!"
# when "green", "blue"
#   puts "go!"
# when "yellow"
#   puts "caution!"
# else
#   puts "wrong signal"
# end

# i = 0

# while i < 10 do
# puts "#{i}: hellow"
# # i = i+1
# i +=1
# end

# 10.times do |i|
#  puts "#{i}: hello"
# # end

# 10.times { |i| puts "#{i}: hello"}

# (15..20).each do |i|
#   p i
# end

# ["red","bule"].each do |color|
#   p color
# end

# {yucco:100,erika:75}.each do |name,score|
#   puts "#{name}: #{score}"
# end

# i = 0
# loop do
#   p i
#   i += 1
# end

# 10.times do |i|
#   if i == 7
#     # break
#     next
#   end
#   p i
# end

# def sayhi(name = "kayoko")
#   score = 80
#   return "hi #{name}"
# end

# p sayhi
# p score
# # sayhi "yucco"
# # sayhi

# class User

#   # attr_accessor :name
#   # setter: name=(value)
#   # getter name
# @@count = 0

# VERSION = 1.1


#   def initialize(name)
#     # newの引数を使用することができるので(yucco)が使用できる
#     @@count += 1
#     @name=name
#   end

#   def sayhi
#     puts "hi i am #{@name}"
#     puts "hi i am #{self.name}"
#     puts "hi i am #{name}"
#   end

#   def self.info
#     puts "#{VERSION}:User Class,#{@@count}instances."
#   end
# end

# yucco = User.new("yucco")
# kayoko = User.new("kayoko")
# mai = User.new("mai")
# User.info
# p User::VERSION
#classから直接呼び出す事ができるUser→userclass infoメソッドを呼び出しているので
# User classが結果として出る


# tom = User.new("yucco")
# # newに引数yuccoが渡される
# # classはそのままでは使えなくインスタンス化しなければならない
# tom.name = "tom Jr,"
# p tom.name

# tom.sayhi
# レシーーバー
# # Tomのインスタンスオブジェクトが使用できるのでsayhiが実行できる
# bob = User.new("kana")
# # newに引数yuccoが渡される
# bob.sayhi

# class User
#   def initialize(name)
#     @name = name
#   end

#   def sayHi
#     puts "hi! i an #{@name}"
#   end
# end

# class AdminUser < User
#   # userが親クラス
#   # AdminUserが子クラス

#   def sayHello
#     puts "Hello from #{@name}"
#   end
# #  オーバーライド
#   def sayHi
#     puts "hi! i from admain!"
#   end
# end

# tom = AdminUser.new("yucco")
# tom.sayHi
# tom.sayHello

#アクセス権
# public
# private


# class User
#   def sayHi
#     puts "Hi!!"
#     sayPrivate
#     # 変数の中でなら呼び出す事が出来る
#   end

#   private
#   def sayPrivate
#     puts "private!!"
#   end

# end 

# class AdminUser < User
#   # def sayHello
#   #   puts "hello"
#   #   sayPrivate
#   #   # クラスの継承がされているので呼び出す事が出来る
#   # end
#   def sayPrivate 
#     puts "private from Admain"
#   end
# end

# User.new.sayHi
# tom=User.new("tom")
# tom=sayHikor
# User.new("tom").sayHi
# これと一緒である

# Userclassのオブジェクト、つまりインスタンスを作る事が出来るので
# そのためUser.new

# AdminUser.new.sayPrivate 


# def movie_encode
# end

# def movie_export
# end

# module Movie

#   VERSION = 1.1
#   # 最初の一文字は大文字なので覚えておきましょう
#   def self.encode
#     puts "encoding..."
#   end

#  def self.export
#   puts "exencoding..." 
#  end
# end

# Movie.encode
# Movie.export
# p Movie::VERSION
 
# module Debug
#   def info
#     puts "#{self.class}debug info..."
#     # selfというのはそのオブジェクト自身を指している
#   end
  
# end

# class Player
#   # player classのオブジェクト
#   include Debug
#   # mixinしている
# end

# class Monster
#   include Debug
# end

# Player.new.info
# Monster.new.info

class MyError < StandardError; end
x = gets.to_i

begin
  if x == 3
    raise MyError
  end
  p 100 / x
rescue MyError
  puts "not 3!"

rescue => ex
  p ex.message
  p ex.class
  p puts "Stopped!"
ensure
  puts "--END---"
end

