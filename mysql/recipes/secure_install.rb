bash 'user-create' do
  code <<-EOH
  mysql -u root -panamika -e "CREATE DATABASE #{node['mysql']['db_name']};"
  mysql -u root -panamika -e "CREATE USER #{node['mysql']['name']} IDENTIFIED BY #{node['mysql']['password']};"
  mysql -u root -panamika -e "GRANT ALL ON #{node['mysql']['db_name']}.* TO \"#{node['mysql']['name']}\";"
  mysql -u root -panamika -e "FLUSH PRIVILEGES;"
 EOH
end

#mysql -u root -panamika -e "CREATE USER \'#{node['mysql']['name']}\' IDENTIFIED BY \'#{node['mysql']['password']}\';"
#mysql -u root -panamika -e "GRANT ALL PRIVILEGES ON *.* TO \'#{node['mysql']['name']}\';"


