class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.date :dob
      t.string :email
      t.string :residential_address
      t.string :billing_address

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
