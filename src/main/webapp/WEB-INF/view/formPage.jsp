<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML>
<html>
  <head>
    <title>Subscription Form</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <style>
      body { background-color: #eee; font: helvetica; }
      #container { width: 500px; background-color: #fff; margin: 30px auto; padding: 30px; border-radius: 5px; box-shadow: 5px; }
      .green { font-weight: bold; color: green; }
      .message { margin-bottom: 10px; }
      label {width:70px; display:inline-block;}
      form {line-height: 160%; }
      .hide { display: none; }
    </style>
  </head>
  <body>
  
  <div id="container">
  
    <h2>Subscribe to The Newsletter!</h2>
    <c:if test="${not empty message}"><div class="message green">${message}</div></c:if>
    
    <form:form action="form.html" modelAttribute="subscriber" method="POST">
        <label for="nameInput">Name: </label>
        <form:input path="name" id="nameInput"></form:input>
        <form:errors path="name" cssclass="error"></form:errors>
        <br />
         
        <label for="ageInput">Age: </label>
        <form:input path="age" id="ageInput"></form:input>
        <form:errors path="age" cssclass="error"></form:errors>
        <br />
         
        <label for="phoneInput">Phone: </label>
        <form:input path="phone" id="phoneInput"></form:input>
        <form:errors path="phone" cssclass="error"></form:errors>
        <br />
         
        <label for="emailInput">Email: </label>
        <form:input path="email" id="emailInput"></form:input>
        <form:errors path="email" cssclass="error"></form:errors>
        <br />
         
        <label for="birthdayInput">Birthday: </label>
        <form:input path="birthday" id="birthdayInput" placeholder="MM/DD/YYYY" />
        <form:errors path="birthday" cssclass="error"></form:errors>
        <br />
         
        <label for="genderOptions">Gender: </label>
        <form:select path="gender" id="genderOptions">
            <form:option value="">Select Gender</form:option>
            <form:option value="MALE">Male</form:option>
            <form:option value="FEMALE">Female</form:option>
        </form:select>
        <form:errors path="gender" cssclass="error"></form:errors>
        <br />
         
        <label for="newsletterCheckbox">Newsletter? </label>
        <form:checkbox path="receiveNewsletter" id="newsletterCheckbox"></form:checkbox>
        <form:errors path="receiveNewsletter" cssclass="error"></form:errors>
        <br /><br />
        <input type="submit" value="Submit" />
    </form:form>
  </div>
  
  
  <script type="text/javascript">
  
    $(document).ready(function() {
      
      toggleFrequencySelectBox(); // show/hide box on page load
      
      $('#newsletterCheckbox').change(function() {
        toggleFrequencySelectBox();
      })
      
    });
    
    function toggleFrequencySelectBox() {
      if(!$('#newsletterCheckbox').is(':checked')) {
        $('#frequencySelect').val('');
        $('#frequencySelect').prop('disabled', true);
      } else {
        $('#frequencySelect').prop('disabled', false);
      }
    }
  
  </script>
  
  </body>
</html>