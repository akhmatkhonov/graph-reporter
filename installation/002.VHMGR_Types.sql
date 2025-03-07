create or replace type cpath_pathtopop_link_int force as object (
  link_id number,
  sites   tableofnum
);
/

create or replace type cpath_pathtopop_link_type force as object (
  market_id   number,
  pop_site_id number,
  link_id     number,
  site_id     number
);
/

create or replace type cpath_pathtopop_link_table force
as table of cpath_pathtopop_link_type;
/


create or replace type cpath_pathtopop_path_type force as object (
  market_id         number,
  pop_site_id       number,
  root_site_id      number,
  path_id           number,
  order_number      number,
  site_id           number,
  link_id           number,
  capacity_link_sum number,
  link_count        number,
  link_forecast     number,
  bh_break_link     number,
  bh_break_link_t1  number,
  bh_break_link_t2  number,
  bh_break_link_t3  number
);
/

create or replace type cpath_pathtopop_path_table force
as table of cpath_pathtopop_path_type;
/


create or replace type cpath_rpt_link_type force as object (
  site_1           number,
  site_2           number,
  link_id          number,
  sum_capacity     number,
  link_count       number,
  link_forecast    number,
  bh_break_link    number,
  bh_break_link_t1 number,
  bh_break_link_t2 number,
  bh_break_link_t3 number,
  ring_deep        number,
  ring_class_id    number,
  map
  member
  function MAPRPTLINKTYPE return varchar2
);
/

create or replace type body cpath_rpt_link_type as
  map member function MAPRPTLINKTYPE return varchar2 is
begin
  return site_1 || site_2 || link_id;
end maprptlinktype;
end;
/

create or replace type cpath_rpt_link_table force
as table of cpath_rpt_link_type;
/

create or replace type cpath_rpt_path force as object (
  sites                tableofnum,
  links                cpath_rpt_link_table,
  lvl                  number,
  path_id              number,
  count_break_link_tr  number,
  count_break_link_ar1 number,
  count_break_link_ar2 number,
  count_break_link_sr  number
);
/

create or replace type cpath_rpt_path_table force
as table of cpath_rpt_path;
/

create or replace type cpath_telco_type force as object (
  pop_site_id  number,
  path_id      number,
  site_id      number,
  link_id      number,
  order_number number
);
/

create or replace type cpath_telco_table force
as table of cpath_telco_type;
/

create or replace type t_cpath_legacynv_aug force as object (
  root_id    number,
  site_id    number,
  augment_id number
);
/

create or replace type list_cpath_legacynv_aug force
as table of t_cpath_legacynv_aug;
/

create or replace type t_cpath_legacynv_link force as object (
  link_id   number,
  site_a_id number,
  site_z_id number
);
/

create or replace type list_cpath_legacynv_link force
as table of t_cpath_legacynv_link;
/


create or replace type t_cpath_legacynv_site force as object (
  site_id number,
  cand_id number,
  core_id number
);
/

create or replace type list_cpath_legacynv_site force
as table of t_cpath_legacynv_site;
/

create or replace type t_fring_aug force as object (
  root_id    number,
  site_id    number,
  augment_id number
);
/

create or replace type list_fring_aug force
as table of t_fring_aug;
/


create or replace type t_fring_link force as object (
  link_id       number,
  site_a_id     number,
  site_z_id     number,
  fiber_ring_id number
);
/

create or replace type list_fring_link force
as table of t_fring_link;
/

create or replace type t_fring_site force as object (
  site_id number,
  cand_id number,
  core_id number
);
/

create or replace type list_fring_site force
as table of t_fring_site;
/

create or replace type list_id force
is table of number;
/

create or replace type t_sprint_clrpath force as object (
  pop_site_id   number,
  root_id       number,
  path_id       number,
  ord_num       number,
  site_id       number,
  report_run_id number
);
/

create or replace type list_sprint_clrpath force
as table of t_sprint_clrpath;
/

create or replace type t_sprint_clrpath_admin force as object (
  param_name  varchar2(100),
  param_value varchar2(1000)
);
/

create or replace type list_sprint_clrpath_admin force
as table of t_sprint_clrpath_admin;
/

dbms_output.put_line('Necessary TYPES have been created');