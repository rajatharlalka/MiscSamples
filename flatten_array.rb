def flatten_array(array)
  array.each_with_object([]) do |item, flattened_array|
    flattened_array.push *(item.is_a?(Array) ? flatten(item) : item)
  end
end