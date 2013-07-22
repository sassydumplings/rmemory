// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {

  // ui elements and game data
  var game           = $('#game');
  var board          = $('#board');
  var tiles          = $('.tile');
  var selected       = [];
  var matches        = [];
  var anim_duration  = 1000;
  var num_clicks     = 0;

  // call this to ready the board for game play
  var initialize = function() {
    $.each(tiles, function(k,v) {
      tiles[k] = $(v);
      var tile = tiles[k];
      tile.data('img-src', tile.find('img').attr('src'));
      tile.on('click', handle_click);
    });

    // closes the kanjii detail page
    //var cont_button = $('#continue');
    //cont_button.on('click', hide_the_details);

    game.fadeIn();
  };

  var new_game = function() {
    window.location.href = window.location.href
  };


  var activate_tile = function(tile) {
    hide_the_details();
    tile.addClass('active');
    selected.push(tile);
    num_clicks++;
  };

  var is_tile_active = function(tile) {
    return tile.hasClass('active');
  };

  var deselect_tiles = function() {
    $.each(tiles,function(index,tile) {
      tile.removeClass('active');
    })
    selected = [];
  };

  var hide_selected = function() {
    $.each(selected, function(k,v) {
      v.animate({'opacity': 0.4}, anim_duration);
      v.addClass('matched');
    });
  };


  var hide_the_details = function() {
      $('#details').addClass('hidden');
    };


  var is_match = function() {
    return selected[0].data('img-src') == selected[1].data('img-src');
  };

  var handle_match_found = function() {
      var myImg = '<img src="'+selected[0].data('detailsUrl')+'">';
      matches.push(selected);
      hide_selected();
      $('.image.detail').html(myImg);
      $('#details').removeClass('hidden');
      if (is_game_over()) {
        handle_win();
      }
  };

  var is_game_over = function() {
    return (2 * matches.length) == tiles.length;
  };

  var handle_win = function() {
    setTimeout(function() {
      var results = $('#results');
      var score   = $('#score', results);
      var button  = $('button', results);

      score.html(num_clicks);
      button.on('click', new_game);
      results.fadeIn();
    }, anim_duration);
  };

  var handle_click = function() {

    var tile = $(this);

    if (is_tile_active(tile)) {
      return false;
    }

    if (selected.length == 2) {
      deselect_tiles();
    }

    activate_tile(tile);

    if (selected.length == 2 && is_match()) {
      handle_match_found();
    }
  };

// Pseudo code: get a list of images in random order from
// games model
//
  var get_random_image = function() {
    var rand_index = Math.floor(Math.random() * tiles.length);
    var rand_tile  = tiles[rand_index];
    var src        = rand_tile.find('img').attr('src');
    var img        = $('<img>');

    return img.attr('src', src);
  };

  initialize();

});
