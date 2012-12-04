# encoding: utf-8

class FormsController < ApplicationController

  # GET /forms
  # GET /forms.json
  def index
    @forms = Form.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forms }
    end
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
    @form = Form.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @form }
    end
  end

  # GET /forms/new
  # GET /forms/new.json
  def new
    @form = Form.new
    if @form.program == "Diğer Seçenek"
		@form.update_attribute(:program, @form.new_program)
	end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @form }
      format.js
    end
  end

  # GET /forms/1/edit
  def edit
    @form = Form.find(params[:id])
    if @form.program == "Diğer Seçenek"
		@form.update_attribute(:program, @form.new_program)
	end
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(params[:form])
    
    respond_to do |format|
      if @form.save
        format.html { redirect_to @form, notice: 'Form was successfully created.' }
        format.json { render json: @form, status: :created, location: @form }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @form.errors, status: :unprocessable_entity }
        format.js
      end
    end
    
     if @form.program == "Diğer Seçenek"
		@form.update_attribute(:program, @form.new_program)
	end
  end

  # PUT /forms/1
  # PUT /forms/1.json
  def update
    @form = Form.find(params[:id])
	
    respond_to do |format|
      if @form.update_attributes(params[:form])
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
    if @form.program == "Diğer Seçenek"
		@form.update_attribute(:program, @form.new_program)
	end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form = Form.find(params[:id])
    @form.destroy

    respond_to do |format|
      format.html { redirect_to forms_url }
      format.json { head :no_content }
    end
  end
end
