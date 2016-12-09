require 'sinatra'
require 'date'

post '/callback' do
	# Get xml from POST using parameter called 'data'
	xml_data = params['data']
	# Just store the xml to process after
	output_file = "/tmp/callback-#{Time.now.utc.iso8601}"
	File.write(output_file, xml_data)
	# return http/status 200(OK)
	'OK'
end