
{#render  the widget admin menu partial view#}
{{ partial("shared/_adminWidgetMenu") }}

<h1 class="orange">All Articles</h1><br>

{#Output flash messages if there are any#}
{{ partial("shared/_flashMessageOutput") }}

{#Built the article table#}
{% if articles is defined and articles | length > 0 %}
    <table class="table table-striped table-hover mouse-clickable table-dtt">
        <thead>
        <tr>
            <th>Publication Date</th>
            <th>Article</th>
        </tr>
        </thead>
        <tbody>
        {% for article in articles %}
            <tr class="articleTableRow" data-articleId="{{ article.id }}">
                <td>{{ article.creationDate }}</td>
                <td>{{ article.title }}</td>

            </tr>
        {% endfor %}

        </tbody>
    </table>

{% endif %}

{#Show the amount of articles#}
 {% if articles | length > 0 %}
     <p>{{ articles | length }} articles in total.</p>
 {% else %}
     <p>No articles found</p>
 {% endif %}


{{ linkto("article/create", "Add a New Article") }}

