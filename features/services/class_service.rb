class Livro 

	include HTTParty
	base_uri "http://fakerestapi.azurewebsites.net"
	format :json

	attr_reader :request_body


	def post(title, description, excerpt, publishdate)
		json = Hash.new
		json["title"] =  title
		json["description"] = description
		json["excerpt"] = excerpt
		json["publishdate"] = publishdate
		self.class.post("", :headers => {'Content-Type' => 'application/json'}, :body => json.to_json)
	end

	def get(index=nil)
		self.class.get("/#{index}")
	end

	def put()

	end

end
