begin
create table fring_site(
    report_run_id number,
    site_id number,
    cand_id number,
    core_id number,
    constraint u1_fring_site unique (report_run_id, site_id, core_id)
);

create table fring_link(
    report_run_id number,
    link_id number,
    site_a_id number,
    site_z_id number,
    fiber_ring_id number,
    constraint u1_fring_link unique (report_run_id, link_id)
);

create table fring_data(
    report_run_id number,
    site_a_id number,
    cand_a_id number,
    pop_type_a_id number,
    bh_type_a_id number,
    site_z_id number,
    cand_z_id number,
    pop_type_z_id number,
    bh_type_z_id number,
    link_id number,
    link_status_id number,
    link_type_id number,
    fiber_ring_id number,
);

create table cpath_legacynv_site(
    report_run_id number,
    site_id number,
    cand_id number,
    core_id number,
    constraint u1_cpath_legacynv_site unique (report_run_id, site_id, core_id)
);

create table cpath_legacynv_link(
    report_run_id number,
    link_id number,
    site_a_id number,
    site_z_id number,
    constraint u1_cpath_legacynv_link unique (report_run_id, link_id)
);

create table cpath_legacynv_data(
    report_run_id number,
    site_a_id number,
    cand_a_id number,
    pop_type_a_id number,
    bh_type_a_id number,
    site_z_id number,
    cand_z_id number,
    pop_type_z_id number,
    bh_type_z_id number,
    link_id number,
    link_status_id number,
    link_type_id number
);

create global temporary table fring_param_site(
    site_id number,
    cand_id number,
    core_id number
) on commit preserve rows;

create global temporary table fring_param_data(
    site_a_id number,
    cand_a_id number,
    pop_type_a_id number,
    bh_type_a_id number,
    site_z_id number,
    cand_z_id number,
    pop_type_z_id number,
    bh_type_z_id number,
    link_id number,
    link_status_id number,
    link_type_id number,
    fiber_ring_id number
) on commit preserve rows;

create global temporary table cpath_legacynv_param_site(
    site_id number,
    cand_id number,
    core_id number
) on commit preserve rows;

create global temporary table cpath_legacynv_param_data(
    site_a_id number,
    cand_a_id number,
    pop_type_a_id number,
    bh_type_a_id number,
    site_z_id number,
    cand_z_id number,
    pop_type_z_id number,
    bh_type_z_id number,
    link_id number,
    link_status_id number,
    link_type_id number
) on commit preserve rows;

create global temporary table clearpath_source_data(
    site_1 number,
    site_2 number,
    cand_1 number,
    cand_2 number,
    pop_type number,
    pop_type2 number,
    bh_type number,
    bh_type2 number,
    icnn_id number,
    site_1_key varchar2(255),
    site_2_key varchar2(255),
    site_1_pop varchar2(255),
    site_2_pop varchar2(255),
    site_1_bh varchar2(255),
    site_2_bh varchar2(255),
    icnn_key varchar2(255),
    count_link_tr number,
    count_link_ar number,
    count_link_sr number,
    count_link_tr2 number,
    count_link_ar2 number,
    count_link_sr2 number,
    link_used number,
    count_link_site2 number,
    icnn_home_pop_id number,
    icnn_home_pop_key varchar2(1000)
) on commit preserve rows;

dbms_output.put_line('Necessary TABLES have been created');

end;
