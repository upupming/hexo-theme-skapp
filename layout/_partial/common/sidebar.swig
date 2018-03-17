<aside class="page__sidebar">

    {# qrcode or avatar #}
    <!-- {% if get_setting('qrcode', 'avatar') %}
        <div class="sidebar__img">
            <img src="{{ get_setting('qrcode', 'avatar') }}" alt="{{ get_setting('title') }}" title="{{ get_setting('title') }}">
        </div>
    {% endif %} -->

     {#table of content#}
    {#{% set display_toc = is_post and theme.toc.enable or is_page and theme.toc.enable %}#}
    {#{% if display_toc and toc(page.content).length > 1 %}#}
        {#<!--noindex-->#}
        {#<section class="post-toc-wrap motion-element sidebar-panel sidebar-panel-active">#}
            {#<div class="post-toc">#}

                {#{% if page.toc_number === undefined %}#}
                     {#使用_config.yml中的配置，是否加入编号#}
                    {#{% set toc = toc(page.content, { "class": "nav", list_number: theme.toc.number }) %}#}
                {#{% else %}#}
                    {#{% set toc = toc(page.content, { "class": "nav", list_number: page.toc_number }) %}#}
                {#{% endif %}#}

                {#{% if toc.length <= 1 %}#}
                    {#<p class="post-toc-empty">{{ __('post.toc_empty') }}</p>#}
                {#{% else %}#}
                    {#<div class="post-toc-content">{{ toc }}</div>#}
                {#{% endif %}#}

            {#</div>#}
        {#</section>#}
        {#<!--/noindex-->#}
    {#{% endif %}#}

    <div class="post-toc">
        {{ toc(page.content) }}
    </div>


    {# search #}
    <form id="page-search-from" class="page__search-from" action="/search/">
        <label class="search-form__item">
            <input class="input" type="text" name="search" placeholder="搜索...">
            <i class="iconfont icon-search"></i>
        </label>
    </form>

    {# 简介 #}
    {% if get_setting('description') %}
        <div class="sidebar__block">
            <h3 class="block__title">{{ __('aside.introduction') }}</h3>
            <p class="block__text">{{ get_setting('description') }}</p>
        </div>
    {% endif %}

    {# 文章分类 #}
    <div class="sidebar__block">
        <h3 class="block__title">{{ __('aside.categorie') }}</h3>
        {{ list_categories({ order: -1, class: 'block' }) }}
    </div>

    {# 最新文章 #}
    <div class="sidebar__block">
        <h3 class="block__title">{{ __('aside.latest_post') }}</h3>
        {{ latest_post(4) }}
    </div>

    <div class="sidebar__block">
        <h3 class="block__title">{{ __('aside.tag') }}</h3>
        {{ tags({ order: -1 }) }}
    </div>

    <!-- <div class="sidebar__block">
        <h3 class="block__title">{{ __('aside.friend_links') }}</h3>
        <ul class="block-list">
            {% for item in site.data.link %}
                <li class="block-list-item">
                    <a class="block-list-link" href="{{ item.link }}" title="{{ item.desc }}" target="_blank">{{ item.name }}</a>
                </li>
            {% endfor %}
        </ul>
    </div> -->
</aside>



