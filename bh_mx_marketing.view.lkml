include: "//bc360_marketing/*.view.lkml"

view: bh_mx_marketing {
  view_label: "BH - Marketing Insights"
  label: "BH - PPC/Display"
  extends: [mx_marketing_base]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00001' AND
                ap.agency = 'Fluency';;
  }
}
