$ ->
	
  $('#valid-consommable').click (e) ->
    alert 'anus'
    $.ajax
      url: 'update_valide'
      type: 'GET'
      data:
        id: $(this).data('consommable')
      success: (data) ->
        $('#valid-true-false').html('true')
