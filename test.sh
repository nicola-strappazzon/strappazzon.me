#!/bin/bash
# encoding: UTF-8

domains=("http://strappazzon.me" "http://www.strappazzon.me" "https://strappazzon.me" "http://strappazzon.me/arch" "https://strappazzon.me/arch" "https://www.strappazzon.me" "https://nicola.strappazzon.me")

for domain in ${domains[@]}; do
  status=$(curl --head --connect-timeout 5 --write-out %{http_code} --silent --output /dev/null "${domain}")
  echo "--> ${domain} (${status})"
done
