class ReportTemplatesController < InheritedResources::Base
  add_breadcrumb "I18n.t('activerecord.models.report_template')", 'report_templates_path'
  add_breadcrumb "I18n.t('page.new', :model => I18n.t('activerecord.models.report_template'))", 'new_report_template_path', :only => [:new, :create]
  add_breadcrumb "I18n.t('page.editing', :model => I18n.t('activerecord.models.report_template'))", 'edit_report_template_path(params[:id])', :only => [:edit, :update]
  before_filter :check_client_ip_address
  load_and_authorize_resource
end
