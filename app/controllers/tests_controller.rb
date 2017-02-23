class TestsController < ApplicationController
  def show
    render plain: "succesfull"
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(params.require(:test).permit(:title, :text))
    if @test.save
      redirect_to @test
    else
      render 'new'
    end
  end
  private
    def test_params
      params.require(:articles).permit(:title, :text)
    end
end
