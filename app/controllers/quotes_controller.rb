class QuotesController < Rulers::Controller

  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand pixels",
      "attribution" => "Me"
    }

    m = FileModel.create(attrs)
    render :quote, :obj => m
  end

  def update_quote

    attrs = {
      "submitter" => "web user",
      "quote" => "FINAL TEST",
      "attribution" => "KATH"
    }

    id = "10"
    FileModel.save(attrs, id)

    m = Rulers::Model::FileModel.find(10)
    render :quote, :obj => m
  end

  def a_quote
    render :a_quote, noun: :winking
  end

  def rulers_gem
    render :rulers_gem
  end

  def this_controller_name
    render :this_controller_name
  end

  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def find_submitted
    quotes = Rulers::Model::FileModel.find_all_by_submitter
    render :find_by_submitter, :quotes => quotes
  end
end
