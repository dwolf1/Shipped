class D3DataController < ApplicationController

  def d3_data
    @boats = Job.find_by(:user_id => current_user.id).boats
    p @boats
    arry = []
    @boats.each do |b| 
      amount = b.amount_that_can_be_shipped
      arry.push(amount)
    end 
    @arry_json = arry.to_json
    render(json: @arry_json)
  end
end

