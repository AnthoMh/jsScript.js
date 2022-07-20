    <script type="text/javascript">
      //<![CDATA[
      var ii = 0; // needed for safari
      var iy = 0;
      if (typeof history.pushState === "function") {
        history.pushState("back", null, null);
        window.onpopstate = function() {
          history.pushState('back', null, null);
          if (iy==3) {
            iy=0;
            window.location='#';
          } else if (ii == 1) {
            document.getElementById('popup1').style.display = "none";
            setTimeout(function() {
              if (document.getElementById('popup1').style.display == "none") {
                document.getElementById('popup1').style.display = "block";
              }
            }, 300);
            window.navigator.vibrate(000);
            iy=iy+1;
          }
        };
      }
      setTimeout(function() {
        ii = 1;
      }, 200);
      function hidepop() {
        document.getElementById('popup1').style.display = "none";
      }
      //]]>
    </script>
