module CommonModule
  extend ActiveSupport::Concern

  # callback、scope
  included do
    #before_initialize :set_del_flag
    scope :publised, -> { where(state: "published") }
  end

  def set_del_flag
    self.del_flag = '0'
  end

  # インスタンスメソッド
  def show_name?
    if author_name_flag == '1'
      author_name
    else
      ''
    end    
  end

  # クラスメソッド  
  module ClassMethods
    def say_today
      Time.zone.now
    end
  end

end