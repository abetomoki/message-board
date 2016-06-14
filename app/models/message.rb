class Message < ActiveRecord::Base
    
    #バリデーション名前必須入力、２０文字以内。
    validates :name , length: {maximum: 20 }
    
    #内容は必須入力かつ２文字以上３０文字以内。
    validates :body, length: { minimum: 2, maximum: 30 }, presence: true
    
end