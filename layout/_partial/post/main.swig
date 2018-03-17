<main class="page__container page__main">
    {# 1. page__content #}
    <div class="page__content">
        {# 1.1 content.swig #}
        {% include './content.swig' %}
        {# 1.2 gitTalk comment #}
        {% if page.comments && config.gitTalk %}
            <div id="comment-container"></div>
        {% endif %}
        {% if page.comments && config.disqus_shortname %}
            <div id="disqus_thread"></div>
        {% endif %}
    </div>

    {# 2. sidebar #}
    {% include '../common/sidebar.swig' %}
</main>