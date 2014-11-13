# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('ready', () ->
  ctx = document.getElementById('heatmap').getContext('2d')
  map = document.getElementById('floorplan')
  map.addEventListener('load', () ->
    ctx.drawImage(map, 0, 0)
    ctx.font = '10pt Arial'
    ####################################################
    ### GIANT GLOB OF MACHINE GENERATED COFFEESCRIPT ###
    ####################################################
    ctx.font = '10pt Arial'

    # Fill room 3009
    if (entry = document.getElementById("3009"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(101,8,65,70)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 103, 20)
      if (data.length == 3)
        ctx.fillText(data[2], 103, 32)

    # Fill room 3013
    if (entry = document.getElementById("3013"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(102,81,65,70)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 104, 93)
      if (data.length == 3)
        ctx.fillText(data[2], 104, 105)

    # Fill room 3016
    if (entry = document.getElementById("3016"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(7,155,65,73)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 9, 167)
      if (data.length == 3)
        ctx.fillText(data[2], 9, 179)

    # Fill room 3020
    if (entry = document.getElementById("3020"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(7,232,65,70)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 9, 244)
      if (data.length == 3)
        ctx.fillText(data[2], 9, 256)

    # Fill room 3024
    if (entry = document.getElementById("3024"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(7,306,65,70)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 9, 318)
      if (data.length == 3)
        ctx.fillText(data[2], 9, 330)

    # Fill room 3050
    if (entry = document.getElementById("3050"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(169,506,52,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 171, 518)
      if (data.length == 3)
        ctx.fillText(data[2], 171, 530)

    # Fill room 3051
    if (entry = document.getElementById("3051"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(168,381,51,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 170, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 170, 405)

    # Fill room 3055
    if (entry = document.getElementById("3055"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(224,381,49,96)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 226, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 226, 405)

    # Fill room 3054
    if (entry = document.getElementById("3054"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(224,507,50,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 226, 519)
      if (data.length == 3)
        ctx.fillText(data[2], 226, 531)

    # Fill room 3059
    if (entry = document.getElementById("3059"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(278,381,50,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 280, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 280, 405)

    # Fill room 3063
    if (entry = document.getElementById("3063"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(333,381,50,96)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 335, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 335, 405)

    # Fill room 3067
    if (entry = document.getElementById("3067"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(386,381,50,96)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 388, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 388, 405)

    # Fill room 3066
    if (entry = document.getElementById("3066"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(386,507,51,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 388, 519)
      if (data.length == 3)
        ctx.fillText(data[2], 388, 531)

    # Fill room 3071
    if (entry = document.getElementById("3071"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(440,381,52,96)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 442, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 442, 405)

    # Fill room 3070
    if (entry = document.getElementById("3070"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(441,507,49,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 443, 519)
      if (data.length == 3)
        ctx.fillText(data[2], 443, 531)

    # Fill room 3074
    if (entry = document.getElementById("3074"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(494,506,49,97)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 496, 518)
      if (data.length == 3)
        ctx.fillText(data[2], 496, 530)

    # Fill room 3086
    if (entry = document.getElementById("3086"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(657,506,50,96)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 659, 518)
      if (data.length == 3)
        ctx.fillText(data[2], 659, 530)

    # Fill room 3091
    if (entry = document.getElementById("3091"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(708,381,52,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 710, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 710, 405)

    # Fill room 3090
    if (entry = document.getElementById("3090"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(710,506,50,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 712, 518)
      if (data.length == 3)
        ctx.fillText(data[2], 712, 530)

    # Fill room 3095
    if (entry = document.getElementById("3095"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(764,381,51,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 766, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 766, 405)

    # Fill room 3094
    if (entry = document.getElementById("3094"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(764,506,50,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 766, 518)
      if (data.length == 3)
        ctx.fillText(data[2], 766, 530)

    # Fill room 3099
    if (entry = document.getElementById("3099"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(818,381,51,96)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 820, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 820, 405)

    # Fill room 3103
    if (entry = document.getElementById("3103"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(872,381,51,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 874, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 874, 405)

    # Fill room 3107
    if (entry = document.getElementById("3107"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(926,382,49,94)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 928, 394)
      if (data.length == 3)
        ctx.fillText(data[2], 928, 406)

    # Fill room 3106
    if (entry = document.getElementById("3106"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(926,506,49,96)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 928, 518)
      if (data.length == 3)
        ctx.fillText(data[2], 928, 530)

    # Fill room 3111
    if (entry = document.getElementById("3111"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(980,381,51,95)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 982, 393)
      if (data.length == 3)
        ctx.fillText(data[2], 982, 405)

    # Fill room 3110
    if (entry = document.getElementById("3110"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(980,506,50,96)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 982, 518)
      if (data.length == 3)
        ctx.fillText(data[2], 982, 530)

    # Fill room 3125
    if (entry = document.getElementById("3125"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(1129,380,64,73)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 1131, 392)
      if (data.length == 3)
        ctx.fillText(data[2], 1131, 404)

    # Fill room 3126
    if (entry = document.getElementById("3126"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(1129,456,63,71)
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], 1131, 468)
      if (data.length == 3)
        ctx.fillText(data[2], 1131, 480)

  , false)
  ########################################################
  ### END GIANT BLOB OF MACHINE GENERATED COFFEESCRIPT ###
  ########################################################

)