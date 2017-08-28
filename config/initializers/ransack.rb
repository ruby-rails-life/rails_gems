Ransack.configure do |config|
  config.add_predicate 'lteq_end_of_day',
                       arel_predicate: 'lteq',
                       formatter: proc { |v| v.end_of_day },
                       compounds: false

  config.custom_arrows = {
    up_arrow: '<i class="fa fa-arrow-circle-up" aria-hidden="true"></i>',
    down_arrow: '<i class="fa fa-arrow-circle-down" aria-hidden="true"></i>',
    default_arrow: '<i class="default-arrow-icon"></i>'
  }

  #config.hide_sort_order_indicators = true
end
