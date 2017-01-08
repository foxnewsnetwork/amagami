import Ember from 'ember';
import layout from '../templates/components/amagami-hero';
import ContainerMixin from 'flexi/mixins/container';

export default Ember.Component.extend(ContainerMixin, {
  layout,
  classNames: ['amagami-hero']
});
