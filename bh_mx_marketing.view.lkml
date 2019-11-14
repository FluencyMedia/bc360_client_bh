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
            mxmmd.*,
            dc.creative,
            dc.creative_package,
            dc.creative_format,
            dc.tagline,
            dc.cta,
            dc.filename
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          LEFT JOIN mx_marketing.facts_creative_display dc USING (creative_id)
          WHERE ac.client_id = 'CLIENT-00001' AND
                ap.agency = 'Fluency' AND
                mxmmd.medium = 'Display' AND
                mxmmd.date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), MONTH), INTERVAL 1 DAY) AND
                mxmmd.date >= DATE(2019,01,01);;
      partition_keys: ["date"]
    }

  dimension: row_id {
    primary_key: yes
    hidden: yes

    sql: ${TABLE}.row_id ;;
  }

  dimension: creative_id {
    group_label: "Z - Metadata"
    label: "Creative ID"
    description: "Asset ID [KORTX Pass-through]"

    type: number
    sql: ${TABLE}.creative ;;
  }


  dimension: creative {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative"
    description: "Asset Filename [KORTX Pass-through]"

    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: creative_filename {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Filename"
    description: "Actual .JPG filename"

    type: string
    sql: IFNULL(${TABLE}.filename, ${TABLE}.creative) ;;

    html: <img src="https://storage.cloud.google.com/bc360_source_assets_display/{{value}}" style="max-height: 150px; max-width: 100px;"/> ;;
    link: {
      url: "https://storage.cloud.google.com/bc360_source_assets_display/{{value}}"
    }
  }

  dimension: creative_package {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Package"
    description: "Overall creative package within campaign"

    type: string
    sql: IFNULL(${TABLE}.creative_package, "(No Package)") ;;
  }

  dimension: tagline {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Tagline"
    description: "Overall creative package within campaign"

    type: string
    sql: IFNULL(${TABLE}.tagline, "(No Tagline)") ;;
  }

  dimension: cta {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative CTA"
    description: "Specific CTA included in ad"

    type: string
    sql: IFNULL(${TABLE}.cta, "(No CTA)") ;;
  }

  dimension: creative_format {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Format"
    description: "Pixel Dimensions of Creative Asset"

    type: string
    sql: IFNULL(${TABLE}.creative_format, "(Format Unknown)") ;;
    }

}
