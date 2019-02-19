#!/usr/bin/env bash

echo "Setting up bashrc."

if [[ $(cat ~/.bashrc) == *"# Added by Unoper's Bashrc"* ]]; then
  echo "Setup previously completed."
else
  echo "Adding $(pwd)/.bashrc to ~/.bashrc"
  echo "" >> ~/.bashrc
  echo "# Added by Unoper's Bashrc: https://github.com/unoperwironegoro/bashrc" >> ~/.bashrc
  echo ". $(pwd)/.bashrc" >> ~/.bashrc
fi