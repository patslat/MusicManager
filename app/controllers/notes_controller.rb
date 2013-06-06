class NotesController < ApplicationController
  def create
    note = Note.new(params[:note])
    if note.save
      redirect_to track_path(note.track)
    else
      flash[:notice] = "Failed to save note"
      redirect_to track_path(note.track)
    end

  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    track = note.track
    redirect_to track_path(track)
  end
end
