<template>
  <div>

    <!-- Disco background-->
    <iframe class="disco-background" v-bind:src="discoBackground_iframeURL"> </iframe>

    <div class="container">
      <!-- Header -->
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
      <div class="selected-designer" v-for="info in selectedProject.owners">
      <router-link v-bind:to="'/game-design-designer/' + featuredDesigner.webID">
        <div class="selected-designer-info">
          {{ info.display_name }}
        </div>
        <div class="selected-designer-character" v-bind="getCharacterImage(info)">
          <img v-bind:src="featuredDesigner.characterImage">
        </div>
        </router-link>
      </div>

      <!-- Grey project display placeholder -->
      <div class="project-display">
        <!--Back button-->
        <div class="back-button">
          <router-link v-bind:to="'/game-design-designer/' + featuredDesigner.webID">
            <!--fontawsome back button icon - copyright to "http://fontawesome.io/icon/chevron-left/"-->
            <i class="fa fa-chevron-left" aria-hidden="true"></i>&nbsp; back
          </router-link>
        </div>

        <!-- Selected Project details-->
        <div class="selected-project">
          <h1> {{ selectedProject.name }} </h1>
          <div class="selected-project-description"> {{ selectedProject.description }} </div>
          <br/>
          <div class="projectStats">
            <div><img src="../../images/jay/behanceViewsIcon.png"> {{ selectedProject.stats.views}} </div>
            <div><img src="../../images/jay/behanceLikesIcon.png"> {{ selectedProject.stats.appreciations }} </div>
            <div><img src="../../images/jay/behanceCommentsIcon.png"> {{ selectedProject.stats.comments}} </div>
          </div>

          <div class="selected-project-content" v-for="module in selectedProject.modules">
            <br/>
            <h2>{{ module.text_plain }}</h2>
            <img v-bind:src="module.src">
          </div>
        </div>

      </div>

    </div>

    </div>

  </div>
</template>

<script>
export default {
  name: 'gameDesignProject',
  props: ['selectedProjectID'],
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

      selectedProject: [],
      featuredDesigner: ''
    }
  },

  created: function() {
    //Alternative API key: fBD5wQDeHCclck9MRpwifajnEDIz4KzA
    this.$http.jsonp('https://api.behance.net/v2/projects/' + this.selectedProjectID + '?&api_key=gUWR7I82EI6YUyylsJ4UwaratHObuX6Y').then(response => {
      this.selectedProject = response.body.project;
    });
  },

  methods: {
    getCharacterImage: function(info) {
      for (var i = 0; i < this.designers.length; i++) {
        if (info.display_name == this.designers[i].fullName) {
          this.featuredDesigner = this.designers[i];
        }
      }
    }
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
.selected-designer a{
  color: white;
  text-decoration: none;
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

/*PROJECT*/
.container .designer-flexbox .project-display .selected-project {
  display: flex;
  flex-direction: column;
  justify-content: center;
  font-family: 'Anonymous Pro', monospace;
  font-size: 1vw;
}
.selected-project h1 {
  margin-top: 3%;
  font-size: 2vw;
  color: #9E9E9E;
}
.projectStats {
  display: flex;
  align-items: flex-end;
  justify-content: center;
  color: #9E9E9E;
}
.projectStats div {
  padding-right: 30px;
}
.projectStats img {
  width: 2.2vw;
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
   .container .designer-flexbox .project-display  {
    margin-left: 0;
    justify-content: center;
    width: 100vw;
  }
  .back-button {
    margin-top: 5%;
    font-size: 3vw;
  }
  .back-button a:hover {
    font-size: 4vw;
  }
.container .designer-flexbox .project-display .selected-project {
    font-size: 3vw;
  }
  .container .designer-flexbox .project-display .selected-project h1 {
    margin-top: 5%;
    font-size: 4vw;
  }
  .projectStats img {
    width: 5vw;
  }
  .container .designer-flexbox .project-display .selected-project .selected-project-content{
    display: flex;
    justify-content: center;
    text-align: center;
padding: 20px 20px 20px 20px;
    }
}
</style>