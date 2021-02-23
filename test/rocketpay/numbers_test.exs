defmodule Rocketpay.NumbersTest do
    use ExUnit.Case

    alias Rocketpay.Numbers

    describe "sum_from_file/1" do
        test "when there is a file with the given name, returns the sum of numbers" do
            response = Numbers.sum_from_file("numbers")
            expected = {:ok, %{result: 50}}
            assert response == expected
        end

        test "when there is no file with the given name, returns an error" do
            response = Numbers.sum_from_file("banana")
            expected = {:error, %{message: "Invalid file!"}}
            assert response == expected
        end
    end
end