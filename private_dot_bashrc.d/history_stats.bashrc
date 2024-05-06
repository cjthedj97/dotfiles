alias history_rank='history_stats'
alias rank_commands='history_stats'
alias rank_history='history_stats'


history_stats() {
	echo "Here's you top 15 commands bases on your history."
	echo 'Count  Percentage  Command'; history | awk '{CMD[\$2]++;count++;} END { for (a in CMD)print CMD[a] \" \" CMD[a]/count*100 \"% \" a;}' | grep -v './' | column -c3 -s ' ' -t | sort -nr | head -n15 | awk '{print \$1 \"       \" \$2 \"          \" \$3}'"
}
