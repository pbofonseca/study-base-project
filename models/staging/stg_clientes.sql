with src_clientes as(
    select 
        *
    from {{ source('raw_data','clientes') }}
)
select
    *
from src_clientes