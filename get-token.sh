#! /bin/bash
# Note: only 3 tokens can be generated for one IP address
echo $( curl --silent http://api.weblpr.com/getDemoToken )