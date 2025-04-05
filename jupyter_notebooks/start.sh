#!/bin/bash

conda activate torch_env
$HOME/anaconda3/bin/jupyter-notebook --no-browser --port=$((NOTEBOOK_PORT)) --ip=$NOTEBOOK_IP --NotebookApp.token=$NOTEBOOK_TOKEN
