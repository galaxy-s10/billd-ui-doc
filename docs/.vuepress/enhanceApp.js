import Billd from 'billd-ui';
import 'billd-ui/dist/billd.css';

export default ({ Vue, options, router }) => {
  Vue.use(Billd);
  // Vue.mixin({
  //   mounted() {
  //     import('billd-ui').then(function(m) {
  //       Vue.use(m.default);
  //     });
  //   },
  // });
};
