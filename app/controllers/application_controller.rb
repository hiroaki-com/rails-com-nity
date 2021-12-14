class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index] # 未ログイン時も一覧はアクセス閲覧できるように設定 ＊左記設定により、本来のroot：welcome#index が初期画面となる
  
  def after_sign_out_path_for(resource)
    new_user_session_path # ログアウト後に遷移するpathを設定
  end

end
