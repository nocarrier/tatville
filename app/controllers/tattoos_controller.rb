class TattoosController < ApplicationController
  # GET /tattoos
  # GET /tattoos.xml
  def index
    @tattoos = Tattoo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tattoos }
    end
  end

  # GET /tattoos/1
  # GET /tattoos/1.xml
  def show
    @tattoo = Tattoo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tattoo }
    end
  end

  # GET /tattoos/new
  # GET /tattoos/new.xml
  def new
    @tattoo = Tattoo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tattoo }
    end
  end

  # GET /tattoos/1/edit
  def edit
    @tattoo = Tattoo.find(params[:id])
  end

  # POST /tattoos
  # POST /tattoos.xml
  def create
    @tattoo = Tattoo.new(params[:tattoo])

    respond_to do |format|
      if @tattoo.save
        flash[:notice] = 'Tattoo was successfully created.'
        format.html { redirect_to(@tattoo) }
        format.xml  { render :xml => @tattoo, :status => :created, :location => @tattoo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tattoo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tattoos/1
  # PUT /tattoos/1.xml
  def update
    @tattoo = Tattoo.find(params[:id])

    respond_to do |format|
      if @tattoo.update_attributes(params[:tattoo])
        flash[:notice] = 'Tattoo was successfully updated.'
        format.html { redirect_to(@tattoo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tattoo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tattoos/1
  # DELETE /tattoos/1.xml
  def destroy
    @tattoo = Tattoo.find(params[:id])
    @tattoo.destroy

    respond_to do |format|
      format.html { redirect_to(tattoos_url) }
      format.xml  { head :ok }
    end
  end
end
