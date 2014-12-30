`import DS from 'ember-data'`
`import ENV from 'apiv1/config/environment'`

ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: "apiv1"
  host: ENV.host

`export default ApplicationAdapter`
