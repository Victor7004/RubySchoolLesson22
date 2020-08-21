require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
    @error='something wrong!'
	erb :about
end

get '/visit' do
	erb :visit
end
post '/visit' do
    @username = params[:username]
    @phone = params[:phone]
    @datetime = params[:datetime]
    @barber = params[:barber]
    @color = params[:color]

    if @username == ''
        @error = 'Введите имя'
        return erb :visit
    end
    if @phone == ''
        @error = 'Введите номер телефона'
        return erb :visit
    end

    @title='Thank you'
    @message="Dear #{@username}, we'll be waiting for you at #{@datetime}.Barber: #{@barber}. Color:#{@color}."

    f = File.open'users.txt','a'
    f.write "User:#{@username}. Phone:#{@phone}. Data and time:#{@datetime}. Color:#{@color}"
    f.close 

    erb :message 
end 

get '/contacts' do
	erb :contacts
end
post '/contacts' do
    @email = params[:email]
    @massage=params[:massage]

    @title='Thank you'
    @massage= "#{@massage}"

    f = File.open'contacts.txt','a'
    f.write " Email:#{@email}, Сообщение:#{@massage}"
    f.close 

    

    erb :massage 
end 