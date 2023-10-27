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
  pp @user_number = params.fetch("square")

  pp @squared_user_number = params.fetch("square").to_f ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  pp @user_number = params.fetch("user_number").to_f

  pp @result_number = params.fetch("user_number").to_f ** 0.5

  erb(:square_root_results)
end
