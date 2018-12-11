require 'sinatra'
require 'googlebooks'

get '/' do
    @books = []
    erb :index
end

post '/goo' do
    lol = params['query']
    @book = GoogleBooks.search(lol)
    @books = @book.to_a
    
    # book_info = book.first
    # if book_info 
    #     @author = book_info.authors
    #     @isbn = book_info.isbn
    #     @link = book_info.info_link
    #     @image = book_info.image_link(:zoom => 6)
    #     @description = book_info.description
    #     @title = book_info.title
    # end

    # begin
    #     //call the api
    # rescue
    #     puts "not working"
    # else
    #     //your code
    # end      
    erb :index
end

