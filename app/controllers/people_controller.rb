require 'csv'

class PeopleController  < InheritedResources::Base

  def import_from_csv
    CSV.open('mercurio.csv', 'r', ';').each do |row|

      Person.create(
        :name => row[1],
        :rg => row[2],
        :cpf => row[3],
        :birth_date => row[4],
        :gender => row[5],
        :marital_status => row[6],
        :home_phone => row[7],
        :work_phone => row[8],
        :cell_phone => row[9],
        :email => row[10],
        :zip_code => row[11],
        :address => row[12],
        :neighborhood => row[13],
        :city => row[14],
        :state => row[15],
        :sign_up_date => row[16],
        :graduation_date => row[17],
        :exit_date => row[18],
        :status => row[19]
      )
  end
end