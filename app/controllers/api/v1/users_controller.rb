module Api
  module V1
    class UsersController < ApplicationController

      # funcion que consulta todos los users
      def index
        unless @usuarios.blank?
          @users = User.all
        end
      end

      # funcion que consulta un user por id
      def show
        @user = User.find(params[:id])
      end

      # funcion que crea un user
      def create
        @user = User.new(user_params)
        @user.save
      end

      # funcion que actualiza el user
      def update
        @user.update(user_params)
      end

      def destroy
        @user = User.find(params[:id])
        @user.destroy
      end

      def all_users_by_rol_id
        @users = User.find_by_rol_id(params[:rol_id])
      end

      def all_users_by_active
        @users = User.find_by_active(params[:active])
      end

      private
      def user_params
        params.require(:user).permit(:username, :email, :names, :paternal_surname, :maternal_surname, :age, :rol_id)
      end
    end
  end
end