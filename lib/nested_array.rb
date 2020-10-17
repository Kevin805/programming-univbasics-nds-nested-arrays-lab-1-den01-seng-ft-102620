# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"
]

def assembled_matrix
 assembled_matrix = [["Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"],
  ["Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"]
  ]
end
def sorted_matrix
  [["Eggplant","Grapefruit",
  "Oranges", 
  "Pineapple",
  "Watermelon"],
  ["Asparagus", "Avocadoes",
  "Grapes","Potatoes","Strawberries"]
  ]
end

def matrix_lookup(matrix, row, column)
  matrix[1][1]
end

def matrix_update(matrix, row, column, new_value)
  describe 'When a learning to update cells in nested arrays,' do
  describe 'when given a matrix, row, column, and new_value argument,' do
    it 'the matrix_update method returns an updated matrix' do
      local_copy_of_matrix = assembled_matrix.dup
      result = matrix_update(local_copy_of_matrix, 0, 2, "Lemons")
      expect(result[0]).to eq(["Grapefruit", "Pineapple", "Lemons", "Watermelon", "Eggplant"])
      result = matrix_update(result, 0, 2, "Onions")
      expect(result[0]).to eq(["Grapefruit", "Pineapple", "Onions", "Watermelon", "Eggplant"])
    end
  end
end

end
