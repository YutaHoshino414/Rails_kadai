module TsubuyakisHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_tsubuyakis_path
    elsif action_name == 'edit'
      tsubuyaki_path  
    end
  end
end
