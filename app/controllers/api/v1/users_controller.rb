module Api
  module V1
    class UsersController < ApplicationController

      # funcion que consulta todos los usuarios
      def index
        @users = User.all
      end

      # funcion que consulta un usuario por id
      def show
        @user = User.find(params[:id])
      end

      # funcion que crea un usuario
      def create
        @user = User.new(user_params)
        @user.save
      end

      # funcion que actualiza el usuario
      def update
        @user.update(user_params)
      end

      # funcion que permite eliminar un usuario
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
        params.require(:user).permit(:username, :email, :names, :paternal_surname, :maternal_surname, :age, :active)
      end
    end
  end
end