$.validator.addMethod("mail", function(value, element) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return this.optional(element) || re.test(value);
}, "Vui lòng nhập địa chỉ email hợp lệ.");
$(".form-login").validate({
  rules: {
    "email": {
      required: true,
      mail: true
    },
    "password": {
      required: true,
    }
  },
  messages: {
    email: {
      required: "Email là bắt buộc.",
    },
    password: {
      required: "Mật khẩu là bắt buộc."
    }
  }
});
