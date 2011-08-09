class UsersController < ApplicationController
  def index
    list
    render('list')
  end
  
  def list
    @users = User.order("users.last_name ASC")
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    # Instantiate a new object using form parameters
    @users = User.new(params[:user])
    # Save the object
    if @users.save
      # If save succeeds, redirect to the list action
	  flash[:notice] = "User created."
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    # Find object using form parameters
    @user = User.find(params[:id])
    # Update the object
    if @user.update_attributes(params[:user])
      # If update succeeds, redirect to the list action
	  flash[:notice] = "User updated."
      redirect_to(:action => 'show', :id => @user.id)
    else
      # If save fails, redisplay the form so user can fix problems
      render('edit')
    end
  end
  
  def delete2
    @users = User.find(params[:id])
  end
  
  def destroy
    User.find(params[:id]).destroy
	flash[:notice] = "User deleted."
    redirect_to(:action => 'index')
  end
end
