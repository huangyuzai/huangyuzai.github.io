{% if theme.codeblock.copy_button.enable %}
  <style>
    .copy-btn {
      display: inline-block;
      padding: 6px 12px;
      font-size: 13px;
      font-weight: 700;
      line-height: 20px;
      color: #333;
      white-space: nowrap;
      vertical-align: middle;
      cursor: pointer;
      background-color: #eee;
      background-image: linear-gradient(#fcfcfc, #eee);
      border: 1px solid #d5d5d5;
      border-radius: 3px;
      user-select: none;
      outline: 0;
    }

    .highlight-wrap .copy-btn {
      transition: opacity .3s ease-in-out;
      opacity: 0;
      padding: 2px 6px;
      position: absolute;
      right: 4px;
      top: 8px;
    }

    .highlight-wrap:hover .copy-btn,
    .highlight-wrap .copy-btn:focus {
      opacity: 1
    }

    .highlight-wrap {
      position: relative;
    }
  </style>
  <script>
  console.log('%c\n\n如果有不懂的或者有更好的 idea 可以一起交流噢(QQ:1792132332)\n\n记得备注 --> %cconsole交流%c\n\n',"text-shadow:1px 1px 1px rgba(0,0,0,.2);font-size:30px;","text-shadow:1px 1px 1px rgba(0,0,0,.2);font-size:30px;color:red;","text-shadow:1px 1px 1px rgba(0,0,0,.2);font-size:30px;color:black");
    $('.highlight').each(function (i, e) {
      var $wrap = $('<div>').addClass('highlight-wrap')
      $(e).after($wrap)
      $wrap.append($('<button>').addClass('copy-btn').append('<i class="fa fa-fw fa-ravelry"></i>{{__("post.copy_button")}}').on('click', function (e) {
        var code = $(this).parent().find('.code').find('.line').map(function (i, e) {
          return $(e).text()
        }).toArray().join('\n')
        var ta = document.createElement('textarea')
        document.body.appendChild(ta)
        ta.style.position = 'absolute'
        ta.style.top = '0px'
        ta.style.left = '0px'
        ta.value = code
        ta.select()
        ta.focus()
        var result = document.execCommand('copy')
        document.body.removeChild(ta)
        {% if theme.codeblock.copy_button.show_result %}
          if(result)$(this).html('<i class="fa fa-fw fa-check"></i>{{__("post.copy_success")}}')
          else $(this).html('<i class="fa fa-fw fa-times"></i>{{__("post.copy_failure")}}')
        {% endif %}
        $(this).blur()
      })).on('mouseleave', function (e) {
        var $b = $(this).find('.copy-btn')
        setTimeout(function () {
          $b.html('<i class="fa fa-fw fa-ravelry"></i>{{__("post.copy_button")}}')
        }, 300)
      }).append(e)
    })
    // $('.copy-btn').append('<i class="fa fa-fw fa-contao"></i>')
  </script>
{% endif %}
