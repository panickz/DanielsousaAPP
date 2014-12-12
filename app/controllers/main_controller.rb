class MainController < ApplicationController
    before_filter :construct

    def construct
        @page = 'Home'
        @subPage = ''
        @info = Website.find(1)
    end

    def index

        # DEAL WITH SKILLS FIELD VARIABLES
        @levels = '5:10:7:2:6'
        @level_array = @levels.split(':')
        @skills = Array.new

        # GET THE SKILLS
        @level_array.each do |l|
            @skills.push(Skill.find(l)) # ADD IT TO THE EXISTENT ARRAY
        end

        # SORT THE ARRAY FROM THE HIGHEST TO THE LOWEST
        @skills.sort! { |a,b| b.level <=> a.level }

    end

    def portfolio
        @page      = 'Portfolio'
        @portfolio = Project.all

    end

    def resume

        @dev = Skill.where('category_id = 1').order('level DESC')
        @des = Skill.where('category_id = 2').order('level DESC')
        @jobs = Job.all
        @page = 'Resume'
    end

    def contact
        @page = 'Contact'
    end

    def view_entry

        # PAGE DEFENITIONS
        @page = 'Portfolio'

        # ACTIVE RECORD DATA
        @projects = Project.order('RANDOM()').where('id != ' + params[:id]).limit(4)
        @entry = Project.find(params[:id])

        # DEAL WITH SKILLS FIELD VARIABLES
        @levels = @entry.level
        @level_array = @levels.split(':')
        @skills = Array.new

        # GET THE SKILLS
        @level_array.each do |l|
           @skills.push(Skill.find(l)) # ADD IT TO THE EXISTENT ARRAY
        end

        # SORT THE ARRAY FROM THE HIGHEST TO THE LOWEST
        @skills.sort! { |a,b| b.level <=> a.level }

        # EXTRA PAGE DEFENITION
        @subPage = ' - ' + @entry.name

    end


    def thank_you
        @page = 'Thank You'
    end

    def send_mail

        name = params[:name]
        email = params[:email]
        body = params[:comments]

        ContactMailer.contact_email(name, email, body).deliver

        redirect_to '/thank_you'

    end

end