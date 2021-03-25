defmodule ReportsGenerator do
  alias ReportsGenerator.Parser

  def build(filename) do
    filename
    |> Parser.parse_file()
    |> Enum.reduce(report_acc(), fn line, report -> sum_values(line, report) end)

    # explícita
    # |> Enum.map(fn line -> parse_line(line) end)

    # implícita
    # |> Enum.map(&parse_line(&1))

    # |> File.read()
    # |> handle_file()

    # case File.read("reports/#{filename}") do
    #  {:ok, result} -> result
    #  {:error, reason} -> reason
    # end
  end

  defp sum_values([id, _food_name, price], report), do: Map.put(report, id, report[id] + price)

  defp report_acc, do: Enum.into(1..30, %{}, fn elem -> {Integer.to_string(elem), 0} end)

  # defp handle_file({:ok, file_content}), do: file_content
  # defp handle_file({:error, _reason}), do: "Error while opening file!"
end
