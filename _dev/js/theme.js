import 'expose-loader?Tether!tether';
import 'bootstrap/dist/js/bootstrap.min';
import 'flexibility';
import 'bootstrap-touchspin';

import './responsive';
import './checkout';
import './customer';
import './listing';
import './product';
import './cart';

import DropDown from './components/drop-down';
import Form from './components/form';
import ProductMinitature from './components/product-miniature';
import ProductSelect from './components/product-select';
import TopMenu from './components/top-menu';

import prestashop from 'prestashop';
import EventEmitter from 'events';

import './lib/bootstrap-filestyle.min';
import './lib/jquery.scrollbox.min';


import './components/block-cart';



import './components/scrollspy336';






// "inherit" EventEmitter
for (var i in EventEmitter.prototype) {
  prestashop[i] = EventEmitter.prototype[i];
}

$(document).ready(() => {
  let dropDownEl = $('.js-dropdown');
  const form = new Form();
  let topMenuEl = $('.js-top-menu ul[data-depth="0"]');
  let dropDown = new DropDown(dropDownEl);
  let topMenu = new TopMenu(topMenuEl);
  let productMinitature = new ProductMinitature();
  let productSelect  = new ProductSelect();
  dropDown.init();
  form.init();
  topMenu.init();
  productMinitature.init();
  productSelect.init();
});
