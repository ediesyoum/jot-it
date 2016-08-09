class NotesController < ApplicationController

  before_action :find_note, only: [:show, :edit, :update, :destroy]


  def index
    @notes = Note.where(user_id: current_user)
  end


  def new
    @note = current_user.notes.build
  end

  def create
    @note = current_user.notes.build(note_params)

    if @note.save
      redirect_to notes_url
    else
      puts "ERROR test to see if we are getting here on create"
    end

  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    if @note.update(note_params)
      redirect_to @note
    else
      render 'edit'
    end
  end

  def destroy
    @note.destroy

    redirect_to notes_path

  end

  private

  def find_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :content, :user_id)
  end
end
