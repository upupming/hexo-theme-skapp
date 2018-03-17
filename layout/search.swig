{% extends '_layout.swig' %}

{% block pageCss %}
    {{ css('scss/views/page/search') }}
{% endblock %}

{% block header %}
    {% include './_partial/common/header.swig' %}
{% endblock %}

{% block main %}
    {% include './_partial/search/main.swig' %}
{% endblock %}

{% block pagejs %}
    <!-- build:js /js/search.js -->
        <script src="/js/libs/axios.min.js"></script>
        <script src="/js/libs/lunr.min.js"></script>
        <script src="/js/page/search.js"></script>
    <!-- endbuild -->
{% endblock %}