require 'pry'
class Application
    def call(x)
        resp = Rack::Response.new

        time = Time.now.hour
        # binding.pry
        if time > 0 && time < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end