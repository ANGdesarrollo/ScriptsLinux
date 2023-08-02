#!/bin/bash

# Actualizar el sistema
sudo apt update

# Instalar git
if sudo apt install -y git; then
    echo "¡Git se ha instalado correctamente!"
else
    echo "Error al instalar Git."
fi

# Verificar la versión instalada
git --version
