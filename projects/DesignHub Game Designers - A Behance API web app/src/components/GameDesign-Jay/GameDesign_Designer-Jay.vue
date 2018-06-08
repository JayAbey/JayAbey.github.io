<template>
  <div>

    <!-- Disco background-->
    <iframe class="disco-background" v-bind:src="discoBackground_iframeURL"> </iframe>

     <div class="container"> 
      <!--Header -->
      <div class="header">
        <div class="logo">
          <a href="/"><img src="../../images/logoWhite.png"></a>
        </div>
        <div class="contact">
          <a href="/contact">CONTACT</a>
        </div>
      </div>

      <!-- Disco Ball-->
      <iframe class="disco-ball" v-bind:src="discoBall_iframeURL"></iframe>

<div class="designer-flexbox">
      <!--Designer details-->
      <div class="selected-designer">
        <div class="selected-designer-info">
          {{ featuredDesigner.fullName}}
        </div>
        <div class="selected-designer-character">
          <img v-bind:src="featuredDesigner.characterImage">
        </div>
      </div>

      <!-- Grey project display placeholder -->
      <div class="project-display">
        <!--Back button-->
        <div class="back-button">
          <a href="/">
            <!--fontawsome back button icon - copyright to "http://fontawesome.io/icon/chevron-left/"-->
            <i class="fa fa-chevron-left" aria-hidden="true"></i>&nbsp; back
          </a>
        </div>

        <!--Designer's list of projects-->
        <div class="designer-project-list">
          <div v-for="project in projects">
            <router-link v-bind:to="'/game-design-projects/' + project.id">
              <h1>{{ project.name }}</h1>
              <img v-bind:src="project.covers[202]">
            </router-link>
          </div>
        </div>

      </div>
    </div>

     </div> 

  </div>
</template>

<script>
export default {
  name: 'gameDesignDesigner',
  props: ['selectedDesignerID'],
  data() {
    return {
      discoBall_iframeURL: 'https://jayabey.github.io/projects/DiscoBall/index.html',
      discoBackground_iframeURL: 'https://jayabey.github.io/projects/DiscoBackground/',
      designers: [
        {
          webID: "ducnguyenmai",
          id: 14056285,
          characterImage: require('../../images/jay/dustinNguyen.png'),
          fullName: 'Dustin Nguyen',
        },
        {
          webID: "atokaruk",
          id: 3949737,
          characterImage: require('../../images/jay/alexandraTokaryuk.png'),
          fullName: 'Alexandra Tokaryuk'
        },
        {
          webID: "Aleksey_Bazik",
          id: 9876953,
          characterImage: require('../../images/jay/alekseyBazik.png'),
          fullName: 'Aleksey Bazik'
        }
      ],

      projects: [],
      featuredDesigner: ''
    }
  },

  created: function() {
    //Alternative API key: fBD5wQDeHCclck9MRpwifajnEDIz4KzA
    this.$http.jsonp('https://api.behance.net/v2/users/' + this.selectedDesignerID + '/projects?&api_key=gUWR7I82EI6YUyylsJ4UwaratHObuX6Y').then(response => {
      this.projects = response.body.projects;
    });

    for (var i = 0; i < this.designers.length; i++) {
      if (this.selectedDesignerID == this.designers[i].webID) {
        this.featuredDesigner = this.designers[i];
      }
    }
  },

  methods: {

  }

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
/*Css Reset*/

html,
body,
div,
span,
applet,
object,
iframe,
h1,
h2,
h3,
h4,
h5,
h6,
p,
blockquote,
pre,
a,
abbr,
acronym,
address,
big,
cite,
code,
del,
dfn,
em,
img,
ins,
kbd,
q,
s,
samp,
small,
strike,
strong,
sub,
sup,
tt,
var,
b,
u,
i,
center,
dl,
dt,
dd,
ol,
ul,
li,
fieldset,
form,
label,
legend,
table,
caption,
tbody,
tfoot,
thead,
tr,
th,
td,
article,
aside,
canvas,
details,
embed,
figure,
figcaption,
footer,
header,
hgroup,
menu,
nav,
output,
ruby,
section,
summary,
time,
mark,
audio,
video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline
}

