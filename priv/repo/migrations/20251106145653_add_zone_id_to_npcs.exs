defmodule Shard.Repo.Migrations.AddZoneIdToNpcs do
  use Ecto.Migration

  def change do
    alter table(:npcs) do
      add :zone_id, references(:zones, on_delete: :nilify_all)
    end

    create index(:npcs, [:zone_id])
  end
end
