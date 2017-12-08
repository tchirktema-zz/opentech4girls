class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :first_name
      t.string :email
      t.string :phone
      t.string :degree
      t.integer :age
      t.boolean :have_computer
      t.boolean :use_internet
      t.string :sex
      t.string :twitter_url
      t.string :facebook_url
      t.text :comment

      t.timestamps
    end
  end
end
