import Ember from 'ember';
import layout from '../templates/components/amagami-left-image-slide';
import ContainerMixin from 'flexi/mixins/container';
export default Ember.Component.extend(ContainerMixin, {
  layout,
  classNames: ['amagami-left-image-slide']
});
