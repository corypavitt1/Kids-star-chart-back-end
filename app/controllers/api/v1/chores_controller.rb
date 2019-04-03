class Api::V1::ChoresController < ApplicationController

  def index

    # render json: Employee.includes(:task_employees), include: ['task_employees'], include: ['category_employee']
    render json: Chore.all
    # @kids = Kid.all

  end

  def show
    @Chore = Chore.find(params[:id])
  end

  def new
    @Chore= Chore.new
  end



  def create
          @chore= Chore.create(chores_params)
          # if @kid.valid?
            # @token = encode_token(kid_id: @kid.id)

            if @chore.valid?
       render json: {status: 200, chore: @chore}
     else
       render json: {status: 400, message: "Sorry Can't Create a Chore"}
     end

  end



      private

      def chores_params
        params.require(:chore).permit(:name, :user_id)
      end


  end
