class Ticket < ApplicationRecord
  has_many :number_balls
  after_create :make_number_balls

  def make_number_balls
    6.times do
      number_balls.create!(number: unique_random_num)
    end
  end

  def to_s
    ticket = NumberBall.where(ticket_id: id).order(:number).pluck(:number).join(",")
    "당첨번호 ={" + ticket + "}"
  end

  def unique_random_num
    loop do
      random_num = Random.rand(1..46)
      return random_num unless NumberBall.where(number: random_num, ticket_id: id).exists?
    end
  end
end