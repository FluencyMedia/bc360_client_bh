include: "//bc360_marketing/**/*.view.lkml"

view: analyst_notes_bh {
  extends: [list_analyst_notes]

  derived_table: {
    sql: SELECT * FROM mx_marketing.list_analyst_notes WHERE client_id LIKE "CLIENT-00001";;
  }
}
