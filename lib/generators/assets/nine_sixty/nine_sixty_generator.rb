module Assets
	class NineSixtyGenerator < Generate::Generators::Base
		def copy_layout
			files = %w( reset 960 text )
			cmd = 'curl -O http://github.com/nathansmith/960-Grid-System/raw/master/code/css/%s.css'
			
			inside File.join('public', 'stylesheets') do
				files.each do |f| 
					run(cmd % f)
				end
			end
		
			copy_file 'expansion.rb', File.join('config', 'initializers', 'nine_sixty.rb')
		end
	end
end
