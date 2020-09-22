class Application

  def call(env)
    resp = Rack::Response.new
#calls on the time method asks for the now time and checks the hour
    time = Time.now.hour

    if time <= 12
      resp.write 'Good Morning!'
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end