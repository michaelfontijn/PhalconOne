
{#render  the widget admin menu partial view#}
{{ partial("shared/_adminWidgetMenu") }}

<h1 class="orange">New article</h1>

{#The article create form#}
<div class="articleForm">
    {{ form('article/create') }}
        {{ partial("article/_form") }}

        <div class="col-md-8 offset-2 center-text">
            {{ submit_button('Save Changes', 'class' : 'btn btn-custom col-md-3') }}
            {{ link_to("article", "cancel", 'class' :'btn btn-custom col-md-3') }}
        </div>
    {{ end_form() }}
</div>





