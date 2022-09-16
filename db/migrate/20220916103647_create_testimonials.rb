class CreateTestimonials < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :profession
      t.text :content
      t.date :date
      t.string :picture

      t.timestamps
    end
  end
end
