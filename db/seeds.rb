# encoding: UTF-8

#Media Types
MediaType.find_or_create_by_name('Livro', :loan_days => 0,) { |m| m.id = 1 }
MediaType.find_or_create_by_name('Revista', :loan_days => 0) { |m| m.id = 2 }
MediaType.find_or_create_by_name('DVD', :loan_days => 0) { |m| m.id = 3 }
MediaType.find_or_create_by_name('Monografia', :loan_days => 0) { |m| m.id = 4 }
Media.where('media_type_id is null').update_all(:media_type_id => 1)

#Media Statuses
MediaStatus.find_or_create_by_description({:id => 1, :description => 'Disponível' })
MediaStatus.find_or_create_by_description({:id => 2, :description => 'Emprestado' })
Media.where('media_status_id is null').update_all(:media_status_id => 1)