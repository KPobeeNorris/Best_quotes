class QuotesController < Rulers::Controller
  def a_quote
    render :a_quote, noun: :winking
  end

  def rulers_gem
    render :rulers_gem
  end

  def this_controller_name
    render :this_controller_name
  end
end
