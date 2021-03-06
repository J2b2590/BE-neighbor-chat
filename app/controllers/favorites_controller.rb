class FavoritesController < ApplicationController
    
        def index
            favorites = Favorite.all
            render json: favorites, except: [:created_at, :updated_at]
        end
    
        def create
            favorite = Favorite.create(favorite_params)
            render json: favorite
        end
    
        def destroy
            
            favorite = Favorite.find(params[:id])
            Favorite.destroy(favorite.id)
            render json: favorite
        end
    
        private
    
        def favorite_params
            params.require(:favorite).permit(:user_id, :room_id)
        end
    
end
