import $ from 'jquery';
import 'velocity-animate';

export default class ProductSelect {
  init() {
    const MAX_THUMBS = 5;
    let $arrows =   $('.js-modal-arrows');
    let $thumbnails = $('.js-modal-product-images');
    let $jsModalThumb = $('.js-modal-thumb');
    $jsModalThumb.first().addClass('selected');

    $('body').on('click','.js-modal-thumb', (event) => {
      if($jsModalThumb.hasClass('selected')){
          $jsModalThumb.removeClass('selected');
      }
      $(event.currentTarget).addClass('selected');
      let $jsModalProductCover = $('.js-modal-product-cover');
      $jsModalProductCover.attr('src', $(event.target).data('image-large-src'));
      $jsModalProductCover.attr('title', $(event.target).attr('title'));
      $jsModalProductCover.attr('alt', $(event.target).attr('alt'));
    })
    .on('click', 'aside#thumbnails', (event) => {
      if (event.target.id == 'thumbnails'){
        $('#product-modal').modal('hide');
      }
    });

    if ($('.js-modal-product-images li').length <= MAX_THUMBS) {
      $arrows.css('opacity', '.2');
    } else {
      $arrows.on('click', (event) => {
        if ($(event.target).hasClass('arrow-up') && $thumbnails.position().top < 0) {
          this.move('up');
          $('.js-modal-arrow-down').css('opacity','1');
        } else if ($(event.target).hasClass('arrow-down') && $thumbnails.position().top + $thumbnails.height() >  $('.js-modal-mask').height()) {
          this.move('down');
          $('.js-modal-arrow-up').css('opacity','1');
        }
      });
    }
  }

  move(direction) {

    const THUMB_MARGIN = 8;
    var $thumbnails = $('.js-modal-product-images');
    var thumbHeight = $('.js-modal-product-images li img').height() + THUMB_MARGIN;
    var currentPosition = $thumbnails.position().top;
    $thumbnails.velocity({
      translateY: (direction === 'up') ? currentPosition + thumbHeight : currentPosition - thumbHeight
    },function(){
      if ($thumbnails.position().top >= 0) {
        $('.js-modal-arrow-up').css('opacity','.2');
      } else if ($thumbnails.position().top + $thumbnails.height() <=  $('.js-modal-mask').height()) {
        $('.js-modal-arrow-down').css('opacity','.2');
      }
    });
  }
}
