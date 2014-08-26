class CreateEnjuTrunkReportReportTemplates < ActiveRecord::Migration
  def change
    create_table :report_templates do |t|
      t.string :name
      t.string :display_name
      t.string :filename
      t.text :body
      t.timestamps
    end
  end
end
