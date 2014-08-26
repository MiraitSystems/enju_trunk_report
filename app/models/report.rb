class Report < ActiveRecord::Base
  def self.get_report(report_type, options)
    report_template = ReportTemplate.where(:name => report_type).first
    return false unless report_template
    conf = {}
    conf[:page_size] = report_template.size || 'A4'
    conf[:footer_center] = report_template.footer if report_template.footer
    conf[:header_right] = report_template.header if report_template.header
    conf[:encoding] = 'UTF-8'
    PDFKit.configure do |config|
      config.default_options = conf
    end

    file = create_report(report_template, options)
    return file, report_template.filename
  end
 
  private
  def self.create_report(report_template, datas)
    body = Erubis::Eruby.new(report_template.body)
    datas[:title] = report_template.title
    datas[:message] = report_template.message.gsub(/(\r\n|\r|\n)/,'<br />')
    html_str = body.evaluate(datas)
    kit = PDFKit.new(html_str)
    kit.stylesheets << "#{EnjuTrunkReport::Engine.root}/app/assets/stylesheets/report_pdf.css"
    pdf = kit.to_pdf
  end
end
