class ApplicationController < Sinatra::Base
    configure do
        set :views, 'app/views'
    end

    get '/' do
        erb :home
    end

    get '/patients' do
        @patients = Patient.older_than_age(35)
        erb :patients
    end
end