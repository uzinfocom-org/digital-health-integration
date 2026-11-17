(function () {
  var label = document.currentScript.getAttribute('data-label');
  document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('a[href*="lhcformviewer"]').forEach(function (a) {
      var m = /qCanonical=https:\/\/dhp\.uz\/fhir\/integrations\/Questionnaire\/([^&]+)/.exec(a.getAttribute('href'));
      if (!m) return;
      a.href = 'forms.html?form=' + m[1];
      a.textContent = label;
    });
  });
})();
