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
        @errors = @user.errors.messages
        @user.save
      end

      # funcion que actualiza el usuario
      def update
        @user = User.find(params[:id])
        @errors = @user.errors.messages
        @user.update(user_params)
      end

      # funcion que permite eliminar un usuario
      def destroy
        @user = User.find(params[:id])
        @user.destroy
      end

      def all_by_rol_id
        @users = User.where("rol_id = ?", params[:rol_id])
      end

      def all_active
        @users = User.where("active = ?", true)
      end

      def all_inactive
        @users = User.where("active = ?", false)
      end

      private
      def user_params
        params.require(:user).permit(:username, :email, :names, :paternal_surname, :maternal_surname, :age, :active, :rol_id)
      end
    end
  end
end