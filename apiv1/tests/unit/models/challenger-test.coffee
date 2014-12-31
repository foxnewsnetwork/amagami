`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'challenger', 'Challenger', {
  # Specify the other units that are required for this test.
  needs: []
}

test 'it exists', ->
  model = @subject()
  # store = @store()
  ok !!model

text 'creation', ->
  store = @store()
  c = store.createRecord "challenger"
  c.save().then (c) -> ok c