def is_valid_sudoku(grid)
  # test it's a square
  length = grid.length
  side = Math.sqrt(length).round

  return false if side != 9

  # if there are non-numbers
  return false unless grid.to_i.to_s == grid

  #create array of rows while testing them
  rows = grid.each_slice(9) do |row|
    return false unless valid_collection?(row)
    row
  end

  # create transpose of grid to test columns [[1,2],[1,2]] -> [[1,1],[2,2]]
  rows.transpose.each_slice(9) do |col|
    return false unless valid_collection?(col)
  end

  box = ''
  box_side = Math.sqrt(side)
  0.upto(8) do |sub_grid|
    box += grid[(side) * sub_grid                 ..(side) * sub_grid + 2]
    box += grid[(side) * sub_grid + box_side      ..(side) * sub_grid + 2 + box_side]
    box += grid[(side) * sub_grid + box_side * 2  ..(side) * sub_grid + 2 + box_side * 2]
    return false unless valid_collection?(box)
    box = ''
  end

  true
end

# used for testing colums rows or boxes
def valid_collection?(row)
  # union of array of chars with range of number chars 1.. 9 ruby preserves order
   return row.split(//) | ('1'..'9').to_a == row.split(//)
end