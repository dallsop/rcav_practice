class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square
    @square_input = params["input"].to_i
    @square_output = @square_input ** 2
    render("square.html.erb")
  end
  def square_root
    @root_input = params["input"].to_i
    @root_output = @root_input ** 0.5
    render("square_root.html.erb")
  end
  def random
    @rand_min = params["input_min"].to_i
    @rand_max = params["input_max"].to_i
    @rand_output = rand(@rand_max - @rand_min + 1) + @rand_min
    render("random.html.erb")
  end
  def payment
    @payment_rate = params["input_rate"].to_f
    @payment_years = params["input_years"].to_i
    @payment_principal = params["input_principal"].to_i
    @payment_output = (@payment_rate / 1200 * @payment_principal) / (1 - (1 + @payment_rate / 1200) ** -(@payment_years * 12))
    render("payment.html.erb")
  end
end
