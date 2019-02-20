class AccessController < ApplicationController

  

  def show
  end

  def gl_accounting
  end
  def month_calendar
    @schedules = Schedule.all

  end

  def week_calendar
    @schedules = Schedule.all
  end
end
