module Enumerable
  def count_by
    if block_given?
      each_with_object(Hash.new(0)) do|elm, h|
        h[yield(elm)] += 1
      end
    else
      each_with_object(Hash.new(0)) do|elm, h|
        h[elm] += 1
      end
    end
  end
end
