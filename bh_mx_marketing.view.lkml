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
            dc.test_variation,
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


  dimension: creative_name {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Name"
    description: "Asset Filename [KORTX Pass-through]"

    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: creative_filename {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Filename"
    description: "Actual .JPG file (No Path)"

    type: string
    sql: IFNULL(${TABLE}.filename, ${TABLE}.creative) ;;
    }

  dimension: creative_thumb_dim {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Thumb"
    description: "Actual .JPG file"

    type: string
    sql: ${creative_filename} ;;

    html: <img src="https://storage.cloud.google.com/bc360_source_assets_display/{{value}}" style="max-height: 150px; max-width: 150px;"/> ;;

  }

  dimension: creative_thumb_box {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Combo Box"
    description: "Combo Box: Image | Tagline | CTA"

    type: string
    sql: ${creative_filename} ;;

    html: <div style="width: 100%; height: 150px; overflow: hidden; align-items: center;">
            <div style="font-variant: small-caps; font-weight: bold; font-size: 9px; padding:0px 5px;">{{creative_package._value}}</div>
            <div style="height: 150px; width: 150px; display:table-cell; vertical-align:middle; text-align:center; float:left;">
              <img src="https://storage.cloud.google.com/bc360_source_assets_display/{{value}}" style="max-height: 150px; max-width: 150px;"/>
            </div>
            <div style="margin-left: 175px">
              <div style="font-style: italic; padding: 1px 5px; color: #333; background-color: #ccc;">{{tagline._value}}</div>
              <div style="font-weight: bold; padding: 1px 5px; color: #ddd; background-color: #333;">{{cta._value}}</div>
            </div>
          </div>;;
  }

  measure: creative_combo_boxes {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Combo Boxes"
    description: "Combo Box: Image | Tagline | CTA"

    type:  list
    list_field: creative_thumb_box
  }

  measure: creative_thumbs_mx {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Thumbs"
    description: "Displays list of relevant thumbnails"

    type: list
    list_field: creative_thumb_dim

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

  dimension: test_variation {
    view_label: "3. Channel"
    group_label: "Creative Details"
    label: "Creative Test"
    description: "Label for Test set"

    type: string
    sql: IFNULL(${TABLE}.test_variation, "(No Test)") ;;
    }

}
