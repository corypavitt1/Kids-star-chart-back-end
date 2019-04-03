class Api::V1::CksController < ApplicationController

  def index

    # render json: Employee.includes(:task_employees), include: ['task_employees'], include: ['category_employee']
    render json: Ck.all

  end

  def show
    @ck = Ck.find(params[:id])
  end

  def new
    @ck= Ck.new
  end



  def create
          @ck= Ck.create(cks_params)
          # if @kid.valid?
            # @token = encode_token(kid_id: @kid.id)

            if @ck.valid?
       render json: {status: 200, ck: @ck}
     else
       render json: {status: 400, message: "Sorry Can't Create the connection"}
     end

  end



      private

      def cks_params
        params.require(:ck).permit(:chore_id,:kid_id, :star_id, :url)
      end



end
