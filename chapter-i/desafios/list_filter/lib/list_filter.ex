defmodule ListFilter do
  def call(list) do
    require Integer
    require String

    Enum.count(
      Enum.map(
        Enum.filter(
          list,
          fn x -> Regex.match?(~r{\A\d*\z}, x) end
        ),
        fn y -> String.to_integer(y) end
      ),
      fn z -> Integer.is_odd(z) end
    )
  end
end
