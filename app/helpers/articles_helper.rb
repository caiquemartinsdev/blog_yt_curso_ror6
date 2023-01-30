module ArticlesHelper
    def month_day_comma_year(datetime)
        datetime.strftime('%e %B %Y')
    end
end
