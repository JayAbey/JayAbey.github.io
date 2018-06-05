<template>
  <div class="contact">
    <div class="main-container">
      <div class="company-details-contact-form">
        <div class="company-details">
          <div class="company-title">
            <h2>Design Hub</h2>
          </div>
          <div class="company-contact-details">
            <div class="phone-number">
              <h5>Phone:</h5>
              <p>0800 665 544</p>
            </div>
            <div class="mobile-phone-number">
              <h5>Mobile phone:</h5>
              <p>027-08006655</p>
            </div>
            <div class="after-hour-mobile-phone-number">
              <h5>After hour:</h5>
              <p>021-55660080</p>
            </div>
          </div>
          <div class="company-address-details">
            <h5>Office location:</h5>
            <p>Address: Level 2, </p>
            <p>Otakaro Bldg University Of Canterbury</p> 
            <p>Dovedale Ave, Ilam</p>
          </div>
        </div>
        <div class="contact-form">
          <form>
            <div class="form-group">
              <label for="first-name">First name</label>
              <input type="text" class="form-control" id="first-name-input" placeholder="First name">
            </div>
            <div class="form-group">
              <label for="last-name">Last name</label>
              <input type="text" class="form-control" id="last-name-input" placeholder="Last name">
            </div>
            <div class="form-group">
              <label for="email-address">Email address</label>
              <input type="email" class="form-control" id="email-address-input" placeholder="email@example.com">
            </div>
            <div class="form-group">
              <label for="text-label">What would you like to know?</label>
              <textarea class="form-control" id="text-area" rows="5"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
      <div class="company-loaction"></div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'contact',
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
*{
  text-align: left;
}
.main-container{
  width:100%;
  height:100vh;
}
.company-details-contact-form{
  width:35%;
}
h5{
  font-weight: bold;
}
form{
  text-align:left;
  width:20%;
}
</style>