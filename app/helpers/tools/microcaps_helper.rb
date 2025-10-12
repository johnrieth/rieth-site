module Tools::MicrocapsHelper
    def growth_percentage(company)
        return 0 if company.previous_revenue.zero?

        growth = ((company.current_revenue - company.previous_revenue) / company.previous_revenue.to_f) * 100
        growth.round(1)
    end

    def growth_amount(company)
        (company.current_revenue - company.previous_revenue).round(1)
    end
end
