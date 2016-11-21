require("sinatra")
require("sinatra/contrib/all")
require_relative('models/game')

get "/rps" do
return "Hi, welcome to the game get Rock Paper Scissor, please enter in the bar chart your choices as following:
http://localhost:4567/rps/<choice1>/<choice2> (e.g. http://localhost:4567/rps/rock/scissors) 

<choice1> and <choice2> = choose one between scissors/rock/paper


If you want to try to beat the computer please enter this url:
http://localhost:4567/rps/<yourchoice>/computer

<yourchoice> = choose one between scissors/rock/paper
"
end

# get "/rps/rock/scissors" do
#   return  "Rock wins.. You can put the scissors back to the drawer."
# end

# get "/rps/rock/paper" do
# return "Paper wins. Sad for you big Rock."
# end

# get "/rps/scissors/paper" do
# return "Scissor wins. Don't be scared, I will cut just a wee bit."
# end

get '/rps/:choice1/:choice2' do
  choice1 = params[:choice1]
  choice2 = params[:choice2]

  game = Game.new(choice1, choice2)

  @result = game.play(choice1, choice2)
  erb(:result)

end
