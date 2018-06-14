// Exported from:        http://windows:5516/#/templates/Folder76b5d98656114311a115356b499ca873-Release91783e64f681467f836c1b1fccdb9217/releasefile
// XL Release version:   8.1.0-rc.3
// Date created:         Thu Jun 14 14:13:09 CEST 2018

xlr {
  template('Main Template') {
    folder('Folder1')
    scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-14T00:00:00+0200')
    dueDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-25T00:00:00+0200')
    tags 'ACME', 'Main'
    scriptUsername 'script'
    scriptUserPassword '{b64}uxh9yF5IqFv3Mb6LqYl+vA=='
    phases {
      phase('Design') {
        scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-14T00:00:00+0200')
        dueDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-23T01:00:00+0200')
        plannedDuration 781200
        color '#0099CC'
        tasks {
          parallelGroup('Feature Design') {
            scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-14T00:00:00+0200')
            dueDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-19T00:00:00+0200')
            plannedDuration 432000
            tasks {
              manual('Synopsis') {
                description 'Describe the feature in a few sentences:\n' +
                            '\n' +
                            '* how is it called?\n' +
                            '* what problem does it solve? / what area does it improve?\n' +
                            '* who would benefit from it?'
                scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-14T00:00:00+0200')
                plannedDuration 126000
              }
              manual('Use cases') {
                description 'Describe use cases, for each use case, define:\n' +
                            '\n' +
                            '* actors: who initiates the use case and who else is involved\n' +
                            '* action: what action is performed by the initial actor\n' +
                            '* interaction: expected interaction with the system\n' +
                            '* result: expected result\n' +
                            '* what can go wrong, where and why'
                scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-14T00:00:00+0200')
                plannedDuration 126000
              }
              manual('Risk Analysis') {
                description 'Estimate the risks:\n' +
                            '\n' +
                            '* how costly (time, resources) is to develop this feature?\n' +
                            '* what impact is to be expected with existing functionalities and plugins?\n' +
                            '* ....'
                scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-15T10:00:00+0200')
                plannedDuration 172800
              }
              manual('Validation') {
                description 'Validate Feature Synopsis and use cases, taking into account Risk Analysis\n' +
                            '\n' +
                            'Go/No-Go outcome'
                scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-17T09:00:00+0200')
                plannedDuration 140400
              }
            }
            links {
              link {
                source 'Synopsis'
                target 'Risk Analysis'
              }
              link {
                source 'Use cases'
                target 'Risk Analysis'
              }
              link {
                source 'Risk Analysis'
                target 'Validation'
              }
            }
          }
          sequentialGroup('Requirements') {
            scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-19T00:00:00+0200')
            dueDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-23T00:00:00+0200')
            plannedDuration 345600
            tasks {
              manual('Formalize Requirements') {
                description 'Formalize Feature requirements'
                plannedDuration 172800
              }
              manual('Formalize Acceptance Criteria') {
                description 'Formalize Feature requirements and Acceptance criteria'
                scheduledStartDate Date.parse("yyyy-MM-dd'T'HH:mm:ssZ", '2018-06-21T00:00:00+0200')
                plannedDuration 172800
              }
            }
          }
        }
      }
    }
    
  }
}