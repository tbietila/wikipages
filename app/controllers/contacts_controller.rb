class ContactsController < ApplicationController
  def update
    @contact = Contact.find(params[:id])
    if @contact.update(params[:contact])
      render('contacts/success.html.erb')
    else
      render('contacts/edit.html.erb')
    end
  end

  def index
      @contacts = Contact.order(:name)
      @contact = Contact.new
      render('contacts/index.html.erb')
  end

  def show
    @contact = Contact.find(params[:id])
    render('contacts/show.html.erb')
  end

  # def new
  #   @contact = Contact.new
  #   render('contacts/new.html.erb')
  # end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      render('contacts/success.html.erb')
    else
      @contacts = Contact.order(:name)
      render('contacts/index.html.erb')
    end
  end

    def edit
      @contact = Contact.find(params[:id])
      render('contacts/edit.html.erb')
    end
    def destroy
      @contact= Contact.find(params[:id])
      @contact.destroy
      render('contacts/destroy.html.erb')
    end
end
