class StaticPagesController < ApplicationController
  def index
    @data_gema_plugin = MR.new
    @data_gema_plugin.add(:prueba, 'shared/prueba', {data: [1,2,3,4,5,6,7,8,9,10]})

  end
end
