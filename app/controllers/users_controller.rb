class UsersController < ApplicationController
    def my_reservations

        @reservation = current_user.reservations.includes(:book)
    end
end
