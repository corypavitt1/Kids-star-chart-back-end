class Api::V1::KidsController < ApplicationController

  def index
Kid.all
    # render json: Employee.includes(:task_employees), include: ['task_employees'], include: ['category_employee']
    render json: Kid.all

    # @kids = Kid.all

  end

  def show
    @kids = Kid.find(params[:id])
    render json: @kids, status: 200
  end

  def new
    @kid = Kid.new
  end



  def create
          @kid = Kid.create(kid_params)
          # if @kid.valid?
            # @token = encode_token(kid_id: @kid.id)

            if @kid.valid?
              @kid.save
       render json: {kid: KidSerializer.new(@kid),status: 200 }
     else
       render json: {status: 400, message: "Sorry Can't create KID"}
     end

  end


  def destroy
    @kid = Kid.find(params[:id]).destroy

render json:{status: 200, message: "way to delete!"}
  end



      private

      def kid_params
        params.require(:kid).permit(:first_name, :last_name, :birthday, :user_id, {stars:[:url]})
      end


end
