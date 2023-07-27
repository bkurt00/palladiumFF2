#!/bin/bash

# Bulunduğu dizindeki tüm .mol2 dosyaları için döngü başlat
for file in cdcc_mol2_files/*.mol2
do
    python3 assign_v2.py -c "$file"
