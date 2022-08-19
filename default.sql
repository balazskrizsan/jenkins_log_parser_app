create table logs
(
    id              serial
        unique,
    log_external_id int,
    raw_log         text not null,
    is_parsed       bool not null,
    created_at      date
);

create table errors
(
    log_id           int  not null,
    line_number      int  not null,
    error_pattern_id int  not null,
    message          text,
    error_time       date not null,
    raw_line         text not null,
    context          text not null,
    constraint errors_pk
        primary key (log_id, line_number)
);
