import Ember from 'ember';
import layout from '../templates/components/amagami-double-text-slide';
import ContainerMixin from 'flexi/mixins/container';
export default Ember.Component.extend(ContainerMixin, {
  layout,
  classNames: ['amagami-double-text-slide']
});
