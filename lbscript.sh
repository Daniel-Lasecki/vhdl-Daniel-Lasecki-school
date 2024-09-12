#!/bin/bash

# Define the base lab directories
lab_dirs=("LAB1_Setup" "LAB2_Combinatorial_Logic" "LAB3_Counters" "LAB4_Button_With_Repeat" "LAB5_PWM_Controller")

# Loop through each lab directory
for lab in "${lab_dirs[@]}"; do
  # Create the Source, vhdl, and constr directories if they don't exist
  mkdir -p "$lab/Source/vhdl"
  mkdir -p "$lab/Source/constr"

  # Create .gitkeep files in Source, vhdl, and constr directories
  touch "$lab/Source/.gitkeep"
  touch "$lab/Source/vhdl/.gitkeep"
  touch "$lab/Source/constr/.gitkeep"
done

# Add the new .gitkeep files to git
git add */Source/**/.gitkeep

# Commit the changes
git commit -m "Add .gitkeep files to track empty Source, vhdl, and constr folders"

# Push the changes to the remote repository
git push origin main
