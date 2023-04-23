# frozen_string_literal: true

module Api
  module V1
    class NikosController < ApplicationController
      before_action :authenticate_api_v1_user!, only: %i[create update destroy]
      before_action :set_niko, only: %i[show update destroy]

      # GET /nikos
      # GET /nikos.json
      def index
        @nikos = Niko.all
      end

      # GET /nikos/1
      # GET /nikos/1.json
      def show; end

      # POST /nikos
      # POST /nikos.json
      def create
        @niko = current_api_v1_user.nikos.new(niko_params)

        if @niko.save
          render :show, status: :created, location: api_v1_niko_url(@niko)
        else
          render json: @niko.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /nikos/1
      # PATCH/PUT /nikos/1.json
      def update
        if @niko.update(niko_params)
          render :show, status: :ok, location: api_v1_niko_url(@niko)
        else
          render json: @niko.errors, status: :unprocessable_entity
        end
      end

      # DELETE /nikos/1
      # DELETE /nikos/1.json
      def destroy
        @niko.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_niko
        @niko = current_api_v1_user.nikos.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def niko_params
        params.require(:niko).permit(:user_id, :mood, :date, :comment)
      end
    end
  end
end
