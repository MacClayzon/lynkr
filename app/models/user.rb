class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :users_collections
  has_many :collections, :through => :users_collections
  has_many :created_collections, :class_name => "Collection", :foreign_key => :creator_id


  has_many :links
end
