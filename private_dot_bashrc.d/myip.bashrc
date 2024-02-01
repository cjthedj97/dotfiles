function myip {
  # Define colors
  RED="\033[0;31m"
  GREEN="\033[0;32m"
  NO_COLOR="\033[0m"
  BLUE="\033[0;34m"

  # Fetch IP addresses
  local_ipv4=$(ip route get 1.1.1.1 | grep -oP 'src \K\S+')
  local_ipv6=$(ip route get 2606:4700:4700::1111 | grep -oP 'src \K\S+')
  public_ipv4=$(curl -4s https://ip.saathoff.us/)
  public_ipv6=$(curl -6s https://ip.saathoff.us/)

  # Header
  echo -e "${GREEN}Network Information${NO_COLOR}"
  echo -e "${BLUE}---------------------------------------------${NO_COLOR}"
  printf "${RED}%s${NO_COLOR} | %-15s | %-39s\n" "Type" "IP Version" "Address"
  echo -e "${BLUE}---------------------------------------------${NO_COLOR}"

  # Table Rows for IPv4
  printf "%-10s | %-11s | %-39s\n" "Local" "IPv4" "$local_ipv4"
  printf "%-10s | %-11s | %-39s\n" "Public" "IPv4" "$public_ipv4"

  # Truly Blank Row
  printf "\n"

  # Table Rows for IPv6
  printf "%-10s | %-11s | %-39s\n" "Local" "IPv6" "$local_ipv6"
  printf "%-10s | %-11s | %-39s\n" "Public" "IPv6" "$public_ipv6"

  echo -e "${BLUE}---------------------------------------------${NO_COLOR}"
}
