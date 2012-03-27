# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


addentry = (data) ->
 $('#entry_table').last().append("<tr class='entry'><td>"+data[0].word+"</td><td>"+data[1]+"</td><td><a href='/subtopics/"+data[0].subtopic_id+"/entries/"+data[0].id+"' class='delete_entry' data-confirm='Are you sure?' data-method='delete' data-remote='true' rel='nofollow'>Destroy</a></td></tr>")
 $('#entry_table tr').last().effect("highlight", {}, 3000)
 $('.delete_entry').bind('ajax:success', (event) -> $(this).closest('tr.entry').slideUp())

$ ->
 $('.delete_entry')
 .bind('ajax:success', (event) -> $(this).closest('.entry').slideUp())

$ ->
 $('.new_entry')
 .bind('ajax:success', (event,data) -> addentry(data))
