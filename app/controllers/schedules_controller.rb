class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    if current_user != nil
      @all = Schedule.all
      @schedule = Schedule.new(schedule_params)
      @schedule.user_id = current_user.id

      @all.each do |a|
        @stamp = a.date_time.to_i
        if @stamp.between?(@schedule.date_time.to_i - 5399, @schedule.date_time.to_i + 5399)
          @test = true      
        end
      end  
      if @test != true
        respond_to do |format|
          if @schedule.save
            format.html { redirect_to home_index_url, notice: 'Seu horário foi agendado.' }
            format.json { render :show, status: :created, location: @schedule }
          else
            format.html { render :new }
            format.json { render json: @schedule.errors, status: :unprocessable_entity }
          end
        end
      else
        redirect_to home_index_url, notice: 'O horário escolhido não está disponível.'  
      end
    else
      redirect_to user_session_path, notice: 'Você precisa está logado para agendar um horário.'
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:user_id, :date_time)
    end

end
