require "longest_word"
require "byebug"
class PagesController < ApplicationController
  def game
    @start_time = Time.now.to_i
    grid_size = rand(10..16)
    @grid = generate_grid(grid_size).join(" ")
  end

  def score
    end_time = Time.now.to_i
    time_taken = end_time - params[:time].to_i
    included?(params[:answer], params[:grid])

    @final_score = run_game(params[:answer], params[:grid], params[:time].to_i, end_time)


   # compute_score(params[:answer], time_taken)
  end
end
