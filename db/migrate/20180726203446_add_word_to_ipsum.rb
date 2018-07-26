class AddWordToIpsum < ActiveRecord::Migration[5.1]
  def change
    add_column :ipsums, :word, :string
  end
end
