class ReportTemplate < ActiveRecord::Base
  attr_accessible :name, :display_name, :filename, :body, :title, :message, :size, :header, :footer
end
