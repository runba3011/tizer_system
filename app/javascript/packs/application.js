// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

$(function() {
  $('.copy_button').on('click', function(){
    //クラスの中にある特定のものをIDから検索するようにする
    let findId = "未定義";
    if($(this).hasClass("copy_object_1")){
      findId = "copy_object_1";
    }
    else if($(this).hasClass("copy_object_1_css")){
      findId = "copy_object_1_css";
    }
    else if($(this).hasClass("copy_object_2")){
      findId = "copy_object_2";
    }
    else if($(this).hasClass("copy_object_3")){
      findId = "copy_object_3";
    }
    console.log(findId);
    let text = $(`#${findId}`).text();
    // テキストエリアの作成
    let $textarea = $('<textarea></textarea>');
    // テキストエリアに文章を挿入
    $textarea.text(text);
    //テキストエリアを挿入
    $(this).append($textarea);
    //テキストエリアを選択
    $textarea.select();
    // コピー
    document.execCommand('copy');
    // テキストエリアの削除
    $textarea.remove();
    // アラート文の表示
    $(`#js-copyalert_${findId}`).show().delay(2000).fadeOut(400);
  });
});

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
