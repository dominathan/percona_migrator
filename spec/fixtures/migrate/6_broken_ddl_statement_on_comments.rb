class BrokenDdlStatementOnComments < ActiveRecord::Migration
  def up
    Lhm.change_table :comments, { stride: 5000, throttle: 150 } do |c|
      c.ddl("bla bla bla")
    end
  end

  def down
  end
end
