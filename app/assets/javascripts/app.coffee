$(document).ready ->

  $('#rsvpModal').modal(
    backdrop: 'static'
    show: true
  )

  $('[data-toggle="tooltip"]').tooltip()

  # $('#add_guest').on("ajax:success", (e, data, status, xhr) ->
  #   $(".guests-container").append(xhr.responseText)
  # )

  $('#add_guest').on 'click', ->
    # create guest and show
    htmlRequest = $.post '/rsvps', $('#new_rsvp').serialize(), "html"
    htmlRequest.success (data, status, xhr) ->
      $('#guests-container').append( data )

    htmlRequest.complete (xhr) ->
      # rsvpID = html.find("#guest")


      rsvpID = $('#guests-container').find('row fieldset')

      console.log rsvpID.attr('class')
      # console.log data

      # remove old guest form
      # $('#guests-form fieldset').detach()

      # # get rsvp id and then get new guest form
      # $.getJSON '/rsvp', (data) ->
      #   rsvp_id = data
      #   $.get "/rsvps/" + rsvp_id + "/guests/new", (data) ->



    # 'new_rsvp_guest_path(@rsvp)'
    # request = $.get @href
    # request.success (data) -> $(".guests-container").append(data.responseText)
    # request.error (jqXHR, textStatus, errorThrown) -> $('body').append "AJAX Error: ${textStatus}."

  $('#rsvp-yes button').on "ajax:success", (data, status, xhr) ->
    console.log $('.modal-footer#details')
    # $('.guests-container').replace(xhr.responseText)
    $('.modal-footer#details').removeClass('hide')
    # $('.modal-footer#details').removeClass('hide')
    # $('.modal-footer#response').addClass('hide')
    # e.preventDefault()

  # $('#rsvp-yes button').click (e) ->
  #   $('.modal-footer#details').removeClass('hide')
  #   $('.modal-footer#response').addClass('hide')
  #   $('.guests-container').xxx
  #   e.preventDefault()


  # $('#new_rsvp').on("ajax:success", (e, data, status, xhr) ->
  #   $("#guests_container").append(xhr.responseText)
  # ).on "ajax:error", (e, xhr, status, error) ->

  # console.log $(".guests-container fieldset a#guest-delete").length
