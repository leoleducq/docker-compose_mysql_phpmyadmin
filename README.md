# docker-compose_mysql_phpmyadmin
1. Clone this repository : <code>git clone https://github.com/leoleducq/docker-compose-mysql_phpmyadmin.git </code>
2. Go to the repository : <code> cd docker-compose-mysql_phpmyadmin </code>
3. Start the docker-compose : <code>docker-compose up -d </code>
4. Go the data directory : <code>cd data/ </code>
5. Pull the gzip file with LFS : <code>git lfs pull</code>
6. Unzip the sql file that you want to import with : <code> gzip -d "filename" </code>
7. Connect to the mysql in commandline : <code>mysql --port=6603 --host=127.0.0.1 --user=root --password </code> 
8. Then enter you password : in our case it's root 
9. Enter to the database : <code>use completeBDD;</code> 
10. And run your sql file into it : <code>source completeBDD.sql;</code> 
