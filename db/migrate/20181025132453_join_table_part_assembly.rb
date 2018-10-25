class JoinTablePartAssembly < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblies_parts, id: false do |t|
      t.belongs_to :assembly, index: true
      t.belongs_to :part, index: true
    end
  end
end
