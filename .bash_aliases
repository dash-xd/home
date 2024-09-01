alias ll='ls -lrta'
alias src='source ~/.bashrc'
alias src-redis='source ~/.userscripts/env/redis.sh'

# Command to find an available port
alias findport="ss -tln | awk 'NR > 1 {print \$4}' | awk -F '[:]' '{print \$NF}' | sort -n | uniq | awk 'NR==FNR{a[\$1]; next} !(\$1 in a)' - <(seq 49152 65535) | head -n 1"

# Function to check which application is running on a specific port
checkport() {
    sudo netstat -tuln | grep :$1 
}

# Function to check which port an application is running on
checkapp() {
    sudo ps aux | grep "$1" | grep -v "grep"
}

alias delete-service='sudo ~/.userscripts/delete_service.sh'

luaload() {
    if [[ $# -ne 1 ]]; then
        echo "Usage: luaload <lua_file>"
        return 1
    fi  

    cat "$1" | rcli -x FUNCTION LOAD REPLACE
}   
