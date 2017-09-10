class CreateSampleEngineWidgets < ActiveRecord::Migration[5.1]
  def change
    create_table :sample_engine_widgets do |t|
      t.string :name

      t.timestamps
    end
  end
end
