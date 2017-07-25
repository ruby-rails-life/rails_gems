module Common
  extend ActiveSupport::Concern

  included do
    # ここにcallback等
  end

  # メソッド
  def books
    Book.order(:state).all
  end

  private

  # privateメソッド
end
