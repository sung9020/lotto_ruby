class LottoMachineController < ApplicationController
  def create
    tickets = []
    5.times do
      tickets << Ticket.create.to_s
    end

    render json: tickets.join("\n")
  end

end
