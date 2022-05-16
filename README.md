# docker-compose_mysql_phpmyadmin
1.Clone this repository : git clone https://github.com/leoleducq/docker-compose-mysql_phpmyadmin.git 
2. Start the docker-compose : docker-compose up -d 
3. Go the data directory : cd data/ 
4. Connect to the mysql in commandline : mysql --port=6603 --host=127.0.0.1 --user=root --password 
5. Then enter you password : in our case it's root 
6. Enter to the database : use completeBDD; 
7. And run your sql file into it : source file.sql; 
