class Tools::MicrocapsController < ApplicationController
  def index
    @companies = Company.all.order(milestone_crossed_at: :desc)
  end
end
