with src_cliente_info as(
    select
        *
    from {{ source('raw_data','cliente_info') }}
)
select
    *
from src_cliente_info