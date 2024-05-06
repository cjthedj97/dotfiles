history_stats() {
	echo "Here's you top 15 commands bases on your history."
	history | awk '{print $2}' | awk 'BEGIN {FS="|"} {print $1}' | sort | uniq -c | sort -nr | head -n 15
}
