class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    note = Note.new(note_params)
    if note.save
      redirect_to '/notes'
    else
      redirect_to 'new_note_url'
      # puts "ERROR"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_note
  end

  def note_params
    params.require(:note).permit(:title, :user, :content)
  end

end
