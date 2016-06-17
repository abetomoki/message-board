class Message < ActiveRecord::Base
    
    #バリデーション名前必須入力、２０文字以内。
    validates :name , length: {maximum: 20 }, presence: true 
    
    #内容は必須入力かつ２文字以上３０文字以内。
    validates :body , length: { minimum: 2, maximum: 30 }, presence: true

    #年齢は0 - 120歳までとする。
    validates :age , numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to:120 }
    
end