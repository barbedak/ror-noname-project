module ProductsHelper
  def get_series_names
    Series.all.map{ |series| series.name }
  end

  def get_series_by_name (name)
    Series.find_by_name(name)
  end
end
