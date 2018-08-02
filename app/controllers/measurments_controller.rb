class MeasurmentsController < ApplicationController
  def index
    @measurments = Measurment.all
  end

  def new
    @measurment = Measurment.new
  end

  def create
    @measurment = Measurment.new(measurment_params)

    if @measurment.save
        puts "test printing"
        puts @measurment.id
        fill_db(@measurment.attachment.read, @measurment.id)
        redirect_to measurments_path, notice: "The measurment #{@measurment.name} has been uploaded."
    else
        render "new"
    end
  end

  def destroy
    @measurment = Measurment.find(params[:id])
    @measurment.destroy
    redirect_to measurments_path, notice:  "The measurment #{@measurment.name} has been deleted."
  end

  private
    def measurment_params
      params.require(:measurment).permit(:name, :attachment)
    end
end
