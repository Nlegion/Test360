class GroupsController < ApplicationController
  before_action :load_test
  before_action :load_group, only: [:edit, :update, :destroy, :show]

  def new
    @group = Group.new
    @num = @test.groups.any? ? @test.groups.maximum(:num).to_i + 1 : 1
  end

  def create
    @group = Group.new(set_params.merge(test_id: @test.id))

    if @group.save
      redirect_to new_test_group_path(@test)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @group.update(set_params)
      redirect_to new_test_group_path(@test)
    else
      render 'edit'
    end
  end

  def destroy
    @group.destroy
    redirect_to(:back)
  end

  private

  def load_group
    @group = Group.find(params[:id])
  end

  def load_test
    @test = Test.find(params[:test_id])
  end

  def set_params
    params.require(:group).permit(:group_name, :rule, :num)
  end
end
