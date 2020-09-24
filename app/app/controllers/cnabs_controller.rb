class CnabsController < ApplicationController

  before_action :load_cnabs, only: [:show]

  def show
    respond_to :html, :json
  end


  def create
    msg = { error: "Erro para importar o arquivo!" }

    if upload_cnab_file
      msg = { success: "Arquivo importado com sucesso" }
    end

    redirect_back fallback_location: cnab_path , flash: msg
  end


  private

  def upload_cnab_file
    SaveCnabFileService.new(params[:file].read).execute
  end


  def load_cnabs
    @summary = SummaryService.new(Cnab.all).execute
  end

end
