# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

(($) ->
  $.widget "ui.combobox",
    _create: ->
      removeIfInvalid = (element) ->
        value = $(element).val()
        matcher = new RegExp("^" + $.ui.autocomplete.escapeRegex(value) + "$", "i")
        valid = false
        select.children("option").each ->
          if $(this).text().match(matcher)
            @selected = valid = true
            false

        unless valid

          # remove invalid value, as it didn't match anything
          $(element).val("").attr("title", value + " didn't match any item").tooltip "open"
          select.val ""
          setTimeout (->
            input.tooltip("close").attr "title", ""
          ), 2500
          input.data("autocomplete").term = ""
          false
      input = undefined
      that = this
      select = @element.hide()
      selected = select.children(":selected")
      value = (if selected.val() then selected.text() else "")
      wrapper = @wrapper = $("<span>").addClass("ui-combobox").insertAfter(select)
      input = $("<input>").appendTo(wrapper).val(value).attr("title", "").addClass("ui-state-default ui-combobox-input").autocomplete(
        delay: 0
        minLength: 0
        source: (request, response) ->
          matcher = new RegExp($.ui.autocomplete.escapeRegex(request.term), "i")
          response select.children("option").map(->
            text = $(this).text()
            if @value and (not request.term or matcher.test(text))
              label: text.replace(new RegExp("(?![^&;]+;)(?!<[^<>]*)(" + $.ui.autocomplete.escapeRegex(request.term) + ")(?![^<>]*>)(?![^&;]+;)", "gi"), "<strong>$1</strong>")
              value: text
              option: this
          )

        select: (event, ui) ->
          ui.item.option.selected = true
          that._trigger "selected", event,
            item: ui.item.option


        change: (event, ui) ->
          removeIfInvalid this  unless ui.item
      ).addClass("ui-widget ui-widget-content ui-corner-left")
      input.data("autocomplete")._renderItem = (ul, item) ->
        $("<li>").data("item.autocomplete", item).append("<a>" + item.label + "</a>").appendTo ul

      $("<a>").attr("tabIndex", -1).attr("title", "Show All Items").tooltip().appendTo(wrapper).button(
        icons:
          primary: "ui-icon-triangle-1-s"

        text: false
      ).removeClass("ui-corner-all").addClass("ui-corner-right ui-combobox-toggle").click ->

        # close if already visible
        if input.autocomplete("widget").is(":visible")
          input.autocomplete "close"
          removeIfInvalid input
          return

        # work around a bug (likely same cause as #5265)
        $(this).blur()

        # pass empty string as value to search for, displaying all results
        input.autocomplete "search", ""
        input.focus()

      input.tooltip
        position:
          of: @button

        tooltipClass: "ui-state-highlight"


    destroy: ->
      @wrapper.remove()
      @element.show()
      $.Widget::destroy.call this

) jQuery

jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $("#combobox1").combobox()
  $("#combobox2").combobox()
  $("#combobox3").combobox()
  $("#combobox4").combobox()
  $("#combobox5").combobox()
  $("#combobox6").combobox()
  $("#combobox7").combobox()
  $("#combobox8").combobox()
  $("#combobox9").combobox()
  $("#combobox10").combobox()
  $("#combobox11").combobox()
  $("#combobox12").combobox()
  $("#combobox13").combobox()
  $("#combobox14").combobox()
  $("#combobox15").combobox()
