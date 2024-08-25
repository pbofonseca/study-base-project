with int_client as (
    select
        *
    from {{ ref('int_client') }}
)

select
    *
from int_client