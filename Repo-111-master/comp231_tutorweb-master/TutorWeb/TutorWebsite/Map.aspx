<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master"  CodeFile="Map.aspx.cs" Inherits="Map" %>

<asp:Content ID="subject" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <script type="text/javascript">
    var locations = [
      ['Bondi Beach', -33.890542, 151.274856, 4],
      ['Coogee Beach', -33.923036, 151.259052, 5],
      ['Cronulla Beach', -34.028249, 151.157507, 3],
      ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
      ['Maroubra Beach', -33.950198, 151.259302, 1]
    ];

    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 10,
      center: new google.maps.LatLng(-33.92, 151.25),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) { 
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
  </script>


    <div id="map" style="height: 400px; width: 500px;">
     
    <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d92381.54072446897!2d-79.53586538820717!3d43.649767265459!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1ssecondary+school!5e0!3m2!1sen!2sca!4v1521837381202" width="600" height="600" style="border:0"></iframe>

</div>
</asp:Content>