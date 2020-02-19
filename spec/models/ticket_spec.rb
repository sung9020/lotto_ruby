require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe "볼 추첨" do
    it "볼 추첨 성공" do
      ticket = FactoryBot.create(:ticket)
      expect(ticket.number_balls.length).to eq 6
    end
  end
end


