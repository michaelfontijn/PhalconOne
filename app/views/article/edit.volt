

{#render  the widget admin menu partial view#}
{{ partial("shared/_adminWidgetMenu") }}

<h1 class="orange">Edit Article</h1>

<div class="articleForm">
    {{ form('article/edit/' ~ article.id ) }}

    {#Load in the form inputs#}
    {{ partial("article/_form") }}

    {#The publishing date#}
    {% if article.creationDate is defined %}
        <div class="form-group row">
            <label for="creationDate" class="col-md-2 col-form-label">Publication Date</label>
            <div class="col-md-10">
                {{ date_field('creationDate','value' : article.creationDate, 'class' : 'form-control','disabled') }}
            </div>
        </div>
    {% endif %}

    <div class="col-md-8 offset-2 center-text">
        {{ submit_button('Save changes', 'class' : 'btn btn-custom col-md-3 btnLogin') }}
        {{ link_to("article", "cancel", 'class' :'btn btn-custom col-md-3') }}
    </div>

    {{ end_form() }}
</div>

<br>
{#The delete button#}
{{ link_to("article/delete/" ~ article.id, "Delete This Article") }}





