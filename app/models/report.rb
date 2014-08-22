class Report < ActiveRecord::Base
  require "PDFKit"

  def self.get_report(report_type, options)
    report_template = ReportTemplate.where(:name => report_type).first
    case report_type
    when 'reminder'
      file = create_report(report_template, options)
    end
    return file, report_template.filename
  end
 
  private
  def self.create_report(report_template, datas) 
    body = Erubis::Eruby.new(report_template.body)
    html_str = body.evaluate(datas)
    PDFKit.new(html_str).to_pdf
  end
end


