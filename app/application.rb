class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.asctime.split[3] < 12.to_s
      resp.write "Good Morning"
    elsif Time.now.asctime.split[3] > 12.to_s
      resp.write "Good Afternoon"
    end
   resp.finish
 end
end
