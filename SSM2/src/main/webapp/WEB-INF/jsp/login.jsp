<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>登录界面</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/style1.css">
  <style>
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;

    }
    .header p {
      font-size: 14px;
    }
  </style>
</head>

<script>
  // 判断是登录账号和密码是否为空
  function check(){
    var user_code = $("#user_code").val();
    var user_password = $("#user_password").val();
    if(user_code=="" || user_password==""){
      $("#message").text("账号或密码不能为空！");
      return false;
    }
    return true;
  }
</script>
<body>


<!-- partial:index.partial.html -->
<!-- svg describing the loader -->
<svg viewBox="0 0 250 250" width="300" height="300">
  <defs>
    <!-- clip to crop the circle and ellipse elements in the body of the droid -->
    <clipPath id="body">
      <circle
              cx="0"
              cy="0"
              r="33.75">
      </circle>
    </clipPath>

    <!-- clip to crop the circle fabricating the reflection -->
    <clipPath id="len">
      <circle
              cx="0"
              cy="16.5"
              r="6.75">
      </circle>
    </clipPath>

    <!-- linear gradient used for the reflection on the lens of the droid
        ! specify a repeating linear gradient with a partial end value (x2, y2) and the appropriate spread method
    -->
    <linearGradient
            id="lens"
            x1="0"
            x2="0.25"
            y1="0"
            y2="0.25"
            spreadMethod="repeat">
      <stop offset="0" stop-color="transparent"></stop>
      <stop offset="0.5" stop-color="transparent"></stop>
      <stop offset="0" stop-color="#fff"></stop>
      <stop offset="1" stop-color="#fff"></stop>
    </linearGradient>

    <!-- dashes replicated to the side of the droid -->
    <path
            id="dash"
            stroke-dasharray="20 4 2"
            d="M 0 0 h 26">
    </path>
    <path
            id="dash--small"
            d="M 0 0 h 8">
    </path>

    <!-- particle replicated to the side of the droid -->
    <!-- the fill and stroke are specified in the <use> element, alongside a transform attribute changing the scale of the element -->
    <path
            id="particle"
            d="M 0 -2 a 5 5 0 0 0 0 4 a 5 5 0 0 0 0 -4 m -2 2 a 5 5 0 0 0 4 0 a 5 5 0 0 0 -4 0">
    </path>
  </defs>

  <!-- group describing the ground -->
  <g
          fill="none"
          stroke="#254256"
          stroke-width="2.5"
          stroke-linecap="round"
          stroke-linejoin="round"
          transform="translate(0 152.5)">
    <!-- translate at the bottom of the robot -->
    <g id="ground" class="ground"><!-- translate this group to give the illusion of movement -->
      <!-- ! include an id to replicate the group through a <use> tag -->
      <path
              stroke-dasharray="40 6 6 6 120 6 40 6 6"
              d="M 1.25 0 h 20 a 3 3 0 0 1 6 0 h 160 a 3 3 0 0 1 6 0 h 55.5">
      </path>
      <g transform="translate(0 20)">
        <path
                stroke-dasharray="30 15 50"
                d="M 60 0 h 8 a 3 3 0 0 1 6 0 h 50 a 3 3 0 0 1 6 0 h 10">
        </path>
        <g transform="translate(0 20)">
          <path
                  d="M 85 0 h 15 a 3 3 0 0 1 6 0 h 7">
          </path>
        </g>
      </g>
    </g>
    <!-- replicate the ground and position the copy outside of the viewBox
    by translating the group consistently to 250 the ground seems to continue endlessly
    -->
    <use href="#ground" transform="translate(-250 0)"></use>
  </g>

  <!-- group describing the particles
      ! the particles are actually included in two groups, one before the droid, one after it
      by sharing the class name the groups are however moved in unison
  -->
  <g
          fill="none"
          stroke="#254256"
          stroke-width="2.5"
          stroke-linecap="round"
          stroke-linejoin="round"
          transform="translate(86 56)">
    <!-- translate at the top of the robot when leaning toward the left -->
    <!-- add a negative delay to separate the introduction of the dashes -->
    <g>
      <use
              href="#dash"
              class="dash"
              style="animation-delay: -0.75s">
      </use>
      <g transform="translate(10 15)">
        <use
                href="#dash"
                class="dash"
                style="animation-delay: -0.6s">
        </use>
      </g>

      <!-- colored particles
          wrap <use> elements in groups to position and change the transform-origin
          add transform="scale()" attributes to the same elements to have particles of different sizes
          wrap particles of the same color in group elements to share the fill and stroke values
      -->
      <g
              fill="#FF7761"
              stroke="#FF7761">
        <g transform="translate(10 7.5)">
          <use
                  style="animation-delay: -0.8s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.9)">
          </use>
        </g>
        <g transform="translate(80 50)">
          <use
                  style="animation-delay: -0.5s;"
                  href="#particle"
                  class="particle"
                  transform="scale(1.2)">
          </use>
        </g>
        <g transform="translate(95 40)">
          <use
                  style="animation-delay: -0.4s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.6)">
          </use>
        </g>
        <g transform="translate(115 58)">
          <use
                  style="animation-delay: -0.25s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.6)">
          </use>
        </g>
        <g transform="translate(100 65)">
          <use
                  style="animation-delay: -0.37s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.5)">
          </use>
        </g>
        <g transform="translate(65 78)">
          <use
                  style="animation-delay: -0.55s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.7)">
          </use>
        </g>
        <g transform="translate(30 90)">
          <use
                  style="animation-delay: -0.7s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.7)">
          </use>
        </g>
      </g>

      <g
              fill="#FDC33E"
              stroke="#FDC33E">
        <g transform="translate(60 18)">
          <use
                  style="animation-delay: -0.62s;"
                  href="#particle"
                  class="particle"
                  transform="scale(1.1)">
          </use>
        </g>
        <g transform="translate(40 40)">
          <use
                  style="animation-delay: -0.75s;"
                  href="#particle"
                  class="particle"
                  transform="scale(1)">
          </use>
        </g>
        <g transform="translate(100 40)">
          <use
                  style="animation-delay: -0.25s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.5)">
          </use>
        </g>
        <g transform="translate(90 52)">
          <use
                  style="animation-delay: -0.34s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.85)">
          </use>
        </g>
        <g transform="translate(65 68)">
          <use
                  style="animation-delay: -0.55s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.6)">
          </use>
        </g>
      </g>

      <g
              fill="#449AAB"
              stroke="#449AAB">
        <g transform="translate(20 25)">
          <use
                  style="animation-delay: -0.8s;"
                  href="#particle"
                  class="particle"
                  transform="scale(1.3)">
          </use>
        </g>
      </g>
      <g
              fill="#39B4C1"
              stroke="#39B4C1">
        <g transform="translate(28 12)">
          <use
                  style="animation-delay: -0.88s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.8)">
          </use>
        </g>
        <g transform="translate(46 58)">
          <use
                  style="animation-delay: -0.66s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.75)">
          </use>
        </g>
        <g transform="translate(30 80)">
          <use
                  style="animation-delay: -0.74s;"
                  href="#particle"
                  class="particle"
                  transform="scale(0.75)">
          </use>
        </g>
      </g>
    </g>
  </g>

  <!-- graphic describing bb-8
      bb-8 occupies in a 70x100 rectangle
      70x100 plus the 2.5 given by the width of the stroke
  -->

  <!-- translate the graphic half the stroke size, to work in a 70x100 box
      the values cascade to the nested elements, and are overwritten where needed
  -->
  <g
          fill="#EBF2FB"
          stroke="#254256"
          stroke-width="2.5"
          stroke-linecap="round"
          stroke-linejoin="round"
          transform="translate(1.25 1.25)">
    <!-- translate 100 (125 to center, -25 to offset the imbalance introduced by the translation) left and 50 down -->
    <g transform="translate(100 50)">
      <!-- include group elements to move the transform-origin at the bottom of the graphic -->
      <g transform="translate(0 65)">
        <g class="bb8-base" transform="translate(0 0) rotate(-40)"><!-- translate and rotate this group to have the droid lean from the center -->
          <g transform="translate(0 -65)">
            <!-- body -->
            <g transform="translate(0 65)">
              <g class="bb8-center"><!-- rotate this group to have the body rotate from its center -->
                <circle
                        cx="0"
                        cy="0"
                        r="35">
                </circle>
                <!-- apply the clip on the elements inside the body -->
                <g clip-path="url(#body)">
                  <!-- line connecting the center of the circle and ellipse elements -->
                  <path
                          fill="none"
                          d="M -15 -25 L 35 0 L -5 28 z">
                  </path>
                  <!-- for the circle and larger ellipse specify two copies, one with a smaller radius to create a donut shape -->
                  <circle
                          fill="#FEC140"
                          cx="-15"
                          cy="-25"
                          r="22">
                  </circle>
                  <circle
                          cx="-15"
                          cy="-25"
                          r="9">
                  </circle>

                  <ellipse
                          fill="#FEC140"
                          cx="35"
                          cy="0"
                          ry="30"
                          rx="10">
                  </ellipse>

                  <ellipse
                          fill="#FEC140"
                          cx="-5"
                          cy="28"
                          rx="20"
                          ry="18">
                  </ellipse>
                  <ellipse
                          cx="-5"
                          cy="28"
                          rx="8"
                          ry="7.2">
                  </ellipse>
                  <!-- dots included sparingly between the circle and ellipse elements -->
                  <circle
                          fill="#254256"
                          stroke="none"
                          cx="7"
                          cy="1"
                          r="2">
                  </circle>
                  <circle
                          fill="#254256"
                          stroke="none"
                          cx="-22"
                          cy="4.5"
                          r="2">
                  </circle>
                  <!-- above the elements fabricating the body include two arcs to create a shadow -->
                  <g stroke="none" fill="#254256" opacity="0.2">
                    <path
                            d="M -45 0 a 45 45 0 0 1 90 0 a 55 55 0 0 0 -90 0">
                    </path>
                    <path
                            transform="rotate(-15)"
                            d="M -35 0 a 35 35 0 0 0 70 0 a 37 37 0 0 1 -70 0">
                    </path>
                  </g>
                </g>
              </g>
            </g>
            <!-- head -->
            <g>
              <path
                      d="M -29 29 l 6 8 h 46 l 6 -8 a 29 29 0 0 0 -58 0">
              </path>
              <!-- above the contour of the head include path elements to fabricate the presence of a light source
                                      semi transparent #FFF and #254256 sections covering part of the droid's head
                                      -->
              <g stroke="none">
                <path
                        opacity="0.85"
                        fill="#fff"
                        d="M 0 1.25 a 27.75 27.75 0 0 0 -27.75 27.25 h 5 a 27.5 27.5 0 0 1 22.75 -27.25">
                </path>
                <path
                        opacity="0.15"
                        fill="#254256"
                        d="M 0 1.25 a 27.75 27.75 0 0 1 27.75 27.25 h -5 a 27.5 27.5 0 0 0 -22.75 -27.25">
                </path>
                <path
                        opacity="0.25"
                        fill="#254256"
                        d="M -27.75 28.5 l 6 8 h 43.5 l 6 -8 h -15.25 q -5 0 -5 -10 h -15 q 0 10 -5 10">
                </path>
              </g>
              <!-- for the lens include a copy of the circle using the gradient fabricating the reflection -->
              <circle
                      cx="0"
                      cy="16.5"
                      r="8"
                      fill="#295A6E">
              </circle>
              <!-- apply a clip path on the lens' reflection to crop the circle as it translates outside of the lens itself -->
              <g clip-path="url(#len)">
                <g class="reflection"><!-- translate this group to move the reflection in and out of sight -->
                  <circle
                          cx="0"
                          cy="16.5"
                          r="8"
                          fill="url(#lens)"
                          opacity="0.1">
                  </circle>
                </g>
              </g>

              <!-- smaller circle for the smaller lens -->
              <circle
                      cx="17"
                      cy="24"
                      r="3"
                      stroke="none"
                      fill="#254256">
              </circle>
            </g>
          </g>
        </g>
      </g>
    </g>
  </g>

  <!-- group describing the dashes above bb-8 -->
  <g
          fill="none"
          stroke="#254256"
          stroke-width="2.5"
          stroke-linecap="round"
          stroke-linejoin="round"
          transform="translate(102 77)"><!-- translate at the top of the robot when leaning toward the left -->
    <g>
      <!-- animate the dashes like the larger counterpart -->
      <use
              class="dash"
              href="#dash--small"
              style="animation-delay: -0.56s">
      </use>
      <g transform="translate(28 47)">
        <use
                class="dash"
                href="#dash--small"
                style="animation-delay: -0.4s">
        </use>
        <g transform="translate(5 5)">
          <use
                  class="dash"
                  href="#dash--small"
                  style="animation-delay: -0.34s">
          </use>
          <g transform="translate(13 0)">
            <use
                    class="dash"
                    stroke-dasharray="3 5"
                    href="#dash--small"
                    style="animation-delay: -0.3s">
            </use>
          </g>
        </g>
      </g>
    </g>
  </g>
</svg>
<!-- partial -->
<script  src="assets/js/script.js"></script>




    <br>
    <br>

    <fieldset style="width: auto; margin: 0px 10px;">
      <font color="red">
        <%-- 提示信息--%>
        <span id="message">${msg}</span>
      </font>
    <form action="${pageContext.request.contextPath }/login.action"
          method="post" onsubmit="return check()">
    <%--<form method="post" class="am-form">--%>
      <label for="user_code">邮箱:</label>
      <input type="email" name="user_code" id="user_code" >
      <br>
      <label for="user_password">密码:</label>
      <input type="password" name="user_password" id="user_password" >
      <br>
      <br>
      <center><input  type="submit" value="登录" /></center>
    </form>
    </fieldset>
  </div>
</div>
</body>
</html>