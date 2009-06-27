require 'test_helper'

class ReplaysControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Replay.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Replay.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Replay.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to replay_url(assigns(:replay))
  end
  
  def test_edit
    get :edit, :id => Replay.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Replay.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Replay.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Replay.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Replay.first
    assert_redirected_to replay_url(assigns(:replay))
  end
  
  def test_destroy
    replay = Replay.first
    delete :destroy, :id => replay
    assert_redirected_to replays_url
    assert !Replay.exists?(replay.id)
  end
end
