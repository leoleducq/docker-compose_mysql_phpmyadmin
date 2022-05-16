# docker-compose_mysql_phpmyadmin
1. Clone this repository : <code>git clone https://github.com/leoleducq/docker-compose-mysql_phpmyadmin.git </code>
2. Start the docker-compose : <code>docker-compose up -d </code>
3. Go the data directory : <code>cd data/ </code>
4. Connect to the mysql in commandline : <code>mysql --port=6603 --host=127.0.0.1 --user=root --password </code> 
5. Then enter you password : in our case it's root 
6. Enter to the database : <code>use completeBDD;</code> 
7. And run your sql file into it : <code>source file.sql;</code> 
