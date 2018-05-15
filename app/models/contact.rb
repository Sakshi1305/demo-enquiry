class Contact < ApplicationRecord
  validates :first_name, :last_name, :email, :age, :phone_number,
   :message, presence:true
  validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  validates :phone_number, numericality: {only_integer: true}
end
