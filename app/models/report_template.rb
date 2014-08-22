class ReportTemplate < ActiveRecord::Base
  attr_accessible :name, :display_name, :filename, :body
end
