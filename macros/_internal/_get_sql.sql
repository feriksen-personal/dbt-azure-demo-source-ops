{#
  Internal helper macro to load SQL files with adapter detection.

  Automatically routes to the correct SQL directory based on the current
  target adapter type (duckdb vs sqlserver).

  Args:
    path (str): Relative path to SQL file within the adapter directory,
                without .sql extension. Examples:
                - 'baseline/shop_schema'
                - 'deltas/day_01_shop'
                - 'utilities/truncate_crm'

  Returns:
    str: Contents of the SQL file

  Raises:
    Compilation error if file not found

  Example usage:
    {% set sql = demo_source_ops._get_sql('baseline/shop_schema') %}
    {% do run_query(sql) %}

  File structure:
    data/
      ├── duckdb/
      │   ├── baseline/shop_schema.sql
      │   └── deltas/day_01_shop.sql
      └── azure/
          ├── baseline/shop_schema.sql
          └── deltas/day_01_shop.sql
#}

{% macro _get_sql(path) %}
  {# Route to adapter-specific SQL macros #}
  {% if target.type == 'duckdb' %}
    {% if path == 'baseline/shop_schema' %}
      {{ return(demo_source_ops._get_duckdb_baseline_shop_schema()) }}
    {# Baseline shop - table-specific #}
    {% elif path == 'baseline/shop_customers' %}
      {{ return(demo_source_ops._get_duckdb_baseline_shop_customers()) }}
    {% elif path == 'baseline/shop_products' %}
      {{ return(demo_source_ops._get_duckdb_baseline_shop_products()) }}
    {% elif path == 'baseline/shop_orders' %}
      {{ return(demo_source_ops._get_duckdb_baseline_shop_orders()) }}
    {% elif path == 'baseline/shop_order_items' %}
      {{ return(demo_source_ops._get_duckdb_baseline_shop_order_items()) }}
    {% elif path == 'baseline/crm_schema' %}
      {{ return(demo_source_ops._get_duckdb_baseline_crm_schema()) }}
    {# Baseline CRM - table-specific #}
    {% elif path == 'baseline/crm_campaigns' %}
      {{ return(demo_source_ops._get_duckdb_baseline_crm_campaigns()) }}
    {% elif path == 'baseline/crm_email_activity' %}
      {{ return(demo_source_ops._get_duckdb_baseline_crm_email_activity()) }}
    {% elif path == 'baseline/crm_web_sessions' %}
      {{ return(demo_source_ops._get_duckdb_baseline_crm_web_sessions()) }}
    {% elif path == 'utilities/truncate_shop' %}
      {{ return(demo_source_ops._get_duckdb_utilities_truncate_shop()) }}
    {% elif path == 'utilities/truncate_crm' %}
      {{ return(demo_source_ops._get_duckdb_utilities_truncate_crm()) }}
    {% elif path == 'deltas/day_01_shop' %}
      {{ return(demo_source_ops._get_duckdb_deltas_day_01_shop()) }}
    {% elif path == 'deltas/day_01_crm' %}
      {{ return(demo_source_ops._get_duckdb_deltas_day_01_crm()) }}
    {% elif path == 'deltas/day_02_shop' %}
      {{ return(demo_source_ops._get_duckdb_deltas_day_02_shop()) }}
    {% elif path == 'deltas/day_02_crm' %}
      {{ return(demo_source_ops._get_duckdb_deltas_day_02_crm()) }}
    {% elif path == 'deltas/day_03_shop' %}
      {{ return(demo_source_ops._get_duckdb_deltas_day_03_shop()) }}
    {% elif path == 'deltas/day_03_crm' %}
      {{ return(demo_source_ops._get_duckdb_deltas_day_03_crm()) }}
    {% else %}
      {{ exceptions.raise_compiler_error("Unknown DuckDB SQL path: " ~ path) }}
    {% endif %}
  {% else %}
    {# Azure SQL - to be implemented later #}
    {{ exceptions.raise_compiler_error("Azure SQL adapter not yet implemented") }}
  {% endif %}
{% endmacro %}
