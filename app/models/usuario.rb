class Usuario < ApplicationRecord
  validates :age, numericality: {
    greater_than_or_equal_to: 10,
    less_than_or_equal_to: 150
  }

  validates :first_name, :last_name,
    :email_adress, :age, presence: true

  validates :first_name, :last_name,
      length: {minimum: 2}

  validates :email_adress,
      uniqueness: true

end
