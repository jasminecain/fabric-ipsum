class CreateIpsums < ActiveRecord::Migration[5.1]
  def change
    create_table :ipsums do |t|

      t.timestamps
    end
  end
end
