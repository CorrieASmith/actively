class User < ActiveRecord::Base
  has_many :targets, dependent: :destroy
  has_many :breakfasts, dependent: :destroy
  has_many :lunches, dependent: :destroy
  has_many :dinners, dependent: :destroy
  has_many :snacks, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
