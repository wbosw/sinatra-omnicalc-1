require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
    <form>
      <button>
      Calcualate Square
      </button>
    </form>

  "
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @user_number = params.fetch("square")

  @squared_user_number = params.fetch("square").to_f ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @user_number = params.fetch("user_number").to_f

  @result_number = params.fetch("user_number").to_f ** 0.5

  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params.fetch("apr").to_f

  @years = params.fetch("years").to_f

  @principal = params.fetch("principal").to_f

  @top = @apr / 100 /12 * @principal

  @bot = 1.0 - (1.0 + @apr / 100 / 12) ** (-@years * 12.0)

  @payment = @top/@bot
  erb(:payment_results)
end
