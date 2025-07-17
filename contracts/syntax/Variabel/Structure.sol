/*
Structure:
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract STRUCTURE {
    struct info {
        uint length;
        uint number;
        bool published;
    }

info[] public courses;

function addcourse() public {
     courses.push(info(
         12,
         234,
        false
     ));
}

function addcourses2() public {
    courses.push(info({

        length : 133,
        number : 56,
        published : true
    }));
}

function addcourses3() public {
    info memory course;
    course.length;
    course.number;
    course.published;
    courses.push(course);
}
}