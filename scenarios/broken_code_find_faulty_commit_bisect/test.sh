#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
TEST_RESULT=$(cat test_results)

if [[ "${TEST_RESULT}" == "true" ]];then
	echo -e "${GREEN}Test PASSED! ${NC}"
else
	echo -e "${RED}Test FAILED! ${NC}"
fi
