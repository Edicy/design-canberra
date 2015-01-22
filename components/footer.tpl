<div id="footer" class="clearfix">
  <div class="clearer"></div>
      <div id="footer_inner" class="clearfix content-hyphenate">
        {% content name="footer" xpage="true" %}
      </div> <!-- //footer_inner -->
      
      <div id="edicy">
        {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
      </div> <!-- //edicy -->
    </div>

