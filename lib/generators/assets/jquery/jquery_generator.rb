module Assets
	class JqueryGenerator < Generate::Generators::Base
		def copy_layout
			assets_file = File.join('public', 'javascripts')
			init_file   = File.join('config', 'initializers', 'jquery.rb')
			assets      = [
				'http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js',
				'http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.js',
				'http://github.com/rails/jquery-ujs/raw/master/src/rails.js'
			]
			
			inside(assets_file) { assets.each { |f| run("curl -O #{f}") } }
			
			copy_file 'expansion.rb', init_file
		end
	end
end