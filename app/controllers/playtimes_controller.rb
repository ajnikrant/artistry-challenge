class PlaytimesController < ApplicationController
    def index
        @playtimes = Playtime.all
    end

    def new
        @playtime = Playtime.new
    end

    def create
        @playtime = Playtime.new(playtime_params) 

        # @artist = artist_id

        if @playtime.valid?
            @playtime.save
            redirect_to artist_path(@playtime.artist_id)
        else
            flash[:errors]= @playtime.errors.full_messages
            render :new
        end
    end

    private

    def playtime_params
        params.require(:playtime).permit(:artist_id, :instrument_id)
    end
end