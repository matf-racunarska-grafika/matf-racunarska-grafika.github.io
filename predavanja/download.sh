#!/usr/bin/env bash

set -euo pipefail

BASE_URL="https://poincare.matf.bg.ac.rs/~vesnap/grafika"

urls=(
  "01_uvod.pdf"
  "02_rasterizacija.pdf"
  "03_geometrijske_transformacije_2d.pdf"
  "04_geometrijske_transformacije_3d.pdf"
  "05_projektovanje.pdf"
  "06_model_sinteticke_kamere.pdf"
  "07_vidljivost.pdf"
  "08_teksture.pdf"
  "09_osvetljenje_sencenje.pdf"
  "10_boja.pdf"
  "11_prostorne_strukture_podataka.pdf"
  "12_reprezentacija_figura.pdf"
  "13_krive_povrsi.pdf"
)

mkdir -p grafika-predavanja
cd grafika-predavanja

for pdf in "${urls[@]}"; do
  echo "Downloading $pdf..."
  curl -fL --remote-name "$BASE_URL/$pdf"
done

echo "Downloaded ${#urls[@]} PDFs to $(pwd)"
