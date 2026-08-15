
-- Use the `ref` function to select from other models

{{ config(
    post_hook=[
        "delete from {{ ref('my_first_dbt_model') }} where id = 1"
    ]
) }}

select *
from {{ ref('my_first_dbt_model') }}
where id = 1

