```elixir
list = [1, 2, 3, 4, 5]

found_three = false
Enum.each(list, fn x ->
  if x == 3 do
    found_three = true
  end
  IO.puts(x)
  if found_three do
    Process.exit(self(), :normal)
  end
  
end)

```