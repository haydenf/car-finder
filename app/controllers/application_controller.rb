class ApplicationController < ActionController::Base
    # before_action :authenticate_user!

    # after user signin redirect to creating a profile and then to list a car
    before_action :set_user_type


    def set_user_type
        @user_type = params[:user_type]

    end

    def after_sign_in_path_for(profile)

     
        if current_user.profile
            # if the user is a buyer, redirect them to the home page else redirect to lising a car page
            if (params[:user][:user_type] == "buyer")
                root_path
            else
              new_car_path
            end
        else
            # pass the user type to the profile controller to decide the redirection path for a seller and a buyer
            new_profile_path(user_type: params[:user][:user_type]) || root_path
        end
    end
end
