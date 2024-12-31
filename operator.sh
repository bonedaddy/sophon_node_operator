#! /bin/bash

export PORT=7007
# example: 0xb33f
export OPERATOR_ADDRESS=...
# example: 0xb33f
export DESTINATION_ADDRESS=...
# example: 0.5
export PERCENTAGE=...
# example: http://127.0.0.1:7007
export PUBLIC_DOMAIN=...
export AUTO_UPGRADE="true"

# Function to show usage
usage() {
    echo "Usage: $0 [start|logs]"
    echo "  start - Start the node"
    echo "  logs  - Show node logs"
    exit 1
}

# Check if an argument is provided
if [ $# -ne 1 ]; then
    usage
fi

# Process the command argument
case "$1" in
    "start")
        docker-compose up -d
        ;;
    "logs")
        docker-compose logs
        ;;
    *)
        usage
        ;;
esac
