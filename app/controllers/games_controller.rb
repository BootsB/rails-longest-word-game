class GamesController < ApplicationController
  def new
    @letters = generate_grid(9)
  end

  def score


  end

  private

  def generate_grid(grid_size)
    letters = ('A'..'Z').to_a
    grid = []
    grid_size.times do
      grid << letters.sample
    end
    grid
  end

end
