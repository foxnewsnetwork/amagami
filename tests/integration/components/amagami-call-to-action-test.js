import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('amagami-call-to-action', 'Integration | Component | amagami call to action', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{amagami-call-to-action}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#amagami-call-to-action}}
      template block text
    {{/amagami-call-to-action}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
