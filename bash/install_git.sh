#!/bin/bash

# Verificar si git está instalado
if dpkg -l git &> /dev/null; then
    echo "Git ya está instalado en el sistema."
    git --version
else
    # Actualizar el sistema
    sudo apt update

    # Instalar git
    if sudo apt install -y git; then
        echo "¡Git se ha instalado correctamente!"
        git --version
    else
        echo "Error al instalar Git."
    fi
fi
