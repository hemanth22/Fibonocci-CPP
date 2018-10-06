#!/bin/bash
body="{ \"title\": \"Travis Build no. $TRAVIS_JOB_NUMBER failure \", \"body\": \"Error code: $TRAVIS_TEST_RESULT \n\n JOB URL : $TRAVIS_JOB_WEB_URL\", \"labels\": [\"critical\"]}"

curl -i \
     -H "Authorization: token $TicketApi" \
     -d "$body" \
     https://api.github.com/repos/hemanth22/Fibonocci-CPP/issues
