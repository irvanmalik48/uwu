#!/bin/bash

function log_info {
    echo "$(tput setaf 4)==> $1$(tput sgr0)" >&2
}
function log_warn {
    echo "$(tput setaf 3)WARNING: $1$(tput sgr0)" >&2
}
function log_error {
    echo "$(tput setaf 1)ERROR: $1$(tput sgr0)" >&2
}

# Try to detect if we are root
if [ "$(whoami)" != "root" ]; then
    use_sudo=true
fi
function do_sudo {
    if [ "$use_sudo" = true ]; then
        sudo $@
    else
        $@
    fi
}

# Match any [options]
while :
do
    case "$1" in
        -n | --noconfirm)
            noconfirm=true
            shift
            ;;
        --) # End of all options
            shift
            break
            ;;
        -*)
            log_error "Unknown option: $1"
            break
            ;;
        *)  # No more options
            break
            ;;
    esac
done

log_info "Cloning uwu repo to /tmp/uwu"
git clone https://github.com/irvanmalik48/uwu.git /tmp/uwu

log_info "Installing uwu to /usr/bin/"
do_sudo install /tmp/uwu/bin/uwu /usr/bin/uwu

echo "Done!"
