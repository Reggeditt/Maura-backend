class MembersController < ApplicationController
    def index
        members = Member.all
        render json: {status: 'SUCCESS', message: 'Loaded members successfully', data: members}, status: :ok
    end

    def create
        @member = Member.create(member_params)
        if @member.save
            render json: @member, status: 200
        else
            render json: {
                error: 'Error saving member data',
                status: 400
            }
        end
    end

    def member_params
        params.require(:member).permit(
            :first_name,
            :middle_name,
            :last_name,
            :sex,
            :age,
            :email,
            :phone,
            :dob,
            :photo,
            :address,
            :city,
            :landmark,
            # :job_area,
            :job_type,
            :job_title,
            # :job_description
        )
    end
end
