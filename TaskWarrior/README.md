# TaskWarrior - the Terminal To-do List

* How to Install: `sudo pacman -S task`

### Files

Name of the File|Use for|Location
|---|---|---|
_.taskrc_|It's the Configuration file from task warrior|**~/.taskrc**


### How to used it

* TaskWarrior is very simple too use
* You can add a Priority to your tasks as (H)igh,(M)edium or (L)ow

### Simple time task

**Task with Due Date**

* task add To-Do due:year-month-dayThour:minute priority:H


#### Tasks

|Example|Command
|---|---|
Simple Task|`task add my task_info`
Modify Task|`task ID modify task_info`
Complete Task|`task ID done`
Delete Task|`task ID delete`
Define Priority to your Tasks|`task add task_info priority:H`
Task with due date|`task add task-info due:Date(year-month-day)`
Remove a due date|`task ID modify due:`
Show Tasks Completed from a Date Range|`task end.after:Date and end.before:Date completed`
Show Tasks I Complete in the Last Week|`task end.after:today - 1wk completed`
Search for Tasks with no Project|`task project: list`

#### Projects

Verify all Projects|`task projects`
Insert a Task on the Project|`task add project:project_name task_info`
Count the number os Tasks on a Project|`task project:project_name count`
Verify all Tasks from a project|`task project:project_name`
Change task to other project|`task ID project:project_name`


