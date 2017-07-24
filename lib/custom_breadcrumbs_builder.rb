class CustomBreadcrumbsBuilder < BreadcrumbsOnRails::Breadcrumbs::Builder
  def render
    @context.render "/shared/customize_breadcrumbs", elements: @elements
  end
end