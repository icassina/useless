// Exported from:        http://aiki.xebialabs.com:5516/#/templates/Release5d000eb680514d2da56e4968bed0f609/releasefile
// XL Release version:   8.1.0-SNAPSHOT
// Date created:         Tue Aug 28 16:36:50 CEST 2018

xlr {
  template('Template1') {
    description 'description here'
    scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-08-28T09:00:00+0200')
    tags 'test1'
    scriptUsername 'admin'
    scriptUserPassword '{b64}YFKOzMTEICsqFJ592l2FbQ=='
    phases {
      phase('New Phase') {
        tasks {
          manual('t1') {
            comments {
              comment {
                text 'here my comment #1'
                author 'admin'
                date Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-08-28T16:36:22+0200')
              }
            }
          }
        }
      }
    }
    teams {
      team('Release Admin') {
        permissions 'release#edit_precondition', 'release#edit', 'release#reassign_task', 'release#edit_security', 'release#view', 'release#lock_task', 'release#start', 'release#edit_blackout', 'template#view', 'release#edit_failure_handler', 'release#abort', 'release#edit_task'
      }
      team('Template Owner') {
        members 'admin'
        permissions 'template#edit', 'template#lock_task', 'template#view', 'template#edit_triggers', 'template#edit_precondition', 'template#edit_security', 'template#create_release', 'template#edit_failure_handler'
      }
    }
  }
}