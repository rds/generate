require 'rails/generators/base'
 
module Generate
  module Generators
		class Base < Rails::Generators::Base #:nodoc:
			def self.source_root
			  @_generate_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'generators', base_name, generator_name, 'templates'))
			end
		end
  end
end
