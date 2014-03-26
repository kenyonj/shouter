class DashboardsController < ApplicationController

  def show
    @shout = Shout.new
    @shouts = current_user.shouts.
                recent.
                page(params[:page]).
                per(5)
  end

end
