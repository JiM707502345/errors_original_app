class BiasesController < ApplicationController
  def index
    @biases = Biase.all.order(name: :ASC)
  end
end
