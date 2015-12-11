defmodule Beer do

  @cap 4
  @bottle 2
  @price 2

  def count(money) do
    bottle = div money, @price
    count_by_bottle(bottle, 0, 0, bottle)
  end

  defp count_by_bottle(0, _b, _c, current) do
    current
  end

  defp count_by_bottle(full, empty_bottle, unused_cap, current) do
    total_bottle = full + empty_bottle
    total_cap = full + unused_cap

    b2b = div(total_bottle, @bottle)
    c2b = div(total_cap, @cap)

    bs = b2b + c2b
    empty_bottle_this_time = rem(total_bottle, @bottle)
    unused_cap_this_time = rem(total_cap, @cap)

    count_by_bottle(bs, empty_bottle_this_time, unused_cap_this_time, current + bs)
  end

end
