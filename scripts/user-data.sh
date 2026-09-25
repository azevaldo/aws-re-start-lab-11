#!/bin/bash

dnf install -y httpd

systemctl enable httpd
systemctl start httpd

echo '<html>
<head>
    <title>AWS EC2 Lab</title>
</head>
<body>
    <h1>Olá do seu servidor web!</h1>
    <p>Servidor executando em uma instância Amazon EC2.</p>
</body>
</html>' > /var/www/html/index.html