alias history_rank='history_stats'
alias rank_commands='history_stats'
alias rank_history='history_stats'


function history_stats {
	echo "Here's you top 15 commands bases on your history."
	history | awk '{print $2}' | awk 'BEGIN {FS="|"} {print $1}' | sort | uniq -c | sort -nr | head -n15
}
