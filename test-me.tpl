// Exported from:        http://aiki.xebialabs.com:5516/#/templates/FolderSamplesAndTutorials-ReleaseTemplate_welcome/releasefile
// XL Release version:   8.1.0-rc.3
// Date created:         Wed Jun 13 16:25:06 CEST 2018

xlr {
  template('Welcome to XL Release!') {
    folder('Samples & Tutorials')
    variables {
      stringVariable('user') {
        
      }
    }
    scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-13T09:00:00+0200')
    tags 'tutorial'
    phases {
      phase('Introduction') {
        color '#009CDB'
        tasks {
          manual('Welcome! Click me to get started') {
            description '## Welcome to XL Release!\n' +
                        '\n' +
                        'This introduction will help you to understand the XL Release product.\n' +
                        '\n' +
                        'This card is the first task in the **Welcome to XL Release!** procedure. It has been assigned to \'${user}\', and that\'s why you are seeing it now.\n' +
                        '\n' +
                        'When you have read this, click on **Complete** to advance to the next task.\n' +
                        '\n' +
                        'Please note - if you would no longer like to have new users receive this welcome release, you can simply delete the **Welcome to XL Release** template from your **Samples & Tutorials** folder.'
            owner '${user}'
            waitForScheduledStartDate false
          }
          manual('Understanding tasks and releases. (Click me to continue)') {
            description 'The **Tasks** screen shows a list of all active tasks for the current user -- presenting a list of "to do" items.\n' +
                        '\n' +
                        'All tasks are steps in a **release**. \n' +
                        '\n' +
                        'Releases are at the heart of XL Release. A release represents a number of tasks with people working on it. XL Release allows you to plan, track and execute releases automatically and acts as a single source of truth for all people involved to make the release a success.\n' +
                        '\n' +
                        'A **task** can be either some activity done by a person, or an automated task that will integrate with other systems or run a script. XL Release makes it easy to model your current process and to transition gradually to a more automated procedure.\n' +
                        '\n' +
                        'There are two types of tasks that are assigned to people: the manual task (such as this one), which indicates that something has to be done by somebody.\n' +
                        '\n' +
                        'The other one is a **Gate**, which indicates a checkpoint in the release, i.e. a set of conditions that need to be met for the release to continue.\n' +
                        '\n' +
                        'Click on **Complete** on this task to see an example of a Gate task.'
            owner '${user}'
            waitForScheduledStartDate false
          }
          gate('Gates: checkpoints in a release') {
            description 'This task is a \'gate\': a set of conditions that need to be completed before we can continue.\n' +
                        '\n' +
                        'Gates are similar to manual tasks, but have some additional properties\n' +
                        '* You can add conditions \n' +
                        '* You can add dependencies on other releases\n' +
                        '* Gates are colored red to stand out in the Release Flow editor and overviews.\n' +
                        '\n' +
                        'Tick the boxes below to indicate the progress on this Gate task. When all boxes are ticked, you may complete the task.'
            owner '${user}'
            waitForScheduledStartDate false
            conditions {
              condition('Step 1')
              condition('Step 2')
            }
          }
          manual('Task assignment & teams') {
            description 'Tasks are assigned to users. If a task is assigned to you and it is active (ie. needs to be done now) it will show up in the Tasks overview screen that is shown when you log in.\n' +
                        '\n' +
                        'Tasks can also be assigned to **Teams**. The release manager defines the teams in a release. As the name implies, there can be several people in a team. If a task is assigned to a team, it means that it is a joint responsibility to complete the task. \n' +
                        '\n' +
                        'If a task is assigned to a team you\'re in, but not to you directly, it will still show up in your task overview.'
            owner '${user}'
            waitForScheduledStartDate false
          }
          manual('Skipping and failing a task') {
            description 'There are three ways to finish a task.\n' +
                        '\n' +
                        '* **Complete**. Marks the task as done and advances to the next task in the release.\n' +
                        '* **Skip**. No work has been done to complete this task, but it can be ignored. The release flow advances to the next task in the release. The user must comment on why this task was skipped.\n' +
                        '* **Fail**. The task can\'t be completed for some reason. The release is stalled and the task is now assigned to the Release Admin, the person responsible for this release. The Release Admin has to decide what to do next: skip this task or assign it to somebody else and retry it.\n' +
                        '\n' +
                        'Now press **Skip** to go to the next topic.'
            owner '${user}'
            waitForScheduledStartDate false
          }
          manual('Continue with the tour') {
            description 'We\'re now at the end of the general introduction for XL Release users.\n' +
                        '\n' +
                        'You\'re now all set to work on tasks in XL Release. \n' +
                        '\n' +
                        'If you\'re interested in using XL Release as a release manager, please continue with the guided tour. Like this introduction, the guided tour is an actual release in XL Release.\n' +
                        '\n' +
                        'To start the tour, do the following: \n' +
                        '* Go to the [Templates](#/templates) page. (If the Templates page is not accessible, please consult with the administrator of the XL Release installation.)\n' +
                        '* Locate the template called **Guided tour for release managers**\n' +
                        '* Click on **New release from template**\n' +
                        '* In the **Create new release** page, enter a release name and your login name for the `user` variable at the bottom of the page.\n' +
                        '* Press **Create**\n' +
                        '\n' +
                        'You will be taken to the Release Flow editor, showing all tasks in the Guided Tour release. The tour is now ready to be started.\n' +
                        '\n' +
                        '* Click on **Start Release** and the tour will begin.'
            owner '${user}'
            waitForScheduledStartDate false
          }
        }
      }
    }
    teams {
      team('Template Owner') {
        members 'admin'
        permissions 'template#edit', 'template#lock_task', 'template#view', 'template#edit_security', 'template#create_release'
      }
      team('Release Admin') {
        members 'admin'
        permissions 'release#edit', 'release#lock_task', 'release#start', 'release#reassign_task', 'template#view', 'release#edit_security', 'release#abort', 'release#view', 'release#edit_task'
      }
    }
    
  }
}