class MainController < ApplicationController
    before_filter :construct

    def construct
        @page = 'home'
        @info = Website.find(1)
    end

    def index
        @page = 'home'
    end

    def portfolio
        @page      = 'portfolio'
        @portfolio = Portfolio.find(1)

    end

    def resume
        @skills = Skills.includes(:categories).all
        @jobs = Jobs.all
        @page = 'resume'
    end

    def contact

        @page = 'contact'
    end

    def view_entry

    end
end