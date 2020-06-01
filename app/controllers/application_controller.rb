class ApplicationController < ActionController::Base
  
  def log_action(target_id, msg='')
    Log.create(
      req_method: request.method,
      req_path: request.original_fullpath, 
      req_target_id: target_id, 
      req_params: request.params, 
      req_remote_ip: request.remote_ip,
      message: msg)
  end

end