class AddPhotoToFaq < ActiveRecord::Migration[6.0]
  def change
    add_column :faqs, :photo, :string
  end
end
