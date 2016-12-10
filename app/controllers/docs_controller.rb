class DocsController < ApplicationController

  # index is for our index view
  def index
  end

  # show is to show our view
  def show
  end

  # new is for our new view but to create something new we need a create method
  def new
  end

  # create method doesnt have a view
  def create
  end

  # for the edit view
  def edit
  end

  # update doesnt have a view itself
  # makes changes to the db using the edit view
  def update
  end

  # deleting the Docs that we make
  def destroy
  end

  # we have private methods to keep DRY
  private
    def find_doc
    end

    def doc_params
    end

end
