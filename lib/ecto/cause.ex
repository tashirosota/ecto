defmodule Ecto.Cause do
  defmacro __using__(_) do
    quote do
      defoverridable all: 3
      def all(name, queryable, opts) when is_list(opts) do
        origin_response = super(name, queryable, opts)
        get_location = &(elem(&1, 3))
        Process.info(self(), :current_stacktrace)
        |> elem(1)
        |> Enum.map(get_location)
        |> IO.inspect()
        origin_response
      end
    end
  end
end
