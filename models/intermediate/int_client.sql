with stg_cliente_info as (
    
    select 
        *
    from {{ ref('stg_cliente_info') }}
)

, stg_cliente as (
    select 
        *
    from {{ ref('stg_clientes') }}
)

, join_table_client as (
    select 
        stgcli.*,
        stgcliinf.ds_profissao,
        stgcliinf.ds_interesses,
        stgcliinf.ds_referencia
    from stg_cliente as stgcli
    inner join stg_cliente_info as stgcliinf
        on (stgcli.id_cliente = stgcliinf.id_cliente)
)

select
    *
from join_table_client