module ApplicationHelper
	def flash_class_name(name)
		case name
		when 'notice' then 'primary'
		when 'alert' then 'danger'
		else name
		end				
	end
end
