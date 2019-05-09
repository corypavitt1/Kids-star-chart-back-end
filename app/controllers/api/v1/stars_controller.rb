class Api::V1::StarsController < ApplicationController


def index

  render json: Star.all


end

def show
  @stars = Star.find(params[:id])
  render json: @stars, status: 200
end

def new
  @Star= Star.new

end


def create
        @star= Star.create(stars_params)
        # if @kid.valid?
          # @token = encode_token(kid_id: @kid.id)

          if @star.valid?
            @star.save
     render json: {star: StarSerializer.new(@star),status: 200 }
   else
     render json: {status: 400, message: "Sorry Can't Create a Star"}
   end

end


private

def stars_params
  params.require(:star).permit(:name, :color, :url)
end



end
