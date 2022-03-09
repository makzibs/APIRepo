*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary
Library  RequestsLibrary

*** Variables ***
${Base_URL}   http://thetestingworldapi.com/

*** Test Cases ***
Test_Case_Api

    create session  get_student_detail  ${Base_URL}
    ${response}=  Get on Session  get_student_detail  api/studentsDetails
    log to console  ${response}
    ${code}=    convert to string  ${response.status_code}
    log to console     ${code}
    should be equal     ${code}        300




