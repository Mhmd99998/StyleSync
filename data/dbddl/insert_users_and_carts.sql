INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7ef75a56-425d-4c10-bb6d-1100d12e6f17', 'oliverashley@example.com', 'b97a7fd80dbf597fd5b045dcd3621953c95c702872e1b8da28a87d957b4a1399', 'Catherine', 'Henderson',
            '2025-02-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e97cf0fd-5d19-4541-8e04-9840091912bf', '7ef75a56-425d-4c10-bb6d-1100d12e6f17', '2025-02-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cbc8d241-1fe3-4334-bbb4-f047501abaed', 'fryemark@example.org', '879dba67ca0b6f134ec77fe82d7a479a9cb84f0925088534a4eb502ed8ab7550', 'Stacy', 'Foley',
            '2024-12-31 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '814d8d1b-b7ce-45b6-8929-9662cb27bc8d', 'cbc8d241-1fe3-4334-bbb4-f047501abaed', '2024-12-31 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b46c6f47-e1ab-47ef-a574-5c59493d90f9', 'staceygardner@example.net', '4a727a90a4e755ccd5fe92c5a3d214d502ee72f4f3bb51de653c9b6a945f72f0', 'Alex', 'Douglas',
            '2025-02-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6fdfb5d9-4e1e-495a-889c-484d73412644', 'b46c6f47-e1ab-47ef-a574-5c59493d90f9', '2025-02-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '49448e86-ba8b-483a-af6d-8c16967c3808', 'yhoffman@example.org', '0aae98410caac53a10002e3bb0046a6e632e090d5efafbdcc06ad363de02a78a', 'Melinda', 'Nelson',
            '2024-12-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b970a340-7c8d-4975-8add-a8e3fa918201', '49448e86-ba8b-483a-af6d-8c16967c3808', '2024-12-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd45021f7-bc75-4214-830f-7436b2643836', 'corywilliams@example.net', '58f4a5dd671fd2b91c4b37f5f97ea7f2188836780dabf0ae9540bed5b02ff106', 'Joshua', 'Hernandez',
            '2025-04-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2dd18dcf-cb2a-40ce-9eca-e5779ae3dfa3', 'd45021f7-bc75-4214-830f-7436b2643836', '2025-04-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ac654067-b5af-4867-aed2-fb8df72aefa8', 'andreamurray@example.org', '8bff2ca49f38b8eef842b3e03c81b33fc2e05796c710da72308a61fb19c09cc9', 'Sandra', 'Harper',
            '2025-01-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0f779936-31ee-4cbc-9f20-9c29f1000582', 'ac654067-b5af-4867-aed2-fb8df72aefa8', '2025-01-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '404f1637-530c-4cbb-b3fc-0921b193a0da', 'bgarcia@example.org', '648a80e295aaae2647852f82ecc2870cfe8932e35b603a6cd72aff08d4d5f852', 'Ryan', 'Ward',
            '2025-05-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '12d7c380-5a27-4eec-afdb-d2779c822eab', '404f1637-530c-4cbb-b3fc-0921b193a0da', '2025-05-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2336abd7-9da0-4eef-8abd-21662f19f071', 'kentcindy@example.org', '2d6202bcb07718be370216b881108f38b870f326da2eedc9bffff25ff10f3c53', 'Jaime', 'Cross',
            '2024-11-15 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bb8bd062-befa-4d16-a8cb-a6c7fec8b1d8', '2336abd7-9da0-4eef-8abd-21662f19f071', '2024-11-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f2f4af29-5fc5-4abf-9b5f-01ecbc12f60b', 'jamesmurray@example.net', '20a1703216205747c156c140f060f09a3b79cf45f5bfbb32bce3532a725e93f8', 'Sherry', 'Mckenzie',
            '2025-01-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '419f2376-5f95-4d85-8fe6-95554f69311c', 'f2f4af29-5fc5-4abf-9b5f-01ecbc12f60b', '2025-01-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9b5ec7ab-0d77-45f6-b0a1-2edc0d41a89b', 'scottmartin@example.org', 'c98e26eb34275f26afaaf5a49531a5c62a27a645621de410aa13fd7bb33a9e5b', 'Sheryl', 'Frost',
            '2024-11-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7b935a1f-cc4f-4676-bb44-3448b4ec8541', '9b5ec7ab-0d77-45f6-b0a1-2edc0d41a89b', '2024-11-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1fbfd678-ab3a-4efb-b7ab-23a8e08b1cbf', 'nsmith@example.org', 'e2a4c7d9e3b14d1209abc4522a0fa96beced4aef8fe0c135417e4a60f4a67b2e', 'Eric', 'Reed',
            '2025-01-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5b856dea-a952-4a19-b0e0-3e1393a2e385', '1fbfd678-ab3a-4efb-b7ab-23a8e08b1cbf', '2025-01-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5e0d492a-9bc8-400f-a99c-3e8d6fad9486', 'kwhite@example.com', '6f459fd01d7b4c2f39832499c0eba51a0b24c0165d016eb51079cf3951484192', 'Kristen', 'Stevens',
            '2025-01-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5cf0fbbe-44e3-4c70-b121-ae85ca787ccf', '5e0d492a-9bc8-400f-a99c-3e8d6fad9486', '2025-01-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4db52abe-9a94-4da8-a8c4-136db4348432', 'millerpeter@example.org', 'fe61a887d9cbd6b2c406babd7f235dd2c4bf91c9d0a4f516b82b1e51f015550c', 'Jonathan', 'White',
            '2025-03-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '490d8690-7127-4808-b4dd-1a119062b1a7', '4db52abe-9a94-4da8-a8c4-136db4348432', '2025-03-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ef878ddc-de62-427e-bbd5-f02ea6ca48d0', 'adam38@example.com', '930caf62afd02c1435f02dcaab0eab0ae8d65bdc6bce89ea373a8a69f2500c85', 'Jamie', 'Cox',
            '2024-11-26 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0a89857d-1381-4e53-9e6b-0c450974fc20', 'ef878ddc-de62-427e-bbd5-f02ea6ca48d0', '2024-11-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9fe1d039-5c54-4946-a716-c57d484c7cee', 'clintonbender@example.com', 'e4e6d35aa27040e1b13f12b4ced6c5db6e4f0b83e40bc401093fc40b68ec14a2', 'Joshua', 'Hess',
            '2025-01-15 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ebcbc2d1-f64f-4791-b4c5-69cffbb0d841', '9fe1d039-5c54-4946-a716-c57d484c7cee', '2025-01-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b7ab3de2-8315-4d4c-a1fe-17072e31698d', 'michaelbrown@example.org', '3c2832c58484da03026437438d59617f5f27580aff13ad6e1cfa80efe549ca58', 'John', 'Lutz',
            '2025-03-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9b4d4037-d8b9-4f77-99f8-b2349f8abeb6', 'b7ab3de2-8315-4d4c-a1fe-17072e31698d', '2025-03-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b26784c2-52b9-495f-b361-b934ac2aad1a', 'xwilliams@example.com', '75313bc03b92aaf4611fb5e2b7c951b84bf6808b669b233e2314ac661da9ba76', 'Logan', 'Jones',
            '2025-02-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '63103b8e-47eb-44ea-b3eb-38e57fb68c2c', 'b26784c2-52b9-495f-b361-b934ac2aad1a', '2025-02-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '363a0406-aa2c-49bf-a944-6f532908e51a', 'ashley87@example.org', 'c4598e93722241d781a5e685eb7c26e3d15dfa6e9167c79ac7f2b0c13b72a4b4', 'Jonathon', 'Jones',
            '2025-04-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fb7ccad2-9dbc-4e16-957b-8a01034dfa0a', '363a0406-aa2c-49bf-a944-6f532908e51a', '2025-04-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '891647ce-6584-4e84-ad5c-1de94bff37a3', 'clinemelissa@example.com', '9f5b88f8d8982812c52fc237f2139c1e87212a2300dcd72f7e0f5c063568ce53', 'Matthew', 'Warner',
            '2024-12-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c9e037f3-068f-4991-a732-7bde692abbab', '891647ce-6584-4e84-ad5c-1de94bff37a3', '2024-12-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9121bf65-6e53-4106-bbfe-1b0caec47b38', 'janetewing@example.net', '80884d605e0307d524515a7ce65d7d8ba125cdcb47f1df9cce0c7777107455db', 'Angela', 'Powell',
            '2025-04-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bd63ea15-bd2a-4bbc-8d87-20e2e2a7fc19', '9121bf65-6e53-4106-bbfe-1b0caec47b38', '2025-04-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f386e5e7-c21d-404c-950e-1214fbb229ae', 'herringnicole@example.com', '6cd01f197cdfed34cf34548b8c8b1f8af0b946a4186c4d622c17b278859b3e26', 'Bruce', 'Li',
            '2024-12-16 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ac98c323-a739-4c8e-a000-d194d05edd15', 'f386e5e7-c21d-404c-950e-1214fbb229ae', '2024-12-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '207ff5d1-f192-4c7d-92fc-72c516a3e948', 'ericmoreno@example.org', 'ccfcb21d87557c32839e4b47f7edeb069f70a1e1e9d5ff556f0fd2c8651a4c30', 'Joseph', 'Garcia',
            '2025-02-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '63a687c4-99dc-4c83-812d-965f2fa821c6', '207ff5d1-f192-4c7d-92fc-72c516a3e948', '2025-02-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ded1f030-bba7-492a-973e-2acc7aeb9599', 'shannonwebb@example.net', '7bcbea9132554f4bab54d2d42740b17b000175cdc9c2383dfc3097f8085f3ac1', 'Donna', 'Hester',
            '2024-12-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1be90a75-a6af-4062-a858-5267a6a55458', 'ded1f030-bba7-492a-973e-2acc7aeb9599', '2024-12-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '76a24eb6-1e87-47c2-aa7d-c42844a2d09b', 'gregorygarcia@example.com', '60c2df5a9ceea1839c7623e0d4cbb90a28a665a89a14d1abb1327cbf90db2afb', 'Lisa', 'Oconnor',
            '2025-03-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8fc191bd-45c1-4b2e-875b-bfd020078dfa', '76a24eb6-1e87-47c2-aa7d-c42844a2d09b', '2025-03-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '51238878-9749-4e79-9036-a8faa25f6dec', 'cynthia71@example.com', '855ee89f82baa1664fe2bf6fc08c319bfa125559c83c2422389fd890f164cf32', 'Noah', 'Miller',
            '2025-04-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'caccdd9d-a25f-4b2c-bc7c-27178bfbbb9d', '51238878-9749-4e79-9036-a8faa25f6dec', '2025-04-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '02434e94-1a2a-41a4-84cf-576cfc4d368c', 'lambertevan@example.org', 'e7bb6cc8e6e2bf41cfe279e02475d5e7f8eea0df4aa5937400b6c557babe2abe', 'Gregory', 'Castillo',
            '2025-03-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '97d7ce0b-572d-46da-ab0e-00af4988e463', '02434e94-1a2a-41a4-84cf-576cfc4d368c', '2025-03-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '908f1b23-6d8d-4e32-b094-d79353c6fe8f', 'stacey64@example.org', '4730372beffa71ed7b9468384251b0efadb61f8374826ddeed5335d64dfda503', 'Jenna', 'Navarro',
            '2024-12-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ee26bd2f-731f-4ea3-94e4-b6f5918b6202', '908f1b23-6d8d-4e32-b094-d79353c6fe8f', '2024-12-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '19d93624-4589-4d10-a5d2-7416aa621365', 'bradley35@example.org', 'b4c4c909b9aeff1c5fa9257baa6d4d1c3b8d421ee37296e46ec01c21139de2f2', 'Lori', 'Walker',
            '2024-11-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b69be259-f6b7-46f7-94bb-adcb598c9ff9', '19d93624-4589-4d10-a5d2-7416aa621365', '2024-11-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '274c78c2-6f4e-43cd-a12d-857fd9efd11d', 'yclark@example.com', '6543a52ed64c10696ee8bc4f3921d4501cb62853c636c69ec53645581326db8e', 'Dillon', 'Kirby',
            '2024-11-15 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a8732471-f680-4303-90a7-2e53f406ebc2', '274c78c2-6f4e-43cd-a12d-857fd9efd11d', '2024-11-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd9329a82-e816-4756-be8f-a312a86124b8', 'tbartlett@example.org', '3fa01c028c94f2ee4b5cf21cbb86f04de5b2102903f502411bab5d27cbb2740f', 'Kelly', 'Mullen',
            '2024-12-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6ef37dcd-0884-464b-ae6e-3d15acf2fe5e', 'd9329a82-e816-4756-be8f-a312a86124b8', '2024-12-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '554358b0-0f68-448a-b8d8-ae16ef4d96a4', 'jennifer29@example.net', '6f5f491058d9d00278291f11772595f7a42c8c4ba540f140eeeeafe09343b9bf', 'Evelyn', 'Lee',
            '2025-03-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '89304ef6-3f20-48b9-bafc-b52a2d1b6188', '554358b0-0f68-448a-b8d8-ae16ef4d96a4', '2025-03-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '459b29da-4816-4dce-94d2-f6a10c64bf9a', 'tinabrown@example.net', 'ed2ec3324553b4581a87937ad5a401dae86251c8fac678fbd37f4143279ba6d0', 'Matthew', 'Perez',
            '2025-03-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b40f21fb-13eb-4bfa-a08b-6bb3d87d96ef', '459b29da-4816-4dce-94d2-f6a10c64bf9a', '2025-03-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4c7be4d6-9f4f-483e-ab76-ed4f525c99ce', 'jasonjackson@example.net', '76bdde9477ac88986dfe4a944ba34bd1975a0a16836972feaa517677d6fa1a8f', 'Laurie', 'Fuentes',
            '2025-02-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fd64b3ab-e566-4d04-8c69-6a0300612ea3', '4c7be4d6-9f4f-483e-ab76-ed4f525c99ce', '2025-02-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '75880655-1948-4a3a-aa95-5650a4e5f6be', 'gregory81@example.net', '7418f6a4b3ee9d9684871cdeb0ec488578b02599580c6a2a6a3131c6bf335a87', 'Steven', 'Murphy',
            '2024-12-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd52275ae-8026-46ec-bd9e-f2a5911db2ad', '75880655-1948-4a3a-aa95-5650a4e5f6be', '2024-12-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3b0c4851-0ce9-4da3-a24d-eff6fc593e39', 'carlnguyen@example.org', '0ce9da0a23e7cadb664edff4af149e99e6e27e822824bbe561e1c82e1cd1c0bc', 'Benjamin', 'Hill',
            '2024-12-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4ca715ec-5929-4c11-8345-0c4a6f4c6ea6', '3b0c4851-0ce9-4da3-a24d-eff6fc593e39', '2024-12-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '01ed7e8b-17f7-45f9-bd60-c94cf54e92ac', 'christopher93@example.net', '505231d00d1856c685827a9b7c60dd222d3118b7ccf405ec85cd5e29d5f6ba93', 'Nathan', 'Johnson',
            '2025-03-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8b45760b-379d-4922-be42-53a9f26ea1b8', '01ed7e8b-17f7-45f9-bd60-c94cf54e92ac', '2025-03-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '37a4617d-2565-46b5-b62c-5a583217cc27', 'brandon81@example.com', '4235f429744814b41a2ce17f338130cf228ed09e21523f3462bc2ccca5ea1ad4', 'Kayla', 'Cruz',
            '2024-12-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '83db7a5d-9143-4d50-a38e-2f4ca3a0a62e', '37a4617d-2565-46b5-b62c-5a583217cc27', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c19fece7-b7ee-4b06-ac86-1c2693b9c905', 'lisa42@example.org', '03b6f1a6fee16d098bd9404389638e82a11c7778681f19f59c6c790565053bb5', 'Christopher', 'Schultz',
            '2024-12-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cdebf15d-9ed5-44ba-a54c-c2ed3a69e52c', 'c19fece7-b7ee-4b06-ac86-1c2693b9c905', '2024-12-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '49fca50e-3a93-4f7d-965e-c21c6fddc7c2', 'erinriley@example.net', 'a8b6327ee7c199100bf968c77ef9f855df6045032c81ab2751b922b23682cdf1', 'David', 'Harris',
            '2025-02-07 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'eb091118-67f9-46c0-9e9b-926f692885a8', '49fca50e-3a93-4f7d-965e-c21c6fddc7c2', '2025-02-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '380a0dde-baf2-449f-9700-343a8252ff98', 'scottrachel@example.com', '578f791db1939b044ce21d85b6be3e62417a0482bc163abf66087270176251c9', 'Thomas', 'Ortiz',
            '2024-11-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bf46f12d-3425-4fec-87f3-590521c62a4c', '380a0dde-baf2-449f-9700-343a8252ff98', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'babc5251-4815-4176-add7-19ce429083a7', 'davistimothy@example.org', '5b3d44976d4bbd7e62181ef382f811d3c149de4eed334b661977a42bd1e53475', 'Katrina', 'Franklin',
            '2024-11-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0dc66dd8-9eb2-4026-b090-b25c45f99506', 'babc5251-4815-4176-add7-19ce429083a7', '2024-11-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e8502267-f3a9-4e86-a173-141c357d9b4c', 'dwaters@example.net', 'af4d0cf755659427a2d4a84ab0b2f0203dc13f6236a42169062979209b98507e', 'Robert', 'Bryant',
            '2024-12-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9c17368e-7c90-4050-b935-c7efb192ae20', 'e8502267-f3a9-4e86-a173-141c357d9b4c', '2024-12-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9a69a986-dd2b-40be-9784-93231b3d81a4', 'fitzpatrickconnie@example.org', '18f804766d149128c203b1a870de0db838ce68586b6ba2a4b189d2f3d14a06ce', 'Crystal', 'Rocha',
            '2025-04-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f0cf1d73-cdff-40d0-af43-7c1fa0fb398d', '9a69a986-dd2b-40be-9784-93231b3d81a4', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '393f2b99-e869-46dc-bcc1-a7f706b3468c', 'jpeterson@example.com', 'f34cf2140cf137737ac4ed813865a4ba52e99be65a4dbb9a6ad00e05405ec010', 'Timothy', 'Ryan',
            '2025-04-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7742c3e2-7741-4597-9bce-46307d445a56', '393f2b99-e869-46dc-bcc1-a7f706b3468c', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7902460d-e07c-4f20-91da-f342db16a9f1', 'janetanderson@example.org', 'f17be586f715c7913c10d90e593d20324b7155745763ebdc0781edf69f0393e9', 'Mary', 'Edwards',
            '2025-03-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '60e37fc8-58cd-43a6-a828-622a13e80b9a', '7902460d-e07c-4f20-91da-f342db16a9f1', '2025-03-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8d7a9e53-6657-41ea-bc9a-e063f8885a4b', 'chasecooper@example.com', 'd2db68c85cd6f2b408d789d59ee03167eb10545a3ca99fca248c87efce0ab9e6', 'Steven', 'Barnett',
            '2025-01-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7d2c6bd5-a035-4c28-88f5-277dc911d8ba', '8d7a9e53-6657-41ea-bc9a-e063f8885a4b', '2025-01-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f8d29906-360f-4ab8-ad14-e297f42b3d88', 'jorgeowen@example.org', 'ee58cc376657f6d911b4a15295166a517d61ed57d2d034bdf408de29f2c40789', 'Crystal', 'Diaz',
            '2025-03-28 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '902eb131-dbe8-482d-9f81-2b3990fa5731', 'f8d29906-360f-4ab8-ad14-e297f42b3d88', '2025-03-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5c3bed16-c5dd-48ea-b5b9-9bb67b6e329b', 'cwheeler@example.net', 'f5a0c1897037c315b7f9d7d4753da08f48c3acdea2475f1033705f5ad2f77fd1', 'Justin', 'Davila',
            '2025-02-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cbe09a6a-76da-4cbf-86c3-e767f2368bb4', '5c3bed16-c5dd-48ea-b5b9-9bb67b6e329b', '2025-02-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8314ec4f-967d-4b38-8c4a-120cf0a46101', 'charles83@example.com', '3a563351b9553f8a66f00ba969cb84c83da185766e5e5f7e5035f9c4901a5246', 'Nicole', 'Mosley',
            '2025-02-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '77cb16d9-702b-42ca-9c74-c6571605d3d1', '8314ec4f-967d-4b38-8c4a-120cf0a46101', '2025-02-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e6269488-b18d-43e8-8fb9-ed3c68966dd0', 'antonio12@example.net', '964848583b649e7321b85cc7b8a98c3d28156c7bd2cdfccec8a51b50a92dd375', 'Jonathan', 'Martin',
            '2025-03-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '75dc4dc6-dd7f-47b4-b675-13c4fca87230', 'e6269488-b18d-43e8-8fb9-ed3c68966dd0', '2025-03-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cd0e09d4-ca85-48b4-822a-fccdcba0b028', 'robertmartinez@example.net', '7776a20c10251a53c7a4c8411e165b10c709f1e44da387dbf5018028077f761b', 'Lisa', 'Sanchez',
            '2025-04-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b19427a4-e095-490c-8183-8682e1e81178', 'cd0e09d4-ca85-48b4-822a-fccdcba0b028', '2025-04-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6517cc95-8ad8-460a-a8e4-05bcd76cfd00', 'prattkimberly@example.org', '40e3f34869c8acc8299296800a8c489148d26cae9defc97ea4e4e7b53f9b092a', 'Amber', 'Peterson',
            '2024-12-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1a7c9b3a-a2fc-4583-a6e0-d238de05b5e1', '6517cc95-8ad8-460a-a8e4-05bcd76cfd00', '2024-12-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '79751b97-b499-4317-aec8-3a24a798384b', 'padillasamuel@example.com', '8807cb1ccdbede32ae9bed81a18340154f090783f42c3eb61b74ba9a927e62cd', 'Vincent', 'Horne',
            '2024-11-16 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1ce860db-7724-4138-a743-d33212b7f158', '79751b97-b499-4317-aec8-3a24a798384b', '2024-11-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '69c35a6d-de04-4102-bb2a-39eb90aff212', 'opowers@example.com', '87cb1b32166cedfbfd78652db3fac51bd1d86118306d5bd619d073acc1d4b131', 'Leonard', 'English',
            '2024-12-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5f46c3be-21a3-4303-adbd-1c8df462693a', '69c35a6d-de04-4102-bb2a-39eb90aff212', '2024-12-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e50f72fc-c03a-4fb5-b884-80b9c2421ec6', 'gthomas@example.org', 'a20874fbcc382ab6a08c3139e0d3126d43e151fa03198df2e0867e217d6eaee5', 'Nicole', 'Collins',
            '2025-01-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd2c138d6-18b7-46cb-a480-342aefc9dfa3', 'e50f72fc-c03a-4fb5-b884-80b9c2421ec6', '2025-01-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ecc917f8-2cc4-425c-8a3a-424b81cf641b', 'lopezdavid@example.com', '034d881e496733204e59078a325bc319af32c7bbfce79d1b4a7ca71bb550857e', 'Kerry', 'Flowers',
            '2024-12-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b1cff2ac-38ee-44d4-b779-4b79511facbc', 'ecc917f8-2cc4-425c-8a3a-424b81cf641b', '2024-12-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '17e550e8-93b2-453d-b1a6-a6cd1e1bd5e2', 'howardpatricia@example.org', '336dd172c4f59556f0fc7a73dee660c2154d149c5de0ba0dc876ac78dc5e52dc', 'Margaret', 'Hendricks',
            '2025-03-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4962f0a0-8894-40c5-9232-8376b97b929c', '17e550e8-93b2-453d-b1a6-a6cd1e1bd5e2', '2025-03-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6dee290e-2de3-4234-bb3b-98d9b139faa5', 'browntroy@example.net', 'e6cb836cbfd176051eddd19ee33dec387948f1b61d7c4ec3f7a66ad9d4170868', 'Robert', 'Ryan',
            '2024-11-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'dcaaad9b-9e4d-466a-83dc-c0ba50de5029', '6dee290e-2de3-4234-bb3b-98d9b139faa5', '2024-11-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '036190a1-ee9a-48b6-9d9c-09414f2d3a2c', 'nsnyder@example.com', '0454617998b124d4edb6dff3c6eb3b776bfff4fcd1da554c643b186dc1ba547b', 'Brittany', 'Butler',
            '2025-03-18 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '192e17b0-6735-476c-8bbf-9eeed5f14dec', '036190a1-ee9a-48b6-9d9c-09414f2d3a2c', '2025-03-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6dfd64e9-05e4-4aad-8632-cd0d5a3e4a3e', 'smithlori@example.net', '252a8b3659e9b9875a2efc1bf10ffd946fd1f3310959962db31e089f47b41f8b', 'Rachel', 'Cole',
            '2025-03-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6285d744-6b38-4ea7-a4b9-3964d9cb31ee', '6dfd64e9-05e4-4aad-8632-cd0d5a3e4a3e', '2025-03-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9bef2a2e-9960-4f9a-b45c-dc868f753e6a', 'joseph05@example.org', '62db644674f50c94f813469067338a95bcd96fa52a2b1d7a222217d562159885', 'Bridget', 'Dennis',
            '2025-02-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '520223a5-013f-4ff9-82ce-e806ffd84245', '9bef2a2e-9960-4f9a-b45c-dc868f753e6a', '2025-02-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'da08e542-90d2-4544-86f0-8fe7c1349220', 'ibean@example.com', '38530c8b6dae8827105796b3424262031dd8c4b3cc2fce3aa74da2c4e79eb29c', 'Connie', 'Sullivan',
            '2025-04-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0e17e1a0-b776-438f-9cff-041790d38130', 'da08e542-90d2-4544-86f0-8fe7c1349220', '2025-04-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'efd38e0a-0951-4851-8169-fa0e6758905c', 'hullbruce@example.com', 'd3e1301f78d3ee1a400cbe0455333903306a035efa543ba543d6e4ef161d1254', 'Erin', 'Wolf',
            '2024-12-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '91e38f24-7510-4ce9-9f5c-e4772ef88095', 'efd38e0a-0951-4851-8169-fa0e6758905c', '2024-12-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e9695e1a-9bbc-4d56-ac7e-7357497493ca', 'richardsoneric@example.net', '25f103b5b29051fcbe67ee3ce74ceb15113bcc3f2a523eea3600164a57422442', 'Derrick', 'Arroyo',
            '2024-11-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2d87ce29-13ff-47e8-acdb-1d4b7cfa8e27', 'e9695e1a-9bbc-4d56-ac7e-7357497493ca', '2024-11-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3f252eef-23d1-4e70-9c43-ce2394d767a9', 'wgarcia@example.net', '20102d688f5f6d768a79bb08b38dcdcac3fef06c53baca838d63eddb0523d76e', 'Raymond', 'Lewis',
            '2024-12-10 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '535b3e9c-6f7c-4e8b-a820-198d7256fc87', '3f252eef-23d1-4e70-9c43-ce2394d767a9', '2024-12-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '290672b5-15c2-44fe-bdb6-bfe79dce4fe6', 'davidmolina@example.net', '720955421b04da51523250289cbdd4d4c0137ec3ae7873b1cb950db12678540a', 'John', 'Long',
            '2025-02-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1738ea9e-084e-4d7c-8a54-344fd9401d02', '290672b5-15c2-44fe-bdb6-bfe79dce4fe6', '2025-02-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6f22c847-7dc5-4023-902d-f592441a4fec', 'margaret33@example.com', 'cdd1434a5b71d6dc8e528bdedc84896d22e0b85c9715f941d328450a0c38b85b', 'Toni', 'Smith',
            '2025-03-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '91b60d31-9d4a-48d9-aef2-ca7652f2cf90', '6f22c847-7dc5-4023-902d-f592441a4fec', '2025-03-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '91b4af5f-f5ff-4a7a-8c49-03aa9644c69b', 'garciamichael@example.com', '9773a8d664d1ae6b80ed20cfe07b10440e5feb911ca1948a776e323026a4e11f', 'Daniel', 'Garrett',
            '2025-01-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd0be0477-7dca-4f97-b644-4a49eef4519a', '91b4af5f-f5ff-4a7a-8c49-03aa9644c69b', '2025-01-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '770af92f-df5c-4dae-904f-1397b2748659', 'rachelmitchell@example.org', 'e567d3fccca2c8e8cc86ed48955af0b50445861eea36ea6b6e717f274b2d0207', 'David', 'Walker',
            '2025-04-26 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '31b1b73d-22c6-423f-9c2a-24fd5b4378fb', '770af92f-df5c-4dae-904f-1397b2748659', '2025-04-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '403d234a-ac45-4566-8e3a-e1ebfb664ec2', 'thomas06@example.net', '787184733b7d6f183fd5be8f604cde7004e0e7a5830afb718980fcc85011e04f', 'Kayla', 'Vang',
            '2024-12-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e7329579-1804-4b4d-bff8-c70d36207126', '403d234a-ac45-4566-8e3a-e1ebfb664ec2', '2024-12-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bbe56143-8a7f-4804-ba75-20128de325a6', 'phillipsstacy@example.org', '51ce9eb3150b4ada84a83f7c2c0224edca6a365c3c36688da342bfb41ca7ef37', 'Christian', 'Walsh',
            '2024-11-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bf271c94-f56a-4240-ba6b-b0f426cd7953', 'bbe56143-8a7f-4804-ba75-20128de325a6', '2024-11-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '391104e0-87c1-4869-bfb4-a47c689b1046', 'charles63@example.org', '84c38b81e471b2145f2dfbe60c8aac90c3ae2ffab02894df96ce9ccf3ed5393d', 'Jeremiah', 'Blanchard',
            '2024-12-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '63ce2d1e-391a-416c-85df-20ee609093c2', '391104e0-87c1-4869-bfb4-a47c689b1046', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8d759598-c5a3-4c12-94e5-64686cf31fc3', 'edwardsjoseph@example.org', '87eb44c3b656f7db9a5e54b8e8cca4aa884044c633cc067ce1555f8e8f1416b2', 'Felicia', 'Gay',
            '2025-05-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cedf7839-010c-4ba3-92a9-b4df8298a19d', '8d759598-c5a3-4c12-94e5-64686cf31fc3', '2025-05-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '416d7763-ba19-4f88-9472-fb977f1094dd', 'uanderson@example.org', '789819893dda42a0e241e1506a7cc637de3cbc034d2474982e8f43838d8e3115', 'Kristi', 'Reyes',
            '2025-01-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0f6c2fe3-9285-4ace-a2a8-b1d668ad80d4', '416d7763-ba19-4f88-9472-fb977f1094dd', '2025-01-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dac7c78e-c468-4dff-819b-dafe774a3569', 'noconnell@example.com', '73ba292a9433a5b19a73ab10cf2fd338c2611b5b6731492c00a61a8fd422fb96', 'Wesley', 'Hanson',
            '2025-04-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ecfc8984-6ff8-402a-be70-0e974731f0ce', 'dac7c78e-c468-4dff-819b-dafe774a3569', '2025-04-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1baf60e3-898b-4833-ab07-3f1aea685f6a', 'stacyperry@example.net', 'a46f49ab473778b9041ce72b9163bf7e1441d2d59caaa86a231cf7210204198d', 'Virginia', 'Wall',
            '2024-12-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ac857ab7-74c6-458c-8e10-470d0cf0ac46', '1baf60e3-898b-4833-ab07-3f1aea685f6a', '2024-12-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9130f260-7885-4f69-babc-cba8d2d78619', 'kristen93@example.net', '64009fe90affe2272efbe0c0a0036364d85cd767a6a86aaa635fd1180a53ccc6', 'Mark', 'Andrews',
            '2025-01-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8c110f92-4515-4e2b-be1d-c9cfc07c5c8e', '9130f260-7885-4f69-babc-cba8d2d78619', '2025-01-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '769fb5da-4626-4443-a11f-8d910da5eab9', 'debra67@example.org', '79c509023b74fb36d69d8f274ad109f8b4841ae0f679b9b7a51581d9538b29ea', 'Heather', 'Chase',
            '2025-02-16 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b135d976-1be1-4f54-89a9-5d8ae4f3adc1', '769fb5da-4626-4443-a11f-8d910da5eab9', '2025-02-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '87d5c500-a709-41ac-8e54-6916f7cecd1a', 'ystewart@example.net', 'ea96d470cb0d0a79a3564e7ec3b1b2a91b6ef8660bcfb1bd7a76d254857c8cd1', 'Jennifer', 'Harrison',
            '2024-11-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '635aadf3-a23f-43f2-b548-7b730335da3e', '87d5c500-a709-41ac-8e54-6916f7cecd1a', '2024-11-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bf7c64b0-dcdf-44d7-b19e-c72e39ea9eba', 'nathaniel96@example.com', '2b458c22849ca093d357d71d15d272bfffa0b09a04ea6feb4d4e033b432ca1f2', 'Karen', 'Sullivan',
            '2024-11-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bfdf3b63-10a4-40f2-883b-dd608efebfda', 'bf7c64b0-dcdf-44d7-b19e-c72e39ea9eba', '2024-11-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '67923302-4c1f-4ca0-8c5e-f202891131c4', 'william93@example.net', 'ade51ae3aafd0578a04dac28bf108dfdb6b232895b8bb8f59d5d34591b79c3ed', 'Katelyn', 'Mendez',
            '2025-01-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '95f522a8-ddde-4218-bd79-a7e25c029b14', '67923302-4c1f-4ca0-8c5e-f202891131c4', '2025-01-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f0ce928a-8f79-41e1-a4a8-4279326f2652', 'gibsonantonio@example.net', '1f1210413475eff268d76564c12d8cc8504ca7cb618b5dc3198a71650657d3c4', 'Gary', 'Johnson',
            '2024-12-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f43a55c9-ecb6-40ed-8166-77c271b8ad57', 'f0ce928a-8f79-41e1-a4a8-4279326f2652', '2024-12-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2f0f6cef-0770-4eef-81aa-b34c5430dc68', 'michaeljeremy@example.net', 'd4e531650a2501e0979fda40d65b1147becbb9fe54b187c88d900083dc781188', 'Brett', 'Johnson',
            '2024-12-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '92536232-c94a-4712-8a59-d63d65e6c4f8', '2f0f6cef-0770-4eef-81aa-b34c5430dc68', '2024-12-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ca7e195d-e170-4537-a383-fb5537dc6f87', 'erika61@example.net', 'b9d8a5c7b611a44e1168e380d41184d634f56718ae404017c16437ecde47eaef', 'Laura', 'Wilson',
            '2025-03-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1bf52b5d-cce8-4532-ba85-ffc199e7220e', 'ca7e195d-e170-4537-a383-fb5537dc6f87', '2025-03-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '31f0c029-b9c0-4246-8297-f9bac9393588', 'brian98@example.com', '5c9c7ab1e744f43e16f64074f9e773cdbcc57a69d0cc19a778d908710d5bc5e5', 'Gail', 'Gibson',
            '2025-01-26 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b7a8fd27-f329-4538-841a-7e339608be33', '31f0c029-b9c0-4246-8297-f9bac9393588', '2025-01-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1bc496d7-b2df-4d12-bb7a-0c6dc325490f', 'leejames@example.net', '832014be6518ca81ffe90d6642d92fcce284d538cde18f8c3733e17feaf74199', 'Tiffany', 'Smith',
            '2025-01-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e2452ad2-945d-4903-91d2-eb58d601d61a', '1bc496d7-b2df-4d12-bb7a-0c6dc325490f', '2025-01-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6cbdc77a-0c9f-4334-a832-38b9ee3bd9d6', 'jacobsnyder@example.com', '38c4a85c1b91c656b080d3a7239accbb8b833197237230e0e783d04d7fa7dc6c', 'Russell', 'Gibson',
            '2025-03-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f80e8f20-de40-4bdd-ad5a-8dcf7ec7f733', '6cbdc77a-0c9f-4334-a832-38b9ee3bd9d6', '2025-03-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7ada950c-8c98-482e-ac76-bd9fc702ddbe', 'sara52@example.net', 'ae0a8d2db3fe491941156fe67a65ebccc566df460b0e61db4012bb0e222f8336', 'James', 'Zimmerman',
            '2025-02-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c518f65a-f2e0-47d9-84fe-0e10b57f8b19', '7ada950c-8c98-482e-ac76-bd9fc702ddbe', '2025-02-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '842f404b-fa3a-49f8-b6eb-06292e5bca13', 'watersjordan@example.net', '8a647131fbb2db248cfdac0aed2bc8b1a8aee7770af97c534b162471c7f48ef1', 'Aaron', 'Mccall',
            '2024-12-28 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3851ab12-3ce5-4397-a074-40125e69b987', '842f404b-fa3a-49f8-b6eb-06292e5bca13', '2024-12-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '50ff5cc1-b5df-4321-bbd0-df20cf9663dc', 'ymorris@example.com', '86fb5a5ac39899ff44cdd004499f72a5990de18e6de71cf72e273433c3cd83cf', 'Kristen', 'Zhang',
            '2025-04-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '295a383c-90dd-424f-b734-7cfdb8954860', '50ff5cc1-b5df-4321-bbd0-df20cf9663dc', '2025-04-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '164d9bfd-1b64-4a2e-a86a-cad141edd1bc', 'bowmanangela@example.net', '6c2293e01c8c612f87f9cc3096c2795211fcc93bc2e0c89eb6aec35cc0f33bbf', 'Ashley', 'Little',
            '2024-11-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4cbf52cb-a9c6-4cf5-b678-36b7cc55c3e8', '164d9bfd-1b64-4a2e-a86a-cad141edd1bc', '2024-11-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '62488ff6-ba07-4bb1-ab8b-c84588320603', 'richardsjane@example.com', '1602e1621e3acebb68fe16b71d30b1b3b3f9903bdd69554e1da3bc1a52ceda34', 'Amanda', 'Moore',
            '2025-03-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '847e77ff-9d25-40bd-8c43-d5f50bf4f2ca', '62488ff6-ba07-4bb1-ab8b-c84588320603', '2025-03-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6b1896c4-cf3f-41ae-948b-b548411d9c67', 'iharper@example.com', 'bef3fe766e57cb39d4bbb6e6a3fb94b2f4337e1e774031e88c3ea6bbc0d86991', 'Danielle', 'Hardy',
            '2024-11-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd65c3473-ee4f-4c61-956e-c786db782526', '6b1896c4-cf3f-41ae-948b-b548411d9c67', '2024-11-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b029d1d9-cc4d-4f12-8714-511206be6409', 'julian78@example.net', '6b8cae34a189bca15c1a1cf0446d1ef4301b6ab6e25aa60a018624b03133a9fd', 'Kathleen', 'Edwards',
            '2025-03-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f19d3a8e-f903-40df-b7e8-4cc6ca1bdd16', 'b029d1d9-cc4d-4f12-8714-511206be6409', '2025-03-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b15e2491-4d71-4032-a715-e9836d9407d0', 'ryantracy@example.net', '9d1a2819e81d73a92148c34b00e603f91557460ac10a5a7052347ac8a382bf80', 'Kristen', 'Moore',
            '2024-11-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b96975ee-778d-42f3-8b26-c84c6694edfc', 'b15e2491-4d71-4032-a715-e9836d9407d0', '2024-11-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3e8fb3c0-2f71-4458-a6f7-7056ae34f909', 'james98@example.org', 'eedea00f79893a861f425846cb0c68c096d8c434d0a72d972010c8c4a7b2583e', 'Andrea', 'Frost',
            '2025-02-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c6688fa4-0c4b-419f-83b3-e9e4cc61ebab', '3e8fb3c0-2f71-4458-a6f7-7056ae34f909', '2025-02-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '20e3d2ae-c352-4e06-a818-b04c17b677eb', 'kathleengill@example.net', '741dc77cb4c34b5b1c5f41ef946cd4a8b2441cecc3ca0ba827a94595973a7b02', 'Miguel', 'Mills',
            '2024-11-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2bb31632-ddd7-40e4-8fac-bee81cf09d07', '20e3d2ae-c352-4e06-a818-b04c17b677eb', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '66c0e3ec-849d-4944-8eda-1a627e7745c3', 'sextonjacob@example.net', 'b92307325832e8ca5fb32a8f348de4a5442e74d1039479b26a5a1eefcf71656b', 'Timothy', 'Hurst',
            '2025-02-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6b52543d-f6c3-401b-a6e9-0af1c9934d17', '66c0e3ec-849d-4944-8eda-1a627e7745c3', '2025-02-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '60519afa-5e17-4de8-a257-16dd6130ce3f', 'zrodriguez@example.com', '3a1ff2a4fd479737bb65d29177b9e374e45cb671897eb4eb75b9eb8f987f7765', 'Toni', 'Thompson',
            '2024-11-15 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f98a613b-d0f5-4fbe-81a3-6201a8a3535b', '60519afa-5e17-4de8-a257-16dd6130ce3f', '2024-11-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5d303f6c-2f1c-4aec-b0f6-dc2aa8e7152d', 'jeffrey90@example.com', 'fbd6c3730e38896e034f77ff107bac58a113dee273bb42abacd00c1828a07f8a', 'Dana', 'Pacheco',
            '2024-11-26 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5371f18e-5fab-451d-b876-72fda2f4539b', '5d303f6c-2f1c-4aec-b0f6-dc2aa8e7152d', '2024-11-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd22e4c10-cec7-4aaa-bc17-e48f4335d33c', 'davidhill@example.net', '82fb000e13747860efefe0c06eb547d51d44a2379a579ca9545c6eb0984f4750', 'Alejandro', 'Roy',
            '2025-01-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '25d946b0-768d-4cd8-b922-760a396716a9', 'd22e4c10-cec7-4aaa-bc17-e48f4335d33c', '2025-01-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a026bb8f-7fd0-4149-a809-0d20b2902786', 'hollyrollins@example.com', '45e3e8118f2bdab6b89084ce1ce4a5c08f1fb573a30d869e6d8728345e468dc4', 'Ralph', 'Richard',
            '2024-12-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ea9ee6d0-d787-4c8f-ab99-8352453a3a6a', 'a026bb8f-7fd0-4149-a809-0d20b2902786', '2024-12-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '81833871-2080-4d5d-aca8-d46c572d573b', 'davidpollard@example.net', '7a49118dd4a35d0199cd9c832c398113ac5cf3007564f98ba13af94360e33dbe', 'Derek', 'Aguilar',
            '2024-12-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9d669391-6243-4590-bc7f-8fe77803d7bf', '81833871-2080-4d5d-aca8-d46c572d573b', '2024-12-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '02b1b082-0b45-4f03-8f68-1152b95d263c', 'lreyes@example.com', '08c45bd821fcdc78ecccec335757aa0a741bec200bf9b46bb3ca3721ab0ee6d9', 'James', 'Anderson',
            '2025-01-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '644ccc08-946d-4f22-8675-c39b15f51b5f', '02b1b082-0b45-4f03-8f68-1152b95d263c', '2025-01-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '00cc5806-1a53-4e0b-af72-1634f5caa68d', 'john28@example.net', '10620c575adff30e8adb6e9aa4f786f93d975d2218767fd6b10c59307d141b37', 'Blake', 'Holt',
            '2025-03-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '10b102b0-1f14-49c4-a91f-24c3adb4a366', '00cc5806-1a53-4e0b-af72-1634f5caa68d', '2025-03-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4016bb1b-8d5f-401a-b716-64696e16f59a', 'karlgarcia@example.com', 'c8740e0a2e825fa9d686f87e0cd08c81dff5e68a6961b34def36cfe8fcc2ffff', 'Sean', 'Rice',
            '2024-12-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c5672298-8c63-42b7-b658-b4275241ebf2', '4016bb1b-8d5f-401a-b716-64696e16f59a', '2024-12-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2fe9c094-b30c-44b0-9be9-436905202d1c', 'ryanmccarthy@example.net', 'ef12feaaee60f5d1f473aa6caf8126213c8e875027943e85137b538abd2e3ae8', 'William', 'Martin',
            '2024-12-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5943571d-a15a-42fd-a587-e67e820354c3', '2fe9c094-b30c-44b0-9be9-436905202d1c', '2024-12-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5b68c65c-dab0-4a18-8233-51e302aefcd0', 'nicolediaz@example.org', '9d220296b513242f574b4ebcc280f1ebc6e279221f04987dace9337c4897a429', 'Christopher', 'Huang',
            '2025-03-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'afad694e-fe4d-4f08-bc33-463475a2eaa5', '5b68c65c-dab0-4a18-8233-51e302aefcd0', '2025-03-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c572867a-13b1-4298-b72d-8754cf2cbbac', 'schmittlisa@example.net', '74498c1c328a18ecd3d065c57b78b4f5d55ca2664013c2e1bcd20219462a495d', 'Shelly', 'Blake',
            '2025-01-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c364a837-05a7-4235-8da8-032bf0ebdb65', 'c572867a-13b1-4298-b72d-8754cf2cbbac', '2025-01-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '76613898-5280-4ba5-8e67-5cf29d25bcd9', 'lbutler@example.org', '4ab2ef2973d6942765be60b4e0931ce49182887bd2b8a8830be0515fa1cf64f6', 'Dustin', 'Booker',
            '2025-02-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '187a05dd-adc3-43df-a327-9021266e5cfb', '76613898-5280-4ba5-8e67-5cf29d25bcd9', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ec72af79-bf7c-43b0-bdfa-1fa5f90fe0bf', 'joneskenneth@example.com', 'bbf876d8306369d04a61507a8fdf1882d77fed882b958c365bd37fc5d8a0111d', 'Jeff', 'Sanchez',
            '2025-04-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9664a7bb-b9c2-4bff-a1d3-23143f4fa180', 'ec72af79-bf7c-43b0-bdfa-1fa5f90fe0bf', '2025-04-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '83bc45ca-c5b6-4e88-99f8-f7394b7186a6', 'ooliver@example.net', '0b4237541492a93073e33c07ddb9faa289b46254f7a35517ca906fb0b212ab5f', 'Marcia', 'Schultz',
            '2024-12-30 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6a02a463-45f2-426d-9606-e09c00d71b38', '83bc45ca-c5b6-4e88-99f8-f7394b7186a6', '2024-12-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ea508ba1-0452-4b77-9907-6f1f856b3957', 'danielbailey@example.org', '6315c76a2bd6adcceac7dd7d856a85be07e1ef6ae3068cc0c6fccdcaac49e117', 'Robert', 'Jones',
            '2025-02-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '81a65d63-fcab-4abe-af2b-d80bfc41ef46', 'ea508ba1-0452-4b77-9907-6f1f856b3957', '2025-02-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '310aaeb2-b40e-47aa-99bb-23a5851d23f5', 'callahanpatricia@example.org', '64d466e9eb5672727ecdcab2faeb42cccf716b2aa815c8a07f8064c7158e9051', 'Stephanie', 'Garcia',
            '2024-12-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '992343d7-c79b-43ba-8ab9-0df5802cac37', '310aaeb2-b40e-47aa-99bb-23a5851d23f5', '2024-12-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd04c81b9-deb6-41d1-b74d-3c4b87044451', 'markbutler@example.com', '2cbd0204f5a01d0a3ee9dc11f9a65004206d0874c2b8e825fca8b7a7cf013b2d', 'Stacy', 'Love',
            '2025-02-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '86df1a94-c880-415c-81c2-7dd557e65495', 'd04c81b9-deb6-41d1-b74d-3c4b87044451', '2025-02-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '55d4d704-e191-44df-9aaa-8f9e3df4ec3b', 'davidbecker@example.com', '8934be5a1a52b40310024df783783207957e17505f1632bf87f67e53662a504b', 'Hannah', 'Bond',
            '2025-03-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e84cc2e0-958d-4cb9-b0d4-f7056ea051ce', '55d4d704-e191-44df-9aaa-8f9e3df4ec3b', '2025-03-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '221dff75-cbc2-4443-a66b-8d0f3bce6358', 'samantha02@example.com', '25f03b04e3ac422536425c6754a668af7e91912a06260137f97640fe4a1cac70', 'Maria', 'Henderson',
            '2025-03-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '82844e4a-dd3b-495e-884d-99ba49c0191e', '221dff75-cbc2-4443-a66b-8d0f3bce6358', '2025-03-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '614463d1-3a17-4e95-91e6-b32e425cbcbb', 'danielle07@example.net', '2eb1f780a95c87cb490454b7c04cadd1d47fa9818c54552a218d7fa155a2397a', 'Chase', 'Mendoza',
            '2025-04-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3d7ddb0a-1ea8-4db3-ae95-ddf15156181f', '614463d1-3a17-4e95-91e6-b32e425cbcbb', '2025-04-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c0bdeaf4-88d1-420b-a414-a742fa42b257', 'bakerzachary@example.org', '3db900e0d3025da0158705536200f90d9003150b5af4a33dc3b0d8acccd054e2', 'Stephanie', 'Pitts',
            '2025-03-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a78b555e-8e95-4089-995c-81c5e4f8d43b', 'c0bdeaf4-88d1-420b-a414-a742fa42b257', '2025-03-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd21b0d39-8ef4-4fc0-a64b-537fdf4ae88e', 'andersonjohn@example.net', '94c9bb47346266972fd974ee8f09f6391e7b5fc29d52baa19a5b87379ed46cbc', 'Timothy', 'Watts',
            '2025-01-28 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c7755ae7-1571-4a84-a6cc-3d1bc12ebeb1', 'd21b0d39-8ef4-4fc0-a64b-537fdf4ae88e', '2025-01-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5b8922c5-ded8-43e8-98b2-2cb270567819', 'ambermcclain@example.net', 'fd62a990e87e12ab898857760a1e1d6888121649e5f0ed992b7bb37bd9e38cb0', 'Maria', 'Harrell',
            '2025-04-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4ddc8d61-9eb7-4933-bd8e-55543265dfda', '5b8922c5-ded8-43e8-98b2-2cb270567819', '2025-04-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '61edfd38-68be-4bf8-b7d5-efd30c2e7d87', 'jgardner@example.com', 'c00ddcd32fe807a8a84fd488c14244698f711379994ff09e9e940504b37f28af', 'Frank', 'Lawrence',
            '2025-01-15 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '50d26289-b405-4d9e-b954-712bf643118f', '61edfd38-68be-4bf8-b7d5-efd30c2e7d87', '2025-01-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '761e4bb3-2d4c-4d3a-963a-b2f4d36b08ca', 'christopher29@example.org', '8ebbfe951b0fc4c61ba97fb2941478e058aa07c57817792a6237e034d9135263', 'Daniel', 'Rogers',
            '2025-03-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e896a1ed-4228-4e1e-84b5-705e7a5d992b', '761e4bb3-2d4c-4d3a-963a-b2f4d36b08ca', '2025-03-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '22466173-9991-431e-9bdb-f8407e4492a1', 'austinlisa@example.net', '0650846dae13418399e59a6bdcdb0da281fa6d3263f07feefea539356cf2e880', 'Brittany', 'Ryan',
            '2025-01-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e3d1baa6-b17b-4074-9633-7df04e0393a3', '22466173-9991-431e-9bdb-f8407e4492a1', '2025-01-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3aa31d3b-92aa-4b10-bff2-70ba1c4f5a51', 'kevinschultz@example.com', '6667f313430e712ca66ad906b865350eb4d8327f6417e5e3b1198b95505c5156', 'Jason', 'Nolan',
            '2024-12-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fe05a69c-858f-438d-820e-485a5dceafbd', '3aa31d3b-92aa-4b10-bff2-70ba1c4f5a51', '2024-12-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '66a5a9cd-8428-4847-837a-0f5272d003ea', 'brittany70@example.net', '7b826091fa88415d4b77e71ab07511f23edd215ae43a0d0c52aa48691df18fc7', 'Gregory', 'Miller',
            '2025-02-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'dfcbc78d-c1df-49b6-80fa-6720ac3b1224', '66a5a9cd-8428-4847-837a-0f5272d003ea', '2025-02-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cf0601c3-997a-4097-ae18-e22f976c5047', 'erin78@example.net', '237c9a68fa14eee0615a2edf0c8c22a7769369634d3fd5e715d6c01b3a40717e', 'Shannon', 'Taylor',
            '2025-02-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c1c60f17-89b2-4041-8cc0-4ea132fd0170', 'cf0601c3-997a-4097-ae18-e22f976c5047', '2025-02-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b3e628f2-6459-4e57-ab84-b930d303dad3', 'vlewis@example.org', '7d9cd96cd04eb0b2c0214f459ec6cd6a39a9cd5f767aa937982fc77c076276ce', 'Jeremy', 'Keith',
            '2025-01-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '97af72d9-5515-4e3c-8c40-ea119d2cc6db', 'b3e628f2-6459-4e57-ab84-b930d303dad3', '2025-01-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '472cf92d-3c0b-4252-84bb-93df7e23e8dc', 'dhernandez@example.com', '5260800ab9a65ecf6cfb0ae78cc75af9b37dc591eecd0f4d182151246aa0077d', 'Andrea', 'Ward',
            '2024-12-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '482a8b3c-5c2d-4d6b-b7c8-33c042c54d44', '472cf92d-3c0b-4252-84bb-93df7e23e8dc', '2024-12-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '79b62192-a499-402b-96b2-cd0298708055', 'breannaalvarez@example.net', '306d6b0cab2594224fa1245587298cc63eba49521c580b305aad88114be90f35', 'Cassidy', 'Jones',
            '2025-01-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c1c353cf-312f-4bdc-a4cc-5515edcb8869', '79b62192-a499-402b-96b2-cd0298708055', '2025-01-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '35d65f02-7859-4c3b-929a-165cf012fc1a', 'bishopbrandon@example.com', 'b2bfa1e714795dc98d60c8127da750684a19b27dcfbbda885fd41760676da584', 'Tina', 'Wyatt',
            '2024-11-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4de1d6cb-0384-4ec7-a7b8-9cc6f146dad9', '35d65f02-7859-4c3b-929a-165cf012fc1a', '2024-11-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1a9551e9-b191-476d-a9c9-1571a4cd6223', 'ifitzgerald@example.net', 'f7fc433d166df3109a77c0a680417379012ddc8487b5bf2faab861de01cc78bb', 'Sophia', 'Perez',
            '2025-01-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c38dee72-902d-4d48-8062-5a21e6590c41', '1a9551e9-b191-476d-a9c9-1571a4cd6223', '2025-01-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9f069e45-bf86-4ea7-a3cf-fbc16a8d3da5', 'perryvanessa@example.net', 'ef9aa457c1749975423b05854582bf02e44226b9161720f00bfbbee33893eb93', 'Mark', 'Acosta',
            '2025-02-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a7edc9fb-0f8a-4a16-8073-9458a588ecdf', '9f069e45-bf86-4ea7-a3cf-fbc16a8d3da5', '2025-02-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '695663d0-0103-4877-8e2f-0f817032ebdb', 'emily81@example.org', '50dd5687e0fb316260da41639cc4960269d7ea8d2a6c82caf62dfcb4b2ed3399', 'Alan', 'Miller',
            '2025-04-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3b5e3480-499a-46de-aa81-7dab4e12ddfd', '695663d0-0103-4877-8e2f-0f817032ebdb', '2025-04-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '53109da3-3481-4433-a298-f1be797a0ab5', 'hjordan@example.net', '4212bfec0163d7225cfc1fff7d6c26a324f1ede72da0f15ac2f2d4d2b8308f6c', 'Harry', 'Cummings',
            '2024-11-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ac447126-f8df-4ee6-a224-4610ef45ac55', '53109da3-3481-4433-a298-f1be797a0ab5', '2024-11-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '69466e0e-5155-42a8-9fef-897886fbfaea', 'andrewburke@example.net', '39800eec80e9bb143e4a15fc9bf1f99c64ee720bb3730d2b7d98db3d3b12afac', 'Lori', 'Bowen',
            '2025-01-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '274ac00c-3b51-4416-9a35-14bcca731904', '69466e0e-5155-42a8-9fef-897886fbfaea', '2025-01-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5ead3943-f15f-4e61-abb4-4179a56fbeef', 'ronaldproctor@example.net', 'b1abc9a7e62020f403abb6e9da7bd798ee65f533d6dd46a8043b18acaf641d62', 'Bonnie', 'Li',
            '2025-01-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bbe1e518-ceea-4da8-9c84-b6d7e629b9e3', '5ead3943-f15f-4e61-abb4-4179a56fbeef', '2025-01-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '41d9799c-2af5-4630-a9be-fc56b0de6443', 'brittany68@example.com', 'e5301e0ba7e471f2880bb8092b54ebfa9f04c7894ba174e9702b0d1ec7711054', 'Paula', 'Ferrell',
            '2025-03-20 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'dec77867-4deb-4330-92e1-e33f2fe2d702', '41d9799c-2af5-4630-a9be-fc56b0de6443', '2025-03-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bfe7113f-1949-451e-b816-12d04eb4fe52', 'ryanchristopher@example.net', '42031b847506c63b93801bc687b4e0cfc7c2831e6eb6e85887e7bc7318d6d93d', 'Kathy', 'Jenkins',
            '2025-03-28 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '20abb13d-7483-46d6-af1c-45fe33080675', 'bfe7113f-1949-451e-b816-12d04eb4fe52', '2025-03-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b9f4febf-ad83-4e17-b56a-52a5341f3f44', 'ortizstephanie@example.net', '5d1c42307d259cad05e369d04337956ab2ae0195ed3c8047dae31c74ef2344e4', 'Adam', 'Savage',
            '2025-05-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2a82c469-712f-40f6-a059-8426a34f7c81', 'b9f4febf-ad83-4e17-b56a-52a5341f3f44', '2025-05-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9a3ea196-d69c-4bcd-9e4a-19bdd25a805b', 'brendahamilton@example.net', '3740bde5ca235c381673d86214dc77fc18e939ed7de5f443079d3c424ae902f8', 'Arthur', 'Collins',
            '2025-04-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '654faa40-fe33-4104-bbab-3d93082c4b8f', '9a3ea196-d69c-4bcd-9e4a-19bdd25a805b', '2025-04-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '89e9b40c-b719-4e92-9949-012d22ec6eb1', 'davisjill@example.com', '6e7d75bf6cbb3b28d387ff94fb070f0b84ea230dd2e127d9cf726d587863cd98', 'Brian', 'Mason',
            '2024-11-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bfbfff03-9160-4076-a223-b2919b3dd980', '89e9b40c-b719-4e92-9949-012d22ec6eb1', '2024-11-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ab0db9dc-8696-4a2b-a6e8-9962e7196cab', 'christine02@example.net', '7d4991dd1aa14954b0a93f75a215237893bc09d03636b1bbda37f6a1e4b15022', 'Jessica', 'Becker',
            '2025-01-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4a9f28d0-4aaf-43a3-b505-e38d9e94e8ab', 'ab0db9dc-8696-4a2b-a6e8-9962e7196cab', '2025-01-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bc77966d-6e85-4244-a42f-0d23b2e7964f', 'tcole@example.com', '5d3646a26efb64a64280d54569c2fce7dee591203425e7f185243396e2f769f7', 'Larry', 'Wilson',
            '2024-11-18 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '637414a8-addb-4f30-bf53-4be788d097ae', 'bc77966d-6e85-4244-a42f-0d23b2e7964f', '2024-11-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7ab92fb0-6ca9-420f-8202-4f486db7ce5c', 'osbornetroy@example.org', '7ff64957ebfcbe9ad3a6140eb2b944f688260e430017bc5d7c1d69b5ada84a34', 'Jennifer', 'Brown',
            '2025-04-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c3c6bb68-39f3-40d8-863a-12c4eca9de95', '7ab92fb0-6ca9-420f-8202-4f486db7ce5c', '2025-04-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b342d778-ea33-4e33-a627-b9414ca5edc4', 'barrykelly@example.net', 'd64f4e3d3b2e82c6a7cb9f9b6cc9ef6ca2ff30b6bbcf5e49960f582308b23157', 'Debra', 'Fisher',
            '2024-11-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '904711bc-443d-41a4-8a61-4e43e7e0ccf7', 'b342d778-ea33-4e33-a627-b9414ca5edc4', '2024-11-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '069470a6-3e4f-462c-acc9-68de838fcba2', 'jstanley@example.com', '1ff97ebd6d3a45c72478f6ef91af0114d77dfc4849ceedad07c11db6d0a6b0e8', 'Ian', 'Jones',
            '2025-01-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e6aa5254-49fc-4200-a7e7-3aea34d4c87d', '069470a6-3e4f-462c-acc9-68de838fcba2', '2025-01-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '691074cf-56f3-4ee4-a88a-e44eb4d5eb8c', 'steven01@example.com', '900ed10c9fd0ee9667b07ab7a1e1185228971e545660d032571ee79c228e8e84', 'Joseph', 'Jensen',
            '2025-04-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5123ac2b-bb0b-4ec1-8f58-0fecd74ec1b0', '691074cf-56f3-4ee4-a88a-e44eb4d5eb8c', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '13142e38-e2ba-4ffa-9a81-be1ad69ace26', 'colleen89@example.com', '6409c3b51a7146afea5da12b82ae1a0739d55315d8ede15b7586baddfb6a8557', 'Benjamin', 'Price',
            '2025-04-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '020a2995-8b62-4e9b-b055-7acad32f6e86', '13142e38-e2ba-4ffa-9a81-be1ad69ace26', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3f9bce25-dfc6-4f5f-9001-3f3419130324', 'jeremy73@example.net', 'baa0886fd273fc9168d8098f82e8ccd40f2de2e01ed76547b2901cecd906be6c', 'Victoria', 'Campos',
            '2024-12-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ff23d946-2726-44d4-af75-09c6c49f8cdc', '3f9bce25-dfc6-4f5f-9001-3f3419130324', '2024-12-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c8de6470-ead6-4614-8219-75fde5d2bdb8', 'wagnerchristopher@example.org', '5ba889ecb43f3c45efe329f92dd0e7771abf0d71c7c980046fbb1ebb8f26b9fc', 'Jeffery', 'Bowman',
            '2025-03-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9071cff1-8df8-42ea-96f0-748f748111c5', 'c8de6470-ead6-4614-8219-75fde5d2bdb8', '2025-03-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dfaa0348-5109-4aba-b568-00d2c4658a91', 'tortega@example.com', 'bd94b94e786ef31412dd0f89081278e801f0c27a472b816db223bb1afd14d9aa', 'Ryan', 'Thomas',
            '2025-01-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'dd674414-1ee9-4645-beda-c6f2d7652760', 'dfaa0348-5109-4aba-b568-00d2c4658a91', '2025-01-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '76431b27-a64b-4dda-95bd-052c34f518f7', 'davidbailey@example.org', '09a7655d6efe926e299c2b4439a76f7bfdcfa78ea822b9686d6c0699b0f6ec81', 'Thomas', 'Pineda',
            '2025-01-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a0b00553-7ab1-4665-833b-b4a3956b0798', '76431b27-a64b-4dda-95bd-052c34f518f7', '2025-01-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b57e4be2-b8c3-4f98-82ee-807876793301', 'lisa80@example.net', '3f537852a02f0e5770db93850fd200f510f2befc0ff47ab69ce35fec35a55ab8', 'Andrew', 'Hughes',
            '2025-01-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '295485ce-cfd8-4b1e-86bd-d56e4634d45b', 'b57e4be2-b8c3-4f98-82ee-807876793301', '2025-01-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a701f1f6-aaf7-499e-8452-f1011cb74376', 'jenniferjohnson@example.com', '5546e9314d164754080c8683601aab95ea22bb4b4017683a4e5dab04debc60e6', 'Rebecca', 'Mercer',
            '2025-03-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9d43ac8c-ca71-4290-9330-999aa0ba5ac7', 'a701f1f6-aaf7-499e-8452-f1011cb74376', '2025-03-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1030af0a-e10c-4af7-a433-8d6c3a43f593', 'rebecca07@example.org', '63be492ce57a5e9fd13fa8a0e415fe11e38cbab9efc4cdc203afa521a3be23e9', 'Jon', 'Kramer',
            '2024-12-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cc19ee2a-9ab2-477c-b802-b8d84ef4d65e', '1030af0a-e10c-4af7-a433-8d6c3a43f593', '2024-12-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '06eaa48d-bbb0-4ab7-bdc6-321ad16fd3f7', 'martinelizabeth@example.org', 'a5a76777d6cf6354617a1c6f650f7e4efd8be9588d6dc18755bce59216f15068', 'Marilyn', 'Edwards',
            '2025-03-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '51b93c1f-813d-44b4-85cd-ab4d68286020', '06eaa48d-bbb0-4ab7-bdc6-321ad16fd3f7', '2025-03-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c248b477-7276-4e49-92a7-85fe62dbf90b', 'jon26@example.com', 'b4db9141cb9873ed6e3182a269419499a3c1c8b092c94e3551df5b69ea338136', 'Michael', 'Jensen',
            '2025-04-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8dc20624-4ac2-4d03-b397-be01bdfacb9a', 'c248b477-7276-4e49-92a7-85fe62dbf90b', '2025-04-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '865014d0-2c41-4099-831b-918bda466a4d', 'webbheather@example.com', '83a06f58317d3f417f9bd6fa6ac8002ac5d3f45df3b98a6741f5cea4000f4897', 'Thomas', 'White',
            '2025-02-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '681fbfa4-c094-4b9d-b03b-5aecb81c9d95', '865014d0-2c41-4099-831b-918bda466a4d', '2025-02-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '85b12be5-6bb6-441a-aa5b-2bad2b476555', 'tmcclure@example.net', 'c687b7f678db944e0fdf6dee2e305ba7f890317a9ae27ac6fda1236ddd06c796', 'Jordan', 'Hudson',
            '2025-04-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cf37a5d7-551b-4fc6-8455-ee1b6e482e96', '85b12be5-6bb6-441a-aa5b-2bad2b476555', '2025-04-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '28623114-7134-45f4-80a7-79d4b2295bc3', 'carlos79@example.com', 'd3066e57a55cbdfa03096668d55d5ae1cc88c9cd98bb0904e5bce77a24741b14', 'Jasmine', 'Cook',
            '2025-03-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1ffaef74-5485-4a57-8f61-4bfebc87ec09', '28623114-7134-45f4-80a7-79d4b2295bc3', '2025-03-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5a9a7a84-6c22-4c2f-af1f-17c984d86bf0', 'bakerandrea@example.com', '5a3ab22eba01a6073da33bb7cfb55415d49edaf305c7178487cbde874fb706ad', 'Kelsey', 'Carlson',
            '2025-01-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'dbfb7312-a084-4192-b982-dcdf95978e86', '5a9a7a84-6c22-4c2f-af1f-17c984d86bf0', '2025-01-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ed5f01f7-4765-4246-aed4-6fef15b6c04e', 'brian47@example.com', '699e7e3520389297bd7e4e15452671094b793952e842581baada52d891478afd', 'Dennis', 'Chang',
            '2025-01-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7e163bb6-75ae-42ca-8f93-f89e0f24c20b', 'ed5f01f7-4765-4246-aed4-6fef15b6c04e', '2025-01-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '03c0b26c-be7c-4775-b882-fc15584144ea', 'fperez@example.org', '8c49b5f846e3bbbcf664a49e0773b76f30c5cbbd744d57d92e0ed0e4a1d91eed', 'Rodney', 'Miller',
            '2025-02-13 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0c85d943-3818-49a2-b049-ca45f84a92af', '03c0b26c-be7c-4775-b882-fc15584144ea', '2025-02-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f8d580fe-2adb-4fb2-b3e8-d344233cb10e', 'robert71@example.net', 'a98ac7786ecf4bc41089ffd6b91add108bb8c4a548625fce19c56dcf45e3a04a', 'Daniel', 'White',
            '2025-02-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c732704c-6300-47fb-b7c2-a0f6fb4e80f1', 'f8d580fe-2adb-4fb2-b3e8-d344233cb10e', '2025-02-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7315a43a-321d-4b30-aa7a-94b715986576', 'erinjohnson@example.com', 'd77d3e0dadca36b31a03b1f3ad1a4dbb7f3bd0de3d34b2170249f1fb5ea33498', 'Jessica', 'Nguyen',
            '2025-01-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '51a1cade-2b62-45a0-a429-de62fe7cbc33', '7315a43a-321d-4b30-aa7a-94b715986576', '2025-01-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8f6de3ff-be9f-4162-850c-05f57f6915b9', 'stephen52@example.org', 'b67310bfa7cdcf18d5dec489d5f8820a4bd9bc1ad55028deaaebd74cb99d8270', 'Lisa', 'Hall',
            '2024-11-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b452ca5d-54cd-4368-ade1-fb4af1538a45', '8f6de3ff-be9f-4162-850c-05f57f6915b9', '2024-11-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ad652114-b0c6-453f-98b5-ad87b57abcee', 'tschneider@example.net', '5d06e5a860392edd8e21e82fff51ce34ad39e097cbd97e4174d5a82c91e25214', 'Robert', 'Russo',
            '2024-12-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1fef7e08-1f3d-48ed-b281-03e3901dc087', 'ad652114-b0c6-453f-98b5-ad87b57abcee', '2024-12-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'aa034904-29cb-4a53-ba1a-58f57690796f', 'tpayne@example.org', '2a5ddae203906281f3839e71a765bdb78402375a8188cc0698ed0690af90f0bc', 'Stanley', 'Reese',
            '2025-03-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5b63bd1e-1e94-4494-98b0-e7161b4a0f59', 'aa034904-29cb-4a53-ba1a-58f57690796f', '2025-03-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5de98958-b17f-4d6c-9da9-4a82ec170170', 'adriennewolfe@example.net', '4e55270a5ee8dc07c8ca82324f0b740aaa63a5f90f4ef748f01228a56d688b1b', 'Joshua', 'Caldwell',
            '2024-12-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4514c7be-05b6-4b3e-a8e5-8129b35da8cd', '5de98958-b17f-4d6c-9da9-4a82ec170170', '2024-12-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '344b6a97-8761-40d9-aa23-cb8482f0acbf', 'troy00@example.net', '9429b39671cbdece21e08468496c691edaa312cd58c8ccc1d99f7ac78183480c', 'John', 'Flynn',
            '2025-04-05 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f2ecd5e5-e3dc-407f-b28b-47f425941196', '344b6a97-8761-40d9-aa23-cb8482f0acbf', '2025-04-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b9752f63-ca3c-4f2b-b748-205328c517d0', 'bartonralph@example.org', 'dff4e2fc00e21cbd6467fb16c2d03ed50a5e2c7eebca852156d445655ce706e1', 'Amanda', 'Lang',
            '2025-02-10 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fa5bce6b-c129-44bf-8927-966a15d10e70', 'b9752f63-ca3c-4f2b-b748-205328c517d0', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '30bc3c64-5d19-4574-bb0d-5f62d3c578bd', 'torresjustin@example.com', 'b6646683b4cf62af3ffc4ce8965cd522219fa4efb5bac4e7a689cdef33090bc9', 'Christian', 'Bass',
            '2025-03-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0e4081a1-6ab8-4bcc-b588-ee6676cfd3f3', '30bc3c64-5d19-4574-bb0d-5f62d3c578bd', '2025-03-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '40339494-8609-46d1-8b80-45900b643316', 'chadlozano@example.org', '166a4031654df4fbe44200b4c7048b71927e6e63a283312b6ee2bf4589b6c4ef', 'Adam', 'Anderson',
            '2025-01-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '230b8cee-cdbd-444a-a9e2-a507347af04b', '40339494-8609-46d1-8b80-45900b643316', '2025-01-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4b2f2a7d-7a07-4a23-8287-b6d6b229008d', 'stephenharris@example.org', '8a540f1ffdd7d028d6eb5de243ae98d1d09797dfeff049ba4a9f26078b0e653b', 'George', 'Sullivan',
            '2025-01-15 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9b851087-c09b-4535-a92c-d8a6e232d702', '4b2f2a7d-7a07-4a23-8287-b6d6b229008d', '2025-01-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b3a01da2-db3e-4205-85a5-b1210cead2b8', 'joneseric@example.net', '76af6dbbd9cbdcb1e9903bcd0a6a7793545e0defe1e1a52f265167b04a1ca634', 'Jason', 'Benton',
            '2024-11-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6597fc48-3475-4b70-8890-56c93035c87d', 'b3a01da2-db3e-4205-85a5-b1210cead2b8', '2024-11-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5fdc1b24-ac93-47db-ac06-95a3edf19394', 'peter40@example.com', 'c5a84ee8ff17c0beae5d86d3c78e0190142bfbe59838be1bd6a1fe882698e1ce', 'Larry', 'Jones',
            '2025-01-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '34956d82-db18-4b37-84c6-06e5bdc74c13', '5fdc1b24-ac93-47db-ac06-95a3edf19394', '2025-01-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f306b617-3962-467a-af89-2345545af5fc', 'gaguilar@example.com', 'ae9b6651e73382b101598fc9ba9b32c822c9441c5ccaaa638eaafd0db3a2ecbe', 'Kimberly', 'Baker',
            '2025-04-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bb08ea9d-d744-46a8-a384-fa12523f523a', 'f306b617-3962-467a-af89-2345545af5fc', '2025-04-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0e018f97-f295-4cd8-848c-e936d83fbd1c', 'ryangriffith@example.net', '03af208f3a31b83d9a66d2e41d3ce7d5f09ca926e45d5203d2eedb4d74573394', 'Michael', 'Dixon',
            '2024-12-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fb993b4f-784a-4e70-aea1-71b1237d5fcc', '0e018f97-f295-4cd8-848c-e936d83fbd1c', '2024-12-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b4617073-9875-4d0c-adf7-942e7f4a6f1a', 'hcamacho@example.net', '3fed7c7c5a4eecda3bed749a311abe6310c51d7145889c6d19930132d680d47f', 'Fred', 'Lopez',
            '2025-01-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fbe2a02f-0d7d-4142-a557-c9a739e4db8a', 'b4617073-9875-4d0c-adf7-942e7f4a6f1a', '2025-01-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3036bd8b-0a4e-4acb-9533-8838bbd2dcf0', 'garciatammie@example.com', 'bbfa738f631bf7af03be24fdded66f61b533c2b1f83b150ab3ce4bec74d28a97', 'Aaron', 'Rodriguez',
            '2025-01-26 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '87592404-6504-41b5-bdb1-603df411fd9f', '3036bd8b-0a4e-4acb-9533-8838bbd2dcf0', '2025-01-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4ec3774e-407f-4c98-bd07-db487bf194de', 'steven58@example.net', 'ca1bf213c82cb37fe2248920cf80d594dd703e99520e57a0eef993c5d7387416', 'Ricardo', 'Brown',
            '2025-01-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f0b25e71-622e-477d-8fe0-17204a8aef5a', '4ec3774e-407f-4c98-bd07-db487bf194de', '2025-01-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0632a372-917c-4731-9bfc-490dce91dc0d', 'alexanderwiley@example.com', '22c4afd7dacaf3bf545dbf44c4c30e0fbf478a484c52a1960abf6584e8784490', 'Johnny', 'Nichols',
            '2025-03-30 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '21b82733-6b97-4303-ab58-5518f61db1d6', '0632a372-917c-4731-9bfc-490dce91dc0d', '2025-03-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '36c0a8fe-64ea-46db-a2be-8022c8a25d5c', 'johnrobinson@example.com', '31815523e3bd4d84bd99aa8d468b815281cf2a3095882b1434b10bbe1e75b764', 'Kristie', 'Thomas',
            '2025-02-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c02bee88-a27b-4a17-8d44-12a04fdf717a', '36c0a8fe-64ea-46db-a2be-8022c8a25d5c', '2025-02-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ac6c122c-951e-4835-b4b2-21edc120eabc', 'emilybenitez@example.org', '3c0ef2f5eca132f457ba1f06c9930b38100ff48f24f488c2adc92bbcd20b0fe6', 'Jennifer', 'Cook',
            '2024-11-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '11bddeec-4cc8-44ad-a440-82681051f367', 'ac6c122c-951e-4835-b4b2-21edc120eabc', '2024-11-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bdf0e17a-05b6-4517-9fdb-76e26408e9bb', 'renee56@example.com', '7db2c40259c536ffe04936b459eb932a198575fc7db7f4594d97976fd3743927', 'Penny', 'Schwartz',
            '2024-12-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '998d434d-678e-4719-bf03-8b33abeafbc2', 'bdf0e17a-05b6-4517-9fdb-76e26408e9bb', '2024-12-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6c9ed811-23bd-431a-8e08-1447ebd8ccd3', 'brucebell@example.net', 'ca87206ba30133e10b64527e8d3b2f8114c44e9be433694614bb0c1e514cb2db', 'Brandon', 'Hunter',
            '2025-02-07 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7e4cf00e-c470-443a-9068-26c1175d3dfa', '6c9ed811-23bd-431a-8e08-1447ebd8ccd3', '2025-02-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4bfeb79e-1de2-4509-91a3-fa03bcac9821', 'michael57@example.com', '4b6b1abbc80f79ee602b036fd8231a2b65569cb5686082a92ef134cbf03806f4', 'Ashley', 'Barton',
            '2025-04-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8f249c6b-c7b4-413d-b7b2-3e64374ccb48', '4bfeb79e-1de2-4509-91a3-fa03bcac9821', '2025-04-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '466566e1-92e6-44d3-b394-7cf74d498a61', 'acostagreg@example.com', '56ade4935fca43efceb2cf85c4796a665cbdbc208a0765e20f5b90f8c931db5c', 'Jessica', 'Jackson',
            '2025-04-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a09c2014-6354-4d64-a25f-cadd955fa942', '466566e1-92e6-44d3-b394-7cf74d498a61', '2025-04-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b9513569-b7ee-431e-a9d9-b5749a37d8a3', 'ecooper@example.net', 'ea3c0659a1bebfc92a33917c12865c76ba453d193fd96f1ca4fe24d02a28c5ab', 'Diana', 'Williams',
            '2024-12-18 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6c415155-c200-4c37-855e-95b104c24421', 'b9513569-b7ee-431e-a9d9-b5749a37d8a3', '2024-12-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ee70d71b-62d4-4902-8823-b7fb963f4465', 'catherine28@example.net', 'f7afec230b4775e367eb475ea4f900b6a4219e7db92bb7d06cc52945a70b6ae3', 'Eric', 'Jordan',
            '2025-01-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b1929fdb-db93-4067-a20c-19e3907d6145', 'ee70d71b-62d4-4902-8823-b7fb963f4465', '2025-01-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8ac34620-2d40-4c0c-87e3-f2786f4ca815', 'xyoung@example.com', 'c0daefd4304f9ad5388691351f8044337a8ac76d4686210ecdc06fa5928527f1', 'Troy', 'Lawrence',
            '2025-03-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f9f3eba9-4000-492e-be12-9e12457b3ace', '8ac34620-2d40-4c0c-87e3-f2786f4ca815', '2025-03-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ced402cb-75ef-45c2-978c-3c83c891f5f7', 'janetbradley@example.net', 'abbef1aeddbc5d6f3c5edd62f6bdad72b6982673c780ff00901e11e6ef1ffaa8', 'Michael', 'Erickson',
            '2025-03-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0a4f8251-caec-4627-b7cc-ff0b0c33e502', 'ced402cb-75ef-45c2-978c-3c83c891f5f7', '2025-03-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e30c8e5f-b39e-488e-b33f-19873a3ae53b', 'rcampbell@example.com', 'cc4e79daf6fe4cede48bc214204dd930dded25767e67ed91526e07548dba23db', 'Chad', 'Norris',
            '2025-03-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '83c7fd1b-b2c3-489c-8013-9f17a0d04c60', 'e30c8e5f-b39e-488e-b33f-19873a3ae53b', '2025-03-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3e94cadf-47fa-4ebd-8814-b06790585685', 'kanderson@example.net', '020846b9ccfe27d6004a7e4f3b6764e32837edb6de3238225fb2762b59c78b16', 'Vickie', 'Cruz',
            '2025-04-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '253beaa9-61ac-49a8-8569-f7e198be4a90', '3e94cadf-47fa-4ebd-8814-b06790585685', '2025-04-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6e343a23-162f-4e0d-9757-4055e65adce8', 'currynicholas@example.net', '209c3a6bdc7514a33b8f1f29c270ced7f1ffd02c37d17b6c7ac6aadd15ee574d', 'Lisa', 'Collins',
            '2025-05-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a831c8e4-0856-4484-8e92-6ea367d93df5', '6e343a23-162f-4e0d-9757-4055e65adce8', '2025-05-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '13b94d8d-3a61-4f85-a8f2-7541c050a64f', 'henry81@example.net', '3aec1097f4d63c9efdda8114a63f564571a5f0e287fc736b97f29af104373dc2', 'Lauren', 'Castro',
            '2025-02-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c8fa6168-3820-4c03-829e-8fd4d7ca86f2', '13b94d8d-3a61-4f85-a8f2-7541c050a64f', '2025-02-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6db405f8-c8e5-4712-bde0-6797a8a580c5', 'dgreen@example.net', 'a9d3025936d22b0dc827d9dabc1a32aacf90d0a488057bb468316d41ef6af06f', 'Phillip', 'Lin',
            '2025-01-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '11aac245-3c9d-49af-8891-7c11190ff65b', '6db405f8-c8e5-4712-bde0-6797a8a580c5', '2025-01-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '58d9b4dc-7860-4b3e-a3ac-32e46a101fca', 'rvasquez@example.com', '9a74e7b71c865ecfe2bb3bc545f036324b7256492c450c738a9bad3f452989e6', 'Paul', 'Martinez',
            '2025-03-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bb530d21-b567-42d3-9bb5-15da4dcc16b3', '58d9b4dc-7860-4b3e-a3ac-32e46a101fca', '2025-03-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dc3d543c-d3e5-4478-a88d-a236804e51bb', 'qjones@example.com', '98e3db8fbf54a0aa7e83025b4c0a326b5c9031e3d130c12781161bca4b6837c1', 'David', 'Hill',
            '2025-01-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b5499880-7c94-4468-b135-7f5d66e6dcdf', 'dc3d543c-d3e5-4478-a88d-a236804e51bb', '2025-01-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2167528e-731f-4949-89a6-6fccff07f9a0', 'haleylee@example.org', '3822e87db430ce7e30439412b137452e89034d4b4306f903e838fdc694153456', 'James', 'Kelly',
            '2024-12-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4a31146b-4f17-47bd-981d-700e811981a1', '2167528e-731f-4949-89a6-6fccff07f9a0', '2024-12-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0b95f3f7-ebf3-44ac-a0ce-c66685500c0f', 'fordjackie@example.net', '7e87229fa0579fca7e01caba0ca1696ca07aee9946ced0e4c5e67ffe6f54a1d9', 'Luis', 'Cox',
            '2024-12-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5878b70b-23c6-45c8-95ad-0745836f72c9', '0b95f3f7-ebf3-44ac-a0ce-c66685500c0f', '2024-12-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '49b7e536-23e8-4ddf-99fd-9b69eb51f961', 'nicole40@example.org', 'a3c7d49a36bfe2637de41c5fa5b23e37c293e5eb07af4e34178c0ce205f8b8ec', 'Anthony', 'Hanson',
            '2025-04-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5ba211f3-8b05-40ef-ae29-8ffa87e831b1', '49b7e536-23e8-4ddf-99fd-9b69eb51f961', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ffd8f772-aa3c-4505-ae86-5bde4bd9de38', 'brownbrian@example.org', '5baaf79d0cf74ea839bf0c787d2ae71e5979c2c145bdb6a35fa3a8915c863942', 'Cory', 'Swanson',
            '2025-05-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e7da614c-9fba-407c-86ce-dae44bf2dc3c', 'ffd8f772-aa3c-4505-ae86-5bde4bd9de38', '2025-05-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '44a144cb-8e84-46f2-a3c0-49b67cce0190', 'martindaniel@example.com', 'a9fa8b3e6ca1b5f9e3d85bb9b406dee6c7e18c8fb9a48524e455dba861425771', 'Michael', 'Drake',
            '2024-12-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '39babacf-98ff-4c44-aaf4-0a268c7f6e14', '44a144cb-8e84-46f2-a3c0-49b67cce0190', '2024-12-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f3e94622-b02e-42af-ad68-ae20e43ec7ab', 'alan36@example.org', 'f775079b5b5e2901082423a1b9b5db08b71dc30f1bc82d434e2e57b659f9f195', 'Anthony', 'Smith',
            '2025-04-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '07a0aab6-e4cb-463e-8c03-e5bf78108d38', 'f3e94622-b02e-42af-ad68-ae20e43ec7ab', '2025-04-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8e1673ac-2181-4bcf-9f45-93c4320ea17f', 'michael80@example.org', '1772cb8e5c51c6c77e7b46c873a16dee1206c6070791d79204589bff3a839cb0', 'Karen', 'Thompson',
            '2025-01-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd302e570-aa81-4eed-a627-9fec15f97f23', '8e1673ac-2181-4bcf-9f45-93c4320ea17f', '2025-01-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c8b224c7-d1af-4961-8390-bed10c92dd45', 'hernandezmichael@example.net', 'd3b09e34e082c1fdbb757491bd1bd29fa5723c01b70d88e2020cab9a8a506b8c', 'Ashley', 'James',
            '2025-04-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b19fd6c4-4fa4-48b7-892a-456eddc66777', 'c8b224c7-d1af-4961-8390-bed10c92dd45', '2025-04-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7e5901ce-d2ed-4b4d-9e6c-f9f06c6fe47e', 'brownthomas@example.net', 'dfbe0738ecd022ef4c25e843c790da126569ed381115922fd2a536cdd573771e', 'John', 'Jones',
            '2025-02-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0c6fd200-7a07-4925-b01f-15155aa9f85a', '7e5901ce-d2ed-4b4d-9e6c-f9f06c6fe47e', '2025-02-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e9eebf86-c8ef-40fe-8536-7fabd5c328c0', 'schultzronald@example.com', 'a4f4d60f34dc18d4dc5cc285bfe84c1b12ef500998275fb249fcb729f6eb4970', 'Christopher', 'Sullivan',
            '2025-01-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5fd31897-13f5-43b7-8aef-911d5f83ed1f', 'e9eebf86-c8ef-40fe-8536-7fabd5c328c0', '2025-01-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '68dc7bdc-6aa6-47ed-9b1f-3d4b90234c09', 'mooregabrielle@example.com', '28d86bbdeba2ad5bce4d8bd30a4abf851eb6eca3586517c11c8e0670ed5bb42b', 'Aaron', 'Ruiz',
            '2025-01-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8a2e3265-9fdf-4005-909d-ca4dfc6cedae', '68dc7bdc-6aa6-47ed-9b1f-3d4b90234c09', '2025-01-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ee39fc93-b5de-4fac-a2d1-c650500fd16a', 'danielsjoel@example.com', '07d0caa8833db3d0e50e8fe9490eb7eead525f3d10fd5af6115783314e182229', 'Caroline', 'Benson',
            '2025-03-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fbd4f4be-5e45-49ec-9776-126166992cee', 'ee39fc93-b5de-4fac-a2d1-c650500fd16a', '2025-03-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6bc6d0e4-b821-4f55-8059-e5d2d6a69db2', 'griffithdavid@example.net', '2a07c56009ca20b7eb4bb14ec744fbe2b6c4a351682cbef3b24bde0fdb831317', 'Ronald', 'Moreno',
            '2024-12-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9a570c35-ad0e-42c2-afa2-3fe5d8dc8c21', '6bc6d0e4-b821-4f55-8059-e5d2d6a69db2', '2024-12-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4e022b7c-3e6e-48e3-aa52-0de2dea87c5c', 'david26@example.org', 'f09d278a0be4d34149b0aa625b8d060d707ba354dbce7cb41d6307f0c0d8bb75', 'Jeffrey', 'Rogers',
            '2024-11-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8034d0a5-56fa-4140-aa50-e5354270ab5d', '4e022b7c-3e6e-48e3-aa52-0de2dea87c5c', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7c3ee75e-c3bd-45a4-aba4-5e6f74405424', 'brenda96@example.com', 'b586abcfc7b3e43cc631e772294078baac2b854a75363659a20e3279630008f3', 'Sandra', 'Brooks',
            '2025-05-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cedaede5-0652-43ff-862e-a27bca858301', '7c3ee75e-c3bd-45a4-aba4-5e6f74405424', '2025-05-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '166cf9ac-4c55-4d21-b965-7c164c7d3e1c', 'wayneharper@example.org', '4f15674765f76c311b4db1027c4de66011660046dfe93561b82a05ad533cdbd9', 'Colleen', 'Nelson',
            '2024-12-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0d87836d-8eca-47a3-9cea-c7df3d38882a', '166cf9ac-4c55-4d21-b965-7c164c7d3e1c', '2024-12-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ac8a49b0-99ac-4217-a73f-c9be75fef988', 'john41@example.org', 'bc7adfea2fbde2d916028b202b8659cdf3e8104babc7c549e1fb30ee2543212c', 'Stacie', 'Wright',
            '2025-03-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '757ce33d-c89d-4cdd-89e2-391a2847daee', 'ac8a49b0-99ac-4217-a73f-c9be75fef988', '2025-03-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e456f459-8794-4b78-9e52-2499f42e0b29', 'alyssahawkins@example.org', 'f48e8d6fc6cd7ce0ba66aa592bebb787b60ac1a6e619e28421390fc01dbd385b', 'Donna', 'Melendez',
            '2024-12-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0fb54cdb-00fa-4420-9230-1ad4d1828d0b', 'e456f459-8794-4b78-9e52-2499f42e0b29', '2024-12-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ca082f1a-822d-4d68-80ac-c65fbe20fd03', 'sergiosnyder@example.com', '1293d6dd49481aa8cb8396e05cacaf137c633759abe98f6b1f432c33d6b9bbe8', 'Robert', 'Thompson',
            '2025-03-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a64a1fe8-4c7e-450e-8870-cee090012e3d', 'ca082f1a-822d-4d68-80ac-c65fbe20fd03', '2025-03-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '552aa736-c085-43ef-a522-d8c9e024cbe5', 'michael29@example.net', '8b5d7e54c77f0b730da3022a1592bec5e8358b7fda16cd8045f2845970661508', 'Shane', 'Adams',
            '2025-03-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e78ac462-c15a-44ac-82a1-1856fdd6b6a2', '552aa736-c085-43ef-a522-d8c9e024cbe5', '2025-03-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a35c325b-07a1-4f57-80d4-e4a53853d2aa', 'starkdorothy@example.net', 'be1add458710463a28c439415881863011295213f877cf0fb5dcc2b8bb396365', 'Crystal', 'Jones',
            '2024-12-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1eccc5e9-f1fb-4f83-809e-f97013da5c21', 'a35c325b-07a1-4f57-80d4-e4a53853d2aa', '2024-12-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '416c543f-fb32-408e-9a5a-134ac3b0fe94', 'elizabeth49@example.org', '05c1e9d356fd4c868d8965b449e937b13cc19a76955fbb02309615ba499a248e', 'Sabrina', 'Gomez',
            '2024-11-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1af9fb34-592f-4454-87d3-9c3a90b0f057', '416c543f-fb32-408e-9a5a-134ac3b0fe94', '2024-11-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7c0c0798-4db4-49b6-9023-b7d1a6714f7d', 'david81@example.com', 'c1efaab140f677c9f33a77a630e64093a799f43675d0960567e47e0b91c2e0f4', 'Nicole', 'Young',
            '2025-04-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2192b252-f445-4a27-98a1-36a60c035e84', '7c0c0798-4db4-49b6-9023-b7d1a6714f7d', '2025-04-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7acc4a0e-5a15-494b-a6b0-ba3000914514', 'emiranda@example.com', '0af04ccd72d0a4c5bdbfc27fbe1bf773a32b0b68ba4b9c60d8f0fc7b1d6961de', 'Jasmine', 'Phillips',
            '2025-04-13 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '797da4ca-e8ea-4928-8d82-7a8d077f023f', '7acc4a0e-5a15-494b-a6b0-ba3000914514', '2025-04-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9865b44e-0319-4641-91b8-c7cd36263698', 'leslieriddle@example.com', '617ff692b56db57f2a7f9e3e350b52db418eddb4727a3096f2009441af04ab58', 'Elizabeth', 'Padilla',
            '2025-01-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8300b1de-215a-472a-a852-3c8af0f88f8f', '9865b44e-0319-4641-91b8-c7cd36263698', '2025-01-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '44c0cba2-8ee0-468e-8356-90bd1984c52c', 'marcia16@example.net', 'f812baa9c1695e2e5fe01d4cd4f8bad1fe0318e496b04fbe63020f68436daefd', 'Heather', 'Sanchez',
            '2025-02-10 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1a4d30cf-c495-4fb0-959d-a961b5ac0524', '44c0cba2-8ee0-468e-8356-90bd1984c52c', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2bc3ed1d-b60f-445e-9e5f-89defc6601a8', 'michelledalton@example.net', 'eab27c3badf7aec9fbe606817f388e582d0c1a976a157d95149b6ae4d697fffb', 'Frederick', 'Taylor',
            '2025-01-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b4014cb3-9e7e-40c6-af99-bef1eb90e084', '2bc3ed1d-b60f-445e-9e5f-89defc6601a8', '2025-01-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5dc6b463-1cb2-4f3b-ac89-7743dfc9143e', 'christina95@example.net', '04b32a2d634bb82782f1500b847fa3ebf960121cd50f3ad29e722c919047e8ab', 'Shari', 'Reynolds',
            '2025-01-18 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '61776cbc-2fab-4199-99c1-04a32a3cf23d', '5dc6b463-1cb2-4f3b-ac89-7743dfc9143e', '2025-01-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fc241b5f-58cc-4117-94ff-e1659136e3e5', 'nicolemassey@example.com', '5f7e309b880e84d68164bee6c8f8f86b746ae71748f3440dbaa8489528e77f2d', 'Pamela', 'Le',
            '2025-01-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2f17eb87-75f6-409c-a3f7-e494a69bae2b', 'fc241b5f-58cc-4117-94ff-e1659136e3e5', '2025-01-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e2041f88-ab4f-4598-ad6c-4a06d191cbef', 'jessicacastillo@example.com', '15ecf472ddc01ee2286f95b58c622b5844b44c3c19018249dd6e9a132720ccb3', 'Bryan', 'Velasquez',
            '2025-02-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '611cfe08-bee2-4017-b929-def78a1d444b', 'e2041f88-ab4f-4598-ad6c-4a06d191cbef', '2025-02-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'de1dc3b5-e451-4590-b894-bd16b099ebc6', 'ereid@example.net', '5fb836d7465644d241315080428fcf20fb3d1bb9f4d85e561231055dc1f2cb6f', 'Juan', 'Jefferson',
            '2024-12-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7fa669b0-9681-49be-ab82-22cc03a098d9', 'de1dc3b5-e451-4590-b894-bd16b099ebc6', '2024-12-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '077410e7-b679-4f17-8444-78ebd6b0c716', 'dixontimothy@example.com', '530c14118a7a71543b81abd0cf2acb97deea1b767cd5f618d3d1847fc39bfb9c', 'Benjamin', 'Stephenson',
            '2025-04-15 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '473a7a12-17d4-42cd-9dd0-ac0492530bc8', '077410e7-b679-4f17-8444-78ebd6b0c716', '2025-04-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e42ab7c7-80b2-4b8d-8791-13eaa08869bd', 'stevenle@example.net', '379bf50ba939d0bb3de83433c7d730376b05a28f288aab69632d512785a34785', 'Joseph', 'Pena',
            '2025-01-31 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c34b22e4-82ba-49cf-9265-cba43f06fc9e', 'e42ab7c7-80b2-4b8d-8791-13eaa08869bd', '2025-01-31 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9114d682-31c5-4bae-9e0d-f1cf68321e29', 'pacosta@example.org', 'de251f508025d283a8e021973b18da48aaaa80aca81ec5ee2465b5a4810b7453', 'David', 'Baker',
            '2025-02-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ba462690-3baa-452b-9615-37ece4deb2d2', '9114d682-31c5-4bae-9e0d-f1cf68321e29', '2025-02-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '238f4fec-be0a-49fb-a1f3-d3c59ad1e17d', 'heatherbird@example.net', '3f6846c279ca5eb3432b1b0bf7305e6ad626e06cef049cfd8e76379a32cc3927', 'Jocelyn', 'Young',
            '2024-11-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f12b2fff-e44d-4c32-9fff-8638eb443d03', '238f4fec-be0a-49fb-a1f3-d3c59ad1e17d', '2024-11-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '729d7735-e5a8-428d-90fd-e3e0ee86f79c', 'kelsey93@example.com', 'c0a548f8e09a333919e2a6eb09a5eaee89f738536c28dba98b2ce7975f2bc440', 'Evan', 'Carter',
            '2024-12-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cb330ea2-44e9-4015-9345-c6c00d778202', '729d7735-e5a8-428d-90fd-e3e0ee86f79c', '2024-12-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3106c43e-16a2-4efb-8d10-dd6ddf2432ab', 'isaac94@example.org', '8a155065f28dd018cd206740a3543fcc31d3c37bb6d7f062c1d9d760ddaba52e', 'Michelle', 'Cline',
            '2025-01-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c92c3266-38d5-491d-8527-04b50494b67d', '3106c43e-16a2-4efb-8d10-dd6ddf2432ab', '2025-01-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a752b2a2-b368-4733-a75e-dc67cd69e368', 'bonillamichael@example.com', 'bd247b3453f71da219e329fc0b2e0aa1680bb1766006ecb37a10e4818f7beab5', 'Eric', 'Reynolds',
            '2024-12-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '99de8d00-8768-415f-8fc0-1a78cc9c57ad', 'a752b2a2-b368-4733-a75e-dc67cd69e368', '2024-12-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cd0edcc4-0696-4953-a857-04f29a6e8fd9', 'sandraritter@example.org', 'ebb435f835afa0d7fdf9936ec1dea1be30b8b3c1f5ca8f30b245b09f48d7393f', 'Aaron', 'Smith',
            '2025-01-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '143d6fb8-7631-4fad-aecd-d1536dfe000a', 'cd0edcc4-0696-4953-a857-04f29a6e8fd9', '2025-01-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a5298f9a-0e56-4db4-bb91-acc0fc968987', 'joshuacohen@example.net', 'a932be3a43eeb624a2267d64117da3da6922ff9f52f27bf49f91ac8765b99327', 'Stephen', 'Howard',
            '2025-01-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e93c2e93-420c-4db5-8bb2-ad8fb35e2241', 'a5298f9a-0e56-4db4-bb91-acc0fc968987', '2025-01-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7fcc20ca-3bbe-41b3-83f1-9cd9edd916d4', 'ryan06@example.org', 'eafda6695bb0e78be34353b302b35095149fb3f6fc8acd551caa54a08cf8919c', 'Casey', 'Pierce',
            '2025-04-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'aa4dc3f7-ff62-45bc-b3a7-320ac2a6ff6f', '7fcc20ca-3bbe-41b3-83f1-9cd9edd916d4', '2025-04-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5d70d5bb-1a87-4b9d-852c-6b50b92372c0', 'hornechristian@example.org', 'acd4c24032b4cbf907a3e543e1c95d1aa69f85d1f69b296c1f7d71cb3ab90042', 'James', 'Ellis',
            '2024-12-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '25b7104c-5283-472e-815a-1c0340a47cdd', '5d70d5bb-1a87-4b9d-852c-6b50b92372c0', '2024-12-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2e51e9c4-47aa-4c3d-a12b-b9a43e18e1a3', 'zcruz@example.net', 'f9a1ac13f54fe583445d6368857239a3a9e2c4408cedf0297405a968f280ea52', 'Jasmin', 'Ballard',
            '2025-03-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9bd95d68-42bc-43e6-b6b8-87bac2c8d641', '2e51e9c4-47aa-4c3d-a12b-b9a43e18e1a3', '2025-03-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '433c6a36-1ada-40ea-a8a1-8ed56faba54f', 'paulhoward@example.com', 'a3288625f339e4c66fc77ceea85386927fa2b2013f5d4418f902da9a4fbfff98', 'Matthew', 'Ashley',
            '2024-12-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cd6c0d05-6ae2-4926-b451-171d67ebb14d', '433c6a36-1ada-40ea-a8a1-8ed56faba54f', '2024-12-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b59accec-31cc-4aaa-8417-1e84b8a627f2', 'angela79@example.org', '2b704c93680bf0c832139b580fd36ad26fd2703f9cd9d0b21eccbe67582e6d44', 'Amanda', 'Fitzpatrick',
            '2025-02-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e69bfdc5-7de2-4074-be7a-c4b410c149b3', 'b59accec-31cc-4aaa-8417-1e84b8a627f2', '2025-02-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5ee20fe3-d333-45ae-ada5-ac74c612f9dc', 'ikrueger@example.org', 'e071fdb0d4ef78eaa64e6647367bc96b6b86ee25dfad4427c768c10af0f7c2cf', 'Tommy', 'Lane',
            '2025-01-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2ffdaa03-6413-4b7f-b3ed-55be0dce5932', '5ee20fe3-d333-45ae-ada5-ac74c612f9dc', '2025-01-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'aab3d062-7c1b-43b4-b2e6-c45f6008d3bd', 'ysantos@example.org', '4f47bb622cf04a382d1b15a43208ae5f4876f54f94140315ac7c5cbf4ed4d034', 'Jack', 'Nielsen',
            '2025-03-07 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2b416e4a-79a7-4332-94ff-cf3c8fe35f4d', 'aab3d062-7c1b-43b4-b2e6-c45f6008d3bd', '2025-03-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '816c5df9-3474-41f4-8661-f2d364f158c7', 'leejoseph@example.net', 'f49d910f0e4ed78cc2a1ee62a6c4c31f11254aee621b76f8b023e7e3470b4016', 'Tiffany', 'Mcdaniel',
            '2024-12-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '639c6a09-e9c7-454e-8873-22cc56450177', '816c5df9-3474-41f4-8661-f2d364f158c7', '2024-12-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5ee63ffa-f784-4204-806a-dd2bd17189ac', 'scottcampbell@example.org', '9f82a21b7e9eadf5833afc66a3a57d76a6252877cc0a6bfe598c80b157d30a46', 'Jessica', 'Page',
            '2024-11-28 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5c99d882-5251-4556-abf8-cff93032899d', '5ee63ffa-f784-4204-806a-dd2bd17189ac', '2024-11-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '27d80d41-17c8-49b7-9c85-bf45e43b8970', 'david94@example.org', 'd8d1ae5e60befb2582d3934e06c6cb132de0a8222c0a5f278d79e08354062c86', 'Stacey', 'Foster',
            '2025-05-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9a1d4f83-79e1-4eb0-a871-6f2569d66188', '27d80d41-17c8-49b7-9c85-bf45e43b8970', '2025-05-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fa67557c-7032-4a8d-b143-fe799d06df15', 'sandragallegos@example.com', '5836fb623644d9fffaacd132e570f28ce585bfd8ef8acd38015c8e6b926338b7', 'Devin', 'Cox',
            '2025-03-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '915c60de-8f6b-4d72-9b06-adb194d82268', 'fa67557c-7032-4a8d-b143-fe799d06df15', '2025-03-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0af1c09e-0343-4458-8958-ad6d45f1110e', 'johnritter@example.com', 'ac4cf39843707f91b447f3dc364648ad37edc0515ed5f01d337057390077f328', 'Amber', 'Baker',
            '2025-02-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '57998eb3-1dc8-4895-b233-ff2d7726fd37', '0af1c09e-0343-4458-8958-ad6d45f1110e', '2025-02-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e9141e65-58dd-4f4c-9326-8d7ae9970397', 'yburgess@example.com', 'b785232d1f01193978a96d95b25603370ac48b8c794d91b40483104480e0b5ef', 'Sharon', 'Shannon',
            '2024-12-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'facdca17-9de2-414d-8feb-d14f653c5d52', 'e9141e65-58dd-4f4c-9326-8d7ae9970397', '2024-12-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'aed750eb-7b55-4cd8-8c8c-45dedbedd116', 'krystalthompson@example.net', '4d473b8974942c24d90e5d400d5f4c99dbdcad5b99a7012a04dda98d9458a71b', 'Eric', 'Haney',
            '2024-12-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bf5ce1a2-ba00-43d8-bda8-180e70c0bbab', 'aed750eb-7b55-4cd8-8c8c-45dedbedd116', '2024-12-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f8318974-65b0-4868-9dcc-af2bf5f2ce2c', 'timothyperkins@example.com', '2a195d348ddc2318e7e58b7934f9e73a6d361537144b095c908f05aff7087eb8', 'William', 'Perez',
            '2024-12-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ffa51120-3c18-4d86-904b-ec6bf3c15cd9', 'f8318974-65b0-4868-9dcc-af2bf5f2ce2c', '2024-12-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bfa8ad0c-8d7a-40ac-b6ca-c2f27ace7756', 'heidikey@example.net', '06dd3c1fceec9744cd2e26cc8a4db0ac906ed586b4a12fd31f096b23bab2b848', 'Elizabeth', 'Hendrix',
            '2024-11-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c4e18cb6-995a-451f-9bec-2e477badd71b', 'bfa8ad0c-8d7a-40ac-b6ca-c2f27ace7756', '2024-11-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fa520a86-8521-4dd2-83f9-5122b6951724', 'ethan35@example.com', '5cc9bf29bcb130671b4091a373ed011e876288196003656efd7c5c238299262f', 'Rachel', 'Francis',
            '2025-01-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8b6c96a8-f8f7-4c11-b73f-8565c4a900f1', 'fa520a86-8521-4dd2-83f9-5122b6951724', '2025-01-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6f05a83f-0616-4555-a653-a6dee1b527b7', 'emiller@example.org', 'c864f0d1bc185c7b5a4f6ef676c46633c6c9d0e2851420edb29d8e5819cc0231', 'Susan', 'Jones',
            '2025-03-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c8738d3c-7523-4b32-9be6-42c1a9405ddb', '6f05a83f-0616-4555-a653-a6dee1b527b7', '2025-03-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6c2311cf-2890-4212-89e5-9fcf32cb0053', 'herrerawilliam@example.net', '89d58dff5cb3e0121b510292a213546604b618c91d86e821ac9db53498ccc392', 'Heather', 'Velazquez',
            '2024-12-07 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b666ca42-00ce-4e71-8df9-7af9abcc7cc8', '6c2311cf-2890-4212-89e5-9fcf32cb0053', '2024-12-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '56f07e3e-7a10-42c0-825d-d9ffceef2f70', 'jchambers@example.org', '0cf54591f2a4bcd3896bc2b823edb6957bc486964f5e8e0c380c4cdeff126980', 'Ryan', 'Freeman',
            '2024-12-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fc3ccc87-1e1d-4f16-b7aa-a5ffc78380d5', '56f07e3e-7a10-42c0-825d-d9ffceef2f70', '2024-12-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c67b3a0e-69be-4055-9444-19ffb7d71cca', 'carrie55@example.com', '80365208df87d68cd6fa0432190774f643b9fc81ead8b398e482a99783338d44', 'Brandon', 'Bryant',
            '2025-03-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '88a52355-068b-4516-bf10-b65a09d2542b', 'c67b3a0e-69be-4055-9444-19ffb7d71cca', '2025-03-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6293e174-1d13-4e9e-ad04-a6257d4ddbd8', 'zmartin@example.net', '698d8e28329c46fb5444b914806e38c8ec1cfba53687bb11582e3a9eab9f33df', 'Richard', 'Guerra',
            '2025-04-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e8e23422-9834-48ad-92b6-70ae0e5c4e0c', '6293e174-1d13-4e9e-ad04-a6257d4ddbd8', '2025-04-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dc026e25-0a5b-4934-b0cf-3032af781336', 'eric99@example.net', '64300dc79c57e3f637bf7cc708156f7d8de9b1d412615ee13e14d2c2c601f935', 'Ashley', 'Sanchez',
            '2024-11-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '40698f11-1650-449b-b8bd-8a6de3036388', 'dc026e25-0a5b-4934-b0cf-3032af781336', '2024-11-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '780cfaaf-ef29-4049-a920-3f23535db42c', 'esparzagary@example.net', '3c8879c81c382304445d15e889200cc8f1a6a29c63b0c58a167889c7e8d702b9', 'Randy', 'Scott',
            '2025-04-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '209dd821-fe3b-4250-8ee4-d77dd64ebc4a', '780cfaaf-ef29-4049-a920-3f23535db42c', '2025-04-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e195dbc6-8332-44b2-a843-c8b9a8ae2276', 'tcarrillo@example.org', 'cd84947cec72f318d82c8929d7afa3b197276333a4ed831c972103c3fa371068', 'Scott', 'Casey',
            '2024-12-26 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c237059c-0aa6-4d8c-93a8-f580ed5b84a4', 'e195dbc6-8332-44b2-a843-c8b9a8ae2276', '2024-12-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8ad4e1da-3e80-49d3-81e5-63743233be23', 'josephjohns@example.net', 'c68f55546e712959cbd7e6174b0ac3d7bfc609c32f446e360d26de019d2eafe8', 'Douglas', 'Walker',
            '2025-05-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1ac580da-ad55-4d5b-ad00-e0894b179a40', '8ad4e1da-3e80-49d3-81e5-63743233be23', '2025-05-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '03b75277-c8f5-442d-bf20-8b5666b24fae', 'schmittanthony@example.org', '40bb459f1ee0334e69252e1b1141c217bddefa108dca5fb1714a59e299b5a77c', 'Lauren', 'Conley',
            '2024-12-07 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd129ca14-52be-4c63-9617-8a026b7153f1', '03b75277-c8f5-442d-bf20-8b5666b24fae', '2024-12-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a953b431-3568-4f5a-8012-8efdb69988c2', 'brianchen@example.net', '3fb55d9f6580458206ad5c9ab8674de5588493fdf5fcbf65acaadd590fd548fb', 'Nicholas', 'Flynn',
            '2024-12-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '441a90f6-535d-42ff-9f53-96e35e4be867', 'a953b431-3568-4f5a-8012-8efdb69988c2', '2024-12-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '07220a2a-1f79-498e-a533-7b01d97beb75', 'aaron38@example.net', 'd9b6a2a591a6238b49f8ba5e2cd355cd17aae321f0d48a54f87c08a0cee153cb', 'Michael', 'Levy',
            '2025-02-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4e19f61b-57f0-4074-8687-80254deb5a28', '07220a2a-1f79-498e-a533-7b01d97beb75', '2025-02-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'aa7e59d0-37a5-49b8-a449-611a5f43459e', 'xbradley@example.net', 'cc75be0ecdccbe3e04bcda87ee20dfc9e25a25068184220490ebfd498fb1f31e', 'Steven', 'Hebert',
            '2025-03-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9a0c9bb5-079b-4f3c-bcb0-86320edffa24', 'aa7e59d0-37a5-49b8-a449-611a5f43459e', '2025-03-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cf71a57e-a28a-4466-8b6e-41a5a4b894c3', 'istewart@example.net', '99070ff3e76aa9c974a70ff70bd79701f7ae885e9711aa3f3aae89e7e7520b6d', 'Kathryn', 'Owen',
            '2025-01-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'dabbec34-8765-4a65-86f1-11a34aa52844', 'cf71a57e-a28a-4466-8b6e-41a5a4b894c3', '2025-01-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4fd425f3-4eee-4144-9fe9-8ea01af4f45a', 'kristen20@example.org', '95f6848c3d7429aefe2b92e8a76d5a2e3775ac245a4fe0bfc23354d6a468919a', 'David', 'Haley',
            '2025-04-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '65c4a957-d1ae-4d70-b8e9-21432d26bc76', '4fd425f3-4eee-4144-9fe9-8ea01af4f45a', '2025-04-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b79dc6fd-a7b0-43be-91b3-fdde507ec176', 'gonzalezthomas@example.com', '6803953e0b690aef1ac828b4c56b0b3f23ccc57671dc813fae8f46d483f2c6e2', 'Shawn', 'Guerra',
            '2024-11-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a10f2898-1601-42a8-bc6e-a6c94b9b53be', 'b79dc6fd-a7b0-43be-91b3-fdde507ec176', '2024-11-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '17d20d7c-1db8-4766-9810-916895f4930a', 'nielsenbrenda@example.net', '276f8200402a4bcf63138353076e383e825ff22b38c9ffdc10bcb79c09e76f8b', 'Spencer', 'Figueroa',
            '2025-03-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a7c41123-66fc-4991-a77f-969bf8e104f8', '17d20d7c-1db8-4766-9810-916895f4930a', '2025-03-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '24ec6e06-8f40-4af7-8e71-1475883b490a', 'heather30@example.com', '58d4ce3e91e206b892df86eebfbf2499d45b0e1a79e727fe8d882e9e852a6385', 'Joseph', 'Morrison',
            '2025-02-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a27ab127-cf4b-47cc-81c0-568bb68df8c7', '24ec6e06-8f40-4af7-8e71-1475883b490a', '2025-02-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2164bb1d-9235-435b-8274-cb4ac3d521a3', 'greg79@example.net', '7f65e9c5fc1aba4ec4f75698846abfea75a4eb63eb886c2036f404aea81e4cfb', 'Amber', 'Pugh',
            '2025-04-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c36afb67-f48f-43bb-8c48-1cdfa650d558', '2164bb1d-9235-435b-8274-cb4ac3d521a3', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a31ef43c-430d-43fc-a8e4-4ee244392e54', 'johnsonsara@example.net', 'c29e4856108afae0a441bf4a06016a914612c002d0386ab3394c2d5fdbc512e1', 'Andrew', 'Doyle',
            '2024-11-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ea0737bb-cf01-431d-9613-58127ea1f024', 'a31ef43c-430d-43fc-a8e4-4ee244392e54', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3029d4e0-f422-4339-b5e7-15ee705425c7', 'qpotter@example.org', '7c4e50ec1f4ca9dc9074d414d0cc0edeea0b45e1bcecc6377b9394e2ec662c11', 'Laura', 'Coleman',
            '2024-12-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'aacd1de2-fe24-4865-8fea-f37a6e9bdaed', '3029d4e0-f422-4339-b5e7-15ee705425c7', '2024-12-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a9d0f570-d761-415d-af8e-5875c72f8ace', 'aproctor@example.net', 'a6495140470d44fc1384fd9dd2439fc61c7230322877beed0b4febf01ac425bb', 'Kristin', 'Robbins',
            '2025-04-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd9d98ee5-b829-4881-9ba5-e5950a9f484c', 'a9d0f570-d761-415d-af8e-5875c72f8ace', '2025-04-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e9cf78f6-2eee-4587-872d-680849b87bab', 'montgomerybeth@example.com', 'ffb8542f91da163afd4a9b1de8c49f062509d1558f8d290c10478f7d4a1690c4', 'Alexandria', 'Kim',
            '2024-11-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7f8933d4-30a8-47c6-9331-ea2a5d2ad543', 'e9cf78f6-2eee-4587-872d-680849b87bab', '2024-11-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b217cc23-5cf9-4fb0-ae52-152aeb682bf5', 'heather76@example.com', '47e9346c0bedac8185b2728c6f19774144288b98188cebaefe464b8bf8eae390', 'Brianna', 'Thompson',
            '2024-11-30 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c57a67c3-1c1b-4461-a9fa-aa74955a31e0', 'b217cc23-5cf9-4fb0-ae52-152aeb682bf5', '2024-11-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '22dad7e8-11d1-4601-9dbe-d81e6fb5eafa', 'davispatricia@example.com', '0ec988213c420de93f142cdb134b49b14caf0e72a2654fe2342730bba36357c4', 'Tina', 'Mueller',
            '2025-03-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e341869b-9a7e-4311-b279-ffeba249ee58', '22dad7e8-11d1-4601-9dbe-d81e6fb5eafa', '2025-03-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b13c6f1f-d2eb-4cb2-896b-a8798684a756', 'grahamcharles@example.org', '9375c0b9f6dde799a8aa69ec42a9210a9072b3797af33ecc6814e8bdefed4ded', 'Teresa', 'Chambers',
            '2024-12-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bf5b3489-1371-432b-8589-a55bd94a1d74', 'b13c6f1f-d2eb-4cb2-896b-a8798684a756', '2024-12-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3410f1aa-a24e-49d3-93d3-c4495c349716', 'jessicashannon@example.com', '895b36845fa0e132dce9d4b3f27f0fbf6ada828f38b7ac052c217d50c1696fea', 'Patricia', 'Lewis',
            '2025-04-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c4f1b5b2-865f-4f61-933a-c0740889892e', '3410f1aa-a24e-49d3-93d3-c4495c349716', '2025-04-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0a6b290a-b6d5-4e0a-98e9-d421c4f2373c', 'wilsonshawn@example.net', '7f31b4c86d7cb80c82e526a4c2d67c2f84c2c4eeed44517642e14d0eebd71c5d', 'Victoria', 'Wise',
            '2024-11-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c865bd17-201b-4f38-adbb-e6a855e87f40', '0a6b290a-b6d5-4e0a-98e9-d421c4f2373c', '2024-11-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '11b0a74d-5c2e-4638-90cf-a49b0fe60444', 'kmartin@example.com', '93006097907bf80b23c0fa071de7a6cd9916f734989a7c69ebc9eae95e2c609c', 'Anthony', 'Thompson',
            '2024-12-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '85a3e808-3d08-44a2-b1fa-508143167463', '11b0a74d-5c2e-4638-90cf-a49b0fe60444', '2024-12-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '64486b53-a1e7-4daa-bc68-ff4b1cb09363', 'charles31@example.com', 'cd482c0c1f6a2c4f12236e4c6b343ee3068fc92483a0de2e06eeb9682fa0cc29', 'Harold', 'Thomas',
            '2025-01-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b8dfd8f0-3314-411f-935d-276e1905e95e', '64486b53-a1e7-4daa-bc68-ff4b1cb09363', '2025-01-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '778dc474-2c9b-483a-bfc5-ad7c1eb68976', 'ngibbs@example.org', '7f460bbca554e452f2fbb39ac72072b7f7d6071314a0fbe4599f40eca7b805bc', 'Sandra', 'Wallace',
            '2025-01-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'aeae3e8f-9e28-4dc7-9b41-dd52d3614789', '778dc474-2c9b-483a-bfc5-ad7c1eb68976', '2025-01-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6054e547-e693-42e9-9811-fed744b8f6dd', 'melvinramsey@example.com', '0e2c878e65d9b9fba2e10752b3080546146ddceccd54bcd6a8afeb49a34a6e90', 'Xavier', 'Bautista',
            '2025-03-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c755b013-43bf-4d63-8802-106b4610b1c6', '6054e547-e693-42e9-9811-fed744b8f6dd', '2025-03-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd7655750-77b5-4f88-996d-7a96fa46ea42', 'troberts@example.net', '9e0236ba7d2bc688f3a13449e0accebf50bad4367abff9bb5f29e1cda16cd817', 'Charlotte', 'Thompson',
            '2025-01-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2c58d86d-22f5-4189-b829-8b4265e352ad', 'd7655750-77b5-4f88-996d-7a96fa46ea42', '2025-01-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a4773ea3-eb67-42d1-b3ce-d30b1c6d83ed', 'ajones@example.net', 'a7b8b657490fb3945702f892f8daf2d6cb229f1552a575cc27ae5f15f690f762', 'Jermaine', 'Carpenter',
            '2025-04-10 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5bf79355-64a8-4ec2-a5c2-b7071895adf6', 'a4773ea3-eb67-42d1-b3ce-d30b1c6d83ed', '2025-04-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fbf311e9-38ec-4524-b66f-c58794e29c2a', 'nealspencer@example.net', '215b8dbd6ac4e4b8198e7c849243a544d980aa65f0d09ed67236f19e9b3e3240', 'Tony', 'Holt',
            '2024-11-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5535f0fe-9dbf-4e58-955c-a698b538cce8', 'fbf311e9-38ec-4524-b66f-c58794e29c2a', '2024-11-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1626a41e-4e95-451d-be6d-7acff5116094', 'clarkjonathan@example.com', '990ab3f239b172dda840c93ae1767057ebdb8ed2c7f0e885752228b2f510d5f4', 'Joan', 'Hill',
            '2025-03-26 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd0abf12f-6d16-4021-8f30-28e83720c2a5', '1626a41e-4e95-451d-be6d-7acff5116094', '2025-03-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e489e20c-dc79-4e0a-9ae8-5e267cc5947b', 'fostersamantha@example.net', '24a33882e81942102081e1923f1a708324c2edb3b47b439b4f5d2318ee3c18de', 'Kara', 'Gallagher',
            '2025-05-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c6617499-a7ee-4082-a562-38aa687b6614', 'e489e20c-dc79-4e0a-9ae8-5e267cc5947b', '2025-05-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9f3da044-88a5-4ff9-9f4d-1c44480b1801', 'ismith@example.org', 'd01e0041afbfdc081ed8fe32bb7a3957eb80187e6c1a2e3a78cbda2dbfd539c5', 'Denise', 'Anderson',
            '2025-03-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '663f739e-301b-40e0-b9f1-3b36f4bca07e', '9f3da044-88a5-4ff9-9f4d-1c44480b1801', '2025-03-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f7b08cd7-a101-490c-9ea6-ca65327105ef', 'nsmith@example.net', '3d02b2cea87266c7e2bb9e7c239513568026ba0397e315a7f841c53ac574f156', 'Christina', 'Cole',
            '2025-04-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cb420ae9-8601-48ad-81c5-b6233c59199e', 'f7b08cd7-a101-490c-9ea6-ca65327105ef', '2025-04-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c3072452-f95b-4a10-973b-03fc17087698', 'jill12@example.org', 'f2fe4e73f5db0c0726ee30cbe086ab2bafcd79db1f2f6a704d151e66befa322d', 'Timothy', 'Harris',
            '2025-01-05 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ee81587d-bdca-4a10-94e9-e5222ed8f2ac', 'c3072452-f95b-4a10-973b-03fc17087698', '2025-01-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '911042bd-46a4-4902-bd74-b5181a6a0259', 'hballard@example.net', '2547ab6073d294d80a001d2cf0fcdc3d4697e160c14489fb67dbc5eaa8c13cdf', 'Jason', 'Collins',
            '2025-03-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7598bba5-fadf-4500-8032-5170228f2964', '911042bd-46a4-4902-bd74-b5181a6a0259', '2025-03-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '97f04aef-495e-4ad9-80a8-1d902face625', 'casematthew@example.net', '946f5a666b944e077696e11f8d8375184350205b2160cb6c1e3c9f68e52ec3f1', 'John', 'Johnson',
            '2025-04-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '57a5beb7-a840-48a7-a8c8-fd95048758ae', '97f04aef-495e-4ad9-80a8-1d902face625', '2025-04-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '74fc63a0-42c3-423d-bead-fba2b10b7648', 'shayden@example.com', '6c3359015bb0bac639577c717e7694ae2623d81380e3ac1376cd7df4fde5eb15', 'Pamela', 'Thomas',
            '2025-04-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4b8bc328-3f52-4593-a719-2e43b4ae51ae', '74fc63a0-42c3-423d-bead-fba2b10b7648', '2025-04-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2dcd9517-a05c-4c06-8e04-0289bd0016eb', 'adrianrodriguez@example.com', '872a996fdc5fc169918fc01692cc71b960b534bde7f2a84d97a7346627918894', 'Russell', 'Garcia',
            '2024-12-20 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '48a65b3e-1d11-4f89-8eba-924d58438950', '2dcd9517-a05c-4c06-8e04-0289bd0016eb', '2024-12-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0c573750-6af2-4443-9780-f71a4d1839c0', 'tracey60@example.com', 'f8bb0387822d2364b72ca3102d094a675f00d9842f7925644fc42ebd95024966', 'Robert', 'Roberson',
            '2025-03-20 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '561d8738-8dbd-4ee1-bdf1-df5d98f57dc8', '0c573750-6af2-4443-9780-f71a4d1839c0', '2025-03-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2f3ffce0-19f3-4b56-bff1-a9e7acedc3bf', 'bartletttracy@example.com', '41d55cac46b0c81f1643b6b135ae5b165dd3c59ec7d618729c4c85ae1650c837', 'Joseph', 'Collins',
            '2025-03-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'edd75ba8-4d14-4322-8b56-79d81d87d4be', '2f3ffce0-19f3-4b56-bff1-a9e7acedc3bf', '2025-03-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c6b93518-2e31-4356-9f96-5cdcee57cb2c', 'rhodesbrandon@example.org', '579bb87851d8718ca89f032c88384a70d8ad38b39bc8a6e1a410c940588b1357', 'William', 'Martinez',
            '2024-12-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5e3cf133-7107-425c-b054-07f99df47421', 'c6b93518-2e31-4356-9f96-5cdcee57cb2c', '2024-12-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0ba9aab5-5f7e-4440-aa57-9f862fcb659b', 'christophercarter@example.net', '4cd9da9b7b3ebc724b8bea7519655a3dfea4a92de977bc3de1ef20585d04a58f', 'Shari', 'Taylor',
            '2025-01-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bdc4d2c7-b8cf-48e3-8c36-c6ec24756c91', '0ba9aab5-5f7e-4440-aa57-9f862fcb659b', '2025-01-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9d057fc0-d672-4e53-8373-dc8acf8b826c', 'jstein@example.org', '4015efb0e64d8986c8b4ecdce746505df2ae1cc7ffc849dbaaeca9705c726d02', 'Laura', 'Aguilar',
            '2025-03-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f9018950-7c34-4935-bf68-98e414d2076b', '9d057fc0-d672-4e53-8373-dc8acf8b826c', '2025-03-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e146ff65-2cc7-400b-8a7d-f618769f63d5', 'bethduffy@example.net', 'bb780df287a740ca1dbe231fe948ec2804fa07ad8b540f3d4d6ec114e6b0dc3f', 'Joseph', 'Rosario',
            '2025-01-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c8422776-5df6-4d22-b989-3eec7977b658', 'e146ff65-2cc7-400b-8a7d-f618769f63d5', '2025-01-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'aca052f6-0498-4bc8-96a9-f010192c4c6f', 'youngdestiny@example.com', '689cde2b1462f7b1f46c3860b08b40e5345bc97e3df0d2ed96c931afc813e0c2', 'Steven', 'Wood',
            '2024-11-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0fc3d9a2-37fe-4c08-8432-19654606cfeb', 'aca052f6-0498-4bc8-96a9-f010192c4c6f', '2024-11-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e2d9df5e-5dff-4615-9ac2-e6db8c5c2109', 'johnsondalton@example.net', 'f5e2416d4b181834dbddbd163c713635ee8c56ff4be4ac9530728f8f25675cd0', 'Chelsea', 'Perez',
            '2024-12-30 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '47eddf31-c6ca-41ed-979b-94bdcd7d3a0a', 'e2d9df5e-5dff-4615-9ac2-e6db8c5c2109', '2024-12-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3591d0ae-9b22-4c2a-af11-7bf252be69ec', 'jennawhitney@example.net', '7c3bb8da91637c06cd40d5d674ce4b526c0db6d2a6384c3c4c15c8aca3b160fc', 'Kevin', 'Hill',
            '2024-11-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c5865f7e-e927-426a-b163-ec5f11f29f1b', '3591d0ae-9b22-4c2a-af11-7bf252be69ec', '2024-11-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6f98d81d-c11d-423e-a1ea-f47a24b6760c', 'lindseybrian@example.com', '7ba654b516832e6d95564cf776dba5a8e44888032488ba18c701076ff78d758b', 'Marc', 'Banks',
            '2024-11-15 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2ffffa7a-08bc-45f0-a80d-bcecbea239e4', '6f98d81d-c11d-423e-a1ea-f47a24b6760c', '2024-11-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4b361c6a-d6bc-46d8-877a-747bbc53ab95', 'josephjordan@example.com', 'a2dfcb6c7e11478f4445582ceebb90ba1764ceed76e1788aacf7e72094585cfd', 'Deborah', 'Davis',
            '2025-03-31 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '20d4a618-0d59-4fb8-8398-217dc562f90b', '4b361c6a-d6bc-46d8-877a-747bbc53ab95', '2025-03-31 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bb1035a2-6d7b-447d-a813-4fe607cbf1c6', 'tbrown@example.net', '8e1c5625af70b7527c4cc7cc4a4f84d0fac2e5f3307983a0cf76434a72543cfd', 'Larry', 'Clark',
            '2025-03-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e9781cb3-2bb8-4d50-8f07-c2ec45b00e00', 'bb1035a2-6d7b-447d-a813-4fe607cbf1c6', '2025-03-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '867b168a-1ad7-427c-88db-9c6d4fe66d5a', 'yallen@example.net', 'c770164f6570183cf0a68e2cdc459538677c03490056799fe94fb161d223d0fc', 'Heather', 'Mckinney',
            '2025-04-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fc9eb7d7-c397-4f2d-a62f-293043317be6', '867b168a-1ad7-427c-88db-9c6d4fe66d5a', '2025-04-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a89acc26-4642-4480-bba7-9006fcbe3d0c', 'tbell@example.org', '00e661a564399aea8f3867a8be43268eea1aa814679fdafc4920ecb91d4aff17', 'Hailey', 'Harrington',
            '2024-11-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fb2bb2c6-cbb8-4db8-bb0f-532e0dbb25d7', 'a89acc26-4642-4480-bba7-9006fcbe3d0c', '2024-11-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e160d1ca-d28f-4a6c-89e2-d7987ceb55b6', 'tkelley@example.com', 'bb264905dd55efa99d245c50749de734573e8d9074cf903fd9dca66aed9ce1ba', 'Todd', 'Martinez',
            '2025-02-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'db301559-87ac-4217-bbf7-cfddfd5dda67', 'e160d1ca-d28f-4a6c-89e2-d7987ceb55b6', '2025-02-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '70558d63-9912-4011-87d0-bc43123c0c37', 'paul74@example.net', '9493315105fb2804191f86eab11756b31933958e34c0413e214b5f42f6eb046c', 'Sandra', 'Ortega',
            '2025-01-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bb621736-8736-4cfc-b97f-cfa889721c33', '70558d63-9912-4011-87d0-bc43123c0c37', '2025-01-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0569b430-0d65-4d98-b4c7-0f4135201629', 'ericbartlett@example.net', 'af21409267c1d4d0710373240a005a4e6cd96bc377ea2d67cfde44cca03c959b', 'Matthew', 'Joseph',
            '2025-01-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'de34ab3a-a418-43c5-9d99-fa1ab7be6032', '0569b430-0d65-4d98-b4c7-0f4135201629', '2025-01-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '49a4ff33-4476-46ad-9faf-c48578db5459', 'ohester@example.com', 'ccf9ce1f9bde0340cadac1c9a70a3ed8423363738830e4bfe9a4c995bef5b8e3', 'Sara', 'Hanson',
            '2025-03-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd598bb7e-d445-49cd-b918-31beb6a7c8e8', '49a4ff33-4476-46ad-9faf-c48578db5459', '2025-03-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f2aa710d-12cb-4e7d-b9d3-1acf6c16d2a9', 'yquinn@example.org', '304c311998adf4c5f6a7b0cad07a4adc4fd154f34b20b65fa33ca26ee723eea7', 'John', 'Diaz',
            '2025-04-16 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd0b29037-dba8-4438-8daf-8125ffc99ac4', 'f2aa710d-12cb-4e7d-b9d3-1acf6c16d2a9', '2025-04-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '20913b69-2004-473c-9b1f-3e10ffba6497', 'cmckinney@example.org', '3c15b59baa65eb3e811e99679e755eb70e0f0a1630875b125d04de186a86884d', 'Justin', 'Wolfe',
            '2025-04-30 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '99f3d3a6-f1fe-4b31-b106-3592dcfa5b04', '20913b69-2004-473c-9b1f-3e10ffba6497', '2025-04-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7b0f696a-92bd-4b5a-97f8-8152550f2946', 'charles09@example.org', 'ed9ae774ca7b91032a3c36b3ce81f2de7431cd6ac25452461533156a502c0169', 'Robert', 'Gutierrez',
            '2024-12-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9fb7770e-9589-474b-95c2-f5ea3da74929', '7b0f696a-92bd-4b5a-97f8-8152550f2946', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3e664838-f175-4a7f-955b-14a6d08b0d64', 'rbutler@example.org', 'cf789526014eebc6a22b3bfdbf61c94213f281ff9d482083a1c6e51bb100490e', 'Lauren', 'Freeman',
            '2024-11-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3fa2a616-a5ae-4036-abff-5bef80a586c4', '3e664838-f175-4a7f-955b-14a6d08b0d64', '2024-11-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '629fafee-6b0d-40d1-b350-9cf6899a68fb', 'jharmon@example.net', '2c59ce265998834ebda042b2d595d71529908114987b191a93e419e01ce09959', 'Mason', 'Lin',
            '2025-03-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e66e8dc9-30da-4537-9019-298241598289', '629fafee-6b0d-40d1-b350-9cf6899a68fb', '2025-03-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '17caa275-6279-469a-9804-a09c396fd107', 'arroyomichael@example.org', 'fc2bea74339ab5fc5b59fe43ebf01b002cca6d09c73b8d19f3ffdd08db10f042', 'Bobby', 'Flores',
            '2025-03-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '521e701f-e0ce-42d6-a4b0-57182aafda63', '17caa275-6279-469a-9804-a09c396fd107', '2025-03-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8c7a93e6-d6db-4549-b84c-00d67efef59e', 'vargaschristopher@example.net', 'a0d9f37de8675872094b8051b517adc2042b204d3023d569de38f228e3ae412e', 'Michael', 'Cuevas',
            '2025-02-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7ef4fc4b-0608-4169-8fb2-b968ca74dbcb', '8c7a93e6-d6db-4549-b84c-00d67efef59e', '2025-02-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8d8879b9-284c-4ae4-81ac-03b0e6c197dd', 'joneselizabeth@example.org', '17d86c8066ac251f742f3a5cf628523973923fe620c1b6eac0a1e6fcc94c8c77', 'Patricia', 'Bass',
            '2025-04-10 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '27731139-608e-4c66-9f7f-6e62675f65a1', '8d8879b9-284c-4ae4-81ac-03b0e6c197dd', '2025-04-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7ee033be-0013-4f0b-9c0f-581f6bd1b13c', 'wthomas@example.com', 'b3d363ae493a902b24706f35169b2805ac27ed9d30feb9e7de50584a104adfd6', 'Scott', 'Martinez',
            '2025-03-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ea370f89-95f7-4de5-a2d2-51f9ddc210f1', '7ee033be-0013-4f0b-9c0f-581f6bd1b13c', '2025-03-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd1a4a334-d84e-4d2d-8956-89fac0cd9eea', 'joneswalter@example.com', '9e0b81699f74ecb6e90238c27045bf7b43463325519db40217829ffa85145858', 'Dylan', 'Patterson',
            '2025-01-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2373870a-9f94-4e0e-a1fc-4bfcb97f3882', 'd1a4a334-d84e-4d2d-8956-89fac0cd9eea', '2025-01-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6dab605d-6f1c-4d33-ae14-e1d16e90317b', 'paul41@example.net', '36c00c9a951df29286586601133ab47312fe08647832ce6a954817fd955d5bc0', 'Toni', 'Allen',
            '2025-05-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4ef6072f-16ec-49fc-b215-7fed8760312f', '6dab605d-6f1c-4d33-ae14-e1d16e90317b', '2025-05-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c46358d1-1b16-4422-b376-bc949d599da2', 'davidklein@example.net', 'a1ea164e3ed63bc2eafcef839cc7a46a21d498402bef0b215598e875a4047ef6', 'Andrew', 'Barnes',
            '2025-01-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8b1f64bb-ddd1-4f81-99f2-5ba1748d4cd0', 'c46358d1-1b16-4422-b376-bc949d599da2', '2025-01-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1eed7adc-c4b9-462c-8038-4de967340075', 'mendozakimberly@example.net', '2d5fb2dfa95ed8c806313714669e3d237843fae52b0a2ef7627b45fb1c09321a', 'Catherine', 'Peck',
            '2025-01-30 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7570124b-9662-46d8-9171-ea808744cc40', '1eed7adc-c4b9-462c-8038-4de967340075', '2025-01-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1afff9da-397f-496e-bdbe-8c34ddea5a64', 'gthompson@example.net', '210e6792189faa1cdca16c972426a8c2ccf412e8ce939c23289fe11183bcde1f', 'Travis', 'Bennett',
            '2025-01-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '11c8b53a-97de-49d3-bad6-0797ba8f14bd', '1afff9da-397f-496e-bdbe-8c34ddea5a64', '2025-01-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '32ee6d88-9c2e-4731-88bd-489b9e9be943', 'cherylgross@example.com', 'c623652bf888b8945c0a74257fa958fe12546f7b09d0f087d19d68047beb0e06', 'Dale', 'Cruz',
            '2025-02-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ba29ba8f-2e1f-4281-aed8-4611d1ddaf96', '32ee6d88-9c2e-4731-88bd-489b9e9be943', '2025-02-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6d8b6037-87e2-4f16-b867-4d204a227156', 'barnettalexandra@example.org', 'b9fddd9942836c73c460dd657b23ad4e712e9f1104912b97f0477c7dc4b57e65', 'Arthur', 'Avila',
            '2024-11-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8d02967b-0fc1-4a83-958a-67ff7173d7e4', '6d8b6037-87e2-4f16-b867-4d204a227156', '2024-11-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e96d9a16-1f38-42d3-bf57-fa6c97b7a267', 'clowe@example.org', '9f00f2b93df9d67a88d19e18748f45c3c897629713835e7aa13f115d18e91d10', 'Franklin', 'Holden',
            '2025-01-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bf50746e-31cc-4074-b1ed-9108afd34f82', 'e96d9a16-1f38-42d3-bf57-fa6c97b7a267', '2025-01-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cde134f7-5dd7-4f8c-bb49-2001b33598da', 'mark69@example.net', '1f9e2615c499fa3684dca97bd15c5fbea8402eead095d731d66377a535009b9c', 'Nicole', 'Carter',
            '2024-11-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bf4ee1f4-2d34-4582-93fe-79ce084f9ef2', 'cde134f7-5dd7-4f8c-bb49-2001b33598da', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e35d046c-a73c-4470-a3fd-525ae346c26c', 'skelly@example.net', 'a4c199edde5e1bd1b0b0921841519e37699bc8a589a6e44074a6cfc19eb10c58', 'Christopher', 'Coleman',
            '2025-01-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a83cc189-0574-43a9-b2a4-46e08cbba19e', 'e35d046c-a73c-4470-a3fd-525ae346c26c', '2025-01-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '11576fd6-22b7-4930-a876-cc714eb05601', 'williamhudson@example.com', 'bdd66fa230d2e0b641431670ef469a20924237d9cb2b719627187922ab9f4621', 'Sophia', 'Brown',
            '2025-02-18 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'de11fd64-61ee-4b45-b074-e047a633ba1b', '11576fd6-22b7-4930-a876-cc714eb05601', '2025-02-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ac680889-93e9-4331-a26e-0fdc7a016b48', 'cmorton@example.com', '347e8f52d1ff615be5d1d238ef8e21e4eae29c82fc010bab9cec98b34f7c51a5', 'Kyle', 'Rojas',
            '2025-01-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2ea799ee-d886-4cdc-ac4b-191eecfc5315', 'ac680889-93e9-4331-a26e-0fdc7a016b48', '2025-01-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '626700a2-2a8c-43c4-ba8e-e3bd2902cd88', 'gbenson@example.net', '9494968b6d74752095920f096dc4b65d4b091ca2cb7ad13fcb622ddcaf46fb26', 'Kathryn', 'Pierce',
            '2025-03-28 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd03fbbe9-13e6-4fa2-b028-4ad473f6ccbc', '626700a2-2a8c-43c4-ba8e-e3bd2902cd88', '2025-03-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e8a0c93f-116b-4a84-aa49-f9ce208f6c11', 'stevensshelley@example.com', '55ccdcdf697b8a52fe1158fbd93ac7604802d7be4765ef1bf31cf18dc6aac26e', 'Kevin', 'Hill',
            '2024-12-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4afd32b2-e60d-4d51-98ee-a2221cceebc8', 'e8a0c93f-116b-4a84-aa49-f9ce208f6c11', '2024-12-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'aeda321a-432a-4a7d-b245-3b4aaf833a85', 'dlopez@example.com', '65464e39e4117513a156b9955d855d95b40358e24f7ee54b4899a178316a9e35', 'Laurie', 'Li',
            '2025-04-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f9285c1e-62d4-4b63-84ea-efc2989d0899', 'aeda321a-432a-4a7d-b245-3b4aaf833a85', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '845ae3d7-9ff3-4644-8012-39709682f42b', 'isimpson@example.com', 'b2c1c81a81ceedc2963006b3418db2d98cf39a1cb79dcf01acc3e4d0866a9efc', 'Johnny', 'Price',
            '2025-02-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1519cce6-5503-4110-8d6d-a4a152da10c9', '845ae3d7-9ff3-4644-8012-39709682f42b', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '51e17231-37d2-44ff-bcaa-268b366a8648', 'lduran@example.com', '84722eaf2666f54d439aee0cb9960dac53cd4a90dc29a48fbf04585a774c6ff2', 'Lonnie', 'Johnson',
            '2025-01-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1aa308fd-8791-470c-9e78-e2bc0c254337', '51e17231-37d2-44ff-bcaa-268b366a8648', '2025-01-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3fc86726-19b1-48e6-adaa-919d43489bcb', 'fullerjesus@example.com', '1e60a2a05f9b68be628b861d2aad33842ce24f3cfe712f3fe805f92511a07b25', 'Holly', 'Trevino',
            '2025-02-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '19d85eca-16b0-4f92-b5b5-eeb7a9332a65', '3fc86726-19b1-48e6-adaa-919d43489bcb', '2025-02-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '84f40728-fa36-4016-8880-8747f3184026', 'rachel60@example.com', '07b743bc0e425c81fed170a8d28a3ad9fa683c3dbbb7bd93c6d33ea1a2711fe0', 'Shawn', 'Jennings',
            '2024-11-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ff32ed64-402c-4ed6-abfa-4eea1e7c46ec', '84f40728-fa36-4016-8880-8747f3184026', '2024-11-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '04a6e20a-fd0f-48e4-8713-599b143a8ab8', 'shepardgail@example.org', '39766522710d853a1b7ba5afc554795812fd0c9148e2e0daa6a3b48f0ac7e3d2', 'Rebecca', 'Hernandez',
            '2024-12-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '053dbfb7-6bc6-4986-89ea-95808fe8a61d', '04a6e20a-fd0f-48e4-8713-599b143a8ab8', '2024-12-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e4f1fec8-6b68-4deb-aa8f-60cbb1cc8164', 'gstrickland@example.net', 'fda771ecfe4b32a3675d19bfe577ed4ce1ff0f35e534067824dc893da20f5fe9', 'Karen', 'Hicks',
            '2025-04-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7cc2573e-b831-4266-9e55-aa30157411a8', 'e4f1fec8-6b68-4deb-aa8f-60cbb1cc8164', '2025-04-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0702e6e1-f970-4652-b7fa-a89451fdbc2e', 'jason85@example.net', 'cbb86dfa122caa6dae329afe357f6902a13fbad86bd8f7f7ee53af56b177ffe6', 'Donna', 'Perez',
            '2024-12-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '966b9c36-d5b5-43dd-9246-aee138aa35ee', '0702e6e1-f970-4652-b7fa-a89451fdbc2e', '2024-12-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '90518304-7be9-4c0a-beb3-1ed9857df128', 'campbellscott@example.com', '710c62ed358383d1f048e3b56a0fcfb0d9030d196e6b3a156d3a7fa5b1f97ec5', 'Andrea', 'Marshall',
            '2025-04-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bd1596d5-cda8-456c-b8ed-4b961fc6e88c', '90518304-7be9-4c0a-beb3-1ed9857df128', '2025-04-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ad6c287e-3da6-4fa2-8beb-f381ea8dd30f', 'robertbrown@example.org', '312ff8025ed02cff3ec6791e1130ea564cb320f21993c838fd4392c2a607d7ad', 'Christy', 'Carr',
            '2024-12-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0b365d49-bfa9-4b1f-b1be-ceaf2978d73c', 'ad6c287e-3da6-4fa2-8beb-f381ea8dd30f', '2024-12-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '254cd157-e76a-41d8-bedc-35e14d7064cd', 'taylor35@example.com', '3253548b22897341b060497ec0808fe82851048779fe0cacf6716e3abc50f2ed', 'Kyle', 'Johnson',
            '2024-12-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c76c3054-d732-4a90-ad84-9deb2d7cf9b0', '254cd157-e76a-41d8-bedc-35e14d7064cd', '2024-12-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '418b8abc-7adf-4cb9-b434-91c74081587e', 'sperkins@example.net', '649b593ff80b7ec87995bfdb45c0472b0ddcf170f70def3aacf42aae71fd3910', 'Raymond', 'Cox',
            '2024-11-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a3ec3b18-36cf-44ae-8573-ae35c019fb54', '418b8abc-7adf-4cb9-b434-91c74081587e', '2024-11-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9f65e26c-a1ad-4476-a145-d3fe77a32fe9', 'carolinequinn@example.com', '8feff250e9577351ed876f930e1513841336457a9eaf4777c61bd39bc38acdf9', 'Elizabeth', 'Martin',
            '2025-02-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2f9b813f-2e56-4719-9ac3-da9e1ec1a891', '9f65e26c-a1ad-4476-a145-d3fe77a32fe9', '2025-02-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '53d8aa0c-ce95-4cff-bd85-73229a37547b', 'hkidd@example.net', 'c6899651665e04affc63c46e9507ab83e6eee7e0ee1abc4b91f3bed130297a2e', 'Julia', 'Craig',
            '2024-12-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0f6b2dcb-b66a-4072-ad6a-91a505b0655d', '53d8aa0c-ce95-4cff-bd85-73229a37547b', '2024-12-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7a3f6616-9952-4288-8e7c-9eac298d5fc8', 'griffinjose@example.org', '76ea813fd8f58b40c31dd95828cf3e2cf77cc630e04f1b243114c875233e3bfd', 'Jeremy', 'Bauer',
            '2024-11-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a0d43851-1df8-4899-8ecb-b47b914b399d', '7a3f6616-9952-4288-8e7c-9eac298d5fc8', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '30cbc179-fc97-4dcb-8c01-b47cef1852b4', 'tammy51@example.org', '757fa498b20545ee4d747b689f8e0433cef563a9c177013d482e6cfc4bc4573d', 'Patrick', 'Liu',
            '2024-12-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'eafe5168-bc71-4a36-b197-b7e6813a06a9', '30cbc179-fc97-4dcb-8c01-b47cef1852b4', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6b6bab81-fbf5-409f-8834-31b6b7f10c69', 'rhondaallen@example.org', '9ff5e212863fbc52b6e68cb19150ea8fc2709526ff3716550382e4588a3b1d35', 'April', 'Green',
            '2025-02-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '99fe5416-eafd-4099-bd98-201d8e14c1dd', '6b6bab81-fbf5-409f-8834-31b6b7f10c69', '2025-02-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4bf9eb6e-018d-463c-8a8a-91a32b88b995', 'lgutierrez@example.org', '5325833e93094ee11ccf6d3258be1f90135cc2566fec0c8e8095b2f1a56d2637', 'Jesse', 'Allen',
            '2025-03-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2d17b81a-ce04-4e6d-bded-7bfb41fc2624', '4bf9eb6e-018d-463c-8a8a-91a32b88b995', '2025-03-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c93ca77f-1cb2-43d2-b5ac-fbccef165d70', 'gardnerpaula@example.net', 'acccf2ad0edfa0b09b447ed3e7e8a1e319548c0bf1de02ff897bf43550cc5058', 'Dwayne', 'Garcia',
            '2025-02-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9f909906-e728-46ad-866c-c044ce2659ab', 'c93ca77f-1cb2-43d2-b5ac-fbccef165d70', '2025-02-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '34b089cc-7163-49d1-8359-b70eb892baf0', 'jessicarobinson@example.org', 'fb5649e4fb39c6476d657e8b0761e58ef9bde0439fe78c10693390bfd4b3dfe9', 'Joseph', 'Mitchell',
            '2025-01-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c1732614-071a-4965-9458-32a6e5641970', '34b089cc-7163-49d1-8359-b70eb892baf0', '2025-01-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '365546e2-2b7a-492b-85f3-5b8dadbea2bb', 'anthonyhall@example.net', '32544814bc9a2349c2a7fa546233edc46c021b7dc353fd19e4a3c4520c69c783', 'Rebecca', 'Myers',
            '2024-11-28 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c8a33503-7126-4611-ab86-6b998d962f0b', '365546e2-2b7a-492b-85f3-5b8dadbea2bb', '2024-11-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ea2f9998-7bee-409d-800b-060034e5d90c', 'debraguerra@example.net', '412c11471fd2463880726459fecae21d55aec71a59979da639f5e721992e38f5', 'Katherine', 'Espinoza',
            '2025-04-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '51e16fbb-183f-415f-bdf8-13d434b55a77', 'ea2f9998-7bee-409d-800b-060034e5d90c', '2025-04-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '761703b3-a17a-44f3-988f-c5189553fdf3', 'kellybarry@example.com', '3b31b75b3c72fb721587096b02a64165ca74807bea6b302defb2f2f4247d0ded', 'Cathy', 'Alvarez',
            '2025-01-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '23f8a380-9289-47b6-9801-2d7b75582176', '761703b3-a17a-44f3-988f-c5189553fdf3', '2025-01-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '88da9a72-9490-4e0b-98fd-d4221c8fb35e', 'princekeith@example.net', 'a93ab05529854a94544823b5a3194653a29eda56f44bf8c3436d5f599c0cf7a7', 'Elizabeth', 'Hoover',
            '2025-02-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c68c02c9-6134-4511-926a-0d162682c99e', '88da9a72-9490-4e0b-98fd-d4221c8fb35e', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd57c4cf5-2994-4ee5-95aa-bd2256f8c473', 'ewilliamson@example.net', 'a88337f2e9e36f969ac585e74ca39e113fd3457ea49a752f6153b16beb0252b8', 'Jackie', 'Ryan',
            '2025-05-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'df193035-6a94-496e-9334-1dd15f8fc956', 'd57c4cf5-2994-4ee5-95aa-bd2256f8c473', '2025-05-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '18715cf5-1cc7-45e6-9f0b-b1fdedc2ea17', 'rothdouglas@example.com', '7191115f211eec2e118bc440dfc711ad1ae6c37b0da855b265b74760a5bb209d', 'Andrea', 'Bender',
            '2024-12-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '50ee912f-b99c-44f0-836d-cf06a2a068ff', '18715cf5-1cc7-45e6-9f0b-b1fdedc2ea17', '2024-12-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9a22687a-9afb-41cb-bcad-8d5d410d5964', 'karenmccullough@example.org', '2570d6919c686187883c730d0c899ce162b260a3ef4d481a8b5c7d5b92a62e86', 'Andre', 'Powell',
            '2025-03-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '79a57d33-b01b-4c62-9da4-40d69a8c95db', '9a22687a-9afb-41cb-bcad-8d5d410d5964', '2025-03-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4f7b9e66-979e-46c7-b191-6a5ce9c102d2', 'johnsondaniel@example.com', 'f46e47cb38c4c9702bf055c78a94fbaee510162d19d1a6e9078e28f770958e5d', 'Victoria', 'Melendez',
            '2025-04-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bef76220-c8ce-4ac5-9cea-fce540110ace', '4f7b9e66-979e-46c7-b191-6a5ce9c102d2', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '64bb7ebb-5728-4f79-b640-670a73029881', 'linda85@example.net', 'a53ebff43d6c55e064938a1266f7838494467d19f6d1934a54dccab2ad20611e', 'Megan', 'Carroll',
            '2024-11-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '96fee024-422b-4e52-bbcf-aa43be8b9b17', '64bb7ebb-5728-4f79-b640-670a73029881', '2024-11-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3b4dc22e-a5b0-45e4-ba22-b4b2e07cbe18', 'susanherrera@example.org', 'a3f95fb59bd4819b4c0f87ee874ab0bc30e48739e8a3f8a9c72cdaab7b6945b8', 'Blake', 'Brown',
            '2025-01-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '16929fcc-e3f4-4eb7-ba8d-ad69ea2980b0', '3b4dc22e-a5b0-45e4-ba22-b4b2e07cbe18', '2025-01-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4f8b9d7c-cfae-422d-bb2e-e76f4a72fb00', 'ahurst@example.com', '86ab2664eb274560917f5640b05ec7920e90ebbc76142f4776907aa139bc65a2', 'Sarah', 'Esparza',
            '2025-02-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a7a14666-b45b-4856-9eac-8b4ec7332909', '4f8b9d7c-cfae-422d-bb2e-e76f4a72fb00', '2025-02-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd3f57083-4b9c-4c22-9be1-154d8326a68c', 'vasquezeric@example.net', '46f8bbd06396d214dec5fc3d32d1418da9d79db80f22ac68fe6715cf1ef7d10a', 'Wendy', 'Johnson',
            '2025-04-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '23978cfb-59c9-449c-a00c-f1769ce2e294', 'd3f57083-4b9c-4c22-9be1-154d8326a68c', '2025-04-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8f73e839-7c30-4964-b0a8-beb77d3b108c', 'rhondapatton@example.com', 'f6d54f2dc4767e30609d033086d825a27344c155b07b57632a8e93570ca8f623', 'Kimberly', 'Davis',
            '2025-03-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5a1a47eb-764c-43cf-b090-51e879286961', '8f73e839-7c30-4964-b0a8-beb77d3b108c', '2025-03-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9316472e-5434-4d56-8b0b-286684c56631', 'tomnoble@example.com', '1067a142c45dd8c7ab2f4519f13558ee96d7467f2ee82c4d1b979580e18b7179', 'William', 'Smith',
            '2025-03-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e939b5ad-3105-43a7-8b11-285175e490f3', '9316472e-5434-4d56-8b0b-286684c56631', '2025-03-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '063762e5-26d0-40c4-a2c0-ee059e9c62d8', 'hurleyjennifer@example.net', '790ec313e9e8f8e4e5a3d2f8483c673e22a1de6c64b234299dd0d0b73c65e66b', 'Allison', 'Robinson',
            '2024-12-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b0461241-0c77-460f-857f-0279679e413b', '063762e5-26d0-40c4-a2c0-ee059e9c62d8', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'afd4822e-926a-473b-8ae7-b2498962dd07', 'lschultz@example.net', '18524835df8ab96ea3cc9098cbfc0e61758f18828779a9fcdf6b4e7cd6f01e15', 'Rebekah', 'Mcclure',
            '2024-12-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd522b702-43b7-45ca-9af6-2e0c941d6165', 'afd4822e-926a-473b-8ae7-b2498962dd07', '2024-12-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5e4b674b-1ba2-42ce-bda2-6815210e1d46', 'francis08@example.org', 'df855d10b8c5b56e2e3e872f3688a709ab94a9c1531d76fc19096ad1b9ccfd83', 'Michael', 'Murray',
            '2025-03-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd0332c81-ada1-4b87-a982-2d9d0f9e8c21', '5e4b674b-1ba2-42ce-bda2-6815210e1d46', '2025-03-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2306f532-346a-44e2-88e6-1a5198164901', 'whicks@example.net', '954aa653c4a4ca2c993cfd54d5fe738690ce2b3f842a4060036c41cdc85cb51d', 'Donna', 'Wagner',
            '2025-03-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '88a81dac-fabc-4a4f-ae85-9390ce75dd20', '2306f532-346a-44e2-88e6-1a5198164901', '2025-03-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5a57de78-ee0d-4721-be87-d1c249e75c27', 'munozjustin@example.com', '2e8f996c23028933a0714ff77373d934d3d590d26df239a911190d58a8a09d49', 'Melinda', 'Leon',
            '2025-03-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '12e960c5-bc1b-4634-aacd-521cd15cd1b0', '5a57de78-ee0d-4721-be87-d1c249e75c27', '2025-03-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '281994b8-737b-40d8-ba44-e8941d23e308', 'dmcguire@example.net', '1f8dfa78f7f128ba26b81c143b297ea869868587bef9778e8a33af297da7140b', 'Kelly', 'Murphy',
            '2024-11-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4bd369b5-a180-4c16-a7d7-5cbb040ed4dd', '281994b8-737b-40d8-ba44-e8941d23e308', '2024-11-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0da9687a-9e55-44a5-b1d7-0526c2917fe8', 'andrewhooper@example.org', '7458150d46021c06a170ac1fa177b8447f657ff1b9d756e71df55f3f22c90674', 'Tyler', 'Griffin',
            '2025-02-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7d8f4f50-ea62-4e3f-b314-6bcb25db09dc', '0da9687a-9e55-44a5-b1d7-0526c2917fe8', '2025-02-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6b1846b9-dab1-4502-b02c-671a99dcb2ae', 'snydershannon@example.net', 'e41ea77fd7ad3b38a613441ec70d739136b143f6192507b3cfa447dc9ce8804a', 'Joseph', 'Taylor',
            '2024-11-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '501496d5-37c3-49f1-aea1-c31cf8157308', '6b1846b9-dab1-4502-b02c-671a99dcb2ae', '2024-11-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9e1a789b-a1c4-49dc-9488-d189c15e930f', 'perezkathy@example.com', '88977849049f527917e56aadc47a74ae5bedbd01d78a1c5fd2ca8c9a1b8c2a4a', 'Virginia', 'Brennan',
            '2025-04-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a009077d-8504-4684-917f-a73acef7f9bd', '9e1a789b-a1c4-49dc-9488-d189c15e930f', '2025-04-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '959dfb48-48e3-40e7-9714-9ec5c63553df', 'xgarcia@example.net', 'c489910fe89fa240f34e68bb9edb4aa6dac1164ee8adddece8b9efb8a69523f9', 'Nicholas', 'Knox',
            '2025-02-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3d2ee52e-2aec-4e24-a28a-5b10ceb7851a', '959dfb48-48e3-40e7-9714-9ec5c63553df', '2025-02-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3f7610b8-e984-4cee-b87b-704b0b7866d0', 'aking@example.org', 'd3b136466ffb304cb43f76f0248c770722c5df519226468d6ed1e49ac6d6f571', 'Ashley', 'Bennett',
            '2025-03-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2e8a3d90-22d1-45f9-9747-490fbb826afd', '3f7610b8-e984-4cee-b87b-704b0b7866d0', '2025-03-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a1b1181c-e258-4b9b-ac3b-ecd2769a04b4', 'lance12@example.net', 'b083ae60563f23c3bc2037940b247b63c8f62ceec778a5dc294b82f96c73ea74', 'John', 'Olson',
            '2025-02-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e0905c98-4195-4079-898e-d30d59804c9b', 'a1b1181c-e258-4b9b-ac3b-ecd2769a04b4', '2025-02-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2e9d8462-f22c-4e90-9676-820a24d68644', 'aguilarjoshua@example.net', 'e19854ff00392047e7d628073641f5cdf20d8b8c29072903d158bdcae4a8d479', 'Donna', 'Orozco',
            '2024-11-28 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ad8fb0fa-1297-4392-badc-fd5437ceae85', '2e9d8462-f22c-4e90-9676-820a24d68644', '2024-11-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f8422e97-71a8-45f3-b377-b87f1e6d14f7', 'joseph09@example.com', 'fcde0c96c6c825bd9869b132075519d734c639c583e9310cb257926a5d7678a3', 'Kimberly', 'Bird',
            '2025-01-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8fc22fa5-406d-4da9-9d8c-b1abd9a27098', 'f8422e97-71a8-45f3-b377-b87f1e6d14f7', '2025-01-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b3e3e898-f59d-4497-b553-ee41f7adc546', 'michaelroman@example.org', 'e447ac649edfec9973d41dc6278db271631eba2571355ea96b48285d1c01a384', 'Cody', 'Hansen',
            '2025-04-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ece62f06-cff4-49ef-b58a-e04add157e89', 'b3e3e898-f59d-4497-b553-ee41f7adc546', '2025-04-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '39cb73ff-e956-409e-ae23-9eca9b221c45', 'emily48@example.org', '290b2618af0c7736d045e865cdc5ef5ea29635826fa13f1e01271c423e39e6a8', 'Natalie', 'Davis',
            '2025-01-07 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '15ddc97b-de34-41ab-bf40-ce4c2be3cea3', '39cb73ff-e956-409e-ae23-9eca9b221c45', '2025-01-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '01d50d0e-4145-4b93-9432-5ca7095740a5', 'robert17@example.org', '38f05137240987ac5b03f2beb66353195ac5274056f5d996a697eee91dcea484', 'Joseph', 'Reynolds',
            '2024-11-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '80156964-b659-44d5-aeab-a013826ef11d', '01d50d0e-4145-4b93-9432-5ca7095740a5', '2024-11-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fd1bded9-507e-4475-b158-5bdfae48d99c', 'brianbryant@example.com', '4c31c7fdcb45d58d446d3f9c0dc6ad00c80e786505f780aee0ed27c75aac6309', 'Jessica', 'Michael',
            '2025-02-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '464f795a-1a96-4c63-9f7b-a3b9a291b669', 'fd1bded9-507e-4475-b158-5bdfae48d99c', '2025-02-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '473e1ac6-6db3-446d-8345-b8ec7fe1241e', 'kristiemartin@example.net', 'abcbbbbb6f6eed0f5de569be1bcd17cea0d83ad2cc38eb2e80f7e7a76f27abc9', 'Joseph', 'Martinez',
            '2024-12-26 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '808aab80-45b3-4756-8f77-132743e93597', '473e1ac6-6db3-446d-8345-b8ec7fe1241e', '2024-12-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '52d03157-38da-46ff-8367-0b98f8898dc3', 'patrick12@example.org', '9daac6b25c002f258ff454ebdf3d1cb9bbf946613eb4142a6ac3a38835f7a229', 'Patrick', 'Short',
            '2025-03-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5eda2be0-a7af-4588-a970-547b1a8806b0', '52d03157-38da-46ff-8367-0b98f8898dc3', '2025-03-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd29149e3-93f7-491a-aac7-b3c44dc59267', 'vreese@example.com', '0fd2fca1628d2bc6ed7c52074454582b49ea617ba6904f1d46aad32a5a45952a', 'Howard', 'Ingram',
            '2025-04-18 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f618af76-3629-43e4-95ab-3bf700a1cc95', 'd29149e3-93f7-491a-aac7-b3c44dc59267', '2025-04-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '791743aa-1ae7-470c-a434-dc89d2b5232d', 'perezleslie@example.org', '5fd683ae0e62d6f79847d3326e8147b8f68554d904ac0be4c1152d7552cbe52c', 'Michael', 'Martin',
            '2024-12-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '50468bf3-57a6-45e4-a956-bc6846763512', '791743aa-1ae7-470c-a434-dc89d2b5232d', '2024-12-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5a3488ce-b04f-4e6c-bf54-2c0013ff8877', 'cochranjeffery@example.com', '2165978dd8936662220ed7c85567493b0c125405a51c29a69a0d5e7196e5edc0', 'William', 'Adams',
            '2025-03-13 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'aa2e0bc5-19fa-4cd5-b6b8-ecdc7ae4c91e', '5a3488ce-b04f-4e6c-bf54-2c0013ff8877', '2025-03-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '274c9514-c85a-4f0d-8816-c33abcf23943', 'dustinmathews@example.org', '95d99e0c65ad3149c657e692c24683dceafbfaff52fa9dbc7a3746c3f44920a3', 'Mathew', 'Price',
            '2024-12-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2665d4ba-472b-46e4-b38a-cc96190071de', '274c9514-c85a-4f0d-8816-c33abcf23943', '2024-12-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '389c4af5-e740-4762-868d-829969f2c417', 'yevans@example.org', '1bb284d181af97c308f98bf5a5314ccd8bab9afa1575df4e902fe2ce6224aab4', 'Derek', 'Lara',
            '2024-12-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b1fa04f3-8d84-48b0-9069-a7d9d2179339', '389c4af5-e740-4762-868d-829969f2c417', '2024-12-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2ff355dd-17d0-473e-87ac-eaa3b5057779', 'ygreen@example.net', 'b3865d279a0acbdeb1b7201ace6221e27affb09ffad4b1b0cde43d32c3615a8e', 'Stacey', 'Gordon',
            '2024-11-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '553ddab9-40ec-42a2-bebf-273a9b860e2c', '2ff355dd-17d0-473e-87ac-eaa3b5057779', '2024-11-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'acf942a1-8f4d-40a4-80f5-227183142d0b', 'wrivera@example.org', '94c97bedf6c571243884ae6f7f2708b9794a6aa9aa36f9d4e4cae0200183dadf', 'Christina', 'Villa',
            '2025-03-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0f9d0b44-0389-4168-9ea9-28411a42cb3d', 'acf942a1-8f4d-40a4-80f5-227183142d0b', '2025-03-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9ef1897d-2d36-4896-a972-56029acbaa55', 'robert60@example.com', '891b4abfe72c4c7e99eda46a07ac975e19bdb77dbb91a943583d68caaef86771', 'Lance', 'Crosby',
            '2025-01-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9cbfb531-001c-4a11-ab12-4bb322133b11', '9ef1897d-2d36-4896-a972-56029acbaa55', '2025-01-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd03f799c-cc6c-4cb7-a273-4c77a196e7b7', 'rachel39@example.org', '132da824e727e4373736513a45309fac9bbb10b4c2d4910169d72037a4c3114b', 'Nicole', 'Scott',
            '2024-12-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '63a6b205-d271-4870-8255-d2f901892c29', 'd03f799c-cc6c-4cb7-a273-4c77a196e7b7', '2024-12-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e407aa7e-d055-4164-aa65-693dea69ca8b', 'millerjeremy@example.org', '6b6ccdb17bd6cdf118c643da045f0a97970bce1f654412781636461d492351fa', 'David', 'Austin',
            '2024-11-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '931c9708-23e4-4128-9a99-39e540684666', 'e407aa7e-d055-4164-aa65-693dea69ca8b', '2024-11-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ef935a8e-8dac-4405-bcfa-e0685934e877', 'marc33@example.net', '2db7d7fc7d48b42e5c75bfcb93d39fd68d2dd3c78f7569b954b30796bcc031f7', 'Hannah', 'Hernandez',
            '2025-04-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '62464f9e-6812-4ade-9749-885367ffba37', 'ef935a8e-8dac-4405-bcfa-e0685934e877', '2025-04-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c4c52625-7c49-4edc-ba56-413d92e7a2be', 'judygibson@example.net', '451b0b4dca4f3a407a99c20669e46ed32218bb98e1bdb1e88e7053f704e8e41c', 'Lindsay', 'Mullins',
            '2024-12-15 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8282f6df-4e51-4039-bd95-b1909c7d5738', 'c4c52625-7c49-4edc-ba56-413d92e7a2be', '2024-12-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5ddb712e-b0b8-4f4e-9b14-b40af423e2ea', 'nathanielwaters@example.org', 'f3b7f2fc081b000d52c841475913116b31e450cf0a74e949e2602445057e09fa', 'Lawrence', 'Davis',
            '2025-02-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ce403bd4-d723-4c1a-b854-6c5e36571bd3', '5ddb712e-b0b8-4f4e-9b14-b40af423e2ea', '2025-02-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '54540b8b-869f-43c8-95ba-5955f3946681', 'medinamichael@example.com', '268fbba490097fc949a24d2e5721171f6b35c37cf76b8d787056aaf614b27e87', 'Joshua', 'Cole',
            '2024-11-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5baae091-6ac6-4086-9091-8f1f7b32645f', '54540b8b-869f-43c8-95ba-5955f3946681', '2024-11-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f1e3a558-4d05-45c1-9f21-54079437ca6c', 'melissa86@example.com', '9d9d5cee6e5ba8083450f788b0489a3c9c9dda662f56e3a16bda9d8c3e599cdc', 'Allison', 'Kirk',
            '2024-12-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd90df172-3af9-4a20-b655-da6bef95520a', 'f1e3a558-4d05-45c1-9f21-54079437ca6c', '2024-12-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3f5dd03c-fb18-4181-9af2-0371bb4f4749', 'yjones@example.org', '5d1111063db2f981897ee1cf0606356f2948295d74b505f638f6d2bba7ef56d6', 'William', 'Davis',
            '2025-02-05 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9351feba-1d7e-44c5-a4d6-8d45f757a079', '3f5dd03c-fb18-4181-9af2-0371bb4f4749', '2025-02-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2317bc6b-b073-4659-b7c6-bf83b79e018c', 'rbrown@example.net', '897432ed942bd1a556bdf94fa381aeffd5f1689a5b6b6b2adb001dd7545c03bd', 'Ronald', 'Dean',
            '2024-12-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '27a1ee6d-53b3-4514-ad5a-ab3b61f216ca', '2317bc6b-b073-4659-b7c6-bf83b79e018c', '2024-12-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '07765c7d-9a6d-4427-b81d-d4ea4340eb4b', 'huntwendy@example.net', '45d0c924d2a99d009e76d81e77d5ce8683cab59dcab81ecbe4cc627d43ec30b5', 'Amanda', 'Burton',
            '2025-01-13 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9501038a-037d-4974-8812-219793871f77', '07765c7d-9a6d-4427-b81d-d4ea4340eb4b', '2025-01-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ff9d2259-704c-4843-99d1-b0e1593ef4db', 'ostanton@example.com', 'ceb687a2f925c60955d7fc1b27c3508c01a056b4e37503898932984930d98f23', 'Linda', 'Bowen',
            '2025-04-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5087800e-3ab7-4306-b8f5-e464dc25bf37', 'ff9d2259-704c-4843-99d1-b0e1593ef4db', '2025-04-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '46348ec8-b284-4487-ac01-1b8f4c45faed', 'heathercarter@example.com', '9f57b7717a60ebdd0ebb37cafae2c83877fa7701807974de1b5d9bca10395397', 'William', 'Holmes',
            '2025-01-13 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '91f9011c-60cd-4016-97e4-3f3a9e80d21f', '46348ec8-b284-4487-ac01-1b8f4c45faed', '2025-01-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '770d0860-ce89-4707-ad2c-cf03f90db92f', 'johnsonamy@example.com', '8fd414634d8aaf38f8152b96c30bfd71ba1d292ae460eddedd735c2f5c53b1bb', 'Tyler', 'Green',
            '2024-11-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8a143b50-9e33-45a9-bca8-7bf02a7ad53c', '770d0860-ce89-4707-ad2c-cf03f90db92f', '2024-11-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '67ede339-001d-46b6-a828-25cd94d6bd2a', 'seanpowell@example.com', '9f64cf72311f5ffe0af70fcfbbd6cacdb5ec085f15655ccaf41e4c21ca59c8a5', 'John', 'Weaver',
            '2024-12-16 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1465f774-559c-4fff-b93b-b7640f06e9f5', '67ede339-001d-46b6-a828-25cd94d6bd2a', '2024-12-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '265a63e8-25be-44b5-9890-224091ce7723', 'susan31@example.com', 'a0dea6da229bdea6345a13de426163c95e0efb0a085cf8f296106b70de73c0ea', 'Richard', 'Taylor',
            '2025-03-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd1630fe5-3a10-4bf7-851a-0e2761f2d829', '265a63e8-25be-44b5-9890-224091ce7723', '2025-03-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '617736f1-d53f-4f09-96aa-c54c6cec22eb', 'tyler77@example.org', 'd1cea40fec664d2e410f175a011eb9926e10944bbefc71900ec8cff0099ab7cb', 'Haley', 'Wilkerson',
            '2025-03-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ca173dab-8ed2-4768-af0d-3dcf7fb9ad90', '617736f1-d53f-4f09-96aa-c54c6cec22eb', '2025-03-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3bae44be-bca8-48af-a12d-9339645fc33d', 'grosssteven@example.com', '0744a752f9be8b09a7cbd9855c73e5bb65e01153732226e5bf18504fbc9a892c', 'James', 'Buchanan',
            '2025-03-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '44e45c96-cc25-440b-89a1-ea5ab73e1541', '3bae44be-bca8-48af-a12d-9339645fc33d', '2025-03-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4d07d5e9-b18d-4439-b2e9-6d5ab4512f26', 'bennettbrandon@example.net', 'e2481af38bf01a34dbdf007e5b5b13d8314a212d3c1dedbbb247cb0f943417f7', 'Steven', 'Alexander',
            '2025-02-26 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'aee3c345-878f-4b89-b645-49607c538d75', '4d07d5e9-b18d-4439-b2e9-6d5ab4512f26', '2025-02-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bdce22a9-7586-49ba-a6a6-4ba30a58fd02', 'katelyndelgado@example.net', '4cfb23e1892c6522eddcb455987fc6a973d9620ab13968bddc77e4bf9c0450f7', 'Kimberly', 'Guzman',
            '2024-12-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '76a49b16-f71b-4f7e-937c-67918147fdbd', 'bdce22a9-7586-49ba-a6a6-4ba30a58fd02', '2024-12-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dccb1dc4-78f2-4008-bf25-a037638c1e92', 'uwheeler@example.com', '2018c53cdd8a864354f9878b7745ce9a6bf8e030c4ff6b5b2de7b3127a03c419', 'Cynthia', 'Fletcher',
            '2025-04-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ef8f2d03-d8f4-420c-8df8-c53ed6b4c28e', 'dccb1dc4-78f2-4008-bf25-a037638c1e92', '2025-04-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '68c33aa8-28e1-477f-a196-f3a3ce41400b', 'richardsantana@example.net', 'aac77a444bf2d028401dc7610071215a0827782648ee2ae7f7421716123c00bd', 'Jacob', 'Schmidt',
            '2025-02-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cfb5b1d4-f680-4493-b130-d3ede6155b87', '68c33aa8-28e1-477f-a196-f3a3ce41400b', '2025-02-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd66a47e3-a7ba-4ca0-a566-b47744d33e61', 'blakeroberts@example.org', '8f4f16237a7cdd42d1790eb3b68f55f18963df5a747a9b0e73f635fb899bd8d0', 'Shawn', 'Mason',
            '2025-04-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'dc32443c-0a88-4bdb-9d9b-06816cfb088f', 'd66a47e3-a7ba-4ca0-a566-b47744d33e61', '2025-04-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6e3a6069-8916-4b38-a2f1-c44879fa6e62', 'lauraolsen@example.net', 'f4abc91e02015c1a2c602a35fe4894685024f57800766caf9ccbd4af8a4ecd2d', 'Wayne', 'Green',
            '2024-11-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6c648754-dd4c-4f05-b0eb-9540e44a836d', '6e3a6069-8916-4b38-a2f1-c44879fa6e62', '2024-11-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '740b1234-aee0-4afc-8951-d7a16017056f', 'williamspatricia@example.org', '6c548ed2c83fd6e66422b40af9da571f406fd27f2488cb47a17d609f179ffc32', 'Chase', 'Luna',
            '2025-02-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3b95f829-283c-4421-b4be-cb9820d5779f', '740b1234-aee0-4afc-8951-d7a16017056f', '2025-02-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '79a104da-ad58-4fb4-83f3-ef9d2b326619', 'raymonddan@example.org', 'e5ecfbab70076de480526413019bc986a1a346744d49f68c6999d011c7c35b5e', 'Brenda', 'Dunn',
            '2024-12-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fc8e0d02-9b31-442c-9492-60e6e9d3ace2', '79a104da-ad58-4fb4-83f3-ef9d2b326619', '2024-12-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5fcf1eb5-0b57-454b-8ad6-031c58907fe3', 'brittanyholloway@example.com', 'a1293fb5b5fe5f1ab8da692b50f079ff2bdf9be027051b5abd4710ce9d3191e5', 'Ryan', 'Smith',
            '2024-12-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '031ea98a-2232-480b-8f7c-02f21c6cc294', '5fcf1eb5-0b57-454b-8ad6-031c58907fe3', '2024-12-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bbe632c7-7aa1-4a55-9865-ad7b25c6fa82', 'gregory07@example.org', '4288e5360274ee9d5a70cf5227b59dfce4370b1ff16a7f14d0f5fab35554a2e1', 'Jonathan', 'Rosario',
            '2024-12-31 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f0f26fbb-669b-4d45-b229-89746dc12bee', 'bbe632c7-7aa1-4a55-9865-ad7b25c6fa82', '2024-12-31 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '41db763c-e174-498c-9df5-a6912983819b', 'johnhayes@example.org', '3f24b76ec813d536f147618372fef0dbeba78c261bd05c5b2b17c59d0f0c47e4', 'John', 'Williams',
            '2025-04-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2e608ccd-5ad9-44ad-a715-4379d1353f63', '41db763c-e174-498c-9df5-a6912983819b', '2025-04-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9b475cfd-3a4a-4ff3-b10f-c31270b9b01f', 'xmartinez@example.org', '2494b51adfb5978e36a195409c0b66d1dfdc8a95263646b280c1ca67ff859fc9', 'Sara', 'Andrews',
            '2024-12-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c17d72d3-02f7-4b94-a009-47c3347d5764', '9b475cfd-3a4a-4ff3-b10f-c31270b9b01f', '2024-12-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'caab15fd-654c-4131-9715-c3e9d1c38d05', 'hmata@example.org', '4956cf683eabdf24134693a8c5a5138788c70cf6e382fba06e1e3c57bc6dbe4c', 'Jody', 'Jones',
            '2025-04-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a983d17b-90fa-46d4-b4f9-4344fb8a8e71', 'caab15fd-654c-4131-9715-c3e9d1c38d05', '2025-04-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '456657f5-aa65-48e6-87dc-ea3b1495503f', 'vsalas@example.org', 'd28c63e804856dc64f1a2e7471f1800158bd6cbad6769cd15bc4b9deed53235e', 'Mary', 'Long',
            '2025-04-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a451d24e-20ff-4749-9f4a-7892ac76b1c0', '456657f5-aa65-48e6-87dc-ea3b1495503f', '2025-04-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a4cb68b2-1dc2-40e0-b32e-8a802150b660', 'newtonlisa@example.net', '2d6d54a21d0035c30e1e71a6bf2c302b5bee1616be43b80d38483b3e8b415740', 'Angela', 'Harrison',
            '2025-03-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '18fa8f7e-0f18-412f-9924-826123904f39', 'a4cb68b2-1dc2-40e0-b32e-8a802150b660', '2025-03-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '22a014d3-253c-4073-a1bc-73d700a0ccce', 'lindsaytaylor@example.com', 'a059be8937475cd75110ddbf3b11f563e548098520491f0395a0796e46f7e81e', 'Trevor', 'Crawford',
            '2025-02-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '75df72df-6c23-40e2-b01f-b584ad9ade1b', '22a014d3-253c-4073-a1bc-73d700a0ccce', '2025-02-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '987ee33d-6674-4755-bd1c-966d499e8874', 'jeffrey56@example.org', '5d1b8da87eb482454b21e8a68d571c6b6561ee9ca057a4aff8d0fdb4f2f2a9ca', 'Anthony', 'Henry',
            '2024-12-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4cbe0f60-296d-4747-abc6-6b3c9d498b8c', '987ee33d-6674-4755-bd1c-966d499e8874', '2024-12-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '936d58b7-14ce-4eb2-afc0-f3928100ef97', 'ctaylor@example.org', 'ca5a1cbb247ddd2a63467edd6889172d5b98d394985a41131ebc0a654a88f501', 'Ryan', 'Mathis',
            '2024-12-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '00dd6999-c5c3-4129-8af8-871e6e141036', '936d58b7-14ce-4eb2-afc0-f3928100ef97', '2024-12-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3a8fd256-0243-4e06-8407-708a03d47a24', 'blyons@example.com', '0c2657af5c543baec55660a9747e20dfb9867ec7c4ba5906d69174f9fe0039a5', 'Theresa', 'Shepherd',
            '2024-12-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a688e653-09a4-4656-b00a-a19a6a234b8c', '3a8fd256-0243-4e06-8407-708a03d47a24', '2024-12-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd838d6cf-0b39-4394-b330-a7377e164b7a', 'jack88@example.com', 'ce416a41ac409ebca7a09a839faf1235667b947cc8cc69f0bd27a64a1cafadc2', 'Corey', 'Baxter',
            '2024-12-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0700a1cb-df69-441f-9ed8-a7b2e2dbfdf6', 'd838d6cf-0b39-4394-b330-a7377e164b7a', '2024-12-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a2b289a6-8ef9-447d-b6ae-9fd0bf7c3af9', 'zbradley@example.net', '99d616c585dcad4c375a8a2d3755483b6dacec9c9d4734696a03355f2221f314', 'James', 'Long',
            '2025-01-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bc6c5c8d-d9d4-4b6b-a0ee-98f0b6b32f43', 'a2b289a6-8ef9-447d-b6ae-9fd0bf7c3af9', '2025-01-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5b25ebe6-08cd-4ca7-b0cd-fd60bc8d9188', 'carlbarrett@example.net', '85dafd70d9efc9df34caf48f1fcc1565c92ab8954220553fa50acae23539687f', 'Gabrielle', 'Ramirez',
            '2025-01-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2b21d3dd-c1ea-451c-b0b7-62c8e5a1407e', '5b25ebe6-08cd-4ca7-b0cd-fd60bc8d9188', '2025-01-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8697b07c-b987-40ab-9d54-c5a5952ae547', 'kathryn51@example.org', '98bb1056389cb035ee5a7282b7546659681a035f0ea24c19188910a844bd7377', 'Paul', 'Ferguson',
            '2024-12-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b3619363-9ed1-4850-bb52-f31dcb9a6b9b', '8697b07c-b987-40ab-9d54-c5a5952ae547', '2024-12-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '109fd904-0f6c-473d-97c3-3eefc4c6db70', 'williamsbenjamin@example.org', 'b980a13558be311c2386a9705493f0aa31acd25fb0a97290a9169dfd4cd32aa1', 'Kelsey', 'Davidson',
            '2025-01-30 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '323c8042-737b-409f-b90b-d111f9d2e631', '109fd904-0f6c-473d-97c3-3eefc4c6db70', '2025-01-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a21cf081-a032-4fd3-a531-111453c4bbb8', 'nharding@example.net', 'ce790490b442230dd3ce502ad58050440161c58c25b549917a0901836b24fde5', 'Christopher', 'Arias',
            '2025-04-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9d406093-577e-4cef-8a2e-f85da75460de', 'a21cf081-a032-4fd3-a531-111453c4bbb8', '2025-04-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '424318b4-cb4b-40e8-91e2-a554231cdb50', 'olsonalexis@example.net', 'e8b945fa4c0fbccc7ced91c5bb1356a36df41246544b45b2afc01fe6d0c983d0', 'Eric', 'Love',
            '2024-12-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9526e75c-7040-4b13-94a8-5a78ec9f853f', '424318b4-cb4b-40e8-91e2-a554231cdb50', '2024-12-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bb445a99-c63d-4b8b-bfd9-2321a8adc22a', 'johnsonlisa@example.org', 'cf7047809f4ee415cf7f3453fb065be1c7501ca42527ee9ad34b51a752df81c6', 'David', 'Morrow',
            '2025-01-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b1519028-f4b6-47f0-96a6-8f96f964eb09', 'bb445a99-c63d-4b8b-bfd9-2321a8adc22a', '2025-01-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7a302201-51da-437d-9082-578155c47d96', 'morrisonanthony@example.net', '9018d99026d0af461af11890bc344e4c57ca2199d3911d6a899cb13703bdc90a', 'John', 'Carney',
            '2024-12-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '84ae7f41-7140-4b75-aaa0-de73816f8042', '7a302201-51da-437d-9082-578155c47d96', '2024-12-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '08fea65c-67d6-464f-98c7-ab1bf8a22841', 'yhoover@example.org', '5bf9e4e74c1a4096f5337081ed6f87e493ab2c40d34450b7186f9ca296b2bda7', 'Debra', 'Mcconnell',
            '2025-03-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '409b4e48-b0f9-4203-8d0b-7e496c2ca87a', '08fea65c-67d6-464f-98c7-ab1bf8a22841', '2025-03-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4ae895fb-5ed6-46d5-a62e-6d805db42acd', 'angelamiller@example.com', 'b5b33ea5c52f2c5680be39dd9d62286fadc50692e84747c603842c952317cb92', 'James', 'Serrano',
            '2025-04-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3738212a-0a0d-4c36-9972-702f7ea59071', '4ae895fb-5ed6-46d5-a62e-6d805db42acd', '2025-04-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cd857448-3c02-4c95-94b7-0f6ca944f7e2', 'valeriemartinez@example.org', 'd3cc033cdfc2d2d900da5bf741fc05958c55a949a4962b98c8c11d90f2701b7b', 'James', 'Mason',
            '2024-11-15 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3adfc170-86fe-45cc-84ad-07dafc4e0b0f', 'cd857448-3c02-4c95-94b7-0f6ca944f7e2', '2024-11-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f77a2034-acc9-4d62-9909-c930d75b08f6', 'chebert@example.net', 'b1328d63ffb2c01d631ca9583c9de0a2bf6d22d24510fbb4adb19a3bb91a700e', 'Calvin', 'Brown',
            '2025-04-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'eafb886a-8a5e-4d60-881a-3d8e174f49ac', 'f77a2034-acc9-4d62-9909-c930d75b08f6', '2025-04-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '34dd1198-cbdf-443d-bbd0-7792f9c11f46', 'santanabrittney@example.com', 'c47eb5a30ffad40235eaf6d682f4e9265962b5df266eeea39a2e29620bf903c2', 'Christopher', 'Sanchez',
            '2024-11-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a730e802-73e1-4484-8f00-6f329a651917', '34dd1198-cbdf-443d-bbd0-7792f9c11f46', '2024-11-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a33c3347-fee4-4906-84ed-dbba8efdcbba', 'jamespollard@example.net', '6fe66d0cc840ee0c740eaf11dfb407b6c782bed490f397b2b99739968b99f6ea', 'Holly', 'Savage',
            '2024-11-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a810ed29-826f-471c-9a8b-c9bfd35538d0', 'a33c3347-fee4-4906-84ed-dbba8efdcbba', '2024-11-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a1986e4a-804e-47d5-b532-f0ef4459a863', 'calderonsamantha@example.net', 'b046661239524ab082ff156cf6f949e6fb44a427f4ae39676b2e597b1b611e72', 'Karen', 'Ramsey',
            '2025-03-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2a308ce1-ac4f-4ea1-954b-8a756e916234', 'a1986e4a-804e-47d5-b532-f0ef4459a863', '2025-03-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '763d5006-84ab-4797-8ba5-c28a04c87279', 'pdorsey@example.net', '25a88594ebf81e025cfb254a5ceb3930703b89afce168ef2e094829fd1c15a3c', 'Christopher', 'White',
            '2025-04-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2bf8143f-58cf-4d4e-86e7-290505b53c35', '763d5006-84ab-4797-8ba5-c28a04c87279', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '62ea4e44-3fa9-47cb-9a35-eda3908974e4', 'allenmelissa@example.com', '29382d51d8ed1f92dacb11629d6b7a11106f7127c382e3b3b79b6b1f45602778', 'Caroline', 'Meyer',
            '2024-12-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e97ab548-b474-4580-9445-d542f1dc23e8', '62ea4e44-3fa9-47cb-9a35-eda3908974e4', '2024-12-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '04bc55a9-b749-4cb5-8cad-9e8f2851ddcd', 'xlogan@example.com', '4c8c494a6c6e0832a2b21d416f049e3abcdda0e32a74da61675283ecf2ca527d', 'Bethany', 'Stewart',
            '2025-04-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '44bb8ea7-74d4-4bbe-8796-f894cb41b6d6', '04bc55a9-b749-4cb5-8cad-9e8f2851ddcd', '2025-04-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '85f60e97-cad0-4d0d-9c1a-8b0cacf18a9c', 'susanday@example.com', '3d013e61a8cf667eced6d4380c7575980868a04ad3f1c0fa729885cd25460fa1', 'James', 'Lewis',
            '2025-02-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6ec31d87-799f-4f00-bfa2-008dc519a305', '85f60e97-cad0-4d0d-9c1a-8b0cacf18a9c', '2025-02-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ca8a94c0-a9ad-4e73-9dd1-8ebaf9e0da5a', 'leejennifer@example.org', '7d4a453ac2cd4006a5c1b5c93db4ed23eb1248b02a83758dd82ab52023629fdf', 'Sara', 'Chen',
            '2024-11-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '64cb1cf8-2c48-4bff-aabc-23086112226c', 'ca8a94c0-a9ad-4e73-9dd1-8ebaf9e0da5a', '2024-11-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '299f4529-c8ab-4f90-ad73-cdfc5fc47554', 'tcruz@example.org', '1cb383d0d857a8a1f367622c90440a2bcb7d119fb3be4a0ae48aa5fffeb1881d', 'Jacob', 'Hughes',
            '2025-02-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '019b84d3-deac-415c-aa70-02c442a11db6', '299f4529-c8ab-4f90-ad73-cdfc5fc47554', '2025-02-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9c66ee4e-e487-44be-97fe-ef1df385b96a', 'misty55@example.org', 'b0ce7975883ad3b4c500559be78523879f1a4587bc7d23729d594ee2120dd895', 'Scott', 'Pratt',
            '2025-03-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2e513fd7-3d20-4354-aa9f-7532829b72cf', '9c66ee4e-e487-44be-97fe-ef1df385b96a', '2025-03-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '102fab50-30f6-4abe-bd99-5c90bbfd386f', 'ryan55@example.org', '841c88d01f3a9164ce08fe1ac80e7164e9db2c488fc3815723849f14a996f99f', 'Michelle', 'Brown',
            '2024-12-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '24a8b156-1e76-4bba-af2a-ec194bc1400b', '102fab50-30f6-4abe-bd99-5c90bbfd386f', '2024-12-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e0a31f1b-8485-4809-bbfe-aaccc4d9f87a', 'pmurray@example.net', '5467a173cb0413877cedec5d1a4e7385288d5293a06084036cb30389ad593289', 'John', 'Cantu',
            '2025-03-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1641f863-d506-4a25-b428-bcd167d11837', 'e0a31f1b-8485-4809-bbfe-aaccc4d9f87a', '2025-03-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '71397ef6-bcc6-47a4-b4a9-1bcbbe59a2b5', 'xscott@example.com', 'b0a9576c5c3691384521ec60b1d7ed50985038bb1aed777c4180e17163d72a3c', 'Jermaine', 'Carr',
            '2024-12-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8a7e01d7-67ca-4d86-9c5f-c4162b6ff45f', '71397ef6-bcc6-47a4-b4a9-1bcbbe59a2b5', '2024-12-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a8b2c7ba-3a18-45fe-9445-4d46922efc63', 'rogersalicia@example.com', '80ac40db407c250427b3798222597022dc8bdc7f3f5980c2b68853434ecd755d', 'David', 'Wilkinson',
            '2025-02-15 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '230460f0-37d6-4683-ac49-46b42d5b240b', 'a8b2c7ba-3a18-45fe-9445-4d46922efc63', '2025-02-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'feb3808e-b281-40e2-b49a-b661a398b8de', 'cooleytheresa@example.com', '892a27d1504386003b55fdf148b64b203a2eb4c768790b3649fea0f3748aa678', 'Lynn', 'Jones',
            '2025-01-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd9d1989c-4012-4a52-9d4d-321e8b5bc726', 'feb3808e-b281-40e2-b49a-b661a398b8de', '2025-01-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fc09684a-f87b-4e00-a895-21d8711515de', 'alex31@example.org', 'c71cdb610a3b5fca5f3822811dfa519b592eef8a2140603947480af3be38b999', 'Jon', 'Giles',
            '2025-03-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '815ef986-e66f-439a-9862-153bdd207d8a', 'fc09684a-f87b-4e00-a895-21d8711515de', '2025-03-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '493d86da-73d0-40b6-a3a4-badc842d5494', 'christina57@example.org', '353e501e021003bf12ce5036633d00d1590e30c304ab77393f471470218573af', 'Larry', 'Nelson',
            '2025-04-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '347f3d58-8869-4189-bc62-1ed2e8fc7840', '493d86da-73d0-40b6-a3a4-badc842d5494', '2025-04-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cd4b7512-a1c3-47c5-bb03-b5693fd33c39', 'chelsea42@example.org', '2d9f500ac1d7629f9a97ce4df69c40d53327c99dd50e91a9830d887a76f85d15', 'Jackie', 'Riley',
            '2025-03-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ea1e7ccc-a9c3-4932-9134-c76f7aeb4d67', 'cd4b7512-a1c3-47c5-bb03-b5693fd33c39', '2025-03-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6549669b-4ac0-45ca-8f55-7179a8ac3723', 'jennifer85@example.com', 'd392e4d60b40cf388dde2c435b81d7c5646e4795ba56e49315140fe8be7cf408', 'Lauren', 'Thompson',
            '2024-12-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9ff31779-f48c-44db-86ab-149e6deba37b', '6549669b-4ac0-45ca-8f55-7179a8ac3723', '2024-12-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '753415f1-b449-4f08-a60b-3308a064b1b5', 'elizabethhughes@example.net', 'fc4d6c0ae8eb3da64d5e842abb4aefebb74cd135cdb82728cda3ac5bc2f73fdf', 'Darlene', 'Harper',
            '2024-11-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1959544e-4de3-4db2-9d13-9f10f60a01d1', '753415f1-b449-4f08-a60b-3308a064b1b5', '2024-11-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e62faaf2-f05a-4cf3-b7a7-5bb7abd22644', 'jennifermartin@example.com', 'ee981a5747a01f6b20ebebd19a64ea8724cb08319faf1e1e1cfefe40002ef0ef', 'Jacob', 'Stephenson',
            '2025-05-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f068ceac-0160-465d-b745-333aab520665', 'e62faaf2-f05a-4cf3-b7a7-5bb7abd22644', '2025-05-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '48e26536-e30c-4d68-af8c-5c05cdcbe397', 'ldalton@example.com', 'e022570ddece158be8ad4ddf24293463091fa2c878d9cdf57d417dff9c3f3103', 'Jack', 'Howell',
            '2025-02-15 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5fe6bda8-4838-4b22-a48b-7b2c5ef82518', '48e26536-e30c-4d68-af8c-5c05cdcbe397', '2025-02-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f2588129-155e-40f2-9b47-ee5c7ea132da', 'jennifer78@example.org', 'fe778e6ea51a21c27c1ed427034834d3b71300a2cdc80a1998b9682290158b60', 'Joseph', 'Espinoza',
            '2025-04-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9135acfa-81bd-4132-91e1-3eac4aac395e', 'f2588129-155e-40f2-9b47-ee5c7ea132da', '2025-04-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f3c7a2e1-25b9-4523-a85c-f18c10edad01', 'butlermonica@example.net', '12b805a577e891b09349a60bd19549c7c123e910b7b9cb4586dffad2095457a0', 'Zoe', 'Thomas',
            '2025-01-28 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f4b13d90-604c-4b9a-9ee9-0a571d20906c', 'f3c7a2e1-25b9-4523-a85c-f18c10edad01', '2025-01-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd115e4ae-516f-4042-919c-8d016845874d', 'oanderson@example.net', '0d725a64f2696309b014ca456d86301a268d3cf7cf5206021da24212e6069b27', 'Samuel', 'Myers',
            '2025-03-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd5b0c32f-de6c-467d-8a29-753cf064e81e', 'd115e4ae-516f-4042-919c-8d016845874d', '2025-03-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3a4ebfd6-940e-425b-b6dd-bb01a45dfde4', 'usmall@example.org', '8230f50ec1ebdee849803d04ef7ef1756ffba22796e8e662da55eaf83eda89ec', 'Erika', 'Taylor',
            '2024-12-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '100e757f-faa8-4d61-aabd-80e501ecef17', '3a4ebfd6-940e-425b-b6dd-bb01a45dfde4', '2024-12-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9f01b0f5-18b7-4b93-a0e8-f76d3d04543d', 'munozjustin@example.org', '8c36bbc33a4d92d501025f835f24c018e7861dcfed3a2796ad92704acde698b2', 'Jeffrey', 'Vasquez',
            '2025-02-15 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7b09d908-7372-401f-a9f9-123297f02ecf', '9f01b0f5-18b7-4b93-a0e8-f76d3d04543d', '2025-02-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7a86062f-1f6d-47d7-bd00-da4f3b6eaae2', 'samuel24@example.net', '4f5825a055af2635f5c68a4d828875c380d1522a9a615c9a1ac61025fabe859d', 'Kevin', 'Lewis',
            '2025-02-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1125a0c7-6751-407b-b4f2-fcb76a544c86', '7a86062f-1f6d-47d7-bd00-da4f3b6eaae2', '2025-02-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '05cfc685-610a-4e02-b0b4-f46cff9e092b', 'christopher47@example.org', '2a6f8ae9a9611f5b631f414203fb4dab555034a7abd7562b5b3c79e62b30986c', 'Julie', 'Hurst',
            '2024-12-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7eb04281-77c8-46a1-abe2-04a908bd4100', '05cfc685-610a-4e02-b0b4-f46cff9e092b', '2024-12-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fcd93e7d-528b-4a6d-b94f-04ca0a26c428', 'bgarcia@example.net', '76de49ac12c25332d2796ef060460a898ad77d1e342f5471b8f54e0ee7a1d971', 'Carla', 'Heath',
            '2024-11-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3b375702-682e-42df-90fa-d57b08079f76', 'fcd93e7d-528b-4a6d-b94f-04ca0a26c428', '2024-11-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '666d990f-30eb-4a8d-81ec-1c2f82d77ff2', 'george72@example.org', 'cfe9c8c6186707dc836add5b13bcb9aa41c1c3d19922eed4102cb22b5e853c7b', 'Rachel', 'Miles',
            '2025-04-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a76809fe-79ea-4b1b-8a61-09392857a545', '666d990f-30eb-4a8d-81ec-1c2f82d77ff2', '2025-04-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '530921eb-626c-4c48-901c-18358ae2a583', 'judithallen@example.org', '3f0a11c1bec97f2f39b3b46a28d7724d3ddf336f3632677d1aca6c546d3e4e48', 'Lisa', 'Obrien',
            '2024-12-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'caa9107c-1cfd-4677-ab4e-c8f66380844f', '530921eb-626c-4c48-901c-18358ae2a583', '2024-12-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '26cc4374-1bc8-4ee4-856b-8fbff953e4b5', 'mthomas@example.org', '3ba114ab5f7b8fba89880b11c16fd056586b821b16a83f9ccbc01b840b1f68bc', 'Dana', 'Lewis',
            '2025-04-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '97f9a827-7304-4eb2-b9d6-057236a0d39b', '26cc4374-1bc8-4ee4-856b-8fbff953e4b5', '2025-04-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '673705bf-327c-4fcc-93a7-cfe9c913103f', 'kristen04@example.org', '838e0429a1990497d1fb4eab1dcf385007b67964d9dc9a18d0037275d832317c', 'Jessica', 'Mills',
            '2025-05-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'be3a5c93-85f4-4378-9cac-3a7ca4f41447', '673705bf-327c-4fcc-93a7-cfe9c913103f', '2025-05-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dacfc6f1-19db-4caa-b2d2-a2fd80c9b678', 'tammy45@example.net', '604304d5b828ab63f9d72ec71400e984801bf78a2fc79eb59ea4cf6f94ad883d', 'Jason', 'Williams',
            '2025-04-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '60dd88bb-b331-425b-930b-8f3222b09f00', 'dacfc6f1-19db-4caa-b2d2-a2fd80c9b678', '2025-04-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a144ee4f-af08-44a2-95f0-3dae27686b96', 'angela04@example.com', 'ff6ab6aae243e7fa259dc9d18dcaaae3253443dde258eaf7c7474f10c7e8b31f', 'Cindy', 'Owens',
            '2025-03-21 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b7baf858-6059-4621-b6d4-fdeaf5a14083', 'a144ee4f-af08-44a2-95f0-3dae27686b96', '2025-03-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8fea9707-4f7f-4e15-aa2b-a10c9f6a080e', 'kelly57@example.com', '5fccd16d97ffb3cd062afec31deecadcee8c31e223e0a6ca457d7d4a03146e0f', 'Eric', 'Jackson',
            '2025-05-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8d35869d-b0d1-4252-85b1-fb285e983e25', '8fea9707-4f7f-4e15-aa2b-a10c9f6a080e', '2025-05-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '36f6c07d-9b83-4bd6-8f6c-c6c8d2f17932', 'david38@example.org', '2c4c5133d53dcce9e8e9329a7e5ab10e0c039475afa30d3952848fc599750dca', 'Robert', 'Hebert',
            '2024-11-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '827f2605-bb1d-4876-8210-9f767673a2c7', '36f6c07d-9b83-4bd6-8f6c-c6c8d2f17932', '2024-11-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a9d4c996-493b-4d7d-b85d-3faf4b685eba', 'ioliver@example.com', 'e7f70ab03ec3b54e223b597bebcdd8294d5869cdcafcbc820e6ee04700483fb4', 'Julia', 'Roberson',
            '2025-01-31 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '10e99afd-0c4d-4a57-8087-8b0d4601fd20', 'a9d4c996-493b-4d7d-b85d-3faf4b685eba', '2025-01-31 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c49c8e74-ccff-4636-8aa0-7f62384ce767', 'granttroy@example.com', '19cad9afbdc22a78e4d71663d424a0942971cb1945b453c155c300d75505c142', 'Melissa', 'Brady',
            '2025-03-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '90edd605-b0ad-4d82-a393-7eba48b9729e', 'c49c8e74-ccff-4636-8aa0-7f62384ce767', '2025-03-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0c6d81b8-852f-49d8-b52f-ea82a9647ef0', 'yarcher@example.com', 'fba0e13fb397216cd5ee030c3e2a3dbc55c0655ad74562f1258800a1c42643a9', 'Rebecca', 'Russell',
            '2024-11-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a3b503fe-64f9-40a9-ba0d-40016a0062b9', '0c6d81b8-852f-49d8-b52f-ea82a9647ef0', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5fdbeec9-f6db-475c-86bf-f83d74c140e7', 'jmcdonald@example.org', '3e1cf6339393fe55efac5c5768613eafdbeac1afd31a326ae487423be64ed91b', 'Joshua', 'Hill',
            '2025-03-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '727970fc-d1ba-4209-a4c0-e7734874b2c8', '5fdbeec9-f6db-475c-86bf-f83d74c140e7', '2025-03-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'de51d743-edb5-4f80-a278-7b5eb30724a4', 'rodrigueztanner@example.net', '7015ce85d803b76b8fffbaafeb228b0b9e11991f0b16d8d3bedac0524daeb880', 'Sydney', 'Welch',
            '2025-03-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4ef1e092-3b72-4542-b58e-f27059930fd4', 'de51d743-edb5-4f80-a278-7b5eb30724a4', '2025-03-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '53260ff8-f12e-4c4f-9f8e-e1f157928d78', 'zwyatt@example.net', 'f50ac6b1efb212c33e8db1d1a70e0302f61d92730dd87efd0344c7fb02303c96', 'Anthony', 'Koch',
            '2024-11-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5360810b-7842-4648-990d-02c6864bdcde', '53260ff8-f12e-4c4f-9f8e-e1f157928d78', '2024-11-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f72e2e6f-36ab-493c-91f3-480f8c4ae620', 'allisonmejia@example.com', '10a628e38e5c7dbcb02a7946afec0815636a050112c5c07e253876556c5f84ea', 'Kaitlyn', 'Davis',
            '2025-04-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0b04b2fd-af4c-4745-8fd5-d33849adc0fb', 'f72e2e6f-36ab-493c-91f3-480f8c4ae620', '2025-04-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3adb400a-29eb-43de-8c9e-7cb521015be9', 'palmerjennifer@example.org', '523dd02b71a8a11b4e7f9612d9634d29c805fe91fda99232173b7ce292e2049c', 'Joanna', 'Schroeder',
            '2024-11-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '408b0d61-869a-42ab-8b75-cffbfe8f4823', '3adb400a-29eb-43de-8c9e-7cb521015be9', '2024-11-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '39c7582b-a4fb-4ba9-8231-c70da9651a4b', 'emily46@example.net', 'b7b87a3ea1fcb6d05e9585fa863b0f9ab6e60dfe1aad215f5dc9843ae9503aef', 'Kenneth', 'Whitehead',
            '2025-01-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1ae74ccf-180f-4401-a42a-0d99c94d69d2', '39c7582b-a4fb-4ba9-8231-c70da9651a4b', '2025-01-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7270a6c7-8e23-4b52-96f2-8372b3eb6db2', 'ckane@example.com', '95b852f04ae187d81337b55fb4fb9ceccb2d4b3d17eb3bb29bedb5557f8309f3', 'Thomas', 'Vargas',
            '2025-04-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8dee82f0-3d14-475d-b10f-ad4c29693852', '7270a6c7-8e23-4b52-96f2-8372b3eb6db2', '2025-04-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2c27c024-9f85-47f8-9a7d-0ea087cc3e6e', 'patriciatucker@example.org', 'cb100a9e109ee33479e7408dc7116055aace36c837cef6cdcc1ae02c7ec273d4', 'Kelly', 'Davis',
            '2025-01-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b1dade10-4ad7-44b0-b18d-9c539a32e8a7', '2c27c024-9f85-47f8-9a7d-0ea087cc3e6e', '2025-01-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2329ba58-fa9f-4748-9a3d-a638a4e07675', 'stephanie09@example.net', '689262b1e898f318c4d34005a336fc5a4b3780e0d1684e78cd6214ee36084dd0', 'Laura', 'Dixon',
            '2025-04-28 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '062ad291-abca-4900-a0e9-b84c6dc5bea6', '2329ba58-fa9f-4748-9a3d-a638a4e07675', '2025-04-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f63bfd1f-9345-480f-96db-756c2186a536', 'nhall@example.org', '096cd9323dc31dea1cf0485475e9d8e2b2bdc083a919c965013a9a73570783fa', 'Holly', 'Hughes',
            '2025-03-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '125c3e2e-7d70-455d-b9e6-cd1caabb5d2e', 'f63bfd1f-9345-480f-96db-756c2186a536', '2025-03-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '58155fe9-8834-4db3-b4b4-28d8449aadf0', 'smithkristine@example.com', '659bc7974026905d7bb11adb8ff63f7553cf502cd1ce2b8a0f8f1642914856b1', 'Elizabeth', 'Baker',
            '2024-11-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1bce0c54-aa49-4161-b890-9fd65d9a3c7e', '58155fe9-8834-4db3-b4b4-28d8449aadf0', '2024-11-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b0a050fd-6ccb-4638-bc4c-238c68ad1246', 'luis17@example.com', 'de658bccfa596809fbf6905c4afb2c27cf7fa6f05a3d84e8e0d6bcf274f29224', 'Julie', 'Bright',
            '2024-12-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '90c40f1b-ba7c-41db-b22e-2712e8332abb', 'b0a050fd-6ccb-4638-bc4c-238c68ad1246', '2024-12-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd93e965c-4635-465d-afb6-b25394f00567', 'pgibbs@example.org', 'e7aaa14c5bc19a517b1e39f4cfe64b2dfdaed8d986a1d52c134e38a0252d1dc7', 'Michele', 'Anderson',
            '2024-11-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fc01617c-df17-4297-8616-59ae723f64cf', 'd93e965c-4635-465d-afb6-b25394f00567', '2024-11-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ef6cbb34-d5c5-4bb3-8ac7-13be6bb0a1a3', 'mcdonalddonald@example.net', 'aa8eab690fef5037874cc9bffe03deb70ce528a8921c082e6c246d1ef1e8e6f8', 'Brianna', 'Morrison',
            '2025-02-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'da416824-c07c-45c8-89cd-588f23b5d968', 'ef6cbb34-d5c5-4bb3-8ac7-13be6bb0a1a3', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f6207a7e-bead-498b-b883-087c9f35f635', 'carsonbrittany@example.org', '2c3cd0b663a77120f928f08bf2c6dce01c12fa5f0be868058b103300bfd13cfb', 'Jessica', 'Holt',
            '2025-02-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b747aa1a-e3e7-46ec-990f-da57bfc4e1f2', 'f6207a7e-bead-498b-b883-087c9f35f635', '2025-02-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '46b0b715-cde8-4536-b5f3-3918c74c00c4', 'wilsonkenneth@example.com', '2bd7793668885c798b0950483917e41c80de54abd51bbea18e9e01fca4ed6a6d', 'Susan', 'Hill',
            '2025-03-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2a529f5a-02d7-4051-b9df-d68e76da2c04', '46b0b715-cde8-4536-b5f3-3918c74c00c4', '2025-03-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '53f35cfd-b75c-4a4b-8045-288e14a9d40a', 'wigginscharles@example.net', '167de388b19e08deb545fb3ea162d285b88042c3874e72ebaa86c08f7a5592a5', 'Michael', 'Shelton',
            '2025-03-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '69ccfb34-f3b0-431f-839e-6477fcb44510', '53f35cfd-b75c-4a4b-8045-288e14a9d40a', '2025-03-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6d61014f-af4a-4071-af72-678446e995ea', 'davieskevin@example.org', 'fd8e0d49fd3599c1b2d59855397c85c66f51a8f0aa7aa0047e2103684f8ad29f', 'Corey', 'Mendez',
            '2024-12-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '722ed5d6-dee0-448b-b54a-308daf5b6b36', '6d61014f-af4a-4071-af72-678446e995ea', '2024-12-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5160dfa9-3ff4-4bb3-b56b-9d469f6d5e57', 'maria55@example.net', 'f24414e098e6ae2e911095c6340841c4c5875950b7c122c8d3e48174c3e32d78', 'Amber', 'Berger',
            '2025-02-05 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6a983869-8bce-4d52-a7e5-fcfb20b723f7', '5160dfa9-3ff4-4bb3-b56b-9d469f6d5e57', '2025-02-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8f22342b-a660-404a-a272-c8704d17c401', 'ejordan@example.org', '1102ddfacde6a1c8f1ef65e3a71c6d9199da5f0e952e2bf01324dc208b1bf82d', 'Stephanie', 'Conley',
            '2025-04-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c9f71e77-7dc3-4c9c-babd-a8246eb1111f', '8f22342b-a660-404a-a272-c8704d17c401', '2025-04-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b5ccbce1-4dfb-4f52-99bb-d0b18c62b022', 'zcastaneda@example.org', 'd03f325188445a785976ea178ec4a04d8a32b55bba866fcd0a42b8cdbc25f17f', 'Alison', 'Thomas',
            '2025-02-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4081454a-4ccb-44ff-8f42-63f492cc53dc', 'b5ccbce1-4dfb-4f52-99bb-d0b18c62b022', '2025-02-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0727d846-a394-460a-927b-ad997149a973', 'james93@example.org', 'ebfbced67eeeec6a4119adf534748d8c68e1a177fecd3e794e2612f3d334f398', 'Judith', 'Hunter',
            '2025-03-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd4352aef-29e0-44f4-b100-6dc817825c3a', '0727d846-a394-460a-927b-ad997149a973', '2025-03-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3ce55d91-cacb-4412-8c10-3f61eaff5fc3', 'ycooley@example.net', '64163f4890ec95911a82afb4b391e4fa84c2d7f41de48792eb38b4d171bc1ccb', 'Clayton', 'Wilson',
            '2025-02-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2a3e11d0-2c18-4d69-9697-0fa4b84808bc', '3ce55d91-cacb-4412-8c10-3f61eaff5fc3', '2025-02-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '607b2666-ef64-4ba1-9a9f-9d00a4444228', 'richardsondaniel@example.net', '2d5b40029763dc9e8781605c12b056884aa7fd5d111cd6c1eff1c295061de0b0', 'Amy', 'Ramirez',
            '2025-02-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e0452be4-6a7a-4c33-88f2-beb70f3b6ef9', '607b2666-ef64-4ba1-9a9f-9d00a4444228', '2025-02-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '33b82858-a103-4d73-871c-823e4eb0080c', 'edwardbarrett@example.com', 'c9acbc44e1206cc7b0dcca5c4f44859f12404b3a084526d612f9b214fc6b716a', 'Linda', 'Green',
            '2025-02-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '395afdba-30b5-46cf-895c-e7fcd35e6266', '33b82858-a103-4d73-871c-823e4eb0080c', '2025-02-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4c632829-d92b-4ce3-89b1-e2dc7ee9b8e4', 'xrios@example.com', 'd34720c7df5c64d399490b24b255945fde32593c7df7ad2805d88e5a8d552810', 'Ann', 'Hayes',
            '2024-12-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '98269c66-9174-4eee-b881-9aea17c1d904', '4c632829-d92b-4ce3-89b1-e2dc7ee9b8e4', '2024-12-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f3b34961-ac41-4bef-98b5-2c45a8d8d8f1', 'holmesleslie@example.org', '7de7103e56535904e936ba71da640e6ca3ec9161e3d4f6f316c0ba4b6059a0da', 'Janet', 'Johnson',
            '2025-01-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4c66c29e-2e89-44dd-9174-58bf2abd137b', 'f3b34961-ac41-4bef-98b5-2c45a8d8d8f1', '2025-01-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5b4e2779-3f11-4f36-826f-83efb3fce23f', 'amybennett@example.com', '1540a3ee068609371ef983bac7867b443cf83988d88f39e5253604cfba782ca2', 'Oscar', 'Alexander',
            '2025-03-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '67b526fd-58a5-4e97-9cd7-3a646be4b971', '5b4e2779-3f11-4f36-826f-83efb3fce23f', '2025-03-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '89759c8c-a128-4202-b829-e992e4bb06e7', 'muellerchristopher@example.org', 'bdba2a41f8eb651da72aec657f96c238457f62acfe9e3fd2883940acb21397ea', 'Christopher', 'Bennett',
            '2025-03-31 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fb108695-750a-433a-9642-7075933b0f1e', '89759c8c-a128-4202-b829-e992e4bb06e7', '2025-03-31 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a216a963-6986-426d-9ccf-6d9b430326c5', 'mfritz@example.org', '3e30fec2207f56d92d277000677c8eccbfa2e5ce84789c8765ab8b6b13c374e4', 'Nathan', 'Whitehead',
            '2025-02-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '30b3c7bb-5e88-4e40-88ff-e5c4d2969568', 'a216a963-6986-426d-9ccf-6d9b430326c5', '2025-02-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8b5cf7dc-887b-4b16-ad58-52c8e4d7bd94', 'hannahrogers@example.net', 'c3151b2c920ab337531bc9b2686c85bfb79b95a7afd52a758493f49dda1477ad', 'Nicole', 'Leon',
            '2025-03-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'aa4e5664-7ff2-4a04-96ed-1bc20f364b00', '8b5cf7dc-887b-4b16-ad58-52c8e4d7bd94', '2025-03-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dbbad99b-84e2-4879-96e8-1bce44148dba', 'weissruth@example.com', '3da847a6676f5b83157d16a943fced1b77d9780a4054bbdf289571e9df0fdfc3', 'Jenna', 'Phillips',
            '2025-04-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a12eef61-77ce-434c-9a80-8f2c7b7c5291', 'dbbad99b-84e2-4879-96e8-1bce44148dba', '2025-04-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '31dc2680-b333-4598-a028-302eda60b363', 'silvarandall@example.com', '36aea528a0d4d068b5385af7e7f4a1cbe9c66b278dd0840d75fb6daa9f57a926', 'Tiffany', 'Cross',
            '2024-12-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5502a265-c43b-456f-a20b-c26f68e648f1', '31dc2680-b333-4598-a028-302eda60b363', '2024-12-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '32e83f99-2edc-4b30-9c79-f72395c10865', 'karen46@example.com', 'cfd6d0b21e306ea40375feefff47a7df6b411f43220b1094ebb22ae6cd19a8ae', 'Catherine', 'Chen',
            '2025-01-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '67c29601-7cad-4200-9c4d-79ae49535396', '32e83f99-2edc-4b30-9c79-f72395c10865', '2025-01-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7c12c770-0f11-4a1c-9ad5-9df00917b983', 'sarah30@example.com', '7062507e6b45292cf1f3b5234daa8cceb7c23b24de31d07e6e8e692e434914c3', 'Robert', 'Gomez',
            '2025-02-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bc90c93a-96c2-44de-9cb3-bbaea5fdfd4e', '7c12c770-0f11-4a1c-9ad5-9df00917b983', '2025-02-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5dcb4950-6e13-42ac-8f15-2e41f347884c', 'ryanhutchinson@example.org', '4557526370c3b16135d951d6467fb002b2df5dcb910c09e075e63309a96dc453', 'Jamie', 'Adams',
            '2025-02-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '956ee1c7-ebd2-4046-8e24-def91231d483', '5dcb4950-6e13-42ac-8f15-2e41f347884c', '2025-02-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '90fb1a8a-40fa-459d-bb98-970db83a2c26', 'gordonfernando@example.net', '1f89ab2f6e72aee4e0faa75ae28f9b894a8fc2b8e08eb2adf122c5fc5c7bfc89', 'Caitlin', 'King',
            '2025-02-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '87660c9f-426c-4594-a486-5bf4b59c57ba', '90fb1a8a-40fa-459d-bb98-970db83a2c26', '2025-02-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b84f85ec-d9b2-425e-abf2-f873169cb1d4', 'michael39@example.net', '7f3b5fdaadd46799389adc70ac0b9f6bbfdc7c20433f127a963b3c7a7535f52e', 'Pamela', 'Nelson',
            '2025-02-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4ecf19b3-f908-4b43-b932-39759e5cf667', 'b84f85ec-d9b2-425e-abf2-f873169cb1d4', '2025-02-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'eefc4150-36f6-43b6-aac9-6ea58145d57f', 'lreyes@example.net', 'bf9b753ab65d2649dcb8a8180c2127730b3fcb04c5f8ae1d281792a86c1659f2', 'Jamie', 'Rodriguez',
            '2024-11-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bf029306-4505-4ee0-a546-e2d22d8348de', 'eefc4150-36f6-43b6-aac9-6ea58145d57f', '2024-11-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fae5a812-606d-47a0-90f0-9362cc246b06', 'tmontoya@example.com', '265bbe903faa7b1bebad86a9205e288689dd3b662680551c549f8c98da512761', 'Shawn', 'Andrews',
            '2024-12-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e7bfce00-4020-4172-8bd2-820a40082236', 'fae5a812-606d-47a0-90f0-9362cc246b06', '2024-12-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4f14b4bd-3bdb-4724-8db4-72c32f8d1abb', 'janice39@example.net', '3eba3e24aa383546bf1560ff0cbe3308c142b08a226219b93d0f33119c728167', 'Robert', 'Cruz',
            '2024-12-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9410c843-d767-4422-baba-0b6addd8221a', '4f14b4bd-3bdb-4724-8db4-72c32f8d1abb', '2024-12-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bf95ebc5-7cfd-410d-a05d-4d779f8de67b', 'nicholas40@example.org', '537fd859573cf3fcf3a8f00c14932fb69a8992224c405418a4198484e73aaf89', 'Jill', 'Smith',
            '2025-02-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '76b75483-71cf-4519-84d6-0a8c0e6bbcae', 'bf95ebc5-7cfd-410d-a05d-4d779f8de67b', '2025-02-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fc5b71af-cdb9-4fb9-a3e0-2eb764bed04d', 'markhoward@example.net', '5ca15c68774b4d65885d133e4b3fdee39d94d4c9ba1046b4235e5a68426f9ea1', 'Evan', 'Mccormick',
            '2024-12-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c90cd069-49a0-4d4b-95ad-a68575e76093', 'fc5b71af-cdb9-4fb9-a3e0-2eb764bed04d', '2024-12-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c2e85c2e-a54f-4d0b-82af-a845f6b042d6', 'austin44@example.net', '8436b04f925caa722b984506ed1252a2831be854aafb2e24ecf88fe27e1c9a2e', 'Bryan', 'Martin',
            '2024-11-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'da535b1a-307d-4d47-824a-b097fe5a2dae', 'c2e85c2e-a54f-4d0b-82af-a845f6b042d6', '2024-11-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'fb9cc6de-49ad-49c1-9115-1e55118ece3b', 'johnriley@example.com', '32108753ec1c3d80a5ea6fdbc972c4bf5bad8bd5e092495a4b441e84db0dc768', 'Mary', 'Henderson',
            '2025-02-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'da11061c-6cb2-4c05-9aff-8e6065161461', 'fb9cc6de-49ad-49c1-9115-1e55118ece3b', '2025-02-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4b281b03-c28b-4f0b-96b4-c7a91752b6d8', 'garciajeffrey@example.org', '2762acf414504dfbe5df8c916c301ebbbef6033102d49f20984fc6a1b0dd9547', 'Tara', 'Goodman',
            '2025-01-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '99910d21-a318-46af-a078-812508fd4190', '4b281b03-c28b-4f0b-96b4-c7a91752b6d8', '2025-01-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3694492c-4d3a-4160-81f1-0831d8914df1', 'kyle73@example.com', '8d9f1a033a66707a35c83f09f636f7feab6546f3b91ec88c331258bcb7569db5', 'John', 'Miller',
            '2024-11-07 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9db9dbbc-c189-46dc-90c6-d87a0624a31f', '3694492c-4d3a-4160-81f1-0831d8914df1', '2024-11-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'bba6db80-d401-4fc4-ab33-a84808a304b2', 'denniswright@example.net', '8c5a47ee8fb1281e79c308b27a4b66793ab07594d91b8fb0ba52e1efff21c978', 'Stacey', 'Wong',
            '2024-12-09 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c2d52ec5-8f42-4b1d-b207-d08e18e01097', 'bba6db80-d401-4fc4-ab33-a84808a304b2', '2024-12-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3c50be10-d797-43fe-8306-dbe07c75ee26', 'rmoore@example.net', '5e22ed183cdd7b1fb38b5dc221bc6e32215dac325be9c24d12ed7a1cfa74874c', 'Ashley', 'Woods',
            '2024-12-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bb0d6bc5-dc5a-4ca4-96dd-bf75d5d59d3e', '3c50be10-d797-43fe-8306-dbe07c75ee26', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f7e2ad87-318b-4938-91a9-3b137a4bd024', 'murphyamanda@example.com', 'effd75bd408d55c2291c846c2b9ea44c6da0ae9d7d2e005dcb52651c95ba2d20', 'Derek', 'Hayes',
            '2025-05-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7188e458-f886-4c1c-8c34-eec48829036c', 'f7e2ad87-318b-4938-91a9-3b137a4bd024', '2025-05-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2d213e3f-f387-4ba7-bf78-3f7bb102d48a', 'hamiltonwilliam@example.org', '24e3646b2dfee3c1e5263f914730d1184e6e9cd6dcbd6f412e3b931be51bc529', 'Nicole', 'Thomas',
            '2025-02-26 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '78b9cff1-d58a-42a0-9030-3890c19cd6a5', '2d213e3f-f387-4ba7-bf78-3f7bb102d48a', '2025-02-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dbdfb271-720b-45d0-a25e-1c881dec93f4', 'zscott@example.net', 'aa2fb22e68baf9cf4e8e838d3ef6ca23b2f92af581cfce26e9c90c6f2b75f71b', 'Robert', 'Lucero',
            '2025-03-15 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '30d1eb6d-ab40-4a41-b122-3e170c0c95fa', 'dbdfb271-720b-45d0-a25e-1c881dec93f4', '2025-03-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '78dbdd6c-3e45-481f-9640-8fdeaa0d2ec3', 'richardbrown@example.net', 'e39e0cf8a99aa689562c1d374919fc967f63b977765061547e9fcc93fb6ad293', 'Christine', 'Khan',
            '2025-01-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd111b560-e22b-4945-aed8-b87489b04ece', '78dbdd6c-3e45-481f-9640-8fdeaa0d2ec3', '2025-01-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b3bc3d18-f437-4ce6-8938-82234759c357', 'jgutierrez@example.net', 'f2d1ec9c0cda5fafe55e4c1721517393b9fac8161bbe61df0e6b2b043c1c29d0', 'Misty', 'Roman',
            '2025-01-20 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0a3496b3-0e64-4ec3-8972-70f434df076b', 'b3bc3d18-f437-4ce6-8938-82234759c357', '2025-01-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '72b0eee6-e9a6-4beb-a574-463e39b4bf04', 'kimberlyduran@example.net', '2e8e8f20b1e0d2da1f2b9c5840b14123f6564b34fd6c20717cf4cc77398acc94', 'Mary', 'Anderson',
            '2025-04-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'da53d3f7-5d58-4473-9b46-23c2740632aa', '72b0eee6-e9a6-4beb-a574-463e39b4bf04', '2025-04-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b9b01ac4-db7d-4f50-b0df-5931fc5c5683', 'andrew80@example.net', '59279bcf23675323c3f4e19288486533e1033d7886ca8c25db03727ae8f5db02', 'Lisa', 'Henderson',
            '2024-12-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd0c4c5e3-0b46-4c51-b973-34f569f447cb', 'b9b01ac4-db7d-4f50-b0df-5931fc5c5683', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '37177489-feb6-437e-ac2e-f9d99ee8d35b', 'romerotimothy@example.com', 'ffc6083ea6ae02b40f527deeccfd5a1a4e669a2f549888b115d3e20ba37a24a1', 'Wyatt', 'Horton',
            '2024-12-20 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cefb2719-1df7-40a9-8760-43fa9ebaf9e5', '37177489-feb6-437e-ac2e-f9d99ee8d35b', '2024-12-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5a4d3ca5-df67-4b46-a01b-003673d1d420', 'mlawrence@example.com', '6f2b6773bd2be75d7fab66a6718825d431dbe9c4a6f8f00e517b025326b21afc', 'Ricky', 'Fisher',
            '2025-04-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '42ee3060-f884-48c0-9814-7e6d375795c9', '5a4d3ca5-df67-4b46-a01b-003673d1d420', '2025-04-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd7cbdec7-0b3b-43e9-bdc2-7780f148efbe', 'maryclark@example.net', '5b79df59bc7ffa4097a0e1e607429773e78a629323edfee629ddbfdd85943e1d', 'Jessica', 'Brown',
            '2025-01-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '24009b5e-0b5e-42e8-8d82-7d2a10ab9014', 'd7cbdec7-0b3b-43e9-bdc2-7780f148efbe', '2025-01-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a564379e-97c5-4a24-8eac-a12752a214d7', 'cameronfuentes@example.org', 'dc08f7dbbf077fc8f90e7b6548abbc015e2154995b505b92c3aabd55a62d103a', 'David', 'Johnson',
            '2025-02-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c3a9989c-2abb-469a-a98d-ac3359abbaf7', 'a564379e-97c5-4a24-8eac-a12752a214d7', '2025-02-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '71d4b709-1b4c-402c-b04f-a613caecb228', 'jimenezdenise@example.com', '933673eb26991de8eb7fb3adae539f51289737b915c6fb8acf6d5f454d8cd516', 'Amber', 'Byrd',
            '2025-02-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '44ac9707-79d3-420f-86c9-3c32728cbd31', '71d4b709-1b4c-402c-b04f-a613caecb228', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2ca08938-fe67-4fd6-b426-1436d7e5f3cd', 'maria99@example.org', 'a5fe66771c3e872fcfa5b5356ee6ed71fa5aa06e014fd4671f0f0504e2892a22', 'Kimberly', 'Castillo',
            '2025-01-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '01ab476c-a426-4e4b-a47a-47cdd177a666', '2ca08938-fe67-4fd6-b426-1436d7e5f3cd', '2025-01-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9755ebdb-95bd-46ae-b7ac-873e0d289dba', 'goodmandebra@example.net', 'def60716935a8fe831b456f3c30bd64f5e5f78fd178566c5c213d42b9adab40e', 'Alexis', 'Martin',
            '2025-01-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e821dc11-572d-4e99-a92a-4f1a86df821e', '9755ebdb-95bd-46ae-b7ac-873e0d289dba', '2025-01-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a302e420-325b-4f72-97fb-9c876e10f4bb', 'gouldamber@example.com', 'adbfc6b8c1bbdd2383277999b8318dafc507762f9d3f13a1ed05b69704e9b525', 'Melissa', 'Ramos',
            '2025-02-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '973fe212-860b-4622-961a-a684d0623d83', 'a302e420-325b-4f72-97fb-9c876e10f4bb', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5c427022-a17c-454d-bd0a-79c46702a887', 'jenniferdelgado@example.org', 'a4f60053ca67cca4000718f1dc97371a24346ee796cdb37cf84041f5d1f8308f', 'Daniel', 'Blake',
            '2025-02-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3ff93908-648a-4e94-80a7-ab555f974636', '5c427022-a17c-454d-bd0a-79c46702a887', '2025-02-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5440e7cf-6d51-4fbb-880d-db57021e42ed', 'olivermeghan@example.org', '074700210a01836be360c591351233dda13c965d44a883a0db354927f5aff458', 'Jason', 'Beasley',
            '2025-03-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3bb6e852-b8ea-4cf7-89f0-5a97a9b2c16a', '5440e7cf-6d51-4fbb-880d-db57021e42ed', '2025-03-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '57dda17b-bf3e-47c3-82f4-b88e73acfc7b', 'swong@example.com', '0cd0fb736ecf3589e7b3747267196fbcf0dcb5f0299a685163c8a383b2528310', 'Joshua', 'Mendez',
            '2024-12-06 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '668a3dd5-9403-4736-a01d-4b08a75c6079', '57dda17b-bf3e-47c3-82f4-b88e73acfc7b', '2024-12-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '649516f6-fbcb-4522-a184-31a691611400', 'susan56@example.org', '81ad55bef42b63613bc30a5557f3f8899964d7cc1e31fd2c5ad9bc8b326ab27d', 'Misty', 'Morgan',
            '2024-12-23 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '09a0f432-f9e4-4a37-b465-3ff95ef04182', '649516f6-fbcb-4522-a184-31a691611400', '2024-12-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '325f126e-89be-439e-ac4a-778ec9b74c02', 'melvin09@example.com', '8c00aa8f056d066191294353baba2fcb9921659cb7d0908186b9a24476398d31', 'Jennifer', 'Gutierrez',
            '2025-03-23 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '464ae2cd-7b62-49da-b21e-57c6ece96d2e', '325f126e-89be-439e-ac4a-778ec9b74c02', '2025-03-23 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5b20531b-0565-482c-900e-032c89119a7b', 'christopherthompson@example.org', 'aaa7c699939e634f37ad01832b2c0daa52c746d0a278877215e3d4330c7618b8', 'Michelle', 'Leonard',
            '2025-03-11 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '353449f1-224f-45dd-94dc-ce5fbb83cfd1', '5b20531b-0565-482c-900e-032c89119a7b', '2025-03-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1640a572-fb65-4bf6-b248-e974258615af', 'brandon90@example.net', 'a7cd7d2d8c75545619ea208d6484a574964bf4ef3da4cc95f7996d365334b9a0', 'Travis', 'Jackson',
            '2025-01-20 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fac93e62-798c-4c8c-b087-4ed5e53973f2', '1640a572-fb65-4bf6-b248-e974258615af', '2025-01-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b52407c1-656b-4924-9ccb-ef346acf921d', 'rfuller@example.com', '11ae4189e8d7e499c2529ce8f568776ba0eca546e8bc8455b4f9dbdc3575e2e9', 'Daniel', 'Mason',
            '2025-01-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f5fc7e9c-cc1b-4659-b881-f1c3f3d3c269', 'b52407c1-656b-4924-9ccb-ef346acf921d', '2025-01-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c7684043-6acf-48a1-8a01-93c0e0a2efd7', 'scottpaul@example.net', 'd1370607af329994fdd772fba7400faf364a3a4bc0aa7b20f4973663f2417ddf', 'Thomas', 'Johnson',
            '2025-02-03 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bc3bd851-60ad-458b-a96a-d70d59734bd9', 'c7684043-6acf-48a1-8a01-93c0e0a2efd7', '2025-02-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e580ed0e-fb44-4a65-ba71-aab7e66da951', 'yvonnephelps@example.net', '0df94a40a626fe28e8dba1f4534d758feb64f2abbc86582a724d1cb69ba0f7e7', 'Caitlin', 'Robertson',
            '2025-03-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1028364d-4a22-473e-9630-f7e43be2fc1c', 'e580ed0e-fb44-4a65-ba71-aab7e66da951', '2025-03-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '27cc0686-eedb-492d-ad16-1e3a3bafd930', 'davisjoshua@example.com', '4f16255c5c7d154fc629e46bc46aea897ddd4936540ec0dd8f234d0a0269588e', 'David', 'Carson',
            '2024-12-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c4afcc1d-b2b6-4b56-aa96-19eebc4b7f55', '27cc0686-eedb-492d-ad16-1e3a3bafd930', '2024-12-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1bb19e3f-5e79-4e22-91f9-daec546de17b', 'branditorres@example.org', '4e8f770391985c7801ebee90782237460ad5c50376a57d30e72c36311ebcd260', 'Cynthia', 'Larson',
            '2024-11-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '001dc02c-eb43-46b5-b495-a995509b365e', '1bb19e3f-5e79-4e22-91f9-daec546de17b', '2024-11-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'eb07972f-bdf7-40da-9c18-b8032ec268f6', 'crivera@example.com', 'a69d53572d2803ff68f4ea8dc6a988e4c80da50b5f5fd194de0b9da100b7e471', 'Amanda', 'Jimenez',
            '2024-12-10 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '46f8b68c-6249-4c75-8def-06aa96637bb6', 'eb07972f-bdf7-40da-9c18-b8032ec268f6', '2024-12-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b78f2adc-d811-431b-9e29-bd1565952bb4', 'mary49@example.net', '9c4d3fa0ffbcbcb8b49b27eb3d3238cb47608deef980113c53d9c0120a628cff', 'Donna', 'Cherry',
            '2025-01-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c955f86e-cb81-4676-855f-644d9b0be9c8', 'b78f2adc-d811-431b-9e29-bd1565952bb4', '2025-01-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'afa4e22e-3e4f-414c-8a13-231fed0ca035', 'wardkimberly@example.net', '7c0f2d2d5b3fa2fa4dda11d3c310cf5d47295fd80bb0906275e617a6fa417ff2', 'Patricia', 'Jones',
            '2025-03-30 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b875d44e-5339-482a-b753-5540df4ff5b4', 'afa4e22e-3e4f-414c-8a13-231fed0ca035', '2025-03-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a63caabd-2ed8-4f83-a588-4a3b240b02bf', 'thomasadam@example.org', 'ce96073eb0dd4835d49191f76f5ba41e45e4329fb5e885db73e4765ca5745c72', 'Bryan', 'Hess',
            '2025-02-11 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9ef62d3b-e3a1-4a8f-895a-d086571c625e', 'a63caabd-2ed8-4f83-a588-4a3b240b02bf', '2025-02-11 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '71e2f69e-76db-44ac-bc48-c688c5029b00', 'candicecraig@example.net', '41cd842af0062dfe9a60b96d6cbbe89020d9b5556e78a2c2f995e5f6fd96f975', 'Ryan', 'Price',
            '2024-12-13 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8260a655-284a-4de1-a683-14a7ab06c5ad', '71e2f69e-76db-44ac-bc48-c688c5029b00', '2024-12-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9f277671-539f-40b3-915a-14805429895b', 'tamarajarvis@example.org', '079948aa183fa26f0ef7eab375e27a7c4f78a8f5acd001408c631cf2970da5b8', 'Ashley', 'Cooke',
            '2025-02-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '90b56ee6-f8d3-4702-80ef-1c7cc3d11df2', '9f277671-539f-40b3-915a-14805429895b', '2025-02-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'af54efd0-0bd1-4974-a824-e4f661818e95', 'mwright@example.org', '5261137284e155452c0e2bd9ff639a9e120f8dc41551fd9136181f44592f5249', 'Nathaniel', 'Macias',
            '2025-02-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7222fc91-637e-4fda-94aa-7b9ac93255e6', 'af54efd0-0bd1-4974-a824-e4f661818e95', '2025-02-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '52047cf4-cf4d-4e05-a764-1578bfa20fa8', 'hughesbryan@example.com', 'b453381fc252ecbee553ba3a2b2aa8beb531738d232927043fc39ec74f44c9d8', 'Brian', 'Vasquez',
            '2025-02-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2cac0efc-8075-4b3a-bcc8-ab7ab8ef4070', '52047cf4-cf4d-4e05-a764-1578bfa20fa8', '2025-02-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e51089ab-c6f3-45d6-a0b2-359948fce1b8', 'chrishiggins@example.org', 'bebfc9b1006aedac05799ad97bb5d683297c7465ea3f4261f62f01736d9fa295', 'Alyssa', 'Baker',
            '2024-11-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7121362f-f54a-4436-9b4a-c54bf9cc97b2', 'e51089ab-c6f3-45d6-a0b2-359948fce1b8', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0991efe5-3944-418f-902f-74139ac4826c', 'zarnold@example.com', 'fe206cd7304616a81cf6e86e980e3955702ce3e93b60d010eb23d3c8376cdb2a', 'Jesse', 'Sullivan',
            '2025-03-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '21b39e1d-540b-42a5-9127-41e3977306ae', '0991efe5-3944-418f-902f-74139ac4826c', '2025-03-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '96af5e6b-7687-449f-931e-e12a41e1d025', 'smithgrace@example.net', '65ae611baa93447173c793ac5c72e3b82028ea042aa5bc6cc4a5388b11cd65f1', 'Jessica', 'Perkins',
            '2024-12-05 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '65289731-bb80-441d-abc6-e8768faad230', '96af5e6b-7687-449f-931e-e12a41e1d025', '2024-12-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3ef708d1-f660-46c4-9fcd-0059537827ec', 'meyergeorge@example.org', 'b2769136c996cdada9b4dfdcb3fc78562465ff7b1b1468e3724db83043341ed2', 'Chad', 'Huerta',
            '2024-12-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd8af3efd-9606-4191-9eae-139ae11e2fba', '3ef708d1-f660-46c4-9fcd-0059537827ec', '2024-12-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b7deedd3-cd89-47a4-b67f-c67f69ddfcf0', 'dduncan@example.net', '7e6638b26778b3ed97f08164c5dfd7cbf2bc8ddd21959ff962d68b4ec703bca8', 'Amanda', 'Mcgrath',
            '2025-04-13 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '29f17939-0490-4f83-997e-fe460862170f', 'b7deedd3-cd89-47a4-b67f-c67f69ddfcf0', '2025-04-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4a9c0687-75e5-48a8-95b9-9066bc62a5ff', 'jgarcia@example.net', '22971601f3183163b3c47cc56be0fd620fe7a3ac8cbce12ba5269b27cefcd2f9', 'Steven', 'Scott',
            '2025-01-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7e684a9a-a48b-420f-be65-df196c790549', '4a9c0687-75e5-48a8-95b9-9066bc62a5ff', '2025-01-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5a1e3afc-335a-4013-b235-d945fbf32247', 'chad16@example.org', 'c354c3145955706d9b203a4e5aa13d2413d83033030d0842b153f37ab58f50cb', 'Samantha', 'Norris',
            '2024-12-31 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c22cac7c-2253-4e32-9428-5629eee43ccb', '5a1e3afc-335a-4013-b235-d945fbf32247', '2024-12-31 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9f2e65db-e36f-4886-9196-7086e73409fd', 'lcopeland@example.com', 'a8ce920f5932034eaf91a858579e543802974e44bee6c001624f2be5d0164751', 'Jennifer', 'Ellis',
            '2025-01-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '88e211a8-444c-4707-ad98-92a46079e1de', '9f2e65db-e36f-4886-9196-7086e73409fd', '2025-01-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6fc85199-6dd4-47ae-a83a-e7aeb0aa0efa', 'elizabeth61@example.net', 'b0547951d50aafa7ab85563381dd9c9b22bcecd2d56096ba417537a4362728ee', 'Rachel', 'Olson',
            '2025-01-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '223e60a9-4ec4-4f45-a807-02d9e7a2e39b', '6fc85199-6dd4-47ae-a83a-e7aeb0aa0efa', '2025-01-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'baedb95e-028f-4981-a170-5766ef8dda26', 'barbarahenderson@example.org', '8892f249e17129c51df5176e10c300d883409f9053b3437854645705a61c335f', 'Darrell', 'Hooper',
            '2025-04-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '977e4ace-aa4a-4487-875d-a5f16b00d4a0', 'baedb95e-028f-4981-a170-5766ef8dda26', '2025-04-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f9df3b46-5686-4417-9e6f-ab64be711601', 'adam59@example.org', '5ad91bd58a396d79af9b5c15c9fdccc82a850bc9b71a09ac39b2eed99c35e0e7', 'Sarah', 'Simmons',
            '2024-12-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5cf6479c-c845-4a14-bb59-a61d588c347a', 'f9df3b46-5686-4417-9e6f-ab64be711601', '2024-12-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b88003c8-b635-4d36-9484-649ba06bc1f7', 'baldwinvictoria@example.com', '928c6ab11f49ae28aeef1b150ace0abe8d79fa2d525a79251d1b09097b7fa194', 'Brian', 'Davis',
            '2025-02-28 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '20ac87f1-82e6-405d-89c6-5fcde8df25a2', 'b88003c8-b635-4d36-9484-649ba06bc1f7', '2025-02-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '403dfc1a-9e79-4ab0-b473-3a815b7f4534', 'hamptonpatricia@example.org', '02a20ef0a852a32929f0a5c3fa6562a53ec00ab62025f5e4554069d9322068e3', 'Jamie', 'Roberts',
            '2025-01-17 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c401cbe5-2565-4762-a7a6-7841a9a32959', '403dfc1a-9e79-4ab0-b473-3a815b7f4534', '2025-01-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c0ec9000-1f35-407f-b2f0-e167787c05eb', 'angelatorres@example.org', '1520f2ac2a9fffadddece5c54178fb2660271eb898f34b421af431508aa62c56', 'Mary', 'Wells',
            '2024-12-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2d9c8e85-8434-4a90-912c-b787fa2b5875', 'c0ec9000-1f35-407f-b2f0-e167787c05eb', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8261a68b-c9cd-4c57-ae67-3306271c4fe4', 'martinezamanda@example.com', 'bce0276d9cfb684640089b8f0b7c16df6de5e339c9f8e1a93f9e9e2b25d0261c', 'Danielle', 'Phillips',
            '2024-12-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '44a8c43c-7f04-42bd-b848-4366d89c7f6f', '8261a68b-c9cd-4c57-ae67-3306271c4fe4', '2024-12-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '83db82fa-1fce-44e7-9492-f3ab1dd90538', 'torrestrevor@example.com', 'be1d5d216bb29c9beca4ed202899abe215781ae6352007c5e72b7f66ce8c79f4', 'Theresa', 'Simmons',
            '2024-12-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e2c4e4ec-8eae-4c7a-8a71-8ff5a23fcfff', '83db82fa-1fce-44e7-9492-f3ab1dd90538', '2024-12-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '145a67bd-0764-4738-94e0-0836c3c362be', 'marthaevans@example.org', '95ce972efb2ff8bb4c0d7012e9938ade0ab4ffb3004640ba3a29684b878d9eb4', 'Emma', 'Hess',
            '2024-12-27 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b4fd3db7-1ff9-4d16-8ff1-aeb802aceda2', '145a67bd-0764-4738-94e0-0836c3c362be', '2024-12-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b5ace9ee-698a-44fd-b078-857db19e5ae9', 'briancoleman@example.org', '3506bd96eea686722e3311e50180ba1fa4d79bbfd4843c2ac5595891945bdb8c', 'Ian', 'Zimmerman',
            '2025-02-01 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd6f83b76-551b-4143-8bbe-26bc2e344c60', 'b5ace9ee-698a-44fd-b078-857db19e5ae9', '2025-02-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e8402329-2e46-4ffa-b2a5-06618445ab9a', 'meredith03@example.org', '0fe037d4e51af0eaf1f2be668fd0464469d833c80b83bbf92a755bc44c8461d6', 'Gregory', 'Cook',
            '2024-12-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e4fa3a78-c0f2-408a-8460-e99846db0184', 'e8402329-2e46-4ffa-b2a5-06618445ab9a', '2024-12-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8cce6140-77f4-4f0c-a445-a07e6075a83f', 'ebrown@example.net', '87e4cef8a1c809f70a993492b395ccd3bcc7a53dcac90a1714aa8373611a55db', 'Cynthia', 'Dixon',
            '2024-11-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5237a3f0-5ba5-45a9-94b0-abe6a02ceebb', '8cce6140-77f4-4f0c-a445-a07e6075a83f', '2024-11-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a55d6b03-022b-4aea-8162-9f57610855c5', 'christopherharrison@example.com', 'f411dbdfd207afab03c1e86c16be537920de10159693175a0c8a5a06b5b77178', 'Morgan', 'Leach',
            '2025-04-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e5643901-a911-4601-aae8-b3ae145be75d', 'a55d6b03-022b-4aea-8162-9f57610855c5', '2025-04-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5ad36d45-8334-43d0-88f0-a9d25865707f', 'walkermichelle@example.org', 'cec5e92f756956005eb7b5b96df16bdf39ba275a536bf584ed693e63d407a84b', 'Mary', 'Sandoval',
            '2024-12-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd98cc4c0-f30c-4ee1-adc9-2f0000878dc0', '5ad36d45-8334-43d0-88f0-a9d25865707f', '2024-12-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6422bec6-7264-48da-8558-a04f4c92025a', 'parkerjennifer@example.net', '5b7db468b224a5f3c9d488d4eddbe1cd5e31932a3a50b483a51fe41056beab17', 'Emily', 'Drake',
            '2025-03-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4fdb480d-c551-45eb-8bac-df4350bc2848', '6422bec6-7264-48da-8558-a04f4c92025a', '2025-03-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0ea938d6-2ac8-46f4-85fa-7e5e524e4a00', 'sarah35@example.com', 'dc2632a4315b9db0ea310a490a2ca389c14f8a781b5d14d61f55b053b1a6ce86', 'William', 'Bell',
            '2025-02-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5039f20a-4e4f-416d-9ce6-9b21d2f21e2c', '0ea938d6-2ac8-46f4-85fa-7e5e524e4a00', '2025-02-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '015665a4-4e09-4e91-8ee2-b8dcbeb8be80', 'whitneybruce@example.net', 'c0747ef2b00def53f4a79b93addd9bcb3d1959c8b3d7ab72176a09f7697db06d', 'Alexis', 'Pierce',
            '2024-12-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9f16ccc5-1d3f-420a-829c-91b526074f48', '015665a4-4e09-4e91-8ee2-b8dcbeb8be80', '2024-12-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ba11428f-69e4-4f05-9a8d-5aacd91e0e20', 'jesse65@example.net', '434f25f40b602a9a151dd481f95d3170631c59006bf3c7293b2720909942ff31', 'Robert', 'Miller',
            '2025-02-18 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '327fa3b6-a6a4-444e-8bef-8a2c261c3908', 'ba11428f-69e4-4f05-9a8d-5aacd91e0e20', '2025-02-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3fb741a1-6e3f-4ada-b70e-445b3ee89dad', 'ktaylor@example.com', '40fb9d08be1e7cfcbe86960737452ef6cddbb2f4f3e9c1a44109688e9b6db1b9', 'Cynthia', 'Martinez',
            '2024-11-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fb4800d4-bbd0-4a4a-88fb-6cc04ae113cc', '3fb741a1-6e3f-4ada-b70e-445b3ee89dad', '2024-11-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7736503f-4be2-472a-8b7e-d27acdb7cbf8', 'johnsonspencer@example.org', '2606e8274fa81b7d703aa996d9fb5c21d047ddfc4f7f54e7871729b387ab90ea', 'James', 'Ballard',
            '2025-03-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f143408b-7565-43ef-8fb8-a90b4b0a7b98', '7736503f-4be2-472a-8b7e-d27acdb7cbf8', '2025-03-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4223a864-9539-4ba9-9bae-fecde3d5b050', 'dlawrence@example.net', '242f419a2906b59fa8bb87f0084dfa2b0de4b790ef96898bfe0d701f35d5c42a', 'Tina', 'Alvarado',
            '2024-11-30 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e883bc31-449d-43f0-be6b-bf3112ab0e09', '4223a864-9539-4ba9-9bae-fecde3d5b050', '2024-11-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '76ef5ffd-ee41-42cc-8097-c465602ac3ae', 'zchan@example.org', '8d30ba65c1be94bb50a9989746fcf0f0af3a4be18c5ba7cc804b9a9ec2b7d1cb', 'Rachel', 'Powell',
            '2024-12-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3ca63cef-fe04-4983-9f3a-411b28d8f16e', '76ef5ffd-ee41-42cc-8097-c465602ac3ae', '2024-12-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8d4400c6-d57a-4bb0-b3d9-77f6e55117fb', 'stephanieharris@example.com', '2914cdc943bc02d4f75fc9b6b669c564a7bef34e3b3d4e402b67df73922acf5a', 'Kristina', 'Davidson',
            '2025-03-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '80f93a8d-21a8-46d6-8202-6e35974e0ef4', '8d4400c6-d57a-4bb0-b3d9-77f6e55117fb', '2025-03-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '08c2709b-d85d-4eef-97f2-ff9956a32012', 'wyattpreston@example.net', '97cec7462f77c7420a471e0a75146860ea4370f04ac6bd117a6af38b97e66471', 'Kenneth', 'Taylor',
            '2025-02-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '58df1a1a-df57-4e20-9719-74272b3943a6', '08c2709b-d85d-4eef-97f2-ff9956a32012', '2025-02-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '901d4284-b58f-4494-bf42-7983f0702675', 'martinezjohnny@example.org', '452003c760c76d299429294d3d563590d71bb93e73c5d44619261bce5e793e6f', 'Adrienne', 'Williams',
            '2025-02-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a165b953-71d8-422c-adab-bdb07a7b54b6', '901d4284-b58f-4494-bf42-7983f0702675', '2025-02-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6ed78d03-4143-48eb-b386-1c4d2dd7975c', 'hernandezjames@example.com', '5327e1a491e9f309831aa21eff0fa91a0dcf455dd65f5691dedd6ea2b34a51d6', 'Aaron', 'Chapman',
            '2025-03-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '778b53a6-1c4f-4698-ab90-71ec6a7f0e74', '6ed78d03-4143-48eb-b386-1c4d2dd7975c', '2025-03-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '86d2f590-23bf-47de-99a9-0b83b388f15a', 'groberts@example.org', '719247239e76a10822334d11077ccc35e75ef410c194716497e25df573773860', 'David', 'Johnson',
            '2025-03-15 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '95fad362-6b2e-487c-ab2b-0629bb46bd14', '86d2f590-23bf-47de-99a9-0b83b388f15a', '2025-03-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8e6e5a92-92d4-436f-9292-e25ecf067eea', 'gbowers@example.net', '8382c46597c94af45081642927c83126fc16e81e3d80e567b86ac3ad2022a5ea', 'Elizabeth', 'Sullivan',
            '2025-02-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ed606a85-8ac1-40a8-814d-6cb516ec9bda', '8e6e5a92-92d4-436f-9292-e25ecf067eea', '2025-02-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd6165922-0f09-4fd9-bc75-971fe0b48739', 'robertmontes@example.net', '755417bbbeee59f4521427692c057f03103c6d8c4864308cabbf1f5a76b0d75a', 'Rhonda', 'Sandoval',
            '2025-04-30 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '317d6470-def3-4f63-b16a-96a6ae4929e4', 'd6165922-0f09-4fd9-bc75-971fe0b48739', '2025-04-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a1d6d935-1e68-4ffd-8ac4-ad4617438f58', 'davidporter@example.org', 'da3f70aecb79e33e71026845e2e2e269372e4d696b9f8cb2ed0f066db89758c8', 'Elizabeth', 'Wallace',
            '2024-11-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '10c01c67-a1db-4355-bab7-3b1eefc3b09c', 'a1d6d935-1e68-4ffd-8ac4-ad4617438f58', '2024-11-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '03b1c49b-7f3a-43ab-9067-30a4017e0954', 'mark60@example.com', '0fe06c26fb8b3365033960752ff5498ae5860808bbf0ae4b9ba1a581f2e77c7b', 'James', 'Riddle',
            '2025-03-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '74461bb4-d1ec-418e-ba1c-8bba47431ab1', '03b1c49b-7f3a-43ab-9067-30a4017e0954', '2025-03-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9001b725-0f73-40ca-b4fc-156079f1fe3f', 'melissamartin@example.org', 'fbbb79e21bccbb14c0fce78e258ff776b2673385bdd4a4af35dde6827dd7cb77', 'Drew', 'Young',
            '2025-01-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '706b9cf9-5e97-4270-a0c2-561213107b6a', '9001b725-0f73-40ca-b4fc-156079f1fe3f', '2025-01-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '87338ff3-dd91-4483-9308-60716c7ed81b', 'ashleymyers@example.net', '417b457b5238ab898af184ec3b623c139da06bda16615ef261fc8f327efaeb2d', 'Carly', 'Reed',
            '2025-03-30 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '200249c9-9a77-41ef-9a4a-9cddde9da753', '87338ff3-dd91-4483-9308-60716c7ed81b', '2025-03-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '93a273c0-c07a-4da3-9326-b1925f1c29be', 'matthew18@example.org', '3dc6eaff313a53b8a4d7235faf140e55bc2044efbfabdda3f86234aadb8b9891', 'Brian', 'Hernandez',
            '2024-11-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '528bb41e-d405-41e6-914f-4caf8893d296', '93a273c0-c07a-4da3-9326-b1925f1c29be', '2024-11-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5c7a8453-59bc-474b-8332-7c22b3160f5d', 'itaylor@example.org', '573f0511c28852c403e46b43f099541c4703e9e2034ad4ba12d63d908f09cce9', 'Darius', 'Charles',
            '2025-03-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e117d220-fa7a-4dff-9ca2-0989d2030a70', '5c7a8453-59bc-474b-8332-7c22b3160f5d', '2025-03-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '34649b69-170c-4111-87f0-bb174b4f5967', 'mooneybrian@example.org', 'ae7df016b39baeb1986ffadc21b21587feadebf84cc5de31b7af2487aaf4c05c', 'Dominique', 'Brewer',
            '2025-02-13 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e4409dff-c887-438f-b0ed-5eab1ebadec0', '34649b69-170c-4111-87f0-bb174b4f5967', '2025-02-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4b6fe66e-0748-4f68-9137-c36e84a3d66a', 'higginsjason@example.org', '82754edeff3e367af82d08548ed412e24f9f77e5ac9e3bd54c9e104e7ce48737', 'James', 'Cruz',
            '2025-04-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2cecd241-4d54-4033-aad0-b3d7a90af355', '4b6fe66e-0748-4f68-9137-c36e84a3d66a', '2025-04-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f76b0148-2049-401c-9490-1a4f2c375c6a', 'jesse88@example.org', '582ff95396cbb86ccca60db12eeb2700edb57eed70737196157ff9bb20289e94', 'Melissa', 'Valencia',
            '2025-02-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0c57d380-7378-4457-be26-eb7226f95502', 'f76b0148-2049-401c-9490-1a4f2c375c6a', '2025-02-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '57e84f0e-4429-405f-9ef6-5b32f5995693', 'jasminedavis@example.net', '3860ebc89ee7abb06eb329ab9f646a7d9cf1d465259d7b52cc9e380ef00b52b8', 'Lisa', 'Moore',
            '2025-04-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c639a99f-87ea-416d-8ce0-4af70fc17e26', '57e84f0e-4429-405f-9ef6-5b32f5995693', '2025-04-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6f87a53a-913a-4bce-a233-79a1a5f21f96', 'abigailgreen@example.org', '3b145feeb784a2794f432a4c65679ada32f4f18f184540b65610b3e160c92b88', 'Tony', 'Hernandez',
            '2025-04-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7e6d83ee-efd4-4c64-800c-a0337a7ca99c', '6f87a53a-913a-4bce-a233-79a1a5f21f96', '2025-04-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b1bc03a5-5980-4b65-a2d6-5a52f230303e', 'cdawson@example.org', 'd9d1f96a9cb561a270451b80c9b526ce894042d9c7224b3f2e79a06f2e9cb672', 'Alexander', 'Taylor',
            '2024-12-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a6df2b40-e5a0-4dc1-a0a7-38ea63fc1063', 'b1bc03a5-5980-4b65-a2d6-5a52f230303e', '2024-12-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6be87512-2849-46fd-a55d-2eed84f88f6a', 'jholland@example.com', 'f8a1bfc02807e6c85ea63277c99bbf41156b0ef3de96eb5da0a65d1161cb8fa4', 'Heather', 'Bradley',
            '2025-02-08 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'aeec6d44-ee15-4187-9532-b1afc628a84a', '6be87512-2849-46fd-a55d-2eed84f88f6a', '2025-02-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6ad56c9d-1c94-48ad-9b5e-a0fd9a6b35df', 'shane76@example.com', '8d4d9762179e22544cc1aa0f2bc92f5947590d6eaf453a314bc7f79c56e850fc', 'Brandy', 'Robinson',
            '2025-01-28 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7962918a-d19e-4be1-8c33-459a76d44f79', '6ad56c9d-1c94-48ad-9b5e-a0fd9a6b35df', '2025-01-28 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cf7c416d-f072-41ac-9485-2901268194dd', 'sanderscandice@example.net', 'dbb0fb508586179a523bfba84bb36dd3a9cc1fe8b2d3b3ae7ad6fcfb6b69d40b', 'Sharon', 'Jensen',
            '2025-02-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '4c47be64-8a69-4b8c-a24f-74e36c99aba9', 'cf7c416d-f072-41ac-9485-2901268194dd', '2025-02-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cfc067d4-cd83-4558-8a06-e5d071eb3727', 'fanderson@example.net', '47e064be06f0df6fd6a4eb2c2ee7ef6047fab599e7e6966681b207e0adbabc0a', 'Tracy', 'Collins',
            '2024-12-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '76965922-0ee4-44a5-8d67-8c1c82bc55c7', 'cfc067d4-cd83-4558-8a06-e5d071eb3727', '2024-12-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2d0634cd-6077-4268-8da2-783c5462d3c9', 'cynthia60@example.org', 'ad3a473d3ba70e0cad11a21e079f9405242307206b7c11c379157a2f3984d4ca', 'Kyle', 'Horton',
            '2024-11-29 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'cb55bd29-e7ed-4b64-88f8-7bdbf9022db5', '2d0634cd-6077-4268-8da2-783c5462d3c9', '2024-11-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '37b3d0ec-3f60-46cd-9d0f-63146fa159d0', 'andersonwilliam@example.org', '0c46aaa3f076e0e434843aa826ec2c8969eed155814257996f3e8f1b1cc35818', 'Angelica', 'Jackson',
            '2025-01-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9a40c76a-cb8e-4849-b4b7-88431b97510c', '37b3d0ec-3f60-46cd-9d0f-63146fa159d0', '2025-01-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '881f3816-08b7-4cd1-8c2e-f1c744579e02', 'eterrell@example.org', '94eb99f9eef785ba2614ab982869203e29507c9d5be75cd04f12fac02d475674', 'Christopher', 'Chavez',
            '2025-03-20 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a05a6c36-8b93-4bc3-835f-a38ada78f1ff', '881f3816-08b7-4cd1-8c2e-f1c744579e02', '2025-03-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '576a3571-e398-427f-899c-595f2a877657', 'amandaburgess@example.org', 'e8aad42581a4d455efd2ebd369e90a838296fc6b276460557b534eb3e6ee9d08', 'Sophia', 'Gonzalez',
            '2025-01-05 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3c2ad869-628c-441f-a2de-ed19de913104', '576a3571-e398-427f-899c-595f2a877657', '2025-01-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '789b2c0b-b359-41b6-b849-57b9153584f9', 'ymartinez@example.net', '9bb2b0e13773fdf8af1d1dd4faa2d0de963280536d6f4da559a866c46c36a5dc', 'Alan', 'Price',
            '2025-01-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'dbe9d8da-6f64-4927-a529-100d1dbf3359', '789b2c0b-b359-41b6-b849-57b9153584f9', '2025-01-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6b1347a8-e14d-4ec5-8031-71ed674a19ad', 'amanda51@example.com', '9469e37b29062a7596341d32ae9b68b879ddd9ad9fd868da7bdbdd4dbe2a806d', 'Kevin', 'Reeves',
            '2025-02-26 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0513e230-7a20-418c-96cd-a18db8d3690d', '6b1347a8-e14d-4ec5-8031-71ed674a19ad', '2025-02-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '771001e9-f375-4df1-9716-0017f514575d', 'xyates@example.com', '69e2d67e648b4d828c8fd91f573e5184a61fad89fde349e13db03870ad269544', 'Leon', 'Evans',
            '2025-04-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '385a41dc-cda9-4574-b1f9-e1021804fd69', '771001e9-f375-4df1-9716-0017f514575d', '2025-04-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '724b7b55-b194-4605-bab1-c9bd9aebde05', 'lawrenceevans@example.com', 'd084306f64a7a80c638f029a708c7e83c525dbaa3ad3d2e01084ebae5c81c550', 'Brenda', 'Keith',
            '2025-01-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7de21b4f-8cce-4736-8a3d-5052e1ec359e', '724b7b55-b194-4605-bab1-c9bd9aebde05', '2025-01-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f1ac5be0-552b-4b6e-8dfb-80faa957e605', 'wendysmith@example.com', '3643a7ab5f6837de4b94746d99b97b5e625ad460a4ba2aa43e3aef23b0ebd550', 'Bryan', 'Bailey',
            '2025-02-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'eebcf9c2-32e0-404c-b008-7ea659ae7b8a', 'f1ac5be0-552b-4b6e-8dfb-80faa957e605', '2025-02-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ee84ae2f-3155-4f13-8d5c-8506ac3fa145', 'annettevargas@example.org', 'acc2ed20a37512b16f02ac5e5979de9329295e52b35c8212e9d1331330042592', 'Kevin', 'Mendoza',
            '2025-04-12 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ae31bd9c-aca9-461e-b0af-1f7fdd85c38b', 'ee84ae2f-3155-4f13-8d5c-8506ac3fa145', '2025-04-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8c46e153-ef41-42ae-9225-de111ee91809', 'omcbride@example.net', '5ee432c1e9b7088125d06dcf8b95b5dc176e7e529563426acf2264e79dd6e08b', 'Shannon', 'Baker',
            '2024-12-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6c29f403-556e-4df8-9bb3-97e159a28e83', '8c46e153-ef41-42ae-9225-de111ee91809', '2024-12-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4f5854bc-5cb6-40ef-a737-4dc0b40efa70', 'pdavis@example.org', 'd762f9c0a041e6bbf09ba16ed9d664f19378b64ef293086cf91fd5c7d1eac8af', 'Alan', 'Castillo',
            '2025-03-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a063659c-2f6c-495e-a437-767cfbf80372', '4f5854bc-5cb6-40ef-a737-4dc0b40efa70', '2025-03-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '59f030ed-725c-4cd6-abd7-5253a80c190a', 'rodriguezalexis@example.net', 'cab7b27347ac0542ffec91be0b8af1022f91c432eace081819d1b266301ae10d', 'Amy', 'Rodriguez',
            '2024-12-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '3d123928-30fb-4b77-8c0e-50c994f8dedc', '59f030ed-725c-4cd6-abd7-5253a80c190a', '2024-12-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '574ea6c5-73be-452a-823e-42ef9f5dce8f', 'vjacobs@example.org', 'c9b01ecd39bb76633976a96191bf17b5502206c433c22bb67960685758ad510a', 'Russell', 'Lee',
            '2025-01-20 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2813a1dd-054d-4a51-86d6-0acadd239586', '574ea6c5-73be-452a-823e-42ef9f5dce8f', '2025-01-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9d39a199-2cef-4439-bbf1-4f6715c4cbe1', 'kimbrady@example.com', '7f40214aa4b061e368a670068bde6aad6c4a23e553ad240e3532c7ff39f3413b', 'James', 'Adams',
            '2025-01-01 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c39c88d7-b74e-49ab-907d-f97f94196814', '9d39a199-2cef-4439-bbf1-4f6715c4cbe1', '2025-01-01 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c08463f9-52c4-4fa1-b2e9-9564f3aaedd5', 'andre84@example.net', 'ca442a9b9895ce13c442d1022b7f5c28a6207680e08966837efb943d11f73827', 'Amanda', 'Wright',
            '2024-12-18 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b1a68626-769e-49a0-8c56-f02eee671b72', 'c08463f9-52c4-4fa1-b2e9-9564f3aaedd5', '2024-12-18 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8dc6ae52-35c3-45f3-a611-0fb10d1e9fe0', 'jennifer09@example.org', '47f8ee1d62cbf51a12b512018e0ba1a80c496ce8c4eebbc3a7530e9efed3af3d', 'Tammie', 'Jenkins',
            '2025-04-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7b664242-06ae-4dbd-990b-daa31c4696bd', '8dc6ae52-35c3-45f3-a611-0fb10d1e9fe0', '2025-04-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '91ffac91-7079-45ff-bddb-974e1a1ef0c5', 'johnsonmichelle@example.com', 'a9a4e6e0b1885bb434c8d0e6bf9b1083a97f5429c4f51a8a868b744020862f2d', 'Daniel', 'Horton',
            '2025-02-04 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b0387403-6075-4810-b7ed-0bd3dabdb700', '91ffac91-7079-45ff-bddb-974e1a1ef0c5', '2025-02-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2b9f7397-2dfa-462f-a9eb-93d1de99912f', 'olsencharles@example.net', '95c3e4421065940c02c075a0081e78a939f20fec7ebbd41639a2003e2d99bd28', 'Jessica', 'Cruz',
            '2025-04-21 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7a349403-a4a8-4783-b633-cbeef0f6fd5f', '2b9f7397-2dfa-462f-a9eb-93d1de99912f', '2025-04-21 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9ef28e7d-26cf-464c-b045-ed9573241232', 'maddoxmarc@example.com', '3c4984866810b64c9282d974d7f8045f1b01a63f63591792207899503d3dfe15', 'Susan', 'Brewer',
            '2025-04-05 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'bf764724-028e-4e72-a4d6-e9011c79cd50', '9ef28e7d-26cf-464c-b045-ed9573241232', '2025-04-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '550ecfda-3c76-4556-9000-8d053874a7c3', 'amandathompson@example.org', 'd19d2edc71ef11fe9f6f90a30a72700d4ddb13225c3d5da47e4726bf6cca8998', 'Rachel', 'Pittman',
            '2024-12-05 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0be2c453-cc81-488a-8209-00c598a997f8', '550ecfda-3c76-4556-9000-8d053874a7c3', '2024-12-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '2ae5e2fc-aa8c-47c5-acbd-ee8e85d71e9f', 'jelliott@example.com', '425ee455183593bcd4c3f6e4a22b6eb34924570bf7ed804d8f538c1a706b0d43', 'Kurt', 'Patel',
            '2025-03-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '89e63894-665a-49d6-a436-3447e0a290fa', '2ae5e2fc-aa8c-47c5-acbd-ee8e85d71e9f', '2025-03-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'aeb7e692-5566-47bf-a874-1eb8476c493b', 'karen37@example.com', '69d2b63f30eecfe0c5b37982bff55b7f65a85a4ef94dd65df9f28453bc31bedc', 'Julie', 'Meyer',
            '2025-03-03 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8ee2bda7-270e-4082-8063-b72fbf4ebb15', 'aeb7e692-5566-47bf-a874-1eb8476c493b', '2025-03-03 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4c9a181b-049d-4e91-b526-a87fc0e3313f', 'perkinsjustin@example.com', 'b1c5ed3e2d48e1a8f0306ecc59740bf3ef3c65f162e5aa23dc2b6cdc06655a49', 'Steven', 'Higgins',
            '2024-11-17 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b5f29c26-9d40-4e9d-9e6d-a228555d883e', '4c9a181b-049d-4e91-b526-a87fc0e3313f', '2024-11-17 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '6e0b667d-6da8-47e1-a08d-dd1b13a1287d', 'mosleysarah@example.com', '1c636af05f51a2e48dfbd434c0e961c5e99288938d73db26a193b81814503d3f', 'Linda', 'Guzman',
            '2025-02-05 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ec8cd46c-2390-46f6-a08f-4a3aadd9cdd4', '6e0b667d-6da8-47e1-a08d-dd1b13a1287d', '2025-02-05 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '9bb057d9-4d4d-4f92-8c9a-6fdfa416566b', 'stacy68@example.com', '0f1659775bab6ac19ea6a6407d70f456383a84e806f7b3d5ce5517f7b30cf0ac', 'Richard', 'Ryan',
            '2025-02-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f9fe3eb1-42b3-4a80-8b9b-5d545d1747b1', '9bb057d9-4d4d-4f92-8c9a-6fdfa416566b', '2025-02-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '569a4a6f-7a80-441a-97fe-9c7b3333aadf', 'dianafrost@example.com', '494a73ffe5d19317eb60ff934355d30c480c370c3aac1281704fde76df8c826d', 'Betty', 'Young',
            '2025-02-27 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0f4f41ca-6f73-48fb-8f09-ee4a7ad79483', '569a4a6f-7a80-441a-97fe-9c7b3333aadf', '2025-02-27 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'baec8c0d-8c83-4e4b-8b56-03346e5ff3a3', 'aprilschultz@example.com', '589537b3efca7e17f18a3c699a45b21ab79beb991e121a9d84561c288f4a153a', 'Jennifer', 'Russo',
            '2024-11-19 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '01d206d5-3b37-4ef4-ab2a-8cf784386bff', 'baec8c0d-8c83-4e4b-8b56-03346e5ff3a3', '2024-11-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7e2206c6-109e-4dd2-9194-8fcbb3161a5c', 'christian79@example.com', '02ee51b64968a9a7cb95da825cd0ce8f17d57d9d937f0d968b406ecb3f7b4369', 'Charles', 'Higgins',
            '2025-04-16 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'df1faedd-d8fb-40d1-9c96-04ed710c4a2d', '7e2206c6-109e-4dd2-9194-8fcbb3161a5c', '2025-04-16 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8a0be58c-5f5f-411f-b589-8c3c7a5001cf', 'timmccarthy@example.net', 'b2f76235b6fdaaae1320da7c1e4b2d805e2434451ef323dceb41232fa034ba47', 'Megan', 'Jones',
            '2025-01-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '814751dd-22b6-43f4-9683-260ea1131487', '8a0be58c-5f5f-411f-b589-8c3c7a5001cf', '2025-01-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3c3d1d08-b315-4e8d-b80c-00756594075d', 'jonathan27@example.net', '8c217f93819d089d5c6ae0ad1ea889744b82d7990ef676b4d61e810feac2c909', 'Michael', 'Hunter',
            '2025-04-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9178f083-2584-48b8-8764-9da8ebb5ecc6', '3c3d1d08-b315-4e8d-b80c-00756594075d', '2025-04-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e49b5bfe-3262-462e-9e7e-11a41b054a5a', 'paulawalsh@example.com', '023d047de40a10b5cb34b68e7cd9741a6d62435a49d0ef219efb862973f5d917', 'Veronica', 'Rice',
            '2024-12-25 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '35185f33-e0ed-45d8-82bf-52e59ce4de3c', 'e49b5bfe-3262-462e-9e7e-11a41b054a5a', '2024-12-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'afb7229a-ff43-4b42-8b29-cb0719163f42', 'starkmichael@example.com', 'dfaf55c984502ab01c920a62b92d48b55c50c7c5989c30268503c21824f05265', 'Christina', 'Edwards',
            '2025-05-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'eed6e7d0-ac3e-4a78-861b-f5909ec6b322', 'afb7229a-ff43-4b42-8b29-cb0719163f42', '2025-05-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'b85032cf-e990-4d4f-a2ed-339d113e6912', 'vmatthews@example.org', '30f91b73d2099567dd322d28fd734b9f70efb751bb5b0528c94bf0bbcda22fa3', 'Mackenzie', 'Massey',
            '2025-04-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd47c1985-ee35-4c09-a5ec-f1206eb2d6c7', 'b85032cf-e990-4d4f-a2ed-339d113e6912', '2025-04-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cf109d1c-db99-4038-a644-4cc47a6ee554', 'jjoseph@example.com', 'c20726308493b96740ac0f9ca0d94bad6df96f870bc2b468ebc28046bfa86cb5', 'Andrea', 'Wilson',
            '2025-02-08 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5259ed5f-0cd5-4766-b1a0-8d1537616f48', 'cf109d1c-db99-4038-a644-4cc47a6ee554', '2025-02-08 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c476a42a-b0ec-40ef-9faa-cd513109dfb0', 'jcox@example.net', '1fcca7bd44408d7dd574e9151f5d77898a4cffddbb3d4b5117cde7c26e258286', 'Bradley', 'Turner',
            '2025-02-14 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'a51d0534-29a3-4b34-bf7d-3bc71a315f7d', 'c476a42a-b0ec-40ef-9faa-cd513109dfb0', '2025-02-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '5be33823-ddff-4dca-96e0-e58af8f19491', 'jaimehenderson@example.org', '8e64941ee5244d54bc55b54a127cf3093d26950436bcb847d074919c5144c23a', 'Scott', 'Friedman',
            '2024-12-10 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '54b9880e-41c4-48cd-8d0c-eb0cafc715e6', '5be33823-ddff-4dca-96e0-e58af8f19491', '2024-12-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'e52a95d7-f0e2-4b27-a586-c141615b867a', 'karenbowman@example.org', '3f613ad9610aab32a480c9cc8f69833c41589d5fc37b33b88867f25bd0cabd05', 'Lynn', 'Roach',
            '2025-03-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '0ab8a7b1-55b1-4c77-973e-f865cc1aa2f2', 'e52a95d7-f0e2-4b27-a586-c141615b867a', '2025-03-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '98bf4c79-3bb0-45dd-8b4e-7b1d4da25ab3', 'rebecca45@example.net', '6a72c889f75612c63b574727263090203fe72b283fce4fcb6535f25b486a88aa', 'Michael', 'Torres',
            '2024-11-22 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '19b88f13-568c-4385-99dc-37426e3db844', '98bf4c79-3bb0-45dd-8b4e-7b1d4da25ab3', '2024-11-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'd542592c-7566-4984-b73a-3ce33603744e', 'wwright@example.net', '6307cc0710befcc195bca0c58b5a712e0fe974547a96b3dff35307f19bb72d37', 'Alicia', 'Lee',
            '2025-01-25 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '13b96c39-2ff4-45bd-9ede-d50e1500366b', 'd542592c-7566-4984-b73a-3ce33603744e', '2025-01-25 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '972941b6-5b2a-4312-86ad-694d4d2372a1', 'nicole36@example.org', '08df0131ce63de033ef2c10ae41ed5340ccf31b58194a34fda5c1d1ade722799', 'Dustin', 'Ruiz',
            '2025-05-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'f8bdf1bb-ace6-49b9-b95a-de255d155c23', '972941b6-5b2a-4312-86ad-694d4d2372a1', '2025-05-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '29296124-1907-4c82-8506-4879552ee4bf', 'melissa59@example.net', 'dba7384ba2a09fe0f34ac4023662cc1a02c91eacc9b38e84acd406c1aac88d42', 'Mitchell', 'Evans',
            '2024-11-26 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'ec412f35-ccd2-4b06-bfeb-11afc158a4e6', '29296124-1907-4c82-8506-4879552ee4bf', '2024-11-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '8deea3cb-671e-4c65-9bd2-17634e22e28a', 'josephavila@example.net', '574d1719f29f36609cc60033bf60d9a1d5ce1f7378fb0b4547cb878aba6ae97a', 'Ryan', 'Martinez',
            '2025-01-02 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'eb0a5338-f487-405c-9d2f-f866e44559d9', '8deea3cb-671e-4c65-9bd2-17634e22e28a', '2025-01-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '51d57a11-b7fb-4d78-8ec1-c110137493bc', 'jessicacole@example.net', '0b406f12c25dd2aefc3919ecf7b5368777dcb033470597b39e7e49864ac1c1f0', 'Crystal', 'Lopez',
            '2025-01-20 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9bd3e046-c5ac-40e0-832f-4b3cc9e8b186', '51d57a11-b7fb-4d78-8ec1-c110137493bc', '2025-01-20 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '21cb1b0f-b507-40f1-b374-5853eac50b40', 'tammyadams@example.net', '66c3b89718a9e6003060a3987650e70752a4d2691329495a28a3342e4e609c46', 'David', 'Swanson',
            '2024-12-26 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1936e6ab-79ca-4cb1-86d4-6145225d7313', '21cb1b0f-b507-40f1-b374-5853eac50b40', '2024-12-26 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'f2a1f8c1-9b54-435c-a9c9-548a3413bf51', 'simmonsspencer@example.com', 'b5c4ccc006504d0e2a9e634f5aa15eb1ccbc9393433a12842be9ab570a8aac13', 'Joseph', 'Calhoun',
            '2025-03-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7e6d57b2-3024-4948-bbcd-bcfbc13c0658', 'f2a1f8c1-9b54-435c-a9c9-548a3413bf51', '2025-03-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0bc4fb33-4e9d-4ffc-a947-5a43cf25b8a9', 'mariabrown@example.com', 'eae5f81f6e1274844077364804674b89f4819d2603387a3c688335ce593b4f9e', 'Samantha', 'Guerra',
            '2024-11-06 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '8bae9ca3-a11a-47af-9ea1-2d2451944399', '0bc4fb33-4e9d-4ffc-a947-5a43cf25b8a9', '2024-11-06 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'da964a1c-e1f9-4256-b340-e14fc52a8a7e', 'brookelang@example.org', '58e3b95641b2e314ca214f96766dbc0776a52767442334e2d8cd37ad14dfcd6c', 'Katherine', 'Carlson',
            '2025-01-13 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '5b55997c-27c5-4a2a-881c-299d2430fd3a', 'da964a1c-e1f9-4256-b340-e14fc52a8a7e', '2025-01-13 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '72ce2c56-9162-405e-b1ce-7b486107973e', 'riosrodney@example.net', '1471feb46cf184b7057496d19882beb3885e75974b2ae559c5a193905b406efe', 'Timothy', 'Rios',
            '2025-01-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7f0ab731-081c-43fc-b8ed-db2c0e28c9d7', '72ce2c56-9162-405e-b1ce-7b486107973e', '2025-01-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '7791541e-582a-4dfa-99a1-525b2c41ca73', 'christopher02@example.org', 'ef26c15edcf784d78b55da7cd43e6140742dc6ac7aad4931556a4cef48580e7a', 'Megan', 'Schmidt',
            '2025-04-19 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '9bc58462-ba4a-4423-a918-38f90fa2ff35', '7791541e-582a-4dfa-99a1-525b2c41ca73', '2025-04-19 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '70037b5d-2ba5-4dc5-86d6-0a2ba0124d25', 'sherrihall@example.org', 'd6da3d817f690f0b4d18d724fd7334a5bfcb3b8084e55124d43c1d3dbeb22f3e', 'Melanie', 'Raymond',
            '2024-11-29 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '2b38445a-0e85-41eb-8ce1-d8c3a322f8d7', '70037b5d-2ba5-4dc5-86d6-0a2ba0124d25', '2024-11-29 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '0a94ce75-52a2-4406-acca-6405d595c998', 'elizabeth04@example.com', 'c938f83e2978fa09ebf8c4b03e0ee00f6d5cfbf4707f317b492afb66de65e584', 'Larry', 'Collins',
            '2025-04-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7d4859ff-e386-4603-b6fb-0d6879328b47', '0a94ce75-52a2-4406-acca-6405d595c998', '2025-04-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1ddfcd04-8f70-489a-8eb9-47cf526e4db5', 'nancybrown@example.net', '7896afac87943f2c4780b1684c392fbcff9a706cb1f025196db131716626fbe4', 'Morgan', 'Robinson',
            '2025-03-15 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'd89818c2-1773-4ec7-834f-76c41de4b413', '1ddfcd04-8f70-489a-8eb9-47cf526e4db5', '2025-03-15 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '91e41c6d-2133-4939-b1a4-d1063f678bac', 'michelekirby@example.net', 'e4780a96606fb5d8c79acc42466c9c5f12ebd4850b38a86206aa33fe7cdf0190', 'Wesley', 'Davis',
            '2024-11-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '1d50aa60-0571-4039-b426-65948aeaa20e', '91e41c6d-2133-4939-b1a4-d1063f678bac', '2024-11-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'c3ab1375-6332-4a84-9e98-646eb3f85359', 'madison56@example.net', 'b73a0287c0a45c58c566c5ae2ffbd593390e409c697c4baef43a57284e19807d', 'Julia', 'Scott',
            '2025-03-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '21bd363d-49b8-4fcf-9f8a-bd145f78a105', 'c3ab1375-6332-4a84-9e98-646eb3f85359', '2025-03-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'cd0af85c-fc77-4b94-ae79-080f23ad58d4', 'penningtonjames@example.org', '8f3391822c563b621ea2cf835b3ff31a9d383fc39eedb26b1768e00608214292', 'Austin', 'Mckinney',
            '2024-12-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '90e09738-456b-42ba-8401-f7edb9813aaf', 'cd0af85c-fc77-4b94-ae79-080f23ad58d4', '2024-12-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '3b64f813-d6a6-431e-bf7a-418b5c0f5ddb', 'jocelynhernandez@example.org', '8a5dec6f29528af234dd595e06b338f314b66c53731b3a747cb2c9dad9162beb', 'Edwin', 'Chase',
            '2025-03-10 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7ec9db99-bee7-4562-9133-6279f380bd5b', '3b64f813-d6a6-431e-bf7a-418b5c0f5ddb', '2025-03-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'aa26ca9c-0940-4793-99d1-b57e2b085f93', 'tanyashepherd@example.com', 'bdf40d70283664809a519f0f67e9d68dda1c25f5b80322f5d90ca9e1b1f15712', 'Juan', 'Sandoval',
            '2025-03-30 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '7479bc27-035c-4eb5-91f4-9db58b7690c1', 'aa26ca9c-0940-4793-99d1-b57e2b085f93', '2025-03-30 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '4d1ec178-63af-4536-9edf-74860b5de6d2', 'wcollins@example.com', '0c719b5332ab5d20b0908b14897dfe5806fad21a5d2ea2022d8bbe19d3b18450', 'Teresa', 'Callahan',
            '2025-02-24 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'fc44fc1f-5199-4926-bc36-bed013b74e19', '4d1ec178-63af-4536-9edf-74860b5de6d2', '2025-02-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '574e8485-703e-41ec-b61b-861fa3bbd2cf', 'donaldjefferson@example.net', '50cc07794e0126ccaeca5701840d0639e8877118a1632322cf686e60c8796ed5', 'Leah', 'Campbell',
            '2025-04-09 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '6323477a-f57a-4c27-a11f-22d40e4b8161', '574e8485-703e-41ec-b61b-861fa3bbd2cf', '2025-04-09 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '201faaee-8b07-42fe-a34b-57643db7811c', 'walterrachel@example.org', '8f42d97010312dacf911b0a9990f146865a2424f9322b6f677b988e683287c47', 'Jeffery', 'Johnson',
            '2025-01-02 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '825a0360-bc14-4f87-a2ab-e8fb26730599', '201faaee-8b07-42fe-a34b-57643db7811c', '2025-01-02 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'a23d6efa-90dc-4256-a44d-8b537c3d4974', 'dennisreid@example.net', 'fd7999a3bae7aba3f493559252d2e75f4965de11916563f8c89fc224cbe51fee', 'Lisa', 'Davis',
            '2024-12-04 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'b420d7fd-c22f-43ef-9b23-81b86a6173af', 'a23d6efa-90dc-4256-a44d-8b537c3d4974', '2024-12-04 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'ef71e76b-4577-4f05-ae4f-a9734864c573', 'mary36@example.net', '20009ef65c1d72dc45effb37ca1131416b08fa8c355aa5e9afe131b7378fdab1', 'David', 'Williams',
            '2024-12-10 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '03d96426-6f0b-4fb4-9ba3-6393cf6ff5b5', 'ef71e76b-4577-4f05-ae4f-a9734864c573', '2024-12-10 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '71056f57-362e-4f12-87e6-47e1e81edf41', 'cholder@example.net', '0345052aed9748258091d3945ad041b9eab6624c052b5a9876ed5d20e3d45a44', 'Aaron', 'Carlson',
            '2025-03-22 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '12744087-af4f-4467-8989-3e4d30b474e0', '71056f57-362e-4f12-87e6-47e1e81edf41', '2025-03-22 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1e2b7d43-d14b-41c8-8a98-ea718de7bd5b', 'fitzgeraldmelissa@example.org', '214de03e7ac2d2d7985bf01fd6343b22836339fe2576772a5a63b1e0d698d441', 'Christie', 'White',
            '2025-02-24 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '685d019a-8a63-45d8-9e67-bd9dde83e7d1', '1e2b7d43-d14b-41c8-8a98-ea718de7bd5b', '2025-02-24 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1b0ad7b0-596c-4c22-9795-84d4798dc5e6', 'reedchristopher@example.com', '18829c8502ff11cb8c26627d5984ebc3fd558c408ecf988febf730fb706ee057', 'David', 'Becker',
            '2024-11-14 22:47:15', true, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'e2e917bb-7c1a-4273-b85c-57a4db46dce0', '1b0ad7b0-596c-4c22-9795-84d4798dc5e6', '2024-11-14 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '1a9702d2-7b51-4b11-8084-22904ccde679', 'ericwhite@example.com', '1a9cf5d7bfbea8eef2130cc5532766113d773c50065037ede62ff3920d4ad174', 'Connie', 'Williamson',
            '2024-12-12 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '72e29289-1198-459a-b596-ba4983eb181e', '1a9702d2-7b51-4b11-8084-22904ccde679', '2024-12-12 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            '87648841-f934-4bc0-a7b3-1155e58834c4', 'jharding@example.org', 'e84b3f333125b3d9efe9c1e394b19bb3249484af9c6aebcb0080615dc597e186', 'Ryan', 'Payne',
            '2024-12-07 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            '059e4dfc-fde4-41b9-b049-7c08dc7c3de3', '87648841-f934-4bc0-a7b3-1155e58834c4', '2024-12-07 22:47:15'
        );
INSERT INTO public.users (
            user_id, email, password, first_name, last_name, created_at, is_email_verified, role
        ) VALUES (
            'dd6e6abf-d845-449a-b99d-fb10b667b2a8', 'matthewjones@example.org', '460903605bd2d16455894d716f41b735107f31a07d02b84ed7efa645317fca5d', 'Timothy', 'Rivera',
            '2025-03-28 22:47:15', false, 'customer'
        );
INSERT INTO public.carts (
            cart_id, user_id, created_at
        ) VALUES (
            'c5055f28-4b67-4ec8-8e75-2aff3f09eca5', 'dd6e6abf-d845-449a-b99d-fb10b667b2a8', '2025-03-28 22:47:15'
        );
