class CreateFaq < ActiveRecord::Migration[6.0]
  def change
    create_table :faqs do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
