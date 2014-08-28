class CreateEnjuTrunkReportReportTemplates < ActiveRecord::Migration
  def change
    create_table :report_templates do |t|
      t.string :name
      t.string :display_name
      t.string :filename
      t.string :size
      t.string :header
      t.string :footer
      t.string :title
      t.text :message
      t.text :body
      t.timestamps
    end
  end
end
