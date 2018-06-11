// Exported from:        http://desktop:5516/#/templates/Release1deead7386214143b0484e55478b287a/releasefile
// XL Release version:   8.1.0-SNAPSHOT
// Date created:         Mon Jun 11 16:17:07 CEST 2018

xlr {
  template('newly') {
    scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-11T09:00:00+0200')
    phases {
      phase('New Phase') {
        tasks {
          manual('m1') {
            
          }
          manual('m2') {
            
          }
          manual('renamed') {
            
          }
        }
      }
    }
    teams {
      team('Release Admin') {
        permissions 'release#edit', 'release#lock_task', 'release#start', 'release#reassign_task', 'release#edit_blackout', 'template#view', 'release#edit_security', 'release#abort', 'release#view', 'release#edit_task'
      }
      team('Template Owner') {
        members 'admin'
        permissions 'template#edit', 'template#lock_task', 'template#view', 'template#edit_triggers', 'template#edit_security', 'template#create_release'
      }
    }
  }
}