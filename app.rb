require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @user_phrase = params[:user_phrase]
    phrase = PigLatinizer.new
    @pig_latin=phrase.to_pig_latin(@user_phrase)
    erb :user_input
  end
end
