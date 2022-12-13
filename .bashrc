cat << EOF
Welcome to your golang dev container. Happy coding!
EOF

export PS1="\[\e[36m\]\${OKTETO_NAMESPACE:-okteto}:\[\e[32m\]\${OKTETO_NAME:-dev} \[\e[m\]\W> "
export PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin