module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :destroy]

      # funcion que consulta todos los users
      def index
        @users = User.all
      end

      # funcion que consulta un user por id
      def show; end

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

      def set_user
        @user = User.find(params[:id])
      end
    end
  end
end