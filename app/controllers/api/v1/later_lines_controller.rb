class Api::V1::LaterLinesController < ApplicationController

  def index
    @all_lines = FirstLine.all
    render json: @all_lines
  end

  def show
    @later_line = LaterLine.find_by(id: params[:id])
    if @later_line
      render json: @later_line
    else
      render json: {error: 'This poetic voice is yet to be developed - no such later line found....'}, status: 404
    end
  end

  def create
    @later_line = LaterLine.new(later_line_params)
    if @later_line.save
      render json: @later_line
    else
      render json: {error: 'The poetic voice cracked, and this line could not be added....'}, status: 400
    end
  end

  private

  def later_line_params
    params.require(:later_line).permit(:text, :author, :email, :line_number, :first_line_id)
  end

end
