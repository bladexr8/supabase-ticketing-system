SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '8cc8c9c3-4c77-41a9-9a05-2d23204833ef', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@test.com","user_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","user_phone":""}}', '2024-12-06 00:17:57.340115+00', ''),
	('00000000-0000-0000-0000-000000000000', '9249778e-13c2-410b-8fa9-6e9ef2c107ec', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 00:38:29.875935+00', ''),
	('00000000-0000-0000-0000-000000000000', '2345b2cc-ecc5-4660-84b7-eb922183ff13', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 00:43:58.508075+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb7e0db2-46ff-4379-b9cb-f214b96d869a', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 01:45:34.035247+00', ''),
	('00000000-0000-0000-0000-000000000000', '92b3089e-4589-438e-9087-3f9925349b2b', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 01:50:04.120322+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b55e3a62-e49b-44bd-a759-ff6f1b6ce0ee', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 02:02:57.322611+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fdf59b9f-ee96-4c32-88fc-9d3777f8ffd0', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 02:16:04.662088+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a9cb1641-a146-4e0e-af20-accb00fc3e93', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 02:17:12.082495+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d07259c-d8f8-4b8e-acd4-d2f43b92683a', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 02:17:46.659437+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ef43f09-a07f-40b4-baa5-3a11a6050a38', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 02:18:21.597659+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7ecf7d9-bf72-487a-b320-133ac16ba727', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 03:55:25.810295+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e8e8c6d-994a-4578-8dcc-47d3f3eec8b2', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 03:55:30.764266+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ddc151e-e5f5-4f41-8d00-cfa28f0a098a', '{"action":"user_recovery_requested","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2024-12-06 03:56:29.843576+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a237ac00-3dbb-4943-81e0-a873a2cb4181', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 03:57:29.83651+00', ''),
	('00000000-0000-0000-0000-000000000000', '75ccd693-5e8a-438d-a4b3-3b55de99b16e', '{"action":"user_recovery_requested","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2024-12-06 04:02:48.479582+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e180ff1-91bc-4b38-a879-0d5ca6fd0be3', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:03:02.127892+00', ''),
	('00000000-0000-0000-0000-000000000000', '6eabcd22-2bac-4216-9018-211104cde691', '{"action":"user_recovery_requested","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2024-12-06 04:25:12.708943+00', ''),
	('00000000-0000-0000-0000-000000000000', '17c34e4d-4a36-47cf-826a-86f0b8b4613d', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:25:39.164758+00', ''),
	('00000000-0000-0000-0000-000000000000', '285d23cc-a6f7-409c-b64a-816493ae98e9', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 04:27:45.691798+00', ''),
	('00000000-0000-0000-0000-000000000000', '0dac3fde-4079-43d0-822e-cd7e7e351155', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:27:55.650282+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fe6db60-73e7-4725-82c8-9f97934d8990', '{"action":"user_recovery_requested","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2024-12-06 04:33:09.229827+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bcdc7f8d-16f9-404a-b3d7-419a63025753', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:33:38.290942+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ddf28fd8-65e3-43d9-8b83-76028c0efbb9', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2024-12-06 04:34:50.780991+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f8c7bad-9a3c-43d6-a56d-9f9557667f5c', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:39:07.203067+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b30e9cb-cf35-4451-8482-f107fa7dd7b0', '{"action":"user_recovery_requested","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2024-12-06 04:40:27.200492+00', ''),
	('00000000-0000-0000-0000-000000000000', '774af889-fd7b-44d1-969c-573d591f8fa2', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:41:27.233622+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bf831ce-29f8-4b18-b02f-bf51800665bf', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2024-12-06 04:42:06.566164+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb1dfccc-eca6-4ab7-bec5-f892b2bdbe3f', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:42:49.537069+00', ''),
	('00000000-0000-0000-0000-000000000000', '57d0a2f7-4e00-4d1a-bea7-68cdb196d1ed', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 04:43:03.086806+00', ''),
	('00000000-0000-0000-0000-000000000000', '852c32f3-9cd7-4c69-b13c-e4d6e9f355ac', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:43:10.206151+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1edd9b3-6d50-4ce5-9531-58e91200ec20', '{"action":"user_recovery_requested","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2024-12-06 04:54:11.39698+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c64daeac-84c5-4ddb-bff7-708faf853c10', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:54:40.952521+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bde9fb8-5f10-48af-a1f7-c15d9e4ca710', '{"action":"login","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2024-12-06 04:54:41.564149+00', ''),
	('00000000-0000-0000-0000-000000000000', '759d519f-bfb9-4bdb-8847-e2aff4643a1d', '{"action":"logout","actor_id":"9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 04:55:29.904374+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('5baab09b-8735-402e-b0b4-5ae6b14c8ef5', '9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd', '50420757-5c8c-4200-b741-915fe74392ae', 's256', 'cd3VnTT9_gE_vmOkHgUtbUswRP2vVClA5mu7deIVutI', 'magiclink', '', '', '2024-12-06 03:56:29.831458+00', '2024-12-06 03:57:29.843425+00', 'magiclink', '2024-12-06 03:57:29.843405+00'),
	('fc8dc092-f545-4f0d-8f95-71e6999083f4', '9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd', '3a5d834d-2e2d-4348-a24a-c802a10967c1', 's256', 'TEiMIcTayzKmw9c9m49jwHnfg3WNZI5eNZA7gLQ8erU', 'magiclink', '', '', '2024-12-06 04:02:48.401041+00', '2024-12-06 04:03:02.132688+00', 'magiclink', '2024-12-06 04:03:02.132642+00'),
	('90553b59-ff57-4b49-8089-2a2328278ac7', '9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd', 'ea6694de-8a69-40a6-ba82-b56592b80de9', 's256', 'Tg11l3G_974BXDZml5uY9_-OssjxasiCT_QE_BZFk2w', 'magiclink', '', '', '2024-12-06 04:25:12.706259+00', '2024-12-06 04:25:39.167213+00', 'magiclink', '2024-12-06 04:25:39.167174+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd', 'authenticated', 'authenticated', 'test@test.com', '$2a$10$atk5nlzJq0AUCsBPOv1Wi.i2Aw9acLHoydgutXJfv3SViqabvD34y', '2024-12-06 00:17:57.349619+00', NULL, '', NULL, '', '2024-12-06 04:54:11.397906+00', '', '', NULL, '2024-12-06 04:54:41.564945+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-12-06 00:17:57.304165+00', '2024-12-06 04:54:41.567857+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd', '9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd', '{"sub": "9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd", "email": "test@test.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-06 00:17:57.334267+00', '2024-12-06 00:17:57.334326+00', '2024-12-06 00:17:57.334326+00', '608a11e1-0ce8-422d-b976-ce82caeee55f');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2024-12-09 03:20:22.932258+00', 'David Lorenz', '9ee718f3-5e94-4d24-9ea1-84b7dc7e9ffd');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2024-12-09 02:38:51.413101+00', 'Packt Publishing', 'packt.local'),
	('activeNode', '2024-12-09 02:39:27.802446+00', 'activeNode Education', 'activenode.learn'),
	('oddMonkey', '2024-12-09 02:40:06.925655+00', 'oddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2024-12-09 03:28:29.04264+00', 1, 'packt'),
	(2, '2024-12-09 03:28:43.886086+00', 1, 'oddMonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 12, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
