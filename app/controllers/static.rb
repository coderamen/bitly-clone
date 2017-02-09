get '/' do
  @urls = Url.all.order(id: :desc)
  @domain = request.base_url
  erb :"static/index"
end

post '/urls' do
  url = Url.new
  url.long_url = params[:long_url]
  url.short_url = url.shorten
  url.save
  url.to_json
    # if url.save
    #   # redirect '/'
    #   url.to_json
    # else
    #   # @error_message = url.errors
    #   # @urls = Url.all.order(id: :desc)
    #   # @domain = request.base_url
    #   # erb :'static/index'
    # end
end

get '/:short_url' do
  url = Url.find_by(short_url: params[:short_url])
  url.increment!(:click_count)
  url = Url.find_by(short_url: params[:short_url]).long_url
  redirect url
end


# long_url = params[:long_url]
# Url.create!(long_url: long_url)
# redirect '/'
