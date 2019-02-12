class Api::V1::FirstLinesController < ApplicationController

  def index
    line_to_render = ""
    last_line = LaterLine.last
    if last_line
      first_line = FirstLine.find(last_line.first_line_id)
        if first_line.later_lines.length < 9
          line_to_render = last_line
        elsif first_line.later_lines.length >= 9
          new_first_line = FirstLine.find(first_line.id + 1)
          line_to_render = new_first_line
        end
      render json: line_to_render
    else
      very_first_line = FirstLine.first
      render json: very_first_line
    end
  end

  # @first_lines = FirstLine.all
  # render json: @first_lines

  def show
    @first_line = FirstLine.find_by(id: params[:id])
    if @first_line
      render json: @first_line
    else
      render json: {error: 'This poetic voice is yet to materialize - no such first line found....'}, status: 404
    end
  end

end
