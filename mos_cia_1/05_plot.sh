#!/bin/bash

mkdir -p plots

for gp in gnuplot/*.gp; do
    echo "Generating plot from $gp..."
    gnuplot "$gp"
done

echo "✅ All graphs generated in ./plots/"
