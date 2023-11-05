#!/bin/bash

function sequencia() {
    for i in {1..5}
    do
        numero1=$(($RANDOM % 50 + 1)))
        echo "Número aleatório de 1 a 50: $numero1"

        for j in {1..2}
        do
            numero2=$(($RANDOM % 12 + 1)))
            echo "Número aleatório de 1 a 12: $numero2"
        done

        while true; do
            read -p "Deseja repetir a sequência? (sim/não) " resposta
            if [[ $resposta == "sim" ]]; then
                return 1
            elif [[ $resposta == "não" ]]; then
                return 0
            else
                echo "Resposta inválida. Por favor, responda 'sim' ou 'não'."
            fi
        done
    done
}

while true; do
    if ! sequencia; then
        break
    fi
done