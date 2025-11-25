{% macro generate_alias_name(custom_alias_name=none, node=this) -%}
   {# Get developer suffix safely #}
   {% set apply_alias_suffix = var('apply_alias_suffix', '') | replace(' ', '') | trim %}

   {# Decide base name #}
   {% if custom_alias_name %}
       {% set base_name = custom_alias_name %}
   {% elif node.version %}
       {% set base_name = node.name ~ "_v" ~ (node.version | replace(".", "_")) %}
   {% else %}
       {% set base_name = node.name %}
   {% endif %}

   {# Only append suffix if not already present #}
   {% if not base_name.endswith(apply_alias_suffix) %}
       {% set final_name = base_name ~ apply_alias_suffix %}
   {% else %}
       {% set final_name = base_name %}
   {% endif %}

   {{ return(final_name) }}
{%- endmacro %}
