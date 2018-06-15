// Exported from:        http://aiki.xebialabs.com:5516/#/templates/Releasee786db8ecfa840549805e0b14cc1dd96/releasefile
// XL Release version:   8.0.2-SNAPSHOT
// Date created:         Fri Jun 15 11:49:18 CEST 2018

xlr {
  template('dada') {
    scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-15T09:00:00+0200')
    phases {
      phase('New Phase') {
        
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