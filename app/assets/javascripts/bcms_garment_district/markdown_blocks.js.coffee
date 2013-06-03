$(document).ready ->
  $("[name='preview']").click (event) ->
    event.preventDefault()
    # $('#preview').html $("[name='markdown_block[content]']").val()
    url = $(@).attr 'url'
    form = $(@).parents('form')
    data = {
      markdown_block: {
        content: form.find("[name='markdown_block[content]']").val()
      }
    }
    $('#markdown_preview').load url, data

