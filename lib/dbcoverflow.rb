require 'httparty'

class DBCOverflow
  include HTTParty

  base_uri 'http://limitless-shelf-12376.herokuapp.com'

  def initialize(u, p)
    response = self.class.get('/')
    response = self.class.post(
      '/users',
      :body => { :username => u, :password => p },
      :headers => {'Cookie' => response.headers['Set-Cookie']}
    )
    @response = response
    @cookie = response.request.options[:headers]['Cookie']
  end

  def new_question(title, content)
    options = {:query => {:title => title, :content => content} }
    options.merge!({:headers => {"Cookie" => @cookie, 'Content-Type' => 'application/x-www-form-urlencoded'}})
    self.class.post('/questions', options)
  end

end