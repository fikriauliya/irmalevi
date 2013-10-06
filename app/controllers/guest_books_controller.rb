class GuestBooksController < ApplicationController
  before_action :set_guest_book, only: [:edit]

  def index
    @guest_book = GuestBook.new
    @guest_books = GuestBook.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
  end

  # POST /guest_books
  # POST /guest_books.json
  def create
    @guest_book = GuestBook.new(guest_book_params)

    respond_to do |format|
      if @guest_book.save
        format.html { redirect_to guest_books_path, notice: 'Message Anda telah kami terima :)' }
      else
        format.html { redirect_to guest_books_path, alert: "Mohon diisi nama dan pesan Anda :)"}
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_book
      @guest_book = GuestBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_book_params
      params.require(:guest_book).permit(:name, :message)
    end
end
