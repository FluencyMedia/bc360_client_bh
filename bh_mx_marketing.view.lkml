include: "//bc360_marketing/**/*.view.lkml"

view: bh_mx_marketing {
  view_label: "BH - Marketing Insights"
  label: "BH - PPC/Display Combined"
  extends: [mx_marketing]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            ROW_NUMBER() OVER () row_id,
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00001' AND
                ap.agency = 'Fluency' AND
                mxmmd.date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), MONTH), INTERVAL 1 DAY);;
          partition_keys: ["date"]
  }

  dimension: row_id {
    primary_key: yes
    sql: ${TABLE}.row_id ;;
  }
}

view: bh_mx_marketing_ppc {
  view_label: "BH - Marketing Insights"
  label: "BH - PPC Only"
  extends: [bh_mx_marketing]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            ROW_NUMBER() OVER () row_id,
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00001' AND
                ap.agency = 'Fluency' AND
                mxmmd.medium = 'PPC' AND
                mxmmd.date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), MONTH), INTERVAL 1 DAY);;
      partition_keys: ["date"]
    }

  dimension: row_id {
    primary_key: yes
    sql: ${TABLE}.row_id ;;
  }
}

view: bh_mx_marketing_display {
  view_label: "BH - Marketing Insights"
  label: "BH - Display Only"
  extends: [bh_mx_marketing]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            ROW_NUMBER() OVER () row_id,
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00001' AND
                ap.agency = 'Fluency' AND
                mxmmd.medium = 'Display' AND
                mxmmd.date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), MONTH), INTERVAL 1 DAY);;
      partition_keys: ["date"]
    }

  dimension: row_id {
    primary_key: yes
    sql: ${TABLE}.row_id ;;
  }
}
