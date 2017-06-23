module DatesHelper
  def pretty_date(date)
    date.strftime("%-m/%-d/%Y")
  end
end
