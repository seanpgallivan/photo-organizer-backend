class ApplicationController < ActionController::Base
  
  def log_action(target_id, msg=nil)
    Log.create(
      req_method: request.method,
      req_path: request.original_fullpath, 
      req_target_id: target_id, 
      req_params: request.params, 
      req_remote_ip: request.remote_ip,
      message: msg)
  end

  # def send_error(error)
  #   render json: { error: error }
  #   log_action(nil, error.to_s)
  # end

end