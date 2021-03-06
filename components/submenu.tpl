{% for item in site.menuitems %}{% if item.selected? %}{% if editmode %}
<ul id="submenu">
  {% for level2 in item.visible_children %}
  <li{% unless level2.translated? %} class="untranslated"{% endunless %}><a href="{{ level2.url }}"{% unless level2.translated? %} class="fci-editor-menuadd"{% endunless %}>{{ level2.title }}</a></li>
  {% endfor %}
  <li>{% menubtn item.hidden_children %}</li>  
  <li>{% menuadd parent="item" %}</li>
          </ul>
{% else %}
{% if item.children? %}
<ul id="submenu">
  {% for level2 in item.children %}
  <li><a href="{{ level2.url }}">{{ level2.title }}</a></li>
  {% endfor %}
</ul>
{% endif %}
{% endif %}
{% endif %}
{% endfor %}
