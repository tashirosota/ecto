defmodule Friends.Person do
  use Ecto.Schema
  alias Friends.Repo

  schema "people" do
    field :first_name, :string
    field :last_name, :string
    field :age, :integer
  end

  def changeset(person, params \\ %{}) do
    person
    |> Ecto.Changeset.cast(params, [:first_name, :last_name, :age])
    |> Ecto.Changeset.validate_required([:first_name, :last_name])
  end


  def all do
    Repo.all(Friends.Person)
  end

  def create!(attrs \\ %{}) do
    %Friends.Person{}
    |> changeset(attrs)
    |> Repo.insert!()
  end
end
