require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
#require 'sqlite3'
#def get_db
    #db = SQLite3::Databaze.new 'barbershop.db'
    #db.results_as_hash = true
    # return db
#end

#configure do
    #db = get_db
    #db.execute'CREATE TABLE IF NOT EXISTS
        #"Users"
      #(
        #"id" INTEGER PRIMARY KEY AUTOINCREMENT,
        #"username" TEXT,
        #"phone"    TEXT,
        #"datastamp" TEXT,
        #"barber"   TEXT,
        #"color"    TEXT
       #)'
#end
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
    #создаем хеш
    hh = {:username => 'Введите имя', :phone => 'Введите телефон',  :datetime => 'Введите дату и время'}
    #делаем проверку для каждой пары ключ-значение
    @error = hh.select {|key,_| params[key] == ""}.values.join(", ")
        if @error != ''
            #вернуть представление "визит"
            return erb :visit
        end
    #db = get_db
    #db.execute 'insert into
        #Users
           #(
               #username,
               #phone,
               #datastamp,
               #barber,
               #color
            #)
        #values(?,?,?,?,?)',[@username, @phone, @datetime, @barber, @color]

    @title='Thank you'
    @message="Dear #{@username}, we'll be waiting for you at #{@datetime}.Barber: #{@barber}. Color:#{@color}."

    f = File.open'users.txt','a'
    f.write "User:#{@username}. Phone:#{@phone}. Data and time:#{@datetime}. Color:#{@color}"
    f.close 

    erb :message 
end 
#def get_db
    #db = SQLite3::Databaze.new 'barbershop.db'
    #db.results_as_hash = true
    # return db
#end
get '/contacts' do
	erb :contacts
end
post '/contacts' do
#попытка подключить почту через подключение библиотеки require 'pony' пока не удалась - ошибка в 54 строке
#require 'pony'
#Pony.mail(
  #:name => params[:name],
  #:mail => params[:mail],
  #:body => params[:body],
  #:to => 'victoraleksejcuk@gmail.com',
  #:subject => params[:name] + " has contacted you",
  #:body => params[:message],
  #:port => '587',
  #:via => :smtp,
  #:via_options => { 
    #:address              => 'smtp.gmail.com', 
    #:port                 => '587', 
    #:enable_starttls_auto => true, 
    #:user_name            => 'Виктор Алексейчук', 
    #:password             => 'p@55w0rd', 
    #:authentication       => :plain, 
    #:domain               => 'localhost.localdomain'
  #})
#redirect '/success' 


    @email = params[:email]
    @massage=params[:massage]

    hh = {:email => 'Ваш email',  :massage => 'Введите ваше сообщение'}
    #делаем проверку для каждой пары , ключ-значение
    @error = hh.select {|key,_| params[key] == ""}.values.join(", ")
        if @error != ''
            #вернуть представление визит
            return erb :contacts
        end

    @title='Thank you'
    @massage= "#{@massage}"

    f = File.open'contacts.txt','a'
    f.write " Email:#{@email}, Сообщение:#{@massage}"
    f.close 
    
    

    erb :massage 
end 