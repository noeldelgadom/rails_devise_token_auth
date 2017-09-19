class LinkedInContactsController < ApplicationController
  before_action :set_linked_in_contact, only: [:show, :update, :destroy]

  # GET /linked_in_contacts
  # GET /linked_in_contacts.json
  def index
    @linked_in_contacts = LinkedInContact.all
  end

  # GET /linked_in_contacts/1
  # GET /linked_in_contacts/1.json
  def show
  end

  # POST /linked_in_contacts
  # POST /linked_in_contacts.json
  def create
    @linked_in_contact = LinkedInContact.new(linked_in_contact_params)

    if @linked_in_contact.save
      render :show, status: :created, location: @linked_in_contact
    else
      render json: @linked_in_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /linked_in_contacts/1
  # PATCH/PUT /linked_in_contacts/1.json
  def update
    if @linked_in_contact.update(linked_in_contact_params)
      render :show, status: :ok, location: @linked_in_contact
    else
      render json: @linked_in_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /linked_in_contacts/1
  # DELETE /linked_in_contacts/1.json
  def destroy
    @linked_in_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linked_in_contact
      @linked_in_contact = LinkedInContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linked_in_contact_params
      params.require(:linked_in_contact).permit(:url_address)
    end
end
