class NotesController < ApplicationController

  before_action :find_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all.order("created_at DESC")
  end


  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id

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
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to notes_path
    end
  end

  private

  def find_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :content, :user_id)
  end
