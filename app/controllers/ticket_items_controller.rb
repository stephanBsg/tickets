class TicketItemsController < ApplicationController
  before_action :set_ticket_item, only: [:show, :edit, :update, :destroy]

  # GET /ticket_items
  # GET /ticket_items.json
  def index
    @ticket_items = TicketItem.all
  end

  # GET /ticket_items/1
  # GET /ticket_items/1.json
  def show
  end

  # GET /ticket_items/new
  def new
    @ticket_item = TicketItem.new
  end

  # GET /ticket_items/1/edit
  def edit
  end

  # POST /ticket_items
  # POST /ticket_items.json
  def create
  @ticket_item = TicketItem.new
#   @post.number = params[:post][:number].gsub(/,/,'.').to_f # => 12.13
   
    @ticket_item.created_on = DateTime.now
    @ticket_item.user_id = 1
  
    #@ticket_item = TicketItem.new(ticket_item)

#    @ticket_item = TicketItem.new(ticket_item_params)

    respond_to do |format|
      if @ticket_item.save
        flash[:id] = @ticket_item.id
        format.html { redirect_to @ticket_item, notice: 'Ticket item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ticket_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @ticket_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_items/1
  # PATCH/PUT /ticket_items/1.json
  def update
    respond_to do |format|
      if @ticket_item.update(ticket_item_params)
        format.html { redirect_to @ticket_item, notice: 'Ticket item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ticket_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_items/1
  # DELETE /ticket_items/1.json
  def destroy
    @ticket_item.destroy
    respond_to do |format|
      format.html { redirect_to ticket_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_item
      @ticket_item = TicketItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_item_params
      params.require(:ticket_item).permit(:name, :created_on, :assigned_on, :description, :user_id)
    end
end
