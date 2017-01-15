import Ember from 'ember';
import layout from '../templates/components/amagami-small-hero';
import ContainerMixin from 'flexi/mixins/container';
export default Ember.Component.extend(ContainerMixin, {
  layout,
  classNames: ['amagami-small-hero']
});
