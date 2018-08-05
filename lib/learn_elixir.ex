defmodule LearnElixir do
  use GenServer

  # Callbacks

  def start_link do
    GenServer.start_link(__MODULE__, [:hello])
  end

  def init(stack) do
    {:ok, stack}
  end

  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  def handle_cast({:push, item}, state) do
    {:noreply, [item | state]}
  end
end

# {:ok, pid} = GenServer.start_link(Stack, [:hello])

# GenServer.call(pid, :pop)

# GenServer.cast(pid, {:push, :world})

# GenServer.call(pid, :pop)
