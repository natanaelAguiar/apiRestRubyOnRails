class ContatosController < ApplicationController
    def index
      @contatos = Contato.all
      render json: @contatos
    end

    def create
      @contato = Contato.new(jsonObject)

      if @contato.save
        render json: @contato, status: :created
      else
        render json: @contato.errors, status: :unprocessable_entity
      end
    end

    def show
      @contato = Contato.find(params[:id])
      render json: @contato
    end

    def update
        @contato = Contato.update(params[:id], jsonObject)
        render json: @contato, status: :accepted
      end

      def destroy
        @contato = Contato.find(params[:id]).destroy
        render json: @contato
      end

    def jsonObject
      {:nome => params[:nome], :email => params[:email]}
    end
end