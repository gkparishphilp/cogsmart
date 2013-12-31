module ApplicationHelper

	def format_datetime( date )
		date.strftime("%b %d, %Y @ %l:%M%p") if date.present?
	end

	def format_date( date )
		date.strftime("%b %d, %Y") if date.present?
	end

	def set_css_if( args={} )
		class_name = args[:class] || 'active'

		if args[:path].present?
			return class_name if current_page?( args[:path].to_s )
		elsif args[:url].present?
			return class_name if current_url == ( args[:url].to_s )
		elsif  args[:controller].present?
			return class_name if controller_name == args[:controller].to_s
		end
	end
	
end
