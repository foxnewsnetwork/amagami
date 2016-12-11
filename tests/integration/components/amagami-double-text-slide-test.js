import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('amagami-double-text-slide', 'Integration | Component | amagami double text slide', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{amagami-double-text-slide}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#amagami-double-text-slide}}
      template block text
    {{/amagami-double-text-slide}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
