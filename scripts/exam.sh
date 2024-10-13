#!/bin/bash

# Exam date, edit to enter the date of your next exams with the YYYY/MM/DD format
exam1="2024-09-02"
exam2="2024-09-23"
exam3="2024-12-02"
exam4="2024-12-09"
exam5="2025-02-10"
exam6="2025-02-17"
exam7="2025-03-5"
# Current date
current_date=$(date +%Y-%m-%d)

# Difference
d1=$(( ( $(date -d "$exam1" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))
d2=$(( ( $(date -d "$exam2" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))
d3=$(( ( $(date -d "$exam3" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))
d4=$(( ( $(date -d "$exam4" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))
d5=$(( ( $(date -d "$exam5" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))
d6=$(( ( $(date -d "$exam6" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))
d7=$(( ( $(date -d "$exam7" +%s) - $(date -d "$current_date" +%s) ) / 86400 ))

# offset, if you need to hard code some offset :)
offset=""  

# Display
echo -e "\n"  # newline
if [ $d1 -ge 0 ]; then
    echo "${offset}Exam 1: ${exam1} 
${offset}Due in $d1 days."
fi
echo -e "\n"  # newline
if [ $d2 -ge 0 ]; then
    echo "${offset}Exam 2: ${exam2} 
${offset}Due in $d2 days."
fi
echo -e "\n"  # newline
if [ $d3 -ge 0 ]; then
    echo "${offset}Exam 3: ${exam3} 
${offset}Due in $d3 days."
fi
echo -e "\n"  # newline
if [ $d4 -ge 0 ]; then
    echo "${offset}Exam 4: ${exam4} 
${offset}Due in $d4 days."
fi
echo -e "\n"  # newline
if [ $d5 -ge 0 ]; then
    echo "${offset}Exam 5: ${exam5} 
${offset}Due in $d5 days."
fi
echo -e "\n"  # newline
if [ $d6 -ge 0 ]; then
    echo "${offset}Exam 6: ${exam6} 
${offset}Due in $d6 days."
fi
echo -e "\n"  # newline
if [ $d7 -ge 0 ]; then
    echo "${offset}Exam 7: ${exam7} 
${offset}Due in $d7 days."
fi
echo -e "\n"  # newline
