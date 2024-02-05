#!/bin/bash

# Nombre de la pila 
stack_name="instanciaEc2Stack"

# Eliminar la pila
aws cloudformation delete-stack --stack-name $stack_name

echo "Pila Eliminada"
