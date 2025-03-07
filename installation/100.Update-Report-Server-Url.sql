begin

    update report_files
       set post_processor_cmd = replace(post_processor_cmd, 'http://dev2.vqs.net:8080', pkg_rpt.get_app_server_url)
     where post_processor_cmd is not null
       and report_name like 'VHMGR: MW Backhaul%';
   
    dbms_output.put_line('Server URL has been adjusted for reports.');
end;