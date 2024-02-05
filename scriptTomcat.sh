sudo useradd -m -d /opt/tomcat -U -s /bin/false tomcat #Usuario especial llamado Tomcat
sudo apt update
# Instalar el JDK
sudo apt install -y default-jdk
# Descargar e instalar Tomcat
cd /tmp
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz
sudo tar xzvf apache-tomcat-10*tar.gz -C /opt/tomcat --strip-components=1
# Configurar permisos
sudo chown -R tomcat:tomcat /opt/tomcat/
sudo chmod -R u+x /opt/tomcat/bin
# Imprimir mensaje de finalización
echo "Tomcat esta instalado y configurado"
# Mostrar la versión de Java instalada
java -version
