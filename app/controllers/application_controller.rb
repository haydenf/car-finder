class ApplicationController < ActionController::Base
    # before_action :authenticate_user!

    # after user signin redirect to creating a profile and then to list a car

    def after_sign_in_path_for(profile)
        if current_user.profile
            new_car_path
        else
            new_profile_path || root_path
        end
    end
end
