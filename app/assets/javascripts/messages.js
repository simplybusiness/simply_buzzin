 $(document).ready(function() {
   $('.edit').editable(function(value, settings) {
     element_id = this.id.replace("inplace-", "")
     $('#message_'+element_id).val(value)
     console.log
     return value
   }, {
     cssclass : 'editable-input'
   });

   $('.edit_area').editable(function(value, settings) {
    element_id = this.id.replace("inplace-", "")
    $('#message_'+element_id).val(value)
    return value
   }, {
     cssclass : 'editable-input',
     type: 'textarea',
     submit: 'OK',
     cssclass : 'editable-area'
   });
 });
