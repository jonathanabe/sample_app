# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
	token_file = Rails.root.join(".secret")
	if File.exist?(token_file)
		# Use the existing token.
		File.read(token_file).chomp
	else
		# Generate a new token and store it in token_file.
		token = SectureRandom.hex(64)
		File.write(token_file, token)
		token
	end	
end
SampleApp::Application.config.secret_key_base = '2702275bd23547a2a8691ecae63a54f43205e1b425ec3dd5b3534d6c28e26a4336d9a181961e1d8582394d11709a5f4af715187d452a14cc8813c732b304bef4'
