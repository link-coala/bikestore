class CreateProjects < ActiveRecord::Migration[5.1]
def up
create_table :projects do |t|
t.string :name
t.string :description
t.timestamps null: false
end
end
def down
drop_table :projects
end
end