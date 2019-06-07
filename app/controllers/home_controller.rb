class HomeController < ApplicationController
  def index
    @image = Image.new()
    @media = MediaFile.new()
    @document = Document.new()
  end

  def upload_image
    if image_params[:image]
      begin
        image = Image.create!(image_params)
        flash[:success] = "Image Uploaded Successfully."
      rescue Exception => e
        flash[:danger] =  e.message
      end      

    else
      flash[:danger] = "Please Select an Image to Upload"
    end
    redirect_to root_url
  end

  def upload_document
    if document_params[:document]
      begin
        document = Document.create!(document_params)
        flash[:success] = "Document Uploaded Successfully."
      rescue Exception => e
        flash[:danger] =  e.message
      end      

    else
      flash[:danger] = "Please Select a Document to Upload"
    end

    redirect_to root_url
  end

  def upload_media
    if media_params[:mediafile]
      begin
        mediafile = MediaFile.create!(media_params)
        flash[:success] = "MediaFile Uploaded Successfully."
      rescue Exception => e
        flash[:danger] =  e.message
      end      

    else
      flash[:danger] = "Please Select a MediaFile to Upload"
    end

    redirect_to root_url
  end

  private
  def image_params
    params.require(:image).permit(:title, :image)
  end

  def document_params
    params.require(:document).permit(:title, :document)
  end

  def media_params
    params.require(:media_file).permit(:title, :mediafile)
  end
end
