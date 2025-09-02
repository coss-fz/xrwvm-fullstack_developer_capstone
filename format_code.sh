#!/bin/bash
set -e

echo "🚀 Formateando código con black..."
black server/ --line-length 79

echo "📚 Ordenando imports con isort..."
isort server/ --profile black

echo "🧹 Corrigiendo estilo básico con autopep8..."
autopep8 --in-place --recursive --aggressive --aggressive server/djangoapp server/djangoproj server/frontend/public server/frontend/src server/frontend/static server/database

echo "🔍 Revisando con flake8..."
flake8 server/djangoapp server/djangoproj server/frontend/public server/frontend/src server/frontend/static server/database --max-line-length=79

echo "✅ Formateo completo. Revisa los warnings que aún queden arriba 👆"