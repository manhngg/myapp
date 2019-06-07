module ApplicationHelper
	def full_title(page_title = '')
		base_title = "adidas VN"
		page_title == "" ? base_title : page_title + " | " + base_title
	end

	def image_tag(source, options={})
		super(source, options) if source.present?
	end

	def admin_controller?
    controller.class.parent == Admin ? true : false
  end

	def check_admin_active_controller(admmin_controller_name)
    controller_path == admmin_controller_name ? "active" : nil
  end

end
