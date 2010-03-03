module Assets
	class LayoutGenerator < Generate::Generators::Base		
		def copy_layout
			layout_file = File.join('app', 'views', 'layouts', 'application.html.erb')

			copy_file 'layout.html.erb', layout_file
		end
	end
end
