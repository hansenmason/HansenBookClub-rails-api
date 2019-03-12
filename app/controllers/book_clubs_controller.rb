class BookClubsController < ApplicationController
  before_action :set_book_club, only: [:show, :update, :destroy]

  # GET /book_clubs
  def index
    @book_clubs = BookClub.all

    render json: @book_clubs
  end

  # GET /book_clubs/1
  def show
    render json: @book_club
  end

  # POST /book_clubs
  def create
    @book_club = BookClub.new(book_club_params)

    if @book_club.save
      render json: @book_club, status: :created, location: @book_club
    else
      render json: @book_club.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /book_clubs/1
  def update
    if @book_club.update(book_club_params)
      render json: @book_club
    else
      render json: @book_club.errors, status: :unprocessable_entity
    end
  end

  # DELETE /book_clubs/1
  def destroy
    @book_club.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_club
      @book_club = BookClub.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_club_params
      params.require(:book_club).permit(:name)
    end
end
