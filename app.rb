require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this
def list_of_names_and_sizes(array_of_companies)
    array_of_companies.map do | company |
        "#{company.name} - #{company.size}"
    end
end

def combine_sizes(array_of_companies)
    array_of_companies.reduce([]) do | array_of_sizes, company |
        array_of_sizes.push(company.size)
    end
end

def companies_over_100(array_of_companies)
    array_of_companies.filter do | company |
        company.size > 100
    end
end

def find_company_by_name(array_of_companies, company_name)
    array_of_companies.find do | company |
        company.name == company_name
    end
end

def find_company_named_beta(array_of_companies) # lol
    find_company_by_name(array_of_companies, 'Beta')
end

# def find_largest_company(array_of_companies)
#     current_largest = nil
#     array_of_companies.each do | company |
#         if !current_largest || company.size > current_largest.size
#             current_largest = company
#         end
#     end
#     current_largest
# end

def find_largest_company(array_of_companies)
    array_of_companies.max_by do | company |
        company.size
    end
end

def sort_companies_largest_to_smallest(array_of_companies)
    (
        array_of_companies.sort_by do | company |
            company.size
        end
    ).reverse    
end

binding.pry