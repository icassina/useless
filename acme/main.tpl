// Exported from:        http://windows:5516/#/templates/Folder76b5d98656114311a115356b499ca873-Release91783e64f681467f836c1b1fccdb9217/releasefile
// XL Release version:   8.1.0-rc.3
// Date created:         Thu Jun 14 13:16:28 CEST 2018

xlr {
  template('Main Template') {
    folder('Folder1')
    scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-14T09:00:00+0200')
    dueDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-18T09:00:00+0200')
    tags 'ACME', 'Main'
    scriptUsername 'script'
    scriptUserPassword '{b64}uxh9yF5IqFv3Mb6LqYl+vA=='
    phases {
      phase('New Phase') {
        
      }
    }
    
  }
}