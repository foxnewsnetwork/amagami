import Ember from 'ember';
import layout from '../templates/components/amagami-right-image-slide';
import ContainerMixin from 'flexi/mixins/container';
export default Ember.Component.extend(ContainerMixin, {
  layout,
  classNames: ['amagami-right-image-slide']
});
