
    create table `administrator` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `announcement` (
       `id` integer not null,
        `version` integer not null,
        `moment` datetime(6),
        `more_info` varchar(255),
        `text` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `anonymous` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `authenticated` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `challenge` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `description` varchar(255),
        `goal_bronze` varchar(255),
        `goal_gold` varchar(255),
        `goal_silver` varchar(255),
        `reward_bronze` varchar(255),
        `reward_gold` varchar(255),
        `reward_silver` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `consumer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `delgado_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `initiative` varchar(255),
        `moment` datetime(6),
        `num_wallet` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `fernandez_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `description` varchar(255),
        `language` varchar(255),
        `moment` datetime(6),
        primary key (`id`)
    ) engine=InnoDB;

    create table `garcia_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `description` varchar(255),
        `moment` datetime(6),
        `sport` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `guerrero_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `description` varchar(255),
        `instrument` varchar(255),
        `moment` datetime(6),
        primary key (`id`)
    ) engine=InnoDB;

    create table `hu_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `description` varchar(255),
        `grade` varchar(255),
        `moment` datetime(6),
        primary key (`id`)
    ) engine=InnoDB;

    create table `investor_records` (
       `id` integer not null,
        `version` integer not null,
        `investing_statements_amount` double precision,
        `investing_statements_currency` varchar(255),
        `name` varchar(255),
        `ratings` double precision,
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `offer` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `moment` datetime(6),
        `text` varchar(255),
        `ticker` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `provider` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `records` (
       `id` integer not null,
        `version` integer not null,
        `ceo` varchar(255),
        `activities` varchar(255),
        `company` varchar(255),
        `email` varchar(255),
        `incorporated` bit,
        `phone` varchar(255),
        `sector` varchar(255),
        `stars` double precision,
        `web` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `request2` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `moment` datetime(6),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        `text` varchar(255),
        `ticker` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `shout` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `moment` datetime(6),
        `text` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `soto_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `description` varchar(255),
        `moment` datetime(6),
        `song` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `user_account` (
       `id` integer not null,
        `version` integer not null,
        `enabled` bit not null,
        `identity_email` varchar(255),
        `identity_name` varchar(255),
        `identity_surname` varchar(255),
        `password` varchar(255),
        `username` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `hibernate_sequence` (
       `next_val` bigint
    ) engine=InnoDB;

    insert into `hibernate_sequence` values ( 1 );

    alter table `offer` 
       add constraint UK_iex7e8fs0fh89yxpcnm1orjkm unique (`ticker`);

    alter table `request2` 
       add constraint UK_3l82ui4vh8qjy96b39cv1p5l0 unique (`ticker`);

    alter table `user_account` 
       add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (`username`);

    alter table `administrator` 
       add constraint FK_2a5vcjo3stlfcwadosjfq49l1 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `anonymous` 
       add constraint FK_6lnbc6fo3om54vugoh8icg78m 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `authenticated` 
       add constraint FK_h52w0f3wjoi68b63wv9vwon57 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `consumer` 
       add constraint FK_6cyha9f1wpj0dpbxrrjddrqed 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `provider` 
       add constraint FK_b1gwnjqm6ggy9yuiqm0o4rlmd 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);
