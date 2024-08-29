#!/bin/bash

name="el-plus-admin-frontend"

if ! tmux ls | grep -q "^$name:"; then
	tmux new-session -ds $name
	tmux send-keys -t $name 'pnpm run dev' C-m
fi
