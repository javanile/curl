#!/usr/bin/env sh

echo ""

resposne=$( \
  curl "https://${HTTP_HOST}/${PATH_INFO}?${QUERY_STRING}" \
    -i \
    -L \
    -X "${REQUEST_METHOD}"  \
    -H "Host: ${HTTP_HOST}" \
    -H "User-Agent: ${HTTP_USER_AGENT}" \
    -H "Accept: ${HTTP_ACCEPT}" \
    -H "Accept-Encoding: ${HTTP_ACCEPT_ENCODING}" \
    -H "Accept-Language: ${HTTP_ACCEPT_LANGUAGE}" \
    -H "Connection: ${HTTP_CONNECTION}" \
    -H "Cookie: ${HTTP_COOKIE}" \
    -H "Referer: ${HTTP_REFERER}" \
    -H "X-Forwarded-For: ${HTTP_X_FORWARDED_FOR}" \
    -H "X-Forwarded-Proto: ${HTTP_X_FORWARDED_PROTO}" \
    -H "X-Forwarded-Port: ${HTTP_X_FORWARDED_PORT}" \
    -H "X-Forwarded-Host: ${HTTP_X_FORWARDED_HOST}" \
    -H "X-Real-IP: ${HTTP_X_REAL_IP}" \
    -H "X-Requested-With: ${HTTP_X_REQUESTED_WITH}" \
)

echo "Response from curl:"
echo "$resposne" | tail -n +2


