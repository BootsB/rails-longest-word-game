class GamesController < ApplicationController
  def new
    def generate_grid(grid_size)
      # TODO: generate random grid of letters
      letters = ('A'..'Z').to_a
      grid = []
      grid_size.times do
        grid << letters.sample
      end
      grid
    end
    def check_grid(attempt, grid)
      used_letters = []

      attempt.upcase.chars.all? do |char|
        if grid.include?(char) && (used_letters.count(char) < grid.count(char))
          used_letters << char
          true
        else
          false
        end
      end
    end
    def parse(url)
      serialised = URI.open(url).read
      JSON.parse(serialised)
    end
    @letters = generate_grid(9)
  end

  def score
  end
end