article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
menu,
nav,
section {
  display: block
}

body {
  line-height: 1
}

ol,
ul {
  list-style: none
}

blockquote,
q {
  quotes: none
}

blockquote:before,
blockquote:after,
q:before,
q:after {
  content: '';
  content: none
}

table {
  border-collapse: collapse;
  border-spacing: 0
}

* {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

/*DISCO BACKGROUND*/
.disco-background {
  position: fixed;
  margin-top:-1%; 
  margin-left: -50%; 
  width: 100vw;
  height: 100vh;
}

/*CONTAINER*/
.container {
  position: relative; 
  width: 100vw;
}

/*HEADER*/
.header{
  display: flex;
  flex-direction: row;
}
.header .logo {
    margin-left: 0;
}
.logo img {
  width: 25vw;
  margin: 30px 0 0 30px;
}
.header .contact {
  margin-top:5%;
margin-left: 60%;
  font-size: 1vw;
  font-family: 'Anonymous Pro', monospace;
  letter-spacing: 1px;
}
.contact:hover {
  font-size: 1.1vw;
}
.contact a {
  color: white;
  text-decoration: none;
}
a:hover {
  text-decoration: none;
}

/*DISCO BALL*/
.container .disco-ball{
  position: relative;
  margin-top: -10%;
}

/*Designer Flexbox*/
.container .designer-flexbox{
  display: flex;
  flex-direction: row;
  justify-content: center;
}
/*DESIGNER*/
.selected-designer {
  display: flex;
  flex-direction: column;
  margin-top: 5%;
  margin-left: 3%;
  color: white;
  font-size: 2vw;
  font-family: 'Anonymous Pro', monospace;
}
.selected-designer .selected-designer-character {
   margin-top: 20%; 
}
.selected-designer .selected-designer-character img {
  height:50vh;
}

/* PROJECT DISPLAY */
.container .designer-flexbox .project-display {
  display: flex;
  flex-direction: column;
  margin-left: 5%; 
   margin-top: 5%; 
  width: 70vw;
  background-color: white;
  box-shadow: inset 0px 10px 10px 0px rgb(166, 166, 166), inset 0px 4px 20px 0 rgb(166, 166, 166);
}

/*BACK button*/
.back-button {
  margin-top: 3%;
  font-size: 1vw;
}
.back-button a {
  color: #9E9E9E;
  text-decoration: none;
}
.back-button a:hover {
  font-size: 1.5vw;
}

/*PROJECTS*/
.container .designer-flexbox .project-display .designer-project-list {
  display: flex;
  flex-direction: row;
   flex-wrap: wrap; 
   justify-content: center;
  font-family: 'Anonymous Pro', monospace;
  color: #9E9E9E;
  font-size: 1vw;
  margin-top: 5%;
}
.designer-project-list a {
  color: #9E9E9E;
  text-decoration: none;
}
.designer-project-list div {
   padding: 20px 80px 10px 10px; 
}
.designer-project-list img {
  padding: 20px 80px 10px 70px;
}


/*REPONSIVE DESIGN */
@media screen and (max-width:640px) {
  /*header*/
  .logo img {
    width: 50vw;
  }
  .header .contact {
    margin-top: 15%;
    margin-left: 20%;
    font-size: 2vw;
  }
  .contact:hover {
    font-size: 2.2vw;
  }
  /*designer flexbox*/
  .container .designer-flexbox{
    flex-direction: column;
  }
  /*designer*/
  .selected-designer {
    margin-top: 6%; 
    font-size: 3vw;
  }
  .selected-designer .selected-designer-character {
     margin-top: 6%; 
  }
  .selected-designer-character img {
    height: 30vh;
  }

  /*projects*/
   .container .designer-flexbox .project-display {
    width: 100vw;
    justify-content: center;
    margin-left: 0;
  }
  .back-button {
    margin-top: 5%;
    font-size: 2.5vw;
  }
  .back-button a:hover {
    font-size: 3vw;
  }
  .container .designer-flexbox .project-display .designer-project-list {
    font-size: 3vw;
     justify-content: center;
 flex-direction: column;  
  }
}
</style>