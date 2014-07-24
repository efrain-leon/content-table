namespace :content_table do
  
  desc 'Load default data'
  task(:load_default_data => :environment) do
    begin
      Book.find_or_create_by_title(:title => "Libro1")
      p "Libro1 has been created"
      
      TableContent.find_or_create_by_content(:content => "Introduccion", :level => 1, :order => 1, :id_book => 1)
      p "Introduccion has been created"
      TableContent.find_or_create_by_content(:content => "Motivacion", :level => 2, :order => 2, :id_book => 1)
      p "Motivacion has been created"
      TableContent.find_or_create_by_content(:content => "Reseña Historica", :level => 2, :order => 3, :id_book => 1)
      p "Reseña Historica has been created"
      TableContent.find_or_create_by_content(:content => "Origen", :level => 3, :order => 4, :id_book => 1)
      p "Origen has been created"
      TableContent.find_or_create_by_content(:content => "Trabajos", :level => 3, :order => 5, :id_book => 1)
      p "Trabajos has been created"
      TableContent.find_or_create_by_content(:content => "Soluciones Actuales", :level => 2, :order => 6, :id_book => 1)
      p "Soluciones Actuales has been created"
      TableContent.find_or_create_by_content(:content => "Objetivos", :level => 2, :order => 7, :id_book => 1)
      p "Objetivos has been created"
      TableContent.find_or_create_by_content(:content => "Requisitos", :level => 1, :order => 8, :id_book => 1)
      p "Requisitos has been created"
      TableContent.find_or_create_by_content(:content => "Hardware", :level => 2, :order => 9, :id_book => 1)
      p "Hardware has been created"
      TableContent.find_or_create_by_content(:content => "Software", :level => 2, :order => 10, :id_book => 1)
      p "Software has been created"
    rescue => e
      p "---ERROR   #{e}"
    end
  end
  
end