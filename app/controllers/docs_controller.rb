class DocsController < ApplicationController
  # this will run before any of the action of the controller
  # we only need to find the doc for :show, :edit, :update, :destroy
  before_action :find_doc, only: [:show, :edit, :update, :destroy]

  # index is for our index view
  def index
    # we are saving all the docs in descending order on when it was created at and saving it to the @docs variable
    @docs = Doc.all.order('created_at DESC')
  end

  # show is to show our view
  def show
  end

  # new is for our new view but to create something new we need a create method
  def new
    # we are creating a variable @doc and setting it to a new instance of Doc
    @doc = Doc.new
  end

  # create method doesnt have a view
  def create
    # we are creating a variable @doc and setting it to a new instance of Doc and saving it params (title & content)
    @doc = Doc.new(doc_params)

    # if we save the doc we want to be redirected to that doc itself
    # else we want to render the new file to have a chance to save it again
    # we dont want to redirect here bc we would lose all the content
    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
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
      # this is finding a doc by its id we are going to use it often
      @doc = Doc.find(params[:id]);
    end

    def doc_params
      # this is how to define the :doc model params and permit the 2 attr
      params.require(:doc).permit(:title, :content)
    end

end
