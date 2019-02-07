class Api::V1::FirstLinesController < ApplicationController

  def index
    @first_lines = FirstLine.all
    render json: @first_lines
  end

  def show
    @first_line = FirstLine.find_by(id: params[:id])
    if @first_line
      render json: @first_line
    else
      render json: {error: 'This poetic voice is yet to materialize - no such first line found....'}, status: 404
    end
  end

end
