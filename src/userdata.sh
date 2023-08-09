 #!/bin/bash
 sudo yum update -y
 sudo yum install nginx -y
 sudo systemctl start nginx
 sudo systemctl enable nginx
 sudo yum install git -y
 systemctl restart nginx
