class HorariosController < InheritedResources::Base

  def create
    @horario = Horario.new params[:horario]
    if @horario.save
      redirect_to :turmas
    else
      render :action => 'new'
    end
  end

  def new
    @horario = Horario.new
    @horario.turma = Turma.find(params[:turma])
  end
end

