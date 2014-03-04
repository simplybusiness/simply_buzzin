 $(document).ready(function() {
   $('.edit').editable(function(value, settings) {
     element_id = this.id.replace("inplace-", "")
     $('#message_'+element_id).val($.trim(value))
     console.log
     return value
   }, {
     cssclass : 'editable-input'
   });

   $('.edit_area').editable(function(value, settings) {
    element_id = this.id.replace("inplace-", "")
    $('#message_'+element_id).val($.trim(value))
    return value
   }, {
     cssclass : 'editable-input',
     type: 'textarea',
     submit: 'OK',
     cssclass : 'editable-area'
   });

    // and the formula is:
    var random_image = function() {
      var max = 7;
      var faces = ['boy', 'girl', 'jason'];
      var random_number = Math.floor(Math.random() * (max-1)) + 1;
      var face = faces[Math.floor(Math.random() * (faces.length - 1)) + 1];

      return face+'_face_0'+random_number+'.png';
    }

    var start_image = random_image();
    $('img.face-image').attr('src', 'images/' + start_image);
    $('#message_icon').val(start_image);

    $('.refresh-link').click(function () {
      image_name = random_image();
      $('img.face-image').attr('src', 'images/' + image_name);
      $('#message_icon').val(image_name);
    });
 });
