#!/bin/bash
#Nombre Stack
pila="instanciaEc2Stack"

#Ruta archivo .yml
archivo="ubuntuTomcat.yml"

region="us-east-1"

# Crear la pila
aws cloudformation deploy \
  --stack-name $pila \
  --template-file $archivo \
  --capabilities CAPABILITY_IAM \
  --profile default \
  --region $region 
 

echo "Pila desplegada"

if [ $? -eq 0 ]; then
aws cloudformation list-exports \
--profile default \
--query "Exports[?Name=='InstanceEndpoint'].Value"
fi