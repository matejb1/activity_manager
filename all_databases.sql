--
-- PostgreSQL database cluster dump
--

\restrict 16Tw0o088X5up7PgnEYGtNbyPWyXTdRfaG0tmo9Ihz1mx66RFDoRkdJ9hZa4M7h

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

--CREATE ROLE admin;
-- ALTER ROLE admin WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:EhELuDv2dOKU1qAwPDg7cA==$RV2BKx69RzCeZjEPUpH771uFl2LZmdzqkyktxcd/l9M=:+BzVswdEHR7CjwqNMmV5ySh6Q8XLjtifF8GHKJbQgWw=';

--
-- User Configurations
--








\unrestrict 16Tw0o088X5up7PgnEYGtNbyPWyXTdRfaG0tmo9Ihz1mx66RFDoRkdJ9hZa4M7h

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict isMcotYQnvW0MedmwMVSto5oSsAmaU1UVoKxviph29REmDOaQs2i5GdleHky4Ao

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict isMcotYQnvW0MedmwMVSto5oSsAmaU1UVoKxviph29REmDOaQs2i5GdleHky4Ao

--
-- Database "activities" dump
--

--
-- PostgreSQL database dump
--

\restrict q1melZ2zIvHM8mbKbnm5xJNJIELE9yCnK8ZC2P6KfB7BX93mfcfN24F2f7n8Bcb

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: activities; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE activities WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE activities OWNER TO admin;

\unrestrict q1melZ2zIvHM8mbKbnm5xJNJIELE9yCnK8ZC2P6KfB7BX93mfcfN24F2f7n8Bcb
\connect activities
\restrict q1melZ2zIvHM8mbKbnm5xJNJIELE9yCnK8ZC2P6KfB7BX93mfcfN24F2f7n8Bcb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: rst_activity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.rst_activity (
    id bigint NOT NULL,
    id_user bigint NOT NULL,
    name character varying(255) NOT NULL,
    date_of_activity date NOT NULL,
    description character varying(255),
    last_modified_by character varying(50) NOT NULL,
    last_modified_date date NOT NULL,
    created_date date NOT NULL,
    created_by character varying(50) NOT NULL,
    id_category bigint NOT NULL,
    duration double precision NOT NULL,
    time_start timestamp without time zone NOT NULL
);


ALTER TABLE public.rst_activity OWNER TO admin;

--
-- Name: rst_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public.rst_activity ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rst_activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: rst_category; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.rst_category (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    tr_en character varying(255) NOT NULL,
    tr_slo character varying(255) NOT NULL,
    last_modified_by character varying(50) NOT NULL,
    last_modified_date date NOT NULL,
    created_date date NOT NULL,
    created_by character varying(50) NOT NULL
);


ALTER TABLE public.rst_category OWNER TO admin;

--
-- Name: rst_category_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public.rst_category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rst_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: rst_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.rst_user (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    username character varying(255) CONSTRAINT rst_user_username_name_not_null NOT NULL,
    last_modified_by character varying(50) NOT NULL,
    last_modified_date date NOT NULL,
    created_date date NOT NULL,
    created_by character varying(50) NOT NULL
);


ALTER TABLE public.rst_user OWNER TO admin;

--
-- Name: rst_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public.rst_user ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rst_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: rst_activity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.rst_activity (id, id_user, name, date_of_activity, description, last_modified_by, last_modified_date, created_date, created_by, id_category, duration, time_start) FROM stdin;
16	1	Find a job	2026-09-23	yup, hopefuly fast.	admin	2026-09-21	2026-09-21	admin	3	4.5	2026-09-23 20:52:00
17	1	React	2026-09-15	Angular je bangr.	admin	2026-09-21	2026-09-21	admin	2	2.5	2026-09-15 12:51:00
18	1	ML	2027-05-04	Naredi prepoznavo, dodaj kalibracijo kamere, reid, analysis, yolo. Fine tune, export model. Premisli še Flutter app.	admin	2026-09-21	2026-09-21	admin	2	8	2027-05-04 20:57:00
13	1	Grintuc	2026-09-07	Zmatran boš!	admin	2026-09-21	2026-09-21	admin	1	5.5	2026-09-07 09:04:00
19	1	Faks	2026-08-31	Morm rečt. Sm kr nervozn pa vzhičen :) haha	admin	2026-09-21	2026-09-21	admin	5	2	2026-08-31 20:00:00
\.


--
-- Data for Name: rst_category; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.rst_category (id, name, tr_en, tr_slo, last_modified_by, last_modified_date, created_date, created_by) FROM stdin;
1	SPORT	Sport	Šport	admin	2026-09-21	2026-09-21	admin
2	EDUCATION	Education	Izobraževanje	admin	2026-09-21	2026-09-21	admin
3	TASKS	Tasks	Opravila	admin	2026-09-21	2026-09-21	admin
4	ART	Art	Umetnost	admin	2026-09-21	2026-09-21	admin
5	OTHER	Other	Drugo	admin	2026-09-21	2026-09-21	admin
\.


--
-- Data for Name: rst_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.rst_user (id, email, first_name, last_name, username, last_modified_by, last_modified_date, created_date, created_by) FROM stdin;
1	admin@example.com	Admin	Admin	admin	admin	2026-09-15	2026-09-15	admin
\.


--
-- Name: rst_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.rst_activity_id_seq', 20, true);


--
-- Name: rst_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.rst_category_id_seq', 5, true);


--
-- Name: rst_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.rst_user_id_seq', 1, true);


--
-- Name: rst_activity pk_rst_activity; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.rst_activity
    ADD CONSTRAINT pk_rst_activity PRIMARY KEY (id);


--
-- Name: rst_category pk_rst_category; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.rst_category
    ADD CONSTRAINT pk_rst_category PRIMARY KEY (id);


--
-- Name: rst_user pk_rst_user; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.rst_user
    ADD CONSTRAINT pk_rst_user PRIMARY KEY (id);


--
-- Name: rst_activity fk_activity_category; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.rst_activity
    ADD CONSTRAINT fk_activity_category FOREIGN KEY (id_category) REFERENCES public.rst_category(id);


--
-- Name: rst_activity fk_activity_user; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.rst_activity
    ADD CONSTRAINT fk_activity_user FOREIGN KEY (id_user) REFERENCES public.rst_user(id);


--
-- PostgreSQL database dump complete
--

\unrestrict q1melZ2zIvHM8mbKbnm5xJNJIELE9yCnK8ZC2P6KfB7BX93mfcfN24F2f7n8Bcb

--
-- Database "keycloak" dump
--

--
-- PostgreSQL database dump
--

\restrict s2Unbp4FZWCtyP161HYkZ5MUplTrVlq3rGV3vf4JZ5DFgKYqznT7OseHj5J2py0

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: keycloak; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE keycloak WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE keycloak OWNER TO admin;

\unrestrict s2Unbp4FZWCtyP161HYkZ5MUplTrVlq3rGV3vf4JZ5DFgKYqznT7OseHj5J2py0
\connect keycloak
\restrict s2Unbp4FZWCtyP161HYkZ5MUplTrVlq3rGV3vf4JZ5DFgKYqznT7OseHj5J2py0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_event_entity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.admin_event_entity (
    id character varying(36) NOT NULL,
    admin_event_time bigint,
    realm_id character varying(255),
    operation_type character varying(255),
    auth_realm_id character varying(255),
    auth_client_id character varying(255),
    auth_user_id character varying(255),
    ip_address character varying(255),
    resource_path character varying(2550),
    representation text,
    error character varying(255),
    resource_type character varying(64),
    details_json text
);


ALTER TABLE public.admin_event_entity OWNER TO admin;

--
-- Name: associated_policy; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.associated_policy (
    policy_id character varying(36) NOT NULL,
    associated_policy_id character varying(36) NOT NULL
);


ALTER TABLE public.associated_policy OWNER TO admin;

--
-- Name: auth_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_session (
    root_auth_session_id character varying(36) NOT NULL,
    tab_id character varying(36) NOT NULL,
    client_uuid character varying(255),
    auth_user_id character varying(255),
    "timestamp" bigint,
    version integer,
    redirect_uri text,
    action character varying(255),
    protocol character varying(255),
    client_scopes text,
    execution_status text,
    client_notes text,
    auth_notes text,
    required_actions text,
    user_session_notes text
);


ALTER TABLE public.auth_session OWNER TO admin;

--
-- Name: authentication_execution; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.authentication_execution (
    id character varying(36) NOT NULL,
    alias character varying(255),
    authenticator character varying(36),
    realm_id character varying(36),
    flow_id character varying(36),
    requirement integer,
    priority integer,
    authenticator_flow boolean DEFAULT false NOT NULL,
    auth_flow_id character varying(36),
    auth_config character varying(36)
);


ALTER TABLE public.authentication_execution OWNER TO admin;

--
-- Name: authentication_flow; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.authentication_flow (
    id character varying(36) NOT NULL,
    alias character varying(255),
    description character varying(255),
    realm_id character varying(36),
    provider_id character varying(36) DEFAULT 'basic-flow'::character varying NOT NULL,
    top_level boolean DEFAULT false NOT NULL,
    built_in boolean DEFAULT false NOT NULL
);


ALTER TABLE public.authentication_flow OWNER TO admin;

--
-- Name: authenticator_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.authenticator_config (
    id character varying(36) CONSTRAINT authenticator_id_not_null NOT NULL,
    alias character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.authenticator_config OWNER TO admin;

--
-- Name: authenticator_config_entry; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.authenticator_config_entry (
    authenticator_id character varying(36) CONSTRAINT authenticator_config_authenticator_id_not_null NOT NULL,
    value text,
    name character varying(255) CONSTRAINT authenticator_config_name_not_null NOT NULL
);


ALTER TABLE public.authenticator_config_entry OWNER TO admin;

--
-- Name: broker_link; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.broker_link (
    identity_provider character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL,
    broker_user_id character varying(255),
    broker_username character varying(255),
    token text,
    user_id character varying(255) NOT NULL
);


ALTER TABLE public.broker_link OWNER TO admin;

--
-- Name: client; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client (
    id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    full_scope_allowed boolean DEFAULT false NOT NULL,
    client_id character varying(255),
    not_before integer,
    public_client boolean DEFAULT false NOT NULL,
    secret character varying(255),
    base_url character varying(255),
    bearer_only boolean DEFAULT false NOT NULL,
    management_url character varying(255),
    surrogate_auth_required boolean DEFAULT false NOT NULL,
    realm_id character varying(36),
    protocol character varying(255),
    node_rereg_timeout integer DEFAULT 0,
    frontchannel_logout boolean DEFAULT false NOT NULL,
    consent_required boolean DEFAULT false NOT NULL,
    name character varying(255),
    service_accounts_enabled boolean DEFAULT false NOT NULL,
    client_authenticator_type character varying(255),
    root_url character varying(255),
    description character varying(255),
    registration_token character varying(255),
    standard_flow_enabled boolean DEFAULT true NOT NULL,
    implicit_flow_enabled boolean DEFAULT false NOT NULL,
    direct_access_grants_enabled boolean DEFAULT false NOT NULL,
    always_display_in_console boolean DEFAULT false NOT NULL,
    created_timestamp bigint,
    last_modified_timestamp bigint
);


ALTER TABLE public.client OWNER TO admin;

--
-- Name: client_attributes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client_attributes (
    client_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.client_attributes OWNER TO admin;

--
-- Name: client_auth_flow_bindings; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client_auth_flow_bindings (
    client_id character varying(36) NOT NULL,
    flow_id character varying(36),
    binding_name character varying(255) NOT NULL
);


ALTER TABLE public.client_auth_flow_bindings OWNER TO admin;

--
-- Name: client_initial_access; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client_initial_access (
    id character varying(36) NOT NULL,
    realm_id character varying(36) NOT NULL,
    "timestamp" integer,
    expiration integer,
    count integer,
    remaining_count integer
);


ALTER TABLE public.client_initial_access OWNER TO admin;

--
-- Name: client_node_registrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client_node_registrations (
    client_id character varying(36) CONSTRAINT app_node_registrations_application_id_not_null NOT NULL,
    value integer,
    name character varying(255) CONSTRAINT app_node_registrations_name_not_null NOT NULL
);


ALTER TABLE public.client_node_registrations OWNER TO admin;

--
-- Name: client_scope; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client_scope (
    id character varying(36) CONSTRAINT client_template_id_not_null NOT NULL,
    name character varying(255),
    realm_id character varying(36),
    description character varying(255),
    protocol character varying(255)
);


ALTER TABLE public.client_scope OWNER TO admin;

--
-- Name: client_scope_attributes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client_scope_attributes (
    scope_id character varying(36) CONSTRAINT client_template_attributes_template_id_not_null NOT NULL,
    value character varying(2048),
    name character varying(255) CONSTRAINT client_template_attributes_name_not_null NOT NULL
);


ALTER TABLE public.client_scope_attributes OWNER TO admin;

--
-- Name: client_scope_client; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client_scope_client (
    client_id character varying(255) NOT NULL,
    scope_id character varying(255) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client_scope_client OWNER TO admin;

--
-- Name: client_scope_role_mapping; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.client_scope_role_mapping (
    scope_id character varying(36) CONSTRAINT template_scope_mapping_template_id_not_null NOT NULL,
    role_id character varying(36) CONSTRAINT template_scope_mapping_role_id_not_null NOT NULL
);


ALTER TABLE public.client_scope_role_mapping OWNER TO admin;

--
-- Name: cluster_event; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.cluster_event (
    id character varying(36) NOT NULL,
    target_cluster character varying(200) NOT NULL,
    sender_cluster character varying(200) NOT NULL,
    event_data oid NOT NULL,
    created_at bigint NOT NULL
);


ALTER TABLE public.cluster_event OWNER TO admin;

--
-- Name: component; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.component (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_id character varying(36),
    provider_id character varying(36),
    provider_type character varying(255),
    realm_id character varying(36),
    sub_type character varying(255)
);


ALTER TABLE public.component OWNER TO admin;

--
-- Name: component_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.component_config (
    id character varying(36) NOT NULL,
    component_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.component_config OWNER TO admin;

--
-- Name: composite_role; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.composite_role (
    composite character varying(36) NOT NULL,
    child_role character varying(36) NOT NULL
);


ALTER TABLE public.composite_role OWNER TO admin;

--
-- Name: credential; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    user_id character varying(36),
    created_date bigint,
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer,
    version integer DEFAULT 0
);


ALTER TABLE public.credential OWNER TO admin;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO admin;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO admin;

--
-- Name: default_client_scope; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.default_client_scope (
    realm_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.default_client_scope OWNER TO admin;

--
-- Name: event_entity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.event_entity (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    details_json character varying(2550),
    error character varying(255),
    ip_address character varying(255),
    realm_id character varying(255),
    session_id character varying(255),
    event_time bigint,
    type character varying(255),
    user_id character varying(255),
    details_json_long_value text
);


ALTER TABLE public.event_entity OWNER TO admin;

--
-- Name: fed_issued_ver_credential; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_issued_ver_credential (
    id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36) NOT NULL,
    ver_credential_id character varying(36) NOT NULL,
    issued_at bigint NOT NULL,
    expires_at bigint,
    client_id character varying(36),
    revision character varying(36) NOT NULL
);


ALTER TABLE public.fed_issued_ver_credential OWNER TO admin;

--
-- Name: fed_user_attribute; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_user_attribute (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    value character varying(2024),
    long_value_hash bytea,
    long_value_hash_lower_case bytea,
    long_value text
);


ALTER TABLE public.fed_user_attribute OWNER TO admin;

--
-- Name: fed_user_consent; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);


ALTER TABLE public.fed_user_consent OWNER TO admin;

--
-- Name: fed_user_consent_cl_scope; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_user_consent_cl_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    parameter character varying(255) DEFAULT '#N A#'::character varying NOT NULL
);


ALTER TABLE public.fed_user_consent_cl_scope OWNER TO admin;

--
-- Name: fed_user_credential; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_user_credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    created_date bigint,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer
);


ALTER TABLE public.fed_user_credential OWNER TO admin;

--
-- Name: fed_user_group_membership; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_group_membership OWNER TO admin;

--
-- Name: fed_user_required_action; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_user_required_action (
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_required_action OWNER TO admin;

--
-- Name: fed_user_role_mapping; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_user_role_mapping (
    role_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_role_mapping OWNER TO admin;

--
-- Name: fed_user_ver_credential; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.fed_user_ver_credential (
    id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    client_scope_id character varying(36) NOT NULL,
    revision character varying(36) NOT NULL,
    user_attributes text,
    created_date bigint,
    updated_date bigint,
    version integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.fed_user_ver_credential OWNER TO admin;

--
-- Name: federated_identity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.federated_identity (
    identity_provider character varying(255) NOT NULL,
    realm_id character varying(36),
    federated_user_id character varying(255),
    federated_username character varying(255),
    token text,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_identity OWNER TO admin;

--
-- Name: federated_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.federated_user (
    id character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_user OWNER TO admin;

--
-- Name: group_attribute; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.group_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_attribute OWNER TO admin;

--
-- Name: group_role_mapping; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.group_role_mapping (
    role_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_role_mapping OWNER TO admin;

--
-- Name: identity_provider; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.identity_provider (
    internal_id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    provider_alias character varying(255),
    provider_id character varying(255),
    store_token boolean,
    authenticate_by_default boolean,
    realm_id character varying(36),
    add_token_role boolean,
    trust_email boolean,
    first_broker_login_flow_id character varying(36),
    post_broker_login_flow_id character varying(36),
    provider_display_name character varying(255),
    link_only boolean,
    organization_id character varying(255),
    hide_on_login boolean
);


ALTER TABLE public.identity_provider OWNER TO admin;

--
-- Name: identity_provider_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.identity_provider_config (
    identity_provider_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.identity_provider_config OWNER TO admin;

--
-- Name: identity_provider_mapper; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.identity_provider_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    idp_alias character varying(255) NOT NULL,
    idp_mapper_name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.identity_provider_mapper OWNER TO admin;

--
-- Name: idp_mapper_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.idp_mapper_config (
    idp_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.idp_mapper_config OWNER TO admin;

--
-- Name: issued_ver_credential; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.issued_ver_credential (
    id character varying(36) NOT NULL,
    user_id character varying(36) NOT NULL,
    ver_credential_id character varying(36) NOT NULL,
    issued_at bigint NOT NULL,
    expires_at bigint,
    client_id character varying(36),
    revision character varying(36) NOT NULL
);


ALTER TABLE public.issued_ver_credential OWNER TO admin;

--
-- Name: jgroups_ping; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.jgroups_ping (
    address character varying(200) NOT NULL,
    name character varying(200),
    cluster_name character varying(200) NOT NULL,
    ip character varying(200) NOT NULL,
    coord boolean,
    last_update bigint,
    coordinated_by character varying(200)
);


ALTER TABLE public.jgroups_ping OWNER TO admin;

--
-- Name: keycloak_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.keycloak_group (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_group character varying(36) NOT NULL,
    realm_id character varying(36),
    type integer DEFAULT 0 NOT NULL,
    description character varying(255),
    org_id character varying(255),
    created_timestamp bigint,
    last_modified_timestamp bigint
);


ALTER TABLE public.keycloak_group OWNER TO admin;

--
-- Name: keycloak_role; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.keycloak_role (
    id character varying(36) NOT NULL,
    client_realm_constraint character varying(255),
    client_role boolean DEFAULT false CONSTRAINT keycloak_role_application_role_not_null NOT NULL,
    description character varying(255),
    name character varying(255),
    realm_id character varying(255),
    client character varying(36),
    realm character varying(36)
);


ALTER TABLE public.keycloak_role OWNER TO admin;

--
-- Name: login_failure; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.login_failure (
    realm_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    failed_login_not_before bigint DEFAULT 0,
    num_failures integer DEFAULT 0,
    num_temporary_lockouts integer DEFAULT 0,
    last_failure bigint DEFAULT 0,
    last_ip_failure character varying(255),
    num_secondary_auth_failures integer DEFAULT 0
);


ALTER TABLE public.login_failure OWNER TO admin;

--
-- Name: migration_model; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.migration_model (
    id character varying(36) NOT NULL,
    version character varying(36),
    update_time bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.migration_model OWNER TO admin;

--
-- Name: offline_client_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.offline_client_session (
    user_session_id character varying(36) NOT NULL,
    client_id character varying(255) NOT NULL,
    offline_flag character varying(4) NOT NULL,
    "timestamp" integer,
    data text,
    client_storage_provider character varying(36) DEFAULT 'local'::character varying NOT NULL,
    external_client_id character varying(255) DEFAULT 'local'::character varying NOT NULL,
    version integer DEFAULT 0,
    realm_id character varying(36)
);


ALTER TABLE public.offline_client_session OWNER TO admin;

--
-- Name: offline_user_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.offline_user_session (
    user_session_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    created_on integer NOT NULL,
    offline_flag character varying(4) NOT NULL,
    data text,
    last_session_refresh integer DEFAULT 0 NOT NULL,
    broker_session_id character varying(1024),
    version integer DEFAULT 0,
    remember_me boolean
);


ALTER TABLE public.offline_user_session OWNER TO admin;

--
-- Name: org; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.org (
    id character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    realm_id character varying(255) NOT NULL,
    group_id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(4000),
    alias character varying(255) NOT NULL,
    redirect_url character varying(2048)
);


ALTER TABLE public.org OWNER TO admin;

--
-- Name: org_domain; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.org_domain (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    verified boolean NOT NULL,
    org_id character varying(255) NOT NULL
);


ALTER TABLE public.org_domain OWNER TO admin;

--
-- Name: org_invitation; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.org_invitation (
    id character varying(36) NOT NULL,
    organization_id character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    created_at integer NOT NULL,
    expires_at integer,
    invite_link character varying(2048)
);


ALTER TABLE public.org_invitation OWNER TO admin;

--
-- Name: outbox_entry; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.outbox_entry (
    id character varying(36) NOT NULL,
    entry_kind character varying(64) NOT NULL,
    realm_id character varying(36) NOT NULL,
    owner_id character varying(64) NOT NULL,
    container_id character varying(64),
    correlation_id character varying(255) NOT NULL,
    entry_type character varying(256) NOT NULL,
    payload text NOT NULL,
    metadata text,
    status character varying(16) NOT NULL,
    attempts integer DEFAULT 0 NOT NULL,
    next_attempt_at timestamp without time zone NOT NULL,
    last_error character varying(2048),
    created_at timestamp without time zone NOT NULL,
    delivered_at timestamp without time zone
);


ALTER TABLE public.outbox_entry OWNER TO admin;

--
-- Name: policy_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.policy_config (
    policy_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.policy_config OWNER TO admin;

--
-- Name: protocol_mapper; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.protocol_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    protocol character varying(255) NOT NULL,
    protocol_mapper_name character varying(255) NOT NULL,
    client_id character varying(36),
    client_scope_id character varying(36)
);


ALTER TABLE public.protocol_mapper OWNER TO admin;

--
-- Name: protocol_mapper_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.protocol_mapper_config (
    protocol_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.protocol_mapper_config OWNER TO admin;

--
-- Name: realm; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm (
    id character varying(36) NOT NULL,
    access_code_lifespan integer,
    user_action_lifespan integer,
    access_token_lifespan integer,
    account_theme character varying(255),
    admin_theme character varying(255),
    email_theme character varying(255),
    enabled boolean DEFAULT false NOT NULL,
    events_enabled boolean DEFAULT false NOT NULL,
    events_expiration bigint,
    login_theme character varying(255),
    name character varying(255),
    not_before integer,
    password_policy character varying(2550),
    registration_allowed boolean DEFAULT false NOT NULL,
    remember_me boolean DEFAULT false NOT NULL,
    reset_password_allowed boolean DEFAULT false NOT NULL,
    social boolean DEFAULT false NOT NULL,
    ssl_required character varying(255),
    sso_idle_timeout integer,
    sso_max_lifespan integer,
    update_profile_on_soc_login boolean DEFAULT false NOT NULL,
    verify_email boolean DEFAULT false NOT NULL,
    master_admin_client character varying(36),
    login_lifespan integer,
    internationalization_enabled boolean DEFAULT false NOT NULL,
    default_locale character varying(255),
    reg_email_as_username boolean DEFAULT false NOT NULL,
    admin_events_enabled boolean DEFAULT false NOT NULL,
    admin_events_details_enabled boolean DEFAULT false NOT NULL,
    edit_username_allowed boolean DEFAULT false NOT NULL,
    otp_policy_counter integer DEFAULT 0,
    otp_policy_window integer DEFAULT 1,
    otp_policy_period integer DEFAULT 30,
    otp_policy_digits integer DEFAULT 6,
    otp_policy_alg character varying(36) DEFAULT 'HmacSHA1'::character varying,
    otp_policy_type character varying(36) DEFAULT 'totp'::character varying,
    browser_flow character varying(36),
    registration_flow character varying(36),
    direct_grant_flow character varying(36),
    reset_credentials_flow character varying(36),
    client_auth_flow character varying(36),
    offline_session_idle_timeout integer DEFAULT 0,
    revoke_refresh_token boolean DEFAULT false NOT NULL,
    access_token_life_implicit integer DEFAULT 0,
    login_with_email_allowed boolean DEFAULT true NOT NULL,
    duplicate_emails_allowed boolean DEFAULT false NOT NULL,
    docker_auth_flow character varying(36),
    refresh_token_max_reuse integer DEFAULT 0,
    allow_user_managed_access boolean DEFAULT false NOT NULL,
    sso_max_lifespan_remember_me integer DEFAULT 0 NOT NULL,
    sso_idle_timeout_remember_me integer DEFAULT 0 NOT NULL,
    default_role character varying(255),
    display_name character varying(255)
);


ALTER TABLE public.realm OWNER TO admin;

--
-- Name: realm_attribute; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm_attribute (
    name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    value text
);


ALTER TABLE public.realm_attribute OWNER TO admin;

--
-- Name: realm_default_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm_default_groups (
    realm_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_default_groups OWNER TO admin;

--
-- Name: realm_enabled_event_types; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm_enabled_event_types (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_enabled_event_types OWNER TO admin;

--
-- Name: realm_events_listeners; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm_events_listeners (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_events_listeners OWNER TO admin;

--
-- Name: realm_localizations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm_localizations (
    realm_id character varying(255) NOT NULL,
    locale character varying(255) NOT NULL,
    texts text NOT NULL
);


ALTER TABLE public.realm_localizations OWNER TO admin;

--
-- Name: realm_required_credential; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm_required_credential (
    type character varying(255) NOT NULL,
    form_label character varying(255),
    input boolean DEFAULT false NOT NULL,
    secret boolean DEFAULT false NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_required_credential OWNER TO admin;

--
-- Name: realm_smtp_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm_smtp_config (
    realm_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.realm_smtp_config OWNER TO admin;

--
-- Name: realm_supported_locales; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.realm_supported_locales (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_supported_locales OWNER TO admin;

--
-- Name: redirect_uris; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.redirect_uris (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.redirect_uris OWNER TO admin;

--
-- Name: required_action_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.required_action_config (
    required_action_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.required_action_config OWNER TO admin;

--
-- Name: required_action_provider; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.required_action_provider (
    id character varying(36) NOT NULL,
    alias character varying(255),
    name character varying(255),
    realm_id character varying(36),
    enabled boolean DEFAULT false NOT NULL,
    default_action boolean DEFAULT false NOT NULL,
    provider_id character varying(255),
    priority integer
);


ALTER TABLE public.required_action_provider OWNER TO admin;

--
-- Name: resource_attribute; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    resource_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_attribute OWNER TO admin;

--
-- Name: resource_policy; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_policy (
    resource_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_policy OWNER TO admin;

--
-- Name: resource_scope; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_scope (
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_scope OWNER TO admin;

--
-- Name: resource_server; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_server (
    id character varying(36) CONSTRAINT resource_server_client_id_not_null NOT NULL,
    allow_rs_remote_mgmt boolean DEFAULT false NOT NULL,
    policy_enforce_mode smallint NOT NULL,
    decision_strategy smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.resource_server OWNER TO admin;

--
-- Name: resource_server_perm_ticket; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_server_perm_ticket (
    id character varying(36) NOT NULL,
    owner character varying(255) NOT NULL,
    requester character varying(255) NOT NULL,
    created_timestamp bigint NOT NULL,
    granted_timestamp bigint,
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36),
    resource_server_id character varying(36) NOT NULL,
    policy_id character varying(36)
);


ALTER TABLE public.resource_server_perm_ticket OWNER TO admin;

--
-- Name: resource_server_policy; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_server_policy (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255) NOT NULL,
    decision_strategy smallint,
    logic smallint,
    resource_server_id character varying(36) CONSTRAINT resource_server_policy_resource_server_client_id_not_null NOT NULL,
    owner character varying(255)
);


ALTER TABLE public.resource_server_policy OWNER TO admin;

--
-- Name: resource_server_resource; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_server_resource (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255),
    icon_uri character varying(255),
    owner character varying(255) NOT NULL,
    resource_server_id character varying(36) CONSTRAINT resource_server_resource_resource_server_client_id_not_null NOT NULL,
    owner_managed_access boolean DEFAULT false NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_resource OWNER TO admin;

--
-- Name: resource_server_scope; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_server_scope (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    icon_uri character varying(255),
    resource_server_id character varying(36) CONSTRAINT resource_server_scope_resource_server_client_id_not_null NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_scope OWNER TO admin;

--
-- Name: resource_uris; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.resource_uris (
    resource_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.resource_uris OWNER TO admin;

--
-- Name: revoked_token; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.revoked_token (
    id character varying(255) NOT NULL,
    expire bigint NOT NULL
);


ALTER TABLE public.revoked_token OWNER TO admin;

--
-- Name: role_attribute; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.role_attribute (
    id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255)
);


ALTER TABLE public.role_attribute OWNER TO admin;

--
-- Name: root_auth_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.root_auth_session (
    id character varying(36) NOT NULL,
    realm_id character varying(36) NOT NULL,
    "timestamp" bigint,
    version integer
);


ALTER TABLE public.root_auth_session OWNER TO admin;

--
-- Name: scope_mapping; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.scope_mapping (
    client_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_mapping OWNER TO admin;

--
-- Name: scope_policy; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.scope_policy (
    scope_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_policy OWNER TO admin;

--
-- Name: server_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.server_config (
    server_config_key character varying(255) NOT NULL,
    value text NOT NULL,
    version integer DEFAULT 0
);


ALTER TABLE public.server_config OWNER TO admin;

--
-- Name: single_use_object; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.single_use_object (
    id character varying(255) NOT NULL,
    notes text,
    expire bigint NOT NULL
);


ALTER TABLE public.single_use_object OWNER TO admin;

--
-- Name: user_attribute; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_attribute (
    name character varying(255) NOT NULL,
    value character varying(255),
    user_id character varying(36) NOT NULL,
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    long_value_hash bytea,
    long_value_hash_lower_case bytea,
    long_value text
);


ALTER TABLE public.user_attribute OWNER TO admin;

--
-- Name: user_consent; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(36) NOT NULL,
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);


ALTER TABLE public.user_consent OWNER TO admin;

--
-- Name: user_consent_client_scope; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_consent_client_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    parameter character varying(255) DEFAULT '#N A#'::character varying NOT NULL
);


ALTER TABLE public.user_consent_client_scope OWNER TO admin;

--
-- Name: user_entity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_entity (
    id character varying(36) NOT NULL,
    email character varying(255),
    email_constraint character varying(255),
    email_verified boolean DEFAULT false NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    federation_link character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    realm_id character varying(255),
    username character varying(255),
    created_timestamp bigint,
    service_account_client_link character varying(255),
    not_before integer DEFAULT 0 NOT NULL,
    last_modified_timestamp bigint
);


ALTER TABLE public.user_entity OWNER TO admin;

--
-- Name: user_federation_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_federation_config (
    user_federation_provider_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_config OWNER TO admin;

--
-- Name: user_federation_mapper; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_federation_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    federation_provider_id character varying(36) NOT NULL,
    federation_mapper_type character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.user_federation_mapper OWNER TO admin;

--
-- Name: user_federation_mapper_config; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_federation_mapper_config (
    user_federation_mapper_id character varying(36) CONSTRAINT user_federation_mapper_confi_user_federation_mapper_id_not_null NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_mapper_config OWNER TO admin;

--
-- Name: user_federation_provider; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_federation_provider (
    id character varying(36) NOT NULL,
    changed_sync_period integer,
    display_name character varying(255),
    full_sync_period integer,
    last_sync integer,
    priority integer,
    provider_name character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.user_federation_provider OWNER TO admin;

--
-- Name: user_group_membership; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(36) NOT NULL,
    membership_type character varying(255) NOT NULL
);


ALTER TABLE public.user_group_membership OWNER TO admin;

--
-- Name: user_required_action; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_required_action (
    user_id character varying(36) NOT NULL,
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL
);


ALTER TABLE public.user_required_action OWNER TO admin;

--
-- Name: user_role_mapping; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_role_mapping (
    role_id character varying(255) NOT NULL,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_role_mapping OWNER TO admin;

--
-- Name: user_ver_credential; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_ver_credential (
    id character varying(36) NOT NULL,
    client_scope_id character varying(36) NOT NULL,
    user_id character varying(36) NOT NULL,
    revision character varying(36) NOT NULL,
    created_date bigint,
    updated_date bigint,
    user_attributes text,
    version integer
);


ALTER TABLE public.user_ver_credential OWNER TO admin;

--
-- Name: web_origins; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.web_origins (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.web_origins OWNER TO admin;

--
-- Name: workflow_state; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.workflow_state (
    execution_id character varying(255) NOT NULL,
    resource_id character varying(255) NOT NULL,
    workflow_id character varying(255) NOT NULL,
    resource_type character varying(255),
    scheduled_step_id character varying(255),
    scheduled_step_timestamp bigint
);


ALTER TABLE public.workflow_state OWNER TO admin;

--
-- Data for Name: admin_event_entity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.admin_event_entity (id, admin_event_time, realm_id, operation_type, auth_realm_id, auth_client_id, auth_user_id, ip_address, resource_path, representation, error, resource_type, details_json) FROM stdin;
\.


--
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.associated_policy (policy_id, associated_policy_id) FROM stdin;
\.


--
-- Data for Name: auth_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_session (root_auth_session_id, tab_id, client_uuid, auth_user_id, "timestamp", version, redirect_uri, action, protocol, client_scopes, execution_status, client_notes, auth_notes, required_actions, user_session_notes) FROM stdin;
\.


--
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.authentication_execution (id, alias, authenticator, realm_id, flow_id, requirement, priority, authenticator_flow, auth_flow_id, auth_config) FROM stdin;
21c85242-e776-40ec-bad6-18ffe6c5b065	\N	auth-cookie	28893197-b00a-4ee3-97e6-f2e6d1a55902	616e425f-e4e1-4670-a415-c26774f6d5cb	2	10	f	\N	\N
0ad7a7dd-e813-46a5-beb9-beae07c48e67	\N	auth-spnego	28893197-b00a-4ee3-97e6-f2e6d1a55902	616e425f-e4e1-4670-a415-c26774f6d5cb	3	20	f	\N	\N
065d644d-218f-421e-8082-cdde97ecb3c3	\N	identity-provider-redirector	28893197-b00a-4ee3-97e6-f2e6d1a55902	616e425f-e4e1-4670-a415-c26774f6d5cb	2	25	f	\N	\N
e334a38a-1fe2-4a9f-8dd1-f75c006f39eb	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	616e425f-e4e1-4670-a415-c26774f6d5cb	2	30	t	4a6bb887-700e-414d-9c71-c0b57b8f0df9	\N
729b35e7-c8a0-4f56-9c19-a4b159246972	\N	auth-username-password-form	28893197-b00a-4ee3-97e6-f2e6d1a55902	4a6bb887-700e-414d-9c71-c0b57b8f0df9	0	10	f	\N	\N
6eebb147-4831-4797-a971-87f43b1ed723	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	4a6bb887-700e-414d-9c71-c0b57b8f0df9	1	20	t	457fbf1c-8ddf-4bf8-88aa-32a2bfdf65eb	\N
9dd5351a-1b3c-4a50-9be1-5b2bbb0a4bb9	\N	conditional-user-configured	28893197-b00a-4ee3-97e6-f2e6d1a55902	457fbf1c-8ddf-4bf8-88aa-32a2bfdf65eb	0	10	f	\N	\N
5de3c499-f5c1-47ee-a89e-45f76000ccaf	\N	conditional-credential	28893197-b00a-4ee3-97e6-f2e6d1a55902	457fbf1c-8ddf-4bf8-88aa-32a2bfdf65eb	0	20	f	\N	b0124bcc-cdc6-4eec-9f5e-f4e9f4a6b648
ca63f9fc-c780-42bf-996f-c7de16fff978	\N	auth-otp-form	28893197-b00a-4ee3-97e6-f2e6d1a55902	457fbf1c-8ddf-4bf8-88aa-32a2bfdf65eb	2	30	f	\N	\N
1645c69f-0d69-4ae3-8631-229ede734786	\N	webauthn-authenticator	28893197-b00a-4ee3-97e6-f2e6d1a55902	457fbf1c-8ddf-4bf8-88aa-32a2bfdf65eb	3	40	f	\N	\N
8f41573b-3b22-4ffc-bfee-7f3e9c242b96	\N	auth-recovery-authn-code-form	28893197-b00a-4ee3-97e6-f2e6d1a55902	457fbf1c-8ddf-4bf8-88aa-32a2bfdf65eb	3	50	f	\N	\N
36ca5679-6964-4a47-b83f-8b0975834c57	\N	direct-grant-validate-username	28893197-b00a-4ee3-97e6-f2e6d1a55902	ad5e0974-6ab0-46e0-bd09-fe2b2e989cab	0	10	f	\N	\N
68ad74b6-ebdb-45eb-9d42-0c0d11c246b1	\N	direct-grant-validate-password	28893197-b00a-4ee3-97e6-f2e6d1a55902	ad5e0974-6ab0-46e0-bd09-fe2b2e989cab	0	20	f	\N	\N
e37e04ea-3e8e-457b-99ce-639da8b7495f	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	ad5e0974-6ab0-46e0-bd09-fe2b2e989cab	1	30	t	e6a8ad6c-35b7-4d7b-86e0-815df389bd10	\N
8b7c21ee-b5b6-479c-b7e6-4c9c24db1d9a	\N	conditional-user-configured	28893197-b00a-4ee3-97e6-f2e6d1a55902	e6a8ad6c-35b7-4d7b-86e0-815df389bd10	0	10	f	\N	\N
dc542177-c52a-41a6-a6fe-9bfaa229e9e2	\N	direct-grant-validate-otp	28893197-b00a-4ee3-97e6-f2e6d1a55902	e6a8ad6c-35b7-4d7b-86e0-815df389bd10	0	20	f	\N	\N
002e835e-047f-4707-a243-50e7b73564cc	\N	registration-page-form	28893197-b00a-4ee3-97e6-f2e6d1a55902	7280ac76-c972-4d93-8cf6-6c386c57cdc1	0	10	t	fc98b8eb-d3d1-4e3b-b48c-51290956c2f6	\N
744ba99d-d440-4aec-8a25-781c0979605c	\N	registration-user-creation	28893197-b00a-4ee3-97e6-f2e6d1a55902	fc98b8eb-d3d1-4e3b-b48c-51290956c2f6	0	20	f	\N	\N
a1082038-aa29-4296-97ff-8bbab15084ef	\N	registration-password-action	28893197-b00a-4ee3-97e6-f2e6d1a55902	fc98b8eb-d3d1-4e3b-b48c-51290956c2f6	0	50	f	\N	\N
0b0d132b-46cc-47ac-9d85-55a291e1bc2d	\N	registration-recaptcha-action	28893197-b00a-4ee3-97e6-f2e6d1a55902	fc98b8eb-d3d1-4e3b-b48c-51290956c2f6	3	60	f	\N	\N
cedf28b4-74d6-4256-8ffc-375fc446d8d3	\N	registration-terms-and-conditions	28893197-b00a-4ee3-97e6-f2e6d1a55902	fc98b8eb-d3d1-4e3b-b48c-51290956c2f6	3	70	f	\N	\N
a979f5d9-5238-4c02-89ef-2f7ad24c89e4	\N	reset-credentials-choose-user	28893197-b00a-4ee3-97e6-f2e6d1a55902	741fb533-562d-4c84-bc72-607502106eb4	0	10	f	\N	\N
ac22a08c-6f44-47d4-9538-57dbacc6a338	\N	reset-credential-email	28893197-b00a-4ee3-97e6-f2e6d1a55902	741fb533-562d-4c84-bc72-607502106eb4	0	20	f	\N	\N
ee6c6ae5-6816-4f11-95cf-2070cb67f22e	\N	reset-password	28893197-b00a-4ee3-97e6-f2e6d1a55902	741fb533-562d-4c84-bc72-607502106eb4	0	30	f	\N	\N
cdf98272-28d9-48d2-9693-d3290dc19d52	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	741fb533-562d-4c84-bc72-607502106eb4	1	40	t	6cbffb3b-a46f-4b14-b017-b78eebea67d2	\N
95c1eac2-1e10-48ac-8b46-e4cf7b8915a1	\N	conditional-user-configured	28893197-b00a-4ee3-97e6-f2e6d1a55902	6cbffb3b-a46f-4b14-b017-b78eebea67d2	0	10	f	\N	\N
28dcc835-e606-4afb-82c3-4f4a8afacf58	\N	reset-otp	28893197-b00a-4ee3-97e6-f2e6d1a55902	6cbffb3b-a46f-4b14-b017-b78eebea67d2	0	20	f	\N	\N
12461d64-3aef-4ffa-97ca-dc4b072245ee	\N	client-secret	28893197-b00a-4ee3-97e6-f2e6d1a55902	02beda3e-915d-4d5f-b2e3-820304650fb9	2	10	f	\N	\N
38705a39-7f5e-4a06-8b5b-621ab0ff78d6	\N	client-jwt	28893197-b00a-4ee3-97e6-f2e6d1a55902	02beda3e-915d-4d5f-b2e3-820304650fb9	2	20	f	\N	\N
aba033bb-b0bb-4429-9688-909b3acd25c7	\N	client-secret-jwt	28893197-b00a-4ee3-97e6-f2e6d1a55902	02beda3e-915d-4d5f-b2e3-820304650fb9	2	30	f	\N	\N
f71f50f9-44ae-4d73-abb2-9d6db846cd72	\N	client-x509	28893197-b00a-4ee3-97e6-f2e6d1a55902	02beda3e-915d-4d5f-b2e3-820304650fb9	2	40	f	\N	\N
65a6e608-62a7-4385-abe3-26e41fea010c	\N	federated-jwt	28893197-b00a-4ee3-97e6-f2e6d1a55902	02beda3e-915d-4d5f-b2e3-820304650fb9	2	50	f	\N	\N
8be44ab4-4861-4d47-9899-5748274e6a24	\N	idp-review-profile	28893197-b00a-4ee3-97e6-f2e6d1a55902	fb11acb2-143a-4bf8-8326-22e561b73872	0	10	f	\N	78b35da3-d794-4187-822c-11d8a38e78e8
08bb6b36-8b16-439f-b349-46e64d3f0e44	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	fb11acb2-143a-4bf8-8326-22e561b73872	0	20	t	3169e0f5-c388-47ff-a784-2c7d62ff4a41	\N
14fc86fd-f1f4-47d5-99de-adbb730a990e	\N	idp-create-user-if-unique	28893197-b00a-4ee3-97e6-f2e6d1a55902	3169e0f5-c388-47ff-a784-2c7d62ff4a41	2	10	f	\N	ea1ce818-c1c4-48dc-a64f-744b1535c11e
e1b2c844-9e72-40e5-844c-cff1b23a0f96	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	3169e0f5-c388-47ff-a784-2c7d62ff4a41	2	20	t	5926e4f8-8457-43a7-9699-b7ccca82389c	\N
f48f7b21-4fdf-46c6-bc53-0ea54a00d5af	\N	idp-confirm-link	28893197-b00a-4ee3-97e6-f2e6d1a55902	5926e4f8-8457-43a7-9699-b7ccca82389c	0	10	f	\N	\N
93a3ba9b-6437-478d-911e-234f18aea592	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	5926e4f8-8457-43a7-9699-b7ccca82389c	0	20	t	80c6a975-0053-4809-b8da-08aa0ecefe73	\N
f52d77c3-4e14-434c-bd63-74e6018c1237	\N	idp-email-verification	28893197-b00a-4ee3-97e6-f2e6d1a55902	80c6a975-0053-4809-b8da-08aa0ecefe73	2	10	f	\N	\N
352c97ef-2d01-45fc-9a4f-398e1cad640a	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	80c6a975-0053-4809-b8da-08aa0ecefe73	2	20	t	0dd2e7ae-4d81-49ff-9d6e-a74b61c0a51b	\N
24e20771-8198-4c1f-bafc-1eb03c9f847e	\N	idp-username-password-form	28893197-b00a-4ee3-97e6-f2e6d1a55902	0dd2e7ae-4d81-49ff-9d6e-a74b61c0a51b	0	10	f	\N	\N
c2b51d89-d016-4c52-84f2-dcb6a01a26ea	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	0dd2e7ae-4d81-49ff-9d6e-a74b61c0a51b	1	20	t	0d8fc3cb-3e3e-4ef1-a243-ac152353505c	\N
79937c1d-156c-4ab7-9794-ac5ea6bbbcf9	\N	conditional-user-configured	28893197-b00a-4ee3-97e6-f2e6d1a55902	0d8fc3cb-3e3e-4ef1-a243-ac152353505c	0	10	f	\N	\N
5236a3e3-3ea2-44c9-abb2-43a25e905fff	\N	conditional-credential	28893197-b00a-4ee3-97e6-f2e6d1a55902	0d8fc3cb-3e3e-4ef1-a243-ac152353505c	0	20	f	\N	c6f3a76f-381f-4ef5-8e29-833efbbdea40
1e9dc4e0-a943-46a7-88ee-ba1526b99cce	\N	auth-otp-form	28893197-b00a-4ee3-97e6-f2e6d1a55902	0d8fc3cb-3e3e-4ef1-a243-ac152353505c	2	30	f	\N	\N
d7670ee5-3c79-4f68-b030-de44a69a5c23	\N	webauthn-authenticator	28893197-b00a-4ee3-97e6-f2e6d1a55902	0d8fc3cb-3e3e-4ef1-a243-ac152353505c	3	40	f	\N	\N
75eb7d6c-5308-4d85-97d1-d7cfac86e864	\N	auth-recovery-authn-code-form	28893197-b00a-4ee3-97e6-f2e6d1a55902	0d8fc3cb-3e3e-4ef1-a243-ac152353505c	3	50	f	\N	\N
8e6f56e3-7c3c-4f45-bba5-44f9d4f29150	\N	http-basic-authenticator	28893197-b00a-4ee3-97e6-f2e6d1a55902	2fe95a1c-7b15-42ca-a32a-cb67c1899f6a	0	10	f	\N	\N
ed6e2068-ef14-490c-819b-4da5dcee90c2	\N	docker-http-basic-authenticator	28893197-b00a-4ee3-97e6-f2e6d1a55902	4136fda9-887e-4262-ac8d-5322c7200b25	0	10	f	\N	\N
7d78e283-2f5c-427c-a9ca-a51645612a74	\N	auth-cookie	6415217a-07af-457d-9def-590e3d8495b3	d84e232b-be58-4308-9e77-42bfa3ae73e7	2	10	f	\N	\N
4638dbcb-7715-4be7-b363-fb52b963b22f	\N	auth-spnego	6415217a-07af-457d-9def-590e3d8495b3	d84e232b-be58-4308-9e77-42bfa3ae73e7	3	20	f	\N	\N
409f897f-0b4a-4ec0-a1ac-c1768bc47f5d	\N	identity-provider-redirector	6415217a-07af-457d-9def-590e3d8495b3	d84e232b-be58-4308-9e77-42bfa3ae73e7	2	25	f	\N	\N
b8543c54-6945-4b2e-9e29-e34e4a094bdc	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	d84e232b-be58-4308-9e77-42bfa3ae73e7	2	30	t	8d2cf0dd-0fc0-48ee-a9bb-ae6016f61eed	\N
d1350d2b-e23e-4553-ad49-06409b4da0e7	\N	auth-username-password-form	6415217a-07af-457d-9def-590e3d8495b3	8d2cf0dd-0fc0-48ee-a9bb-ae6016f61eed	0	10	f	\N	\N
f651a1bb-0ea8-4314-8bad-267452477e75	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	8d2cf0dd-0fc0-48ee-a9bb-ae6016f61eed	1	20	t	c1f9fd9c-989c-413b-9fd8-eb68ced1752a	\N
8d4e34dd-e73e-4f03-9880-c8b6a6bc334f	\N	conditional-user-configured	6415217a-07af-457d-9def-590e3d8495b3	c1f9fd9c-989c-413b-9fd8-eb68ced1752a	0	10	f	\N	\N
c4fb7738-6399-4602-a30c-cd34f205302f	\N	conditional-credential	6415217a-07af-457d-9def-590e3d8495b3	c1f9fd9c-989c-413b-9fd8-eb68ced1752a	0	20	f	\N	a24004e5-a7da-4470-9d13-a3f676a2b96c
fab8c47f-21a6-4a93-9c09-08fe40a8a01d	\N	auth-otp-form	6415217a-07af-457d-9def-590e3d8495b3	c1f9fd9c-989c-413b-9fd8-eb68ced1752a	2	30	f	\N	\N
9b5a774c-2431-449e-ac94-eb1489247249	\N	webauthn-authenticator	6415217a-07af-457d-9def-590e3d8495b3	c1f9fd9c-989c-413b-9fd8-eb68ced1752a	3	40	f	\N	\N
186abfbb-1ae8-45a8-989a-bfb018dd1252	\N	auth-recovery-authn-code-form	6415217a-07af-457d-9def-590e3d8495b3	c1f9fd9c-989c-413b-9fd8-eb68ced1752a	3	50	f	\N	\N
90a8306d-ae18-48e1-9523-ce6c99820464	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	d84e232b-be58-4308-9e77-42bfa3ae73e7	2	26	t	42fcbd4e-a818-4246-b981-19b64471f586	\N
b2838c53-87ed-44fe-a31b-0d3650d5cb43	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	42fcbd4e-a818-4246-b981-19b64471f586	1	10	t	f08148ad-eae7-408c-acf8-8f1ffdaefbc0	\N
fb6213a4-50da-499f-82eb-7056431026b0	\N	conditional-user-configured	6415217a-07af-457d-9def-590e3d8495b3	f08148ad-eae7-408c-acf8-8f1ffdaefbc0	0	10	f	\N	\N
67a37db9-537e-4c2b-88d0-e0e00ad73795	\N	organization	6415217a-07af-457d-9def-590e3d8495b3	f08148ad-eae7-408c-acf8-8f1ffdaefbc0	2	20	f	\N	\N
ffc3926b-d67e-4847-98a4-9af8ecf56cc7	\N	direct-grant-validate-username	6415217a-07af-457d-9def-590e3d8495b3	d67b9d0b-3f0e-4cda-95a6-cc3c93cb4de1	0	10	f	\N	\N
5a106288-2420-4865-830f-b06149ea2a72	\N	direct-grant-validate-password	6415217a-07af-457d-9def-590e3d8495b3	d67b9d0b-3f0e-4cda-95a6-cc3c93cb4de1	0	20	f	\N	\N
1a7fe6e5-f2fc-4da8-aeab-6f1bec998834	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	d67b9d0b-3f0e-4cda-95a6-cc3c93cb4de1	1	30	t	e8bf2250-07c3-4659-8171-cee86d75c98a	\N
de0bf8bf-4850-4346-8968-9b1b94ae3e10	\N	conditional-user-configured	6415217a-07af-457d-9def-590e3d8495b3	e8bf2250-07c3-4659-8171-cee86d75c98a	0	10	f	\N	\N
0438f6b9-58da-44a5-be4a-68b421c72680	\N	direct-grant-validate-otp	6415217a-07af-457d-9def-590e3d8495b3	e8bf2250-07c3-4659-8171-cee86d75c98a	0	20	f	\N	\N
7d0e6cbf-0134-410a-bf50-41b399b85392	\N	registration-page-form	6415217a-07af-457d-9def-590e3d8495b3	8a056892-8b97-474d-8a97-f0703859b975	0	10	t	0da38f38-f5d4-4d19-a846-d4641efd6a5c	\N
6044542b-fa0d-4f05-955b-faff03079e86	\N	registration-user-creation	6415217a-07af-457d-9def-590e3d8495b3	0da38f38-f5d4-4d19-a846-d4641efd6a5c	0	20	f	\N	\N
6c17111d-c04e-498c-8cc1-48f72415afc8	\N	registration-password-action	6415217a-07af-457d-9def-590e3d8495b3	0da38f38-f5d4-4d19-a846-d4641efd6a5c	0	50	f	\N	\N
f6b4cf95-de6c-4583-857c-9a87fc7d9291	\N	registration-recaptcha-action	6415217a-07af-457d-9def-590e3d8495b3	0da38f38-f5d4-4d19-a846-d4641efd6a5c	3	60	f	\N	\N
599c38b2-7d10-4cdf-bc86-2f4806a90176	\N	registration-terms-and-conditions	6415217a-07af-457d-9def-590e3d8495b3	0da38f38-f5d4-4d19-a846-d4641efd6a5c	3	70	f	\N	\N
c569c014-b62a-481a-8c9c-fcc28d3cddf0	\N	reset-credentials-choose-user	6415217a-07af-457d-9def-590e3d8495b3	2b7516fc-0c03-4f82-bb75-61f20bfb40a3	0	10	f	\N	\N
152cd14e-bc3a-4ccf-b0a3-7b034d0d36e4	\N	reset-credential-email	6415217a-07af-457d-9def-590e3d8495b3	2b7516fc-0c03-4f82-bb75-61f20bfb40a3	0	20	f	\N	\N
f5b41026-9fbc-4552-8109-e7d83260a912	\N	reset-password	6415217a-07af-457d-9def-590e3d8495b3	2b7516fc-0c03-4f82-bb75-61f20bfb40a3	0	30	f	\N	\N
d9604759-04df-4918-8706-46775bfebb3a	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	2b7516fc-0c03-4f82-bb75-61f20bfb40a3	1	40	t	a0d1ee49-5905-4d80-bbb9-9e175f111e6a	\N
145ab887-1cf9-48cd-8741-870f0a107e8b	\N	conditional-user-configured	6415217a-07af-457d-9def-590e3d8495b3	a0d1ee49-5905-4d80-bbb9-9e175f111e6a	0	10	f	\N	\N
a111d5d9-7c70-4a8b-8f77-7a300aeaa77b	\N	reset-otp	6415217a-07af-457d-9def-590e3d8495b3	a0d1ee49-5905-4d80-bbb9-9e175f111e6a	0	20	f	\N	\N
4a07f555-3489-4762-80ad-9db511a030c3	\N	client-secret	6415217a-07af-457d-9def-590e3d8495b3	769b997f-d4fb-45ae-9e58-7ed875376dae	2	10	f	\N	\N
4f029fc1-584f-4e0b-8de2-f32c5ac055eb	\N	client-jwt	6415217a-07af-457d-9def-590e3d8495b3	769b997f-d4fb-45ae-9e58-7ed875376dae	2	20	f	\N	\N
c6fb9259-7062-48fe-ba5e-027dba5d200c	\N	client-secret-jwt	6415217a-07af-457d-9def-590e3d8495b3	769b997f-d4fb-45ae-9e58-7ed875376dae	2	30	f	\N	\N
c9a07a25-c886-4d3a-a705-d1740a03bb2b	\N	client-x509	6415217a-07af-457d-9def-590e3d8495b3	769b997f-d4fb-45ae-9e58-7ed875376dae	2	40	f	\N	\N
88fe42d1-36cf-4e61-bf4b-0efcf7d41c00	\N	federated-jwt	6415217a-07af-457d-9def-590e3d8495b3	769b997f-d4fb-45ae-9e58-7ed875376dae	2	50	f	\N	\N
c84c3e36-5a87-4dac-9de5-367dc8190f74	\N	idp-review-profile	6415217a-07af-457d-9def-590e3d8495b3	481fdddb-7d4b-487c-8deb-66a426ba0629	0	10	f	\N	e05adcb0-889a-4aa9-8d1d-eb4fa888d1ff
d3065297-a992-4776-88ca-393425c19a68	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	481fdddb-7d4b-487c-8deb-66a426ba0629	0	20	t	5a906a37-187a-4616-9757-f22fa6d98f62	\N
82d31e70-2e30-4a96-b959-779cb103dfa4	\N	idp-create-user-if-unique	6415217a-07af-457d-9def-590e3d8495b3	5a906a37-187a-4616-9757-f22fa6d98f62	2	10	f	\N	7fa4c242-3aa4-4d7c-adf0-5ec9e11d625a
671c2001-0ae1-4b06-9edd-e00d95339f22	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	5a906a37-187a-4616-9757-f22fa6d98f62	2	20	t	bb0ae53d-1542-4d58-81fb-1ffa92790ba4	\N
2d6a95fc-601c-483a-ac8f-c0a6dcb9a012	\N	idp-confirm-link	6415217a-07af-457d-9def-590e3d8495b3	bb0ae53d-1542-4d58-81fb-1ffa92790ba4	0	10	f	\N	\N
5401fafa-54be-4c6d-ac5f-cab1594217ec	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	bb0ae53d-1542-4d58-81fb-1ffa92790ba4	0	20	t	43cb8032-1373-4874-8528-611bd836b357	\N
315e4998-2dd6-4732-8bdb-e547d0569598	\N	idp-email-verification	6415217a-07af-457d-9def-590e3d8495b3	43cb8032-1373-4874-8528-611bd836b357	2	10	f	\N	\N
979dc85d-5f01-4c05-b7fd-d0084c4db6f8	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	43cb8032-1373-4874-8528-611bd836b357	2	20	t	2ebaf782-4881-420f-9dad-1b06dce84cc0	\N
aaf7c7f1-9068-4d8e-be68-8771b18c9700	\N	idp-username-password-form	6415217a-07af-457d-9def-590e3d8495b3	2ebaf782-4881-420f-9dad-1b06dce84cc0	0	10	f	\N	\N
b69df7a1-e2dc-44cb-a120-9fb6ef0f4ea2	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	2ebaf782-4881-420f-9dad-1b06dce84cc0	1	20	t	46a49224-7cca-46f4-acd7-c766d09963d4	\N
9f0697f8-b996-4b3c-ab6a-21ce5a2efe3b	\N	conditional-user-configured	6415217a-07af-457d-9def-590e3d8495b3	46a49224-7cca-46f4-acd7-c766d09963d4	0	10	f	\N	\N
03e9b7da-efec-4162-865b-34bc7ddecf5f	\N	conditional-credential	6415217a-07af-457d-9def-590e3d8495b3	46a49224-7cca-46f4-acd7-c766d09963d4	0	20	f	\N	11d45117-7a8c-440c-b2a3-563e6327fcad
3654f11c-390e-4408-9192-7a6b5d7a0356	\N	auth-otp-form	6415217a-07af-457d-9def-590e3d8495b3	46a49224-7cca-46f4-acd7-c766d09963d4	2	30	f	\N	\N
e21661d9-393d-40bd-bce4-d084dff82079	\N	webauthn-authenticator	6415217a-07af-457d-9def-590e3d8495b3	46a49224-7cca-46f4-acd7-c766d09963d4	3	40	f	\N	\N
e1d4bc97-6d09-48ee-b0ce-a382a167ad1f	\N	auth-recovery-authn-code-form	6415217a-07af-457d-9def-590e3d8495b3	46a49224-7cca-46f4-acd7-c766d09963d4	3	50	f	\N	\N
7f4153cc-22fd-41f9-a8f7-5182669b9427	\N	\N	6415217a-07af-457d-9def-590e3d8495b3	481fdddb-7d4b-487c-8deb-66a426ba0629	1	60	t	f1ff48ba-4d18-42cc-b858-f82107103d34	\N
77174a57-f71a-424a-9153-39ad46fc66ec	\N	conditional-user-configured	6415217a-07af-457d-9def-590e3d8495b3	f1ff48ba-4d18-42cc-b858-f82107103d34	0	10	f	\N	\N
f9f6f431-4c7e-4abb-bcbb-85fc20839afd	\N	idp-add-organization-member	6415217a-07af-457d-9def-590e3d8495b3	f1ff48ba-4d18-42cc-b858-f82107103d34	0	20	f	\N	\N
9c2ea634-7220-44aa-b533-e95ecb1e2ee9	\N	http-basic-authenticator	6415217a-07af-457d-9def-590e3d8495b3	4dc565de-aa6a-4f41-85f4-3bbff7823baf	0	10	f	\N	\N
c5274449-1b3c-4a38-b146-65e1276f39ee	\N	docker-http-basic-authenticator	6415217a-07af-457d-9def-590e3d8495b3	9b62f3db-0aa6-446c-887b-a8782e39f67f	0	10	f	\N	\N
\.


--
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.authentication_flow (id, alias, description, realm_id, provider_id, top_level, built_in) FROM stdin;
616e425f-e4e1-4670-a415-c26774f6d5cb	browser	Browser based authentication	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	t	t
4a6bb887-700e-414d-9c71-c0b57b8f0df9	forms	Username, password, otp and other auth forms.	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
457fbf1c-8ddf-4bf8-88aa-32a2bfdf65eb	Browser - Conditional 2FA	Flow to determine if any 2FA is required for the authentication	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
ad5e0974-6ab0-46e0-bd09-fe2b2e989cab	direct grant	OpenID Connect Resource Owner Grant	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	t	t
e6a8ad6c-35b7-4d7b-86e0-815df389bd10	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
7280ac76-c972-4d93-8cf6-6c386c57cdc1	registration	Registration flow	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	t	t
fc98b8eb-d3d1-4e3b-b48c-51290956c2f6	registration form	Registration form	28893197-b00a-4ee3-97e6-f2e6d1a55902	form-flow	f	t
741fb533-562d-4c84-bc72-607502106eb4	reset credentials	Reset credentials for a user if they forgot their password or something	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	t	t
6cbffb3b-a46f-4b14-b017-b78eebea67d2	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
02beda3e-915d-4d5f-b2e3-820304650fb9	clients	Base authentication for clients	28893197-b00a-4ee3-97e6-f2e6d1a55902	client-flow	t	t
fb11acb2-143a-4bf8-8326-22e561b73872	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	t	t
3169e0f5-c388-47ff-a784-2c7d62ff4a41	User creation or linking	Flow for the existing/non-existing user alternatives	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
5926e4f8-8457-43a7-9699-b7ccca82389c	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
80c6a975-0053-4809-b8da-08aa0ecefe73	Account verification options	Method with which to verify the existing account	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
0dd2e7ae-4d81-49ff-9d6e-a74b61c0a51b	Verify Existing Account by Re-authentication	Reauthentication of existing account	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
0d8fc3cb-3e3e-4ef1-a243-ac152353505c	First broker login - Conditional 2FA	Flow to determine if any 2FA is required for the authentication	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	f	t
2fe95a1c-7b15-42ca-a32a-cb67c1899f6a	saml ecp	SAML ECP Profile Authentication Flow	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	t	t
4136fda9-887e-4262-ac8d-5322c7200b25	docker auth	Used by Docker clients to authenticate against the IDP	28893197-b00a-4ee3-97e6-f2e6d1a55902	basic-flow	t	t
d84e232b-be58-4308-9e77-42bfa3ae73e7	browser	Browser based authentication	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	t	t
8d2cf0dd-0fc0-48ee-a9bb-ae6016f61eed	forms	Username, password, otp and other auth forms.	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
c1f9fd9c-989c-413b-9fd8-eb68ced1752a	Browser - Conditional 2FA	Flow to determine if any 2FA is required for the authentication	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
42fcbd4e-a818-4246-b981-19b64471f586	Organization	\N	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
f08148ad-eae7-408c-acf8-8f1ffdaefbc0	Browser - Conditional Organization	Flow to determine if the organization identity-first login is to be used	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
d67b9d0b-3f0e-4cda-95a6-cc3c93cb4de1	direct grant	OpenID Connect Resource Owner Grant	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	t	t
e8bf2250-07c3-4659-8171-cee86d75c98a	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
8a056892-8b97-474d-8a97-f0703859b975	registration	Registration flow	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	t	t
0da38f38-f5d4-4d19-a846-d4641efd6a5c	registration form	Registration form	6415217a-07af-457d-9def-590e3d8495b3	form-flow	f	t
2b7516fc-0c03-4f82-bb75-61f20bfb40a3	reset credentials	Reset credentials for a user if they forgot their password or something	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	t	t
a0d1ee49-5905-4d80-bbb9-9e175f111e6a	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
769b997f-d4fb-45ae-9e58-7ed875376dae	clients	Base authentication for clients	6415217a-07af-457d-9def-590e3d8495b3	client-flow	t	t
481fdddb-7d4b-487c-8deb-66a426ba0629	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	t	t
5a906a37-187a-4616-9757-f22fa6d98f62	User creation or linking	Flow for the existing/non-existing user alternatives	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
bb0ae53d-1542-4d58-81fb-1ffa92790ba4	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
43cb8032-1373-4874-8528-611bd836b357	Account verification options	Method with which to verify the existing account	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
2ebaf782-4881-420f-9dad-1b06dce84cc0	Verify Existing Account by Re-authentication	Reauthentication of existing account	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
46a49224-7cca-46f4-acd7-c766d09963d4	First broker login - Conditional 2FA	Flow to determine if any 2FA is required for the authentication	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
f1ff48ba-4d18-42cc-b858-f82107103d34	First Broker Login - Conditional Organization	Flow to determine if the authenticator that adds organization members is to be used	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	f	t
4dc565de-aa6a-4f41-85f4-3bbff7823baf	saml ecp	SAML ECP Profile Authentication Flow	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	t	t
9b62f3db-0aa6-446c-887b-a8782e39f67f	docker auth	Used by Docker clients to authenticate against the IDP	6415217a-07af-457d-9def-590e3d8495b3	basic-flow	t	t
\.


--
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.authenticator_config (id, alias, realm_id) FROM stdin;
b0124bcc-cdc6-4eec-9f5e-f4e9f4a6b648	browser-conditional-credential	28893197-b00a-4ee3-97e6-f2e6d1a55902
78b35da3-d794-4187-822c-11d8a38e78e8	review profile config	28893197-b00a-4ee3-97e6-f2e6d1a55902
ea1ce818-c1c4-48dc-a64f-744b1535c11e	create unique user config	28893197-b00a-4ee3-97e6-f2e6d1a55902
c6f3a76f-381f-4ef5-8e29-833efbbdea40	first-broker-login-conditional-credential	28893197-b00a-4ee3-97e6-f2e6d1a55902
a24004e5-a7da-4470-9d13-a3f676a2b96c	browser-conditional-credential	6415217a-07af-457d-9def-590e3d8495b3
e05adcb0-889a-4aa9-8d1d-eb4fa888d1ff	review profile config	6415217a-07af-457d-9def-590e3d8495b3
7fa4c242-3aa4-4d7c-adf0-5ec9e11d625a	create unique user config	6415217a-07af-457d-9def-590e3d8495b3
11d45117-7a8c-440c-b2a3-563e6327fcad	first-broker-login-conditional-credential	6415217a-07af-457d-9def-590e3d8495b3
\.


--
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.authenticator_config_entry (authenticator_id, value, name) FROM stdin;
78b35da3-d794-4187-822c-11d8a38e78e8	missing	update.profile.on.first.login
b0124bcc-cdc6-4eec-9f5e-f4e9f4a6b648	webauthn-passwordless	credentials
c6f3a76f-381f-4ef5-8e29-833efbbdea40	webauthn-passwordless	credentials
ea1ce818-c1c4-48dc-a64f-744b1535c11e	false	require.password.update.after.registration
11d45117-7a8c-440c-b2a3-563e6327fcad	webauthn-passwordless	credentials
7fa4c242-3aa4-4d7c-adf0-5ec9e11d625a	false	require.password.update.after.registration
a24004e5-a7da-4470-9d13-a3f676a2b96c	webauthn-passwordless	credentials
e05adcb0-889a-4aa9-8d1d-eb4fa888d1ff	missing	update.profile.on.first.login
\.


--
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.broker_link (identity_provider, storage_provider_id, realm_id, broker_user_id, broker_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client (id, enabled, full_scope_allowed, client_id, not_before, public_client, secret, base_url, bearer_only, management_url, surrogate_auth_required, realm_id, protocol, node_rereg_timeout, frontchannel_logout, consent_required, name, service_accounts_enabled, client_authenticator_type, root_url, description, registration_token, standard_flow_enabled, implicit_flow_enabled, direct_access_grants_enabled, always_display_in_console, created_timestamp, last_modified_timestamp) FROM stdin;
a1b270bd-4d49-4150-acdc-307fd9db64d4	t	f	master-realm	0	f	\N	\N	t	\N	f	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N	0	f	f	master Realm	f	client-secret	\N	\N	\N	t	f	f	f	1790083307732	1790083307734
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	f	account	0	t	\N	/realms/master/account/	f	\N	f	28893197-b00a-4ee3-97e6-f2e6d1a55902	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f	1790083307795	1790083307807
31e4ea08-b5f9-4796-af44-bf3c67611ff7	t	f	account-console	0	t	\N	/realms/master/account/	f	\N	f	28893197-b00a-4ee3-97e6-f2e6d1a55902	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f	1790083307828	1790083307837
816db887-b612-40f3-bd7d-ebba56eee5aa	t	f	broker	0	f	\N	\N	t	\N	f	28893197-b00a-4ee3-97e6-f2e6d1a55902	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f	1790083307845	1790083307852
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	t	t	security-admin-console	0	t	\N	/admin/master/console/	f	\N	f	28893197-b00a-4ee3-97e6-f2e6d1a55902	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f	1790083307857	1790083307865
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	t	t	admin-cli	0	t	\N	\N	f	\N	f	28893197-b00a-4ee3-97e6-f2e6d1a55902	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f	1790083307873	1790083307881
591706b4-25ee-4b00-8b43-2ddcbda19c73	t	f	activities-realm	0	f	\N	\N	t	\N	f	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N	0	f	f	activities Realm	f	client-secret	\N	\N	\N	t	f	f	f	1790083400960	1790083400960
858c5aad-975b-44f9-98e1-3f537c7caa99	t	f	realm-management	0	f	\N	\N	t	\N	f	6415217a-07af-457d-9def-590e3d8495b3	openid-connect	0	f	f	${client_realm-management}	f	client-secret	\N	\N	\N	t	f	f	f	1790083400989	1790083400992
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	f	account	0	t	\N	/realms/activities/account/	f	\N	f	6415217a-07af-457d-9def-590e3d8495b3	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f	1790083401021	1790083401025
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	t	f	account-console	0	t	\N	/realms/activities/account/	f	\N	f	6415217a-07af-457d-9def-590e3d8495b3	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f	1790083401035	1790083401039
a4259d89-2259-4c4d-b942-a035ffdfce45	t	f	broker	0	f	\N	\N	t	\N	f	6415217a-07af-457d-9def-590e3d8495b3	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f	1790083401050	1790083401053
2a6ed552-2544-4760-af30-121d32e54277	t	t	security-admin-console	0	t	\N	/admin/activities/console/	f	\N	f	6415217a-07af-457d-9def-590e3d8495b3	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f	1790083401054	1790083401058
a58278c3-63f7-4a40-8299-20992f9f677f	t	t	admin-cli	0	t	\N	\N	f	\N	f	6415217a-07af-457d-9def-590e3d8495b3	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f	1790083401060	1790083401064
1c969aed-9377-4054-8d11-632fec9a059d	t	t	webapp	0	t	\N		f		f	6415217a-07af-457d-9def-590e3d8495b3	openid-connect	-1	t	f		f	client-secret			\N	t	f	f	f	1790083578488	1790083578493
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	t	t	app	0	f	dWLTLqmH8qcL5vBURMxIkBPWvb3sRBoFWLMCCLvijry43xo1rpWo3PA9qMSJyQQUrL2G4SD85LFBn3UBsiCwfo		f		f	6415217a-07af-457d-9def-590e3d8495b3	openid-connect	-1	t	f		f	client-secret			\N	t	f	t	f	1790083457892	1790083483787
\.


--
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client_attributes (client_id, name, value) FROM stdin;
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	post.logout.redirect.uris	+
31e4ea08-b5f9-4796-af44-bf3c67611ff7	post.logout.redirect.uris	+
31e4ea08-b5f9-4796-af44-bf3c67611ff7	pkce.code.challenge.method	S256
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	post.logout.redirect.uris	+
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	pkce.code.challenge.method	S256
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	client.use.lightweight.access.token.enabled	true
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	client.use.lightweight.access.token.enabled	true
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	post.logout.redirect.uris	+
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	post.logout.redirect.uris	+
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	pkce.code.challenge.method	S256
2a6ed552-2544-4760-af30-121d32e54277	post.logout.redirect.uris	+
2a6ed552-2544-4760-af30-121d32e54277	pkce.code.challenge.method	S256
2a6ed552-2544-4760-af30-121d32e54277	client.use.lightweight.access.token.enabled	true
a58278c3-63f7-4a40-8299-20992f9f677f	client.use.lightweight.access.token.enabled	true
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	client.secret.creation.time	1790083457
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	standard.token.exchange.enabled	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	oauth2.jwt.authorization.grant.enabled	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	oauth2.device.authorization.grant.enabled	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	oidc.ciba.grant.enabled	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	dpop.bound.access.tokens	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	backchannel.logout.session.required	true
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	backchannel.logout.revoke.offline.tokens	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	realm_client	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	display.on.consent.screen	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	frontchannel.logout.session.required	true
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	logout.confirmation.enabled	false
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	use.jwks.url	false
1c969aed-9377-4054-8d11-632fec9a059d	standard.token.exchange.enabled	false
1c969aed-9377-4054-8d11-632fec9a059d	oauth2.jwt.authorization.grant.enabled	false
1c969aed-9377-4054-8d11-632fec9a059d	oauth2.device.authorization.grant.enabled	false
1c969aed-9377-4054-8d11-632fec9a059d	oidc.ciba.grant.enabled	false
1c969aed-9377-4054-8d11-632fec9a059d	dpop.bound.access.tokens	false
1c969aed-9377-4054-8d11-632fec9a059d	backchannel.logout.session.required	true
1c969aed-9377-4054-8d11-632fec9a059d	backchannel.logout.revoke.offline.tokens	false
1c969aed-9377-4054-8d11-632fec9a059d	realm_client	false
1c969aed-9377-4054-8d11-632fec9a059d	display.on.consent.screen	false
1c969aed-9377-4054-8d11-632fec9a059d	frontchannel.logout.session.required	true
1c969aed-9377-4054-8d11-632fec9a059d	logout.confirmation.enabled	false
\.


--
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client_auth_flow_bindings (client_id, flow_id, binding_name) FROM stdin;
\.


--
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client_initial_access (id, realm_id, "timestamp", expiration, count, remaining_count) FROM stdin;
\.


--
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client_node_registrations (client_id, value, name) FROM stdin;
\.


--
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client_scope (id, name, realm_id, description, protocol) FROM stdin;
9ed3439a-efd4-40aa-9098-e15118fbc029	offline_access	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect built-in scope: offline_access	openid-connect
cf97c84b-fe11-4188-b17f-862bd522d8ae	role_list	28893197-b00a-4ee3-97e6-f2e6d1a55902	SAML role list	saml
437b2f16-0428-4c20-bbc4-91725fa84419	saml_organization	28893197-b00a-4ee3-97e6-f2e6d1a55902	Organization Membership	saml
a7928fad-f421-4d9e-832a-bc3d6155c063	AuthnContextClassRef	28893197-b00a-4ee3-97e6-f2e6d1a55902	AuthnContextClassRef Level of Authentiation	saml
250e211e-5b2f-41fe-a8c1-876269bd234c	profile	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect built-in scope: profile	openid-connect
3fcec8af-2f38-4386-b121-37289642a50f	email	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect built-in scope: email	openid-connect
9303a12e-0c32-459b-9e1b-a431466764b0	address	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect built-in scope: address	openid-connect
940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	phone	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect built-in scope: phone	openid-connect
76007904-3ef4-4270-8287-5ab2655f8112	roles	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect scope for add user roles to the access token	openid-connect
9adeb955-9442-4725-9c5a-6109debb1e7a	web-origins	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect scope for add allowed web origins to the access token	openid-connect
9d138ed9-75bb-4f2b-9db2-37e95cd9345c	microprofile-jwt	28893197-b00a-4ee3-97e6-f2e6d1a55902	Microprofile - JWT built-in scope	openid-connect
3f02d134-edc1-44b1-a3bf-1659c2db9a91	acr	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	basic	28893197-b00a-4ee3-97e6-f2e6d1a55902	OpenID Connect scope for add all basic claims to the token	openid-connect
c80ac0b3-6580-4f75-b6af-f31ed792520a	service_account	28893197-b00a-4ee3-97e6-f2e6d1a55902	Specific scope for a client enabled for service accounts	openid-connect
1db57098-840b-4343-a174-eaf45ac2623a	organization	28893197-b00a-4ee3-97e6-f2e6d1a55902	Additional claims about the organization a subject belongs to	openid-connect
4c3d6205-0e8f-49d5-bfbb-22fd15a46629	offline_access	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect built-in scope: offline_access	openid-connect
8e5f0d45-a9c2-4371-b98a-a420cc217a73	role_list	6415217a-07af-457d-9def-590e3d8495b3	SAML role list	saml
49e8895f-68ea-4f99-913e-4f9036016275	saml_organization	6415217a-07af-457d-9def-590e3d8495b3	Organization Membership	saml
263a41f8-f9c2-425b-a71b-918b54dafad4	AuthnContextClassRef	6415217a-07af-457d-9def-590e3d8495b3	AuthnContextClassRef Level of Authentiation	saml
6e6d99af-f520-405c-86f1-39471b7d3436	profile	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect built-in scope: profile	openid-connect
6aad159e-e90d-4d68-919e-fecefece9b18	email	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect built-in scope: email	openid-connect
2a5c9d93-ecb2-4f64-86c3-19be578057e8	address	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect built-in scope: address	openid-connect
53a08e25-fdee-40c7-bbec-648af0b51ff7	phone	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect built-in scope: phone	openid-connect
762bb7c4-3ff9-4670-ab7d-9576b26499ea	roles	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect scope for add user roles to the access token	openid-connect
8b383722-b769-44c6-bbcc-298528f27d6d	web-origins	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect scope for add allowed web origins to the access token	openid-connect
d8c952af-25ed-4430-a59a-01f05813e16a	microprofile-jwt	6415217a-07af-457d-9def-590e3d8495b3	Microprofile - JWT built-in scope	openid-connect
6b14acd6-3a26-427d-803d-e7032b4f8b01	acr	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
82534042-2578-4006-a6b2-fe9a16547be9	basic	6415217a-07af-457d-9def-590e3d8495b3	OpenID Connect scope for add all basic claims to the token	openid-connect
beac0f54-8c32-4bdf-b754-582f635fdfa8	service_account	6415217a-07af-457d-9def-590e3d8495b3	Specific scope for a client enabled for service accounts	openid-connect
37482232-45fd-46df-bb95-f28015591efd	organization	6415217a-07af-457d-9def-590e3d8495b3	Additional claims about the organization a subject belongs to	openid-connect
\.


--
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client_scope_attributes (scope_id, value, name) FROM stdin;
9ed3439a-efd4-40aa-9098-e15118fbc029	true	display.on.consent.screen
9ed3439a-efd4-40aa-9098-e15118fbc029	${offlineAccessScopeConsentText}	consent.screen.text
cf97c84b-fe11-4188-b17f-862bd522d8ae	true	display.on.consent.screen
cf97c84b-fe11-4188-b17f-862bd522d8ae	${samlRoleListScopeConsentText}	consent.screen.text
437b2f16-0428-4c20-bbc4-91725fa84419	false	display.on.consent.screen
250e211e-5b2f-41fe-a8c1-876269bd234c	true	display.on.consent.screen
250e211e-5b2f-41fe-a8c1-876269bd234c	${profileScopeConsentText}	consent.screen.text
250e211e-5b2f-41fe-a8c1-876269bd234c	true	include.in.token.scope
3fcec8af-2f38-4386-b121-37289642a50f	true	display.on.consent.screen
3fcec8af-2f38-4386-b121-37289642a50f	${emailScopeConsentText}	consent.screen.text
3fcec8af-2f38-4386-b121-37289642a50f	true	include.in.token.scope
9303a12e-0c32-459b-9e1b-a431466764b0	true	display.on.consent.screen
9303a12e-0c32-459b-9e1b-a431466764b0	${addressScopeConsentText}	consent.screen.text
9303a12e-0c32-459b-9e1b-a431466764b0	true	include.in.token.scope
940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	true	display.on.consent.screen
940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	${phoneScopeConsentText}	consent.screen.text
940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	true	include.in.token.scope
76007904-3ef4-4270-8287-5ab2655f8112	true	display.on.consent.screen
76007904-3ef4-4270-8287-5ab2655f8112	${rolesScopeConsentText}	consent.screen.text
76007904-3ef4-4270-8287-5ab2655f8112	false	include.in.token.scope
9adeb955-9442-4725-9c5a-6109debb1e7a	false	display.on.consent.screen
9adeb955-9442-4725-9c5a-6109debb1e7a		consent.screen.text
9adeb955-9442-4725-9c5a-6109debb1e7a	false	include.in.token.scope
9d138ed9-75bb-4f2b-9db2-37e95cd9345c	false	display.on.consent.screen
9d138ed9-75bb-4f2b-9db2-37e95cd9345c	true	include.in.token.scope
3f02d134-edc1-44b1-a3bf-1659c2db9a91	false	display.on.consent.screen
3f02d134-edc1-44b1-a3bf-1659c2db9a91	false	include.in.token.scope
1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	false	display.on.consent.screen
1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	false	include.in.token.scope
c80ac0b3-6580-4f75-b6af-f31ed792520a	false	display.on.consent.screen
c80ac0b3-6580-4f75-b6af-f31ed792520a	false	include.in.token.scope
1db57098-840b-4343-a174-eaf45ac2623a	true	display.on.consent.screen
1db57098-840b-4343-a174-eaf45ac2623a	${organizationScopeConsentText}	consent.screen.text
1db57098-840b-4343-a174-eaf45ac2623a	true	include.in.token.scope
4c3d6205-0e8f-49d5-bfbb-22fd15a46629	true	display.on.consent.screen
4c3d6205-0e8f-49d5-bfbb-22fd15a46629	${offlineAccessScopeConsentText}	consent.screen.text
8e5f0d45-a9c2-4371-b98a-a420cc217a73	true	display.on.consent.screen
8e5f0d45-a9c2-4371-b98a-a420cc217a73	${samlRoleListScopeConsentText}	consent.screen.text
49e8895f-68ea-4f99-913e-4f9036016275	false	display.on.consent.screen
6e6d99af-f520-405c-86f1-39471b7d3436	true	display.on.consent.screen
6e6d99af-f520-405c-86f1-39471b7d3436	${profileScopeConsentText}	consent.screen.text
6e6d99af-f520-405c-86f1-39471b7d3436	true	include.in.token.scope
6aad159e-e90d-4d68-919e-fecefece9b18	true	display.on.consent.screen
6aad159e-e90d-4d68-919e-fecefece9b18	${emailScopeConsentText}	consent.screen.text
6aad159e-e90d-4d68-919e-fecefece9b18	true	include.in.token.scope
2a5c9d93-ecb2-4f64-86c3-19be578057e8	true	display.on.consent.screen
2a5c9d93-ecb2-4f64-86c3-19be578057e8	${addressScopeConsentText}	consent.screen.text
2a5c9d93-ecb2-4f64-86c3-19be578057e8	true	include.in.token.scope
53a08e25-fdee-40c7-bbec-648af0b51ff7	true	display.on.consent.screen
53a08e25-fdee-40c7-bbec-648af0b51ff7	${phoneScopeConsentText}	consent.screen.text
53a08e25-fdee-40c7-bbec-648af0b51ff7	true	include.in.token.scope
762bb7c4-3ff9-4670-ab7d-9576b26499ea	true	display.on.consent.screen
762bb7c4-3ff9-4670-ab7d-9576b26499ea	${rolesScopeConsentText}	consent.screen.text
762bb7c4-3ff9-4670-ab7d-9576b26499ea	false	include.in.token.scope
8b383722-b769-44c6-bbcc-298528f27d6d	false	display.on.consent.screen
8b383722-b769-44c6-bbcc-298528f27d6d		consent.screen.text
8b383722-b769-44c6-bbcc-298528f27d6d	false	include.in.token.scope
d8c952af-25ed-4430-a59a-01f05813e16a	false	display.on.consent.screen
d8c952af-25ed-4430-a59a-01f05813e16a	true	include.in.token.scope
6b14acd6-3a26-427d-803d-e7032b4f8b01	false	display.on.consent.screen
6b14acd6-3a26-427d-803d-e7032b4f8b01	false	include.in.token.scope
82534042-2578-4006-a6b2-fe9a16547be9	false	display.on.consent.screen
82534042-2578-4006-a6b2-fe9a16547be9	false	include.in.token.scope
beac0f54-8c32-4bdf-b754-582f635fdfa8	false	display.on.consent.screen
beac0f54-8c32-4bdf-b754-582f635fdfa8	false	include.in.token.scope
37482232-45fd-46df-bb95-f28015591efd	true	display.on.consent.screen
37482232-45fd-46df-bb95-f28015591efd	${organizationScopeConsentText}	consent.screen.text
37482232-45fd-46df-bb95-f28015591efd	true	include.in.token.scope
\.


--
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client_scope_client (client_id, scope_id, default_scope) FROM stdin;
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	3fcec8af-2f38-4386-b121-37289642a50f	t
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	3f02d134-edc1-44b1-a3bf-1659c2db9a91	t
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	250e211e-5b2f-41fe-a8c1-876269bd234c	t
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	t
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	76007904-3ef4-4270-8287-5ab2655f8112	t
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	9adeb955-9442-4725-9c5a-6109debb1e7a	t
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	9d138ed9-75bb-4f2b-9db2-37e95cd9345c	f
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	f
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	9303a12e-0c32-459b-9e1b-a431466764b0	f
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	1db57098-840b-4343-a174-eaf45ac2623a	f
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	9ed3439a-efd4-40aa-9098-e15118fbc029	f
31e4ea08-b5f9-4796-af44-bf3c67611ff7	3fcec8af-2f38-4386-b121-37289642a50f	t
31e4ea08-b5f9-4796-af44-bf3c67611ff7	3f02d134-edc1-44b1-a3bf-1659c2db9a91	t
31e4ea08-b5f9-4796-af44-bf3c67611ff7	250e211e-5b2f-41fe-a8c1-876269bd234c	t
31e4ea08-b5f9-4796-af44-bf3c67611ff7	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	t
31e4ea08-b5f9-4796-af44-bf3c67611ff7	76007904-3ef4-4270-8287-5ab2655f8112	t
31e4ea08-b5f9-4796-af44-bf3c67611ff7	9adeb955-9442-4725-9c5a-6109debb1e7a	t
31e4ea08-b5f9-4796-af44-bf3c67611ff7	9d138ed9-75bb-4f2b-9db2-37e95cd9345c	f
31e4ea08-b5f9-4796-af44-bf3c67611ff7	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	f
31e4ea08-b5f9-4796-af44-bf3c67611ff7	9303a12e-0c32-459b-9e1b-a431466764b0	f
31e4ea08-b5f9-4796-af44-bf3c67611ff7	1db57098-840b-4343-a174-eaf45ac2623a	f
31e4ea08-b5f9-4796-af44-bf3c67611ff7	9ed3439a-efd4-40aa-9098-e15118fbc029	f
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	3fcec8af-2f38-4386-b121-37289642a50f	t
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	3f02d134-edc1-44b1-a3bf-1659c2db9a91	t
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	250e211e-5b2f-41fe-a8c1-876269bd234c	t
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	t
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	76007904-3ef4-4270-8287-5ab2655f8112	t
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	9adeb955-9442-4725-9c5a-6109debb1e7a	t
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	9d138ed9-75bb-4f2b-9db2-37e95cd9345c	f
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	f
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	9303a12e-0c32-459b-9e1b-a431466764b0	f
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	1db57098-840b-4343-a174-eaf45ac2623a	f
7dcbc70b-605e-4634-adcb-a41f0cfa7cbb	9ed3439a-efd4-40aa-9098-e15118fbc029	f
816db887-b612-40f3-bd7d-ebba56eee5aa	3fcec8af-2f38-4386-b121-37289642a50f	t
816db887-b612-40f3-bd7d-ebba56eee5aa	3f02d134-edc1-44b1-a3bf-1659c2db9a91	t
816db887-b612-40f3-bd7d-ebba56eee5aa	250e211e-5b2f-41fe-a8c1-876269bd234c	t
816db887-b612-40f3-bd7d-ebba56eee5aa	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	t
816db887-b612-40f3-bd7d-ebba56eee5aa	76007904-3ef4-4270-8287-5ab2655f8112	t
816db887-b612-40f3-bd7d-ebba56eee5aa	9adeb955-9442-4725-9c5a-6109debb1e7a	t
816db887-b612-40f3-bd7d-ebba56eee5aa	9d138ed9-75bb-4f2b-9db2-37e95cd9345c	f
816db887-b612-40f3-bd7d-ebba56eee5aa	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	f
816db887-b612-40f3-bd7d-ebba56eee5aa	9303a12e-0c32-459b-9e1b-a431466764b0	f
816db887-b612-40f3-bd7d-ebba56eee5aa	1db57098-840b-4343-a174-eaf45ac2623a	f
816db887-b612-40f3-bd7d-ebba56eee5aa	9ed3439a-efd4-40aa-9098-e15118fbc029	f
a1b270bd-4d49-4150-acdc-307fd9db64d4	3fcec8af-2f38-4386-b121-37289642a50f	t
a1b270bd-4d49-4150-acdc-307fd9db64d4	3f02d134-edc1-44b1-a3bf-1659c2db9a91	t
a1b270bd-4d49-4150-acdc-307fd9db64d4	250e211e-5b2f-41fe-a8c1-876269bd234c	t
a1b270bd-4d49-4150-acdc-307fd9db64d4	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	t
a1b270bd-4d49-4150-acdc-307fd9db64d4	76007904-3ef4-4270-8287-5ab2655f8112	t
a1b270bd-4d49-4150-acdc-307fd9db64d4	9adeb955-9442-4725-9c5a-6109debb1e7a	t
a1b270bd-4d49-4150-acdc-307fd9db64d4	9d138ed9-75bb-4f2b-9db2-37e95cd9345c	f
a1b270bd-4d49-4150-acdc-307fd9db64d4	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	f
a1b270bd-4d49-4150-acdc-307fd9db64d4	9303a12e-0c32-459b-9e1b-a431466764b0	f
a1b270bd-4d49-4150-acdc-307fd9db64d4	1db57098-840b-4343-a174-eaf45ac2623a	f
a1b270bd-4d49-4150-acdc-307fd9db64d4	9ed3439a-efd4-40aa-9098-e15118fbc029	f
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	3fcec8af-2f38-4386-b121-37289642a50f	t
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	3f02d134-edc1-44b1-a3bf-1659c2db9a91	t
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	250e211e-5b2f-41fe-a8c1-876269bd234c	t
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	t
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	76007904-3ef4-4270-8287-5ab2655f8112	t
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	9adeb955-9442-4725-9c5a-6109debb1e7a	t
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	9d138ed9-75bb-4f2b-9db2-37e95cd9345c	f
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	f
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	9303a12e-0c32-459b-9e1b-a431466764b0	f
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	1db57098-840b-4343-a174-eaf45ac2623a	f
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	9ed3439a-efd4-40aa-9098-e15118fbc029	f
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	82534042-2578-4006-a6b2-fe9a16547be9	t
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	6aad159e-e90d-4d68-919e-fecefece9b18	t
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	6e6d99af-f520-405c-86f1-39471b7d3436	t
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	8b383722-b769-44c6-bbcc-298528f27d6d	t
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	d8c952af-25ed-4430-a59a-01f05813e16a	f
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	37482232-45fd-46df-bb95-f28015591efd	f
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	82534042-2578-4006-a6b2-fe9a16547be9	t
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	6aad159e-e90d-4d68-919e-fecefece9b18	t
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	6e6d99af-f520-405c-86f1-39471b7d3436	t
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	8b383722-b769-44c6-bbcc-298528f27d6d	t
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	d8c952af-25ed-4430-a59a-01f05813e16a	f
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	37482232-45fd-46df-bb95-f28015591efd	f
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
a58278c3-63f7-4a40-8299-20992f9f677f	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
a58278c3-63f7-4a40-8299-20992f9f677f	82534042-2578-4006-a6b2-fe9a16547be9	t
a58278c3-63f7-4a40-8299-20992f9f677f	6aad159e-e90d-4d68-919e-fecefece9b18	t
a58278c3-63f7-4a40-8299-20992f9f677f	6e6d99af-f520-405c-86f1-39471b7d3436	t
a58278c3-63f7-4a40-8299-20992f9f677f	8b383722-b769-44c6-bbcc-298528f27d6d	t
a58278c3-63f7-4a40-8299-20992f9f677f	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
a58278c3-63f7-4a40-8299-20992f9f677f	d8c952af-25ed-4430-a59a-01f05813e16a	f
a58278c3-63f7-4a40-8299-20992f9f677f	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
a58278c3-63f7-4a40-8299-20992f9f677f	37482232-45fd-46df-bb95-f28015591efd	f
a58278c3-63f7-4a40-8299-20992f9f677f	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
a58278c3-63f7-4a40-8299-20992f9f677f	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
a4259d89-2259-4c4d-b942-a035ffdfce45	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
a4259d89-2259-4c4d-b942-a035ffdfce45	82534042-2578-4006-a6b2-fe9a16547be9	t
a4259d89-2259-4c4d-b942-a035ffdfce45	6aad159e-e90d-4d68-919e-fecefece9b18	t
a4259d89-2259-4c4d-b942-a035ffdfce45	6e6d99af-f520-405c-86f1-39471b7d3436	t
a4259d89-2259-4c4d-b942-a035ffdfce45	8b383722-b769-44c6-bbcc-298528f27d6d	t
a4259d89-2259-4c4d-b942-a035ffdfce45	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
a4259d89-2259-4c4d-b942-a035ffdfce45	d8c952af-25ed-4430-a59a-01f05813e16a	f
a4259d89-2259-4c4d-b942-a035ffdfce45	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
a4259d89-2259-4c4d-b942-a035ffdfce45	37482232-45fd-46df-bb95-f28015591efd	f
a4259d89-2259-4c4d-b942-a035ffdfce45	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
a4259d89-2259-4c4d-b942-a035ffdfce45	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
858c5aad-975b-44f9-98e1-3f537c7caa99	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
858c5aad-975b-44f9-98e1-3f537c7caa99	82534042-2578-4006-a6b2-fe9a16547be9	t
858c5aad-975b-44f9-98e1-3f537c7caa99	6aad159e-e90d-4d68-919e-fecefece9b18	t
858c5aad-975b-44f9-98e1-3f537c7caa99	6e6d99af-f520-405c-86f1-39471b7d3436	t
858c5aad-975b-44f9-98e1-3f537c7caa99	8b383722-b769-44c6-bbcc-298528f27d6d	t
858c5aad-975b-44f9-98e1-3f537c7caa99	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
858c5aad-975b-44f9-98e1-3f537c7caa99	d8c952af-25ed-4430-a59a-01f05813e16a	f
858c5aad-975b-44f9-98e1-3f537c7caa99	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
858c5aad-975b-44f9-98e1-3f537c7caa99	37482232-45fd-46df-bb95-f28015591efd	f
858c5aad-975b-44f9-98e1-3f537c7caa99	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
858c5aad-975b-44f9-98e1-3f537c7caa99	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
2a6ed552-2544-4760-af30-121d32e54277	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
2a6ed552-2544-4760-af30-121d32e54277	82534042-2578-4006-a6b2-fe9a16547be9	t
2a6ed552-2544-4760-af30-121d32e54277	6aad159e-e90d-4d68-919e-fecefece9b18	t
2a6ed552-2544-4760-af30-121d32e54277	6e6d99af-f520-405c-86f1-39471b7d3436	t
2a6ed552-2544-4760-af30-121d32e54277	8b383722-b769-44c6-bbcc-298528f27d6d	t
2a6ed552-2544-4760-af30-121d32e54277	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
2a6ed552-2544-4760-af30-121d32e54277	d8c952af-25ed-4430-a59a-01f05813e16a	f
2a6ed552-2544-4760-af30-121d32e54277	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
2a6ed552-2544-4760-af30-121d32e54277	37482232-45fd-46df-bb95-f28015591efd	f
2a6ed552-2544-4760-af30-121d32e54277	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
2a6ed552-2544-4760-af30-121d32e54277	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	82534042-2578-4006-a6b2-fe9a16547be9	t
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	6aad159e-e90d-4d68-919e-fecefece9b18	t
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	6e6d99af-f520-405c-86f1-39471b7d3436	t
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	8b383722-b769-44c6-bbcc-298528f27d6d	t
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	d8c952af-25ed-4430-a59a-01f05813e16a	f
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	37482232-45fd-46df-bb95-f28015591efd	f
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
1c969aed-9377-4054-8d11-632fec9a059d	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
1c969aed-9377-4054-8d11-632fec9a059d	82534042-2578-4006-a6b2-fe9a16547be9	t
1c969aed-9377-4054-8d11-632fec9a059d	6aad159e-e90d-4d68-919e-fecefece9b18	t
1c969aed-9377-4054-8d11-632fec9a059d	6e6d99af-f520-405c-86f1-39471b7d3436	t
1c969aed-9377-4054-8d11-632fec9a059d	8b383722-b769-44c6-bbcc-298528f27d6d	t
1c969aed-9377-4054-8d11-632fec9a059d	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
1c969aed-9377-4054-8d11-632fec9a059d	d8c952af-25ed-4430-a59a-01f05813e16a	f
1c969aed-9377-4054-8d11-632fec9a059d	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
1c969aed-9377-4054-8d11-632fec9a059d	37482232-45fd-46df-bb95-f28015591efd	f
1c969aed-9377-4054-8d11-632fec9a059d	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
1c969aed-9377-4054-8d11-632fec9a059d	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
\.


--
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.client_scope_role_mapping (scope_id, role_id) FROM stdin;
9ed3439a-efd4-40aa-9098-e15118fbc029	1b70dae5-618b-41b0-8f31-8793dadd40e5
4c3d6205-0e8f-49d5-bfbb-22fd15a46629	25a9418a-92a6-4d73-b641-256fc0fd2eac
\.


--
-- Data for Name: cluster_event; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.cluster_event (id, target_cluster, sender_cluster, event_data, created_at) FROM stdin;
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.component (id, name, parent_id, provider_id, provider_type, realm_id, sub_type) FROM stdin;
7b4f0e57-f5e6-43c3-ad95-5dbe13bcde4b	Trusted Hosts	28893197-b00a-4ee3-97e6-f2e6d1a55902	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	anonymous
b72ec744-7b4e-40c5-b770-51acbea2ede2	Consent Required	28893197-b00a-4ee3-97e6-f2e6d1a55902	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	anonymous
c89c825e-d306-47f9-b9f6-4d96b8f14b1a	Full Scope Disabled	28893197-b00a-4ee3-97e6-f2e6d1a55902	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	anonymous
037984e3-0628-496e-b2d1-5dc6824c1561	Max Clients Limit	28893197-b00a-4ee3-97e6-f2e6d1a55902	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	anonymous
57b19e44-d12b-43ba-899d-ac5ca600018a	Allowed Protocol Mapper Types	28893197-b00a-4ee3-97e6-f2e6d1a55902	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	anonymous
d9e6bef1-be3a-4e60-a2ff-1fa2bb26bf10	Allowed Client Scopes	28893197-b00a-4ee3-97e6-f2e6d1a55902	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	anonymous
782e73f5-6e1b-40e8-b023-03ccb8f55105	Allowed Registration Web Origins	28893197-b00a-4ee3-97e6-f2e6d1a55902	registration-web-origins	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	anonymous
4439b290-1206-4986-819f-7855041fa6e4	Allowed Protocol Mapper Types	28893197-b00a-4ee3-97e6-f2e6d1a55902	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	authenticated
9b776db6-c530-4dea-ab24-956354087228	Allowed Client Scopes	28893197-b00a-4ee3-97e6-f2e6d1a55902	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	authenticated
c5ecd686-7073-4bd4-8241-33a294f3ecc9	Allowed Registration Web Origins	28893197-b00a-4ee3-97e6-f2e6d1a55902	registration-web-origins	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	authenticated
b2d5dfd8-858a-4408-8cc4-cef05fd927e7	rsa-generated	28893197-b00a-4ee3-97e6-f2e6d1a55902	rsa-generated	org.keycloak.keys.KeyProvider	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N
e13c5a45-ca93-4618-a4fe-d59cc10b3c01	rsa-enc-generated	28893197-b00a-4ee3-97e6-f2e6d1a55902	rsa-enc-generated	org.keycloak.keys.KeyProvider	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N
7399d5b1-b381-4892-9b5e-4c99fcc7bd57	hmac-generated-hs512	28893197-b00a-4ee3-97e6-f2e6d1a55902	hmac-generated	org.keycloak.keys.KeyProvider	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N
9fcb1f61-8669-4d8d-8f60-fd40090a77a4	aes-generated	28893197-b00a-4ee3-97e6-f2e6d1a55902	aes-generated	org.keycloak.keys.KeyProvider	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N
1d356cef-e374-4956-93a3-fcb94d9bfae7	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	declarative-user-profile	org.keycloak.userprofile.UserProfileProvider	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N
00e9a3a8-94a1-4ede-97fc-ffa63c0eb6f3	rsa-generated	6415217a-07af-457d-9def-590e3d8495b3	rsa-generated	org.keycloak.keys.KeyProvider	6415217a-07af-457d-9def-590e3d8495b3	\N
3f1fc1ad-bfe1-435a-a2eb-f534c8f4d198	rsa-enc-generated	6415217a-07af-457d-9def-590e3d8495b3	rsa-enc-generated	org.keycloak.keys.KeyProvider	6415217a-07af-457d-9def-590e3d8495b3	\N
52fe954b-a164-4cbd-94cc-1e1c96382d46	hmac-generated-hs512	6415217a-07af-457d-9def-590e3d8495b3	hmac-generated	org.keycloak.keys.KeyProvider	6415217a-07af-457d-9def-590e3d8495b3	\N
43fb1668-96fe-4613-bca6-dc5e2a26eba3	aes-generated	6415217a-07af-457d-9def-590e3d8495b3	aes-generated	org.keycloak.keys.KeyProvider	6415217a-07af-457d-9def-590e3d8495b3	\N
bea47e3d-dda5-4dba-9cc4-37cc21e57e8b	Trusted Hosts	6415217a-07af-457d-9def-590e3d8495b3	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	anonymous
9f4c16a3-2d4a-407f-a125-2ceb829c13de	Consent Required	6415217a-07af-457d-9def-590e3d8495b3	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	anonymous
3fa509f4-05f6-451f-ba08-6242c517aff1	Full Scope Disabled	6415217a-07af-457d-9def-590e3d8495b3	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	anonymous
22646213-a8f3-4a84-84fe-c440a4cbf978	Max Clients Limit	6415217a-07af-457d-9def-590e3d8495b3	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	anonymous
39ab0b4f-bf72-45c0-b445-0ce881f3583b	Allowed Protocol Mapper Types	6415217a-07af-457d-9def-590e3d8495b3	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	anonymous
c5d813b9-abad-4618-9f0b-5bb67f12d55d	Allowed Client Scopes	6415217a-07af-457d-9def-590e3d8495b3	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	anonymous
358fda68-6abe-4157-a2d9-47e49a519bc5	Allowed Registration Web Origins	6415217a-07af-457d-9def-590e3d8495b3	registration-web-origins	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	anonymous
84367053-1740-4bc8-884c-f385b0ffc6f9	Allowed Protocol Mapper Types	6415217a-07af-457d-9def-590e3d8495b3	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	authenticated
a32512eb-5a25-4aa3-b74f-c1d60ef97411	Allowed Client Scopes	6415217a-07af-457d-9def-590e3d8495b3	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	authenticated
ac656ab9-0f7b-452e-93d3-56d2e39cf195	Allowed Registration Web Origins	6415217a-07af-457d-9def-590e3d8495b3	registration-web-origins	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	6415217a-07af-457d-9def-590e3d8495b3	authenticated
\.


--
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.component_config (id, component_id, name, value) FROM stdin;
95bd9ab2-663d-46cb-a334-e688a566f126	7b4f0e57-f5e6-43c3-ad95-5dbe13bcde4b	host-sending-registration-request-must-match	true
d9df22ad-c424-43aa-b341-1c91cd779479	7b4f0e57-f5e6-43c3-ad95-5dbe13bcde4b	client-uris-must-match	true
350b8877-e66d-45fa-8eca-92d6da8742c8	57b19e44-d12b-43ba-899d-ac5ca600018a	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
78b16034-1bee-422d-afb4-233a61870502	57b19e44-d12b-43ba-899d-ac5ca600018a	allowed-protocol-mapper-types	oidc-address-mapper
d64c1f0e-41b3-4465-9666-eff340870a59	57b19e44-d12b-43ba-899d-ac5ca600018a	allowed-protocol-mapper-types	saml-user-property-mapper
6d8c176f-d43b-4a6a-af36-fc570f87b722	57b19e44-d12b-43ba-899d-ac5ca600018a	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
0de9fa07-e297-4eaa-ac6b-2674b5a9e24a	57b19e44-d12b-43ba-899d-ac5ca600018a	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
8415ddc8-17c7-44d3-9b36-9afc6d840c6f	57b19e44-d12b-43ba-899d-ac5ca600018a	allowed-protocol-mapper-types	saml-user-attribute-mapper
b96b3223-ecbe-4bf3-80cd-65da8a2054fe	57b19e44-d12b-43ba-899d-ac5ca600018a	allowed-protocol-mapper-types	oidc-full-name-mapper
c5685632-8870-4de6-9ca1-87d2499eb7e8	57b19e44-d12b-43ba-899d-ac5ca600018a	allowed-protocol-mapper-types	saml-role-list-mapper
24a64c10-3172-4e08-8f74-8d424259fa98	4439b290-1206-4986-819f-7855041fa6e4	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
e20b9198-2024-44f2-8d44-574295ab23ad	4439b290-1206-4986-819f-7855041fa6e4	allowed-protocol-mapper-types	saml-role-list-mapper
2751c57e-31ce-489f-ba74-dd80d2b9c8c6	4439b290-1206-4986-819f-7855041fa6e4	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
356860ca-3662-4df4-9747-5d11e7eb737f	4439b290-1206-4986-819f-7855041fa6e4	allowed-protocol-mapper-types	oidc-full-name-mapper
e9601025-42ae-4508-8f9c-9f9d507638c0	4439b290-1206-4986-819f-7855041fa6e4	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
a2759a45-43e8-43b4-9452-42cd71ccd63c	4439b290-1206-4986-819f-7855041fa6e4	allowed-protocol-mapper-types	oidc-address-mapper
f2f0f9a0-25ba-453e-a6fa-850f24372e1a	4439b290-1206-4986-819f-7855041fa6e4	allowed-protocol-mapper-types	saml-user-attribute-mapper
6f6d1d08-ad17-4262-8c64-df4af5c61f9b	4439b290-1206-4986-819f-7855041fa6e4	allowed-protocol-mapper-types	saml-user-property-mapper
d254864d-4669-4628-a3e1-7487c166c785	d9e6bef1-be3a-4e60-a2ff-1fa2bb26bf10	allow-default-scopes	true
0208aa66-b6bc-4eda-81d0-a58edcfa5e9d	037984e3-0628-496e-b2d1-5dc6824c1561	max-clients	200
8da49588-bc43-4938-b5da-ddca67cacac0	9b776db6-c530-4dea-ab24-956354087228	allow-default-scopes	true
e5cc7063-e39c-49c7-872a-4e6b587909d1	9fcb1f61-8669-4d8d-8f60-fd40090a77a4	kid	8e790dbc-0464-47a7-82f5-9c78083144fe
30694492-218e-4333-8e70-e79ea4b3655a	9fcb1f61-8669-4d8d-8f60-fd40090a77a4	priority	100
a1a7d800-4560-492c-8485-f1f7a5e3dacb	9fcb1f61-8669-4d8d-8f60-fd40090a77a4	secret	K0-TIRn-KfKY22ub5vm17__KwvXx6RZgwxrvYBw_g7w
9304e0bd-638b-4919-9869-252581591700	e13c5a45-ca93-4618-a4fe-d59cc10b3c01	algorithm	RSA-OAEP
acd333ff-112c-46ca-a69d-29e5d96b3b7d	e13c5a45-ca93-4618-a4fe-d59cc10b3c01	certificate	MIICmzCCAYMCBgGgyUeb7zANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwOTIyMTMyMDA4WhcNMzYwOTIyMTMyMTQ4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCnceJdtTkQKyWkf8dLOEcOtIqEFj+9nonyAkdh/otzdNWSBbVMheRTkm1C8mmy72XMozq6OjGZTPSAL+Ll39znhW5q3a6jcFJWTgDhe5XesS4oD9A9Vgy5M7XPzdg1OsMpgRmh9oZum9U/prIr/ZCKpGnthD2oHsb0TOvj2612SmTudh7QYFZhTtre8rq58vEXTjiRMjbclVS3Nf66uG3/HqysPRwgByIwnRbpPAL9hKuLm6sThu8Vzzy4vajlVAFFyzxyIonXrIAkFNdNbxjnjPqhgjFhL18x4eYNrc93Xmo0QB5laRxH1+FM4QMiGC6KMmrj1LerwJ5Aa1KkDvC5AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHXVxDYMN1zt9AGwDIX/oFXfzT+6vmEPCbN3j8h9xcF1wBm0UKBuWPeH10Zj9LAQ479n7RE/ZFmwwQg/lF6HhFE4JAhRjFCC3fD9wvzUxuoPJcsjwH34QLh0ZtiSCwEUkrVk3BvmtixUvEHUuKpoHyx8ri9QZvdRFTwWYJyCaSeylQoK3byOFpptp+qyd15ctC0bjISzGucEQwE/bWOFtBC1AvTtCCx8+Kv5QEW7MX82R9VM/52A6X6XrEyk1JfI+iVaLgoXubK4TuzkIR+1XUCdgtF+9Gqy8dWMMC4cGPP3UMnVIkXLOD6uAXEssWbEqfFK/LfDOuh2rYK4H25DUho=
a7514bc2-9ce8-47be-ac3b-36f3e1539c20	e13c5a45-ca93-4618-a4fe-d59cc10b3c01	privateKey	MIIEogIBAAKCAQEAp3HiXbU5ECslpH/HSzhHDrSKhBY/vZ6J8gJHYf6Lc3TVkgW1TIXkU5JtQvJpsu9lzKM6ujoxmUz0gC/i5d/c54Vuat2uo3BSVk4A4XuV3rEuKA/QPVYMuTO1z83YNTrDKYEZofaGbpvVP6ayK/2QiqRp7YQ9qB7G9Ezr49utdkpk7nYe0GBWYU7a3vK6ufLxF044kTI23JVUtzX+urht/x6srD0cIAciMJ0W6TwC/YSri5urE4bvFc88uL2o5VQBRcs8ciKJ16yAJBTXTW8Y54z6oYIxYS9fMeHmDa3Pd15qNEAeZWkcR9fhTOEDIhguijJq49S3q8CeQGtSpA7wuQIDAQABAoIBACUuigJeeU0gk6OHV0EZ/ldi2kZR7XYFBCM4A9NcE2nAJiOefl9/dM/k+jutOjDobY3HKkWLohNlTf7AA22hq/tCOx5iWwMCcFonSJVJXOJ+LB5rwoU4PCuM8sCx+CJ7ybYH66H2LOxXUL9pW/OeQvAyaa47GPjh2rKJeTEYCRj0uGtF0tLjw/tG1gooyp4TA6wbTgGgbc5ApNqgU/qUuVwh4y+ZWCrMbOdxL/gjltQlN2RaurOTV3bCN5Ewmdu3La4Stv76Y0t2GnXe3BimAKoeG8wbzwsi8iPNaxxCBZnlc+s/ecappWIE6alcEPA2+rlVw8T1W4VUzfNkzkDc8j0CgYEA3p5Rl4MAXncwU/vTvbLzxEV0I4gSKVqUQh1Q9gsfEEE1fYmZfcc+pJGo9TgwXQWQyPVuvETDaKX+7AzvzznCxWX1OYuSJ4TLR+g90s0RRAzFzi0u2sDJzHUnBOtaiWxMwmPLPnowApGXOwuFTbMG95SfGyI2abOPAxMEEIXwbu0CgYEAwI2cXMEVa1V6HTwS5NwCqr+Z+BlwEUKmhAvZ/B0+55NcvUbS2t8C0cnJWxcapTZg6iCqERMGi/1Kv5XKSYbjmh1aq2l0BJVAyPzTu6beEw4NLwKVYbyA1avzjiql4l5hPKLyFFeuzV0B3iRfbaysSVCFoxBwFGhpNPgY+rZMA30CgYAl1X5EY60yYMtD2q6XtMwc9TjRuRRtFsnPmq/hwO4ckxiGJ1aAu9X3nhG66zu8828x2BRjxsP3Cw8SCvjOnSBu7+8HQqMqODVcGSo4o0Vl7U3IxoEKCG3DY72n5l/Sryc0ekVWbumt5hRvonubQuvSM93+fIgG2s9ZVGgCbuD32QKBgFIOx1j76/3e4nh89mxTmktb9ei2Jn0kk0PorQ/1Aq67rST4frlJmrD+tnG8Sd2oa+q62t8F5Z9Y5Tb6RcfJ1UsDQXWVLh0Z4g8FN9JbjX4/Wbzz8+c/5wOoENZANItgvz2RD2s95r+b6ETb6VMa6B0iVKEmSy1XRaaOKE8HyyMdAoGAEB8e6S6HPPG6cuyzoSmuh2esLLTwr+EUQdT2x9dZ+tOHqDSMeMtwncaq6zUZSOdHHKR5yMrhZJDzkOzoJXYLWSKWDqjLd1zpqvZxlHb5v5ALILDl/ICP3gOp58tHmzyrv08a8t+uKcBeEfud+iXDkMbrGOCAXZ5pll8zsO1EfFY=
f9f61672-91fb-44e1-a9ac-68397ff9f0a9	e13c5a45-ca93-4618-a4fe-d59cc10b3c01	keyUse	ENC
f1d02cae-a510-4d6f-a988-c53004591a5f	e13c5a45-ca93-4618-a4fe-d59cc10b3c01	priority	100
d73c2811-474b-4c73-9b40-7246eb4c27a8	00e9a3a8-94a1-4ede-97fc-ffa63c0eb6f3	certificate	MIICozCCAYsCBgGgyUkGdjANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDDAphY3Rpdml0aWVzMB4XDTI2MDkyMjEzMjE0MVoXDTM2MDkyMjEzMjMyMVowFTETMBEGA1UEAwwKYWN0aXZpdGllczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALI2Dih6LtAly1d9reTnsX7jVcvtT2yMqFVcJ08lla8K1awLbklJ40sHcJpsM+yczsZpZVUHSo4cAgWCHnbppX0l4YoH6SN2JFqQBC9K0M96bcm3kXbVPCg1Casn2Yni+z3hcky/ofgLtSFuRa3XHkn0S2ulKyGmwJI7GtCicrqh1IzRs7Omjg+9940n+QQ2PGl99VVCleVtKsWj/lz/vWW94JEAmy3YGDHZU2sb0cBLjPyryVv32vcoI2CO9NeV0HJWThBwilw49oZ1Ec0o8wRjeHjFuNPdod4/P+P7O1QC54GqpgOCUXad7M5DldCl99aPkAeUfgQtnP7E+d3P7ScCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAEfzAgVUD4c1HC7PYiccKwaTvnwEjez+D0+7Pmt2i1fb4Gj57r4BSIWIdtOmFRWNYrIyzGL2Wy2GLV7pczBcuxJTzi05A4An5UgaWxXZVw4Yt3ZAzMhgTBiBFXjyLcCsNswV/CUtl+5s+Pqp/beiXuNEjCb2AqdT0ZCYwxvmoHMgfwOEVNF4qrLPj84oVEX9LQKxrnZDxasQTiQ6RuRwyeVoL34GmAKH5WQ6zKw5fwZO3nKab72hRf+JCppN/P/oKup9yzJ83R28ce6gacCg09gIyTJ1To8brk2/2Dktx6fGV8F+50iaNzpOAq9wKJiboopnYiQe2IK3wVjfOezC2YQ==
536a3976-497e-4465-bf86-75ed55039bc2	00e9a3a8-94a1-4ede-97fc-ffa63c0eb6f3	keyUse	SIG
4493eeb0-434d-4a2d-b5cd-25383cf5de1a	00e9a3a8-94a1-4ede-97fc-ffa63c0eb6f3	priority	100
2875850f-9829-4034-bcb4-2fbf9cc5d46e	3f1fc1ad-bfe1-435a-a2eb-f534c8f4d198	keyUse	ENC
eb749bce-0ac1-4ec4-b230-fb8397605d88	b2d5dfd8-858a-4408-8cc4-cef05fd927e7	privateKey	MIIEogIBAAKCAQEAsfMboUdDiL7xA/r/oJzETSGIRop9SIuIp2GVIRsvRt0ZhITW7kkONFWf7WtHf9R2/7mXzXOE2F+D27rmWETepqVPeY77TEn+DiKq959icnkaAxqWGjwV//Ay9alL8IkY/8yFxvHUE/RpgiK1ZHvpJ5X8pzdsLBNoAt6SZbfktu6PhsjK7qSdiYUekmC+tm517QUXdyUP/ZSAPy8WoO7Ex0cchanDlfSHbGUSQqw3pkkRR7iUtZJc+p5V3WUnMifAi25KQ+spo/72+BnxDPY2yMsmW5YEsoIIEetrIblb+sh7qYdFzd7YdgkDOkmhD5UhLLdOxQDBVTycJzDs0L6pLwIDAQABAoIBAAPAkvMENIZwUXUeLS2MJWZym2p2T+GRSFrUICMJEsxWSg/W9sUihDm4GrnvFva5KZBhoLtB7lqP4jaxpR7HEe3C/k4qjilx+hcc+o5yqaj4Vb9niWAzehbtSHvrUwxH8arMVej7c+aR0R0FZmXVHNBjuipiA5ZZv++QuuXyt1fgdRt+S8kESEmgAeSNWQotZmmNkFKfpdK6AFlQ7PjOzG7WFvGkKZ4nPWHiqaiyRqCecJNgcs9Wj6M1Z7vbpjzYIQl+Eo/rLfXywhQ+Gl2E8qPUfy3tsKwQ9VBYg3FQ+M9LoCXn09g6AMEEvJD5h79NZuxE16Vu9YTjW1GUz65QZ1ECgYEA9B2z2eZFns4Vim2ggMAPrLi/ztXnoK72v0gqHFz8xGK9wt/AY1IM2c1r59P+95Cm96Q3V+TedTW8g1bB5sJP+omxzakfNQT5dOT+AruayesWk+RCxsPX3tRQUXeGfzm7PZxlttZswoMHZtg+eX2qhAWUqO/fc2l/SEQw78HUil8CgYEAupzOcLG0cVZ1L/jNTpYxWEUbCtdfDoaqTdwqzA5+ds2FOQdI4RTLxmkVkltV6PntAOBYIySg+0pQh/qreOEri4mm21WycMfiGpRQnsSlFlzKCD6vN3BsyJvcDa6tR1q9b+TvrJuI+/B5dpR35MkTvy9+SUlyrokbEHeMABNI8zECgYAY7jOg7EBt8HQIuBttKrAvHosQL45BPb0bWd5bGTADSmZA0aMPQaDoWW9MtLzUQaSbo9y3EDub0soWy7RvwaZzWr6a10vFmWV0h7JdSxWKy4R5xBUBwZx5OEuflkpZEedKan+Exa9DyifmW+09cRUJ+JvvCNhULBEAq14oDi6LlwKBgH+l1TyXAePpDP4EhYN1D0ne83GGAtqv2PyrVocAfxcK3E83IW39SKpupTfYzDoyAyFvVDqtyoQ5wD5ThEmKVLv9K6qqwwWMZKhjvYXs4zQZwoTDRB17BJ5wpqShUJwXgK9yfVOnjJsxUhR/2EciGCTV+t9so0qqNF4eOCCxEFxxAoGABjR4P2+uEZDZfxGYVrNdVNopkPgN52VM8miHu9D7HYG4RmmXqYsY17R1HWbeivTKcyeVEikVRMT4hGzS7V6S60gWPzt8KMXwDUv+y5sc7NcHqG73Do5gCO2RlgNpKBwTEDzM/VSh+n8rVXAPvAtYqYZ+wqs7lF7oc7jB3Iavhec=
3d887d86-fe88-464c-8c06-ef7edc53a7f6	b2d5dfd8-858a-4408-8cc4-cef05fd927e7	keyUse	SIG
fc2c154c-eeef-4f80-ab7e-af93dbc05b48	b2d5dfd8-858a-4408-8cc4-cef05fd927e7	priority	100
ebeb4375-9e09-422f-83b1-5a15834be819	b2d5dfd8-858a-4408-8cc4-cef05fd927e7	certificate	MIICmzCCAYMCBgGgyUebgTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwOTIyMTMyMDA4WhcNMzYwOTIyMTMyMTQ4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCx8xuhR0OIvvED+v+gnMRNIYhGin1Ii4inYZUhGy9G3RmEhNbuSQ40VZ/ta0d/1Hb/uZfNc4TYX4PbuuZYRN6mpU95jvtMSf4OIqr3n2JyeRoDGpYaPBX/8DL1qUvwiRj/zIXG8dQT9GmCIrVke+knlfynN2wsE2gC3pJlt+S27o+GyMrupJ2JhR6SYL62bnXtBRd3JQ/9lIA/Lxag7sTHRxyFqcOV9IdsZRJCrDemSRFHuJS1klz6nlXdZScyJ8CLbkpD6ymj/vb4GfEM9jbIyyZblgSygggR62shuVv6yHuph0XN3th2CQM6SaEPlSEst07FAMFVPJwnMOzQvqkvAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHvAqd42j/hNKSquCsLzd8rwxG4JrusHfYqreGMu93/hD+bzbGEoKjU/n0WJWmr/OEFaNv8fVrz/C8+JGFVUaFCblvcc+MYH8YYy0nYibUlXMg3m3odz50Bloe7q4pJMlhI7IMatXVgG2GtSIEnt4SSwEgVgcETn3mV5Z2bIlEWuVAiFx8YoF8u4JkcNiNy1o+Z+Tohsh6QWbHiZ+y/jbsjt4JznqSS5e1L5+CO+lfyWvf+7vM9EFoUi/xyvZVdK97uJl1emPGiAxP3pNYC36DBOh2m1JOqwjc4Bjg12kwN7p3MGHrteuQvHjchGwesd9ocjk9q64BozjJV46R/zntM=
1a087c6e-af33-4767-98d9-e82bc68ac883	7399d5b1-b381-4892-9b5e-4c99fcc7bd57	priority	100
dad4a47b-003a-4996-9043-c2f8bd7f40ba	7399d5b1-b381-4892-9b5e-4c99fcc7bd57	kid	8ca62fdd-a6ab-4285-bfa0-1edfc322aac1
e670060a-045b-499b-a4d9-2d794bdf0a02	7399d5b1-b381-4892-9b5e-4c99fcc7bd57	secret	llMluOukXgTBrlSSU5mqNw8BFvDmK8r9qhWcb75ojREQngXghE1eJdfRam-mmsuVj92CoSUX9HKdoWNetrxOE4qHZna4C63ETWXqHFaHHnnX68Jtc5wemFXVkxJ6im-_PNyxp0aJByiwDqdyCzM_qox9SkO3QJ7meJewzztDly4
3edf971d-98de-41db-8cca-f694efda3298	7399d5b1-b381-4892-9b5e-4c99fcc7bd57	algorithm	HS512
9a1bd3d6-d26d-4e9c-82a6-f0c8fc0eee9d	1d356cef-e374-4956-93a3-fcb94d9bfae7	kc.user.profile.config	{"attributes":[{"name":"username","displayName":"${username}","validations":{"length":{"min":3,"max":255},"username-prohibited-characters":{},"up-username-not-idn-homograph":{}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"email","displayName":"${email}","validations":{"email":{},"length":{"max":255}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"firstName","displayName":"${firstName}","validations":{"length":{"max":255},"person-name-prohibited-characters":{}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false},{"name":"lastName","displayName":"${lastName}","validations":{"length":{"max":255},"person-name-prohibited-characters":{}},"permissions":{"view":["admin","user"],"edit":["admin","user"]},"multivalued":false}],"groups":[{"name":"user-metadata","displayHeader":"User metadata","displayDescription":"Attributes, which refer to user metadata"}]}
b2432fb6-9d79-4d21-9e00-ee55151d7a7b	43fb1668-96fe-4613-bca6-dc5e2a26eba3	secret	5mx_xm5nQhjzwc6VGGWYkIW3-edTmi3o-49YFSSG8P8
3eab5dc0-1ec2-406d-b687-239909ef4786	43fb1668-96fe-4613-bca6-dc5e2a26eba3	priority	100
238882ba-5f8f-4d69-90d7-a71acdb652dd	43fb1668-96fe-4613-bca6-dc5e2a26eba3	kid	e4d7390f-c981-4f4e-b3ea-00f66b5f9b54
d6e38d43-3a20-42bf-bc4e-827d81523e10	52fe954b-a164-4cbd-94cc-1e1c96382d46	priority	100
5d675355-1a38-436f-b939-36bcee40b234	52fe954b-a164-4cbd-94cc-1e1c96382d46	algorithm	HS512
3545436e-89de-438f-a7a3-91350b59e767	52fe954b-a164-4cbd-94cc-1e1c96382d46	kid	3d982951-e073-4085-b2c3-f76f4e35c11e
9c4b22db-8829-4eaa-a18e-f48cc05cd485	52fe954b-a164-4cbd-94cc-1e1c96382d46	secret	vJAXvXJSqEO7hKYafI_apf-xq7FAS_KiE8aHAS3EWKKTnhjK3dZF34YAOm_8TReUvhXfmah4hxHLZJdPDdCP1-A26W_AAGbTGM7Jn4QDzhVj-J6XMK8U17FWmyCfU0_0cHg0RJuBazJ0L_EXcgP07Wyh_7U1LWwyGoT_boiQ2FQ
a037c106-e55f-47d2-bb7a-d82205a419ed	00e9a3a8-94a1-4ede-97fc-ffa63c0eb6f3	privateKey	MIIEpAIBAAKCAQEAsjYOKHou0CXLV32t5OexfuNVy+1PbIyoVVwnTyWVrwrVrAtuSUnjSwdwmmwz7JzOxmllVQdKjhwCBYIedumlfSXhigfpI3YkWpAEL0rQz3ptybeRdtU8KDUJqyfZieL7PeFyTL+h+Au1IW5FrdceSfRLa6UrIabAkjsa0KJyuqHUjNGzs6aOD733jSf5BDY8aX31VUKV5W0qxaP+XP+9Zb3gkQCbLdgYMdlTaxvRwEuM/KvJW/fa9ygjYI7015XQclZOEHCKXDj2hnURzSjzBGN4eMW4092h3j8/4/s7VALngaqmA4JRdp3szkOV0KX31o+QB5R+BC2c/sT53c/tJwIDAQABAoIBAAOv3tYBjK8PUDoB8Rb3oC7Nie5SfVrz511xLvogVJsEKZdRE+R91PZYiSuG8VcupDrApXhi/TscHB8Km8r3k6N7FtIFeW7GRp/TQdZ2a67db3YMz24wEog2bEEemEaV6/D8zkx3FZ3/JHTCuBE4jnlPqj9Zxx7/qsANh+F+QDy84YHuhpxE1pLwjW1Oub+wNumILkDCAed/vUj3S2GmS+O4SMuf+6HFSJGqclb/BvnHZSKzLUF2eV/s/qaYe8o6QLtVuY63gjlM38qSE9lSDiYs1X4+4jTkJVR//1kFITuf+Kn8Nm0da84UBbsaah5hAIX2QZrmfR7feAnyFGV/5YECgYEA6yzOX5v0gDwCUcEQwTCZPsdfjsYsJ8rX4n69x+t5QWQGCJgkwbD80qCwKPWIS8C0UT+exSFEbXIj3PjyXUWRLpLj02mjrfLG/dmNk94aiX1s8xSQ0SVOZ4xSvU/EmJrC9Yxbri2BkfxT9TcVxvI7FEUFhqm1ccpEPuZWPVSPq+cCgYEAwf3utY4jmRpdUn9NP3fxwZPw1YaKzGPoOt1KC+OFJRcFOEJjXSHOGJlMKCbmlRj3tVqE3/ETWdmobWsG2+jnGjL7Jy3It+yq+TiFBhe7CgLCjqC+BMeP65eCrnvJyyyn1ryFqkeb63Aq/z6001Az7EKo74ibjl8EHFrJNwD7jMECgYEAkYHeio9u3yzB7p165V1RY+Ntv2PkDBbYLh5nA9ww4QGnLggcre747sVXWXBZjS1FJAQuEyA7O1Bk2iL5qjYR1vQxnCv/hu/wqT3C+FtypeEB2QC/fXgMo8rRoqpJJHaU6+KVExa61X1+4PjdM4PKhAcUnTZBuo8AXL6dW0MHxb8CgYAq9kPRbYMwuwgD5zGCZtvhlRP3Fe7TSST7NFrbuy2XgzuitAExdPUhuYGGOudCCd+CCGP4/HjeozeL0/IW7cOQp827ZYZYRU+wFfZP3R2NIANadvreMBwNfuZwIfYUyvT4t5OanHVJdPPwx0BgtBhrsG+dbNGWfDB63xhE2DDdgQKBgQDVRIiPsaO3wSuq3AioASJ1dtRS0oifYnwUIr+aVw+IUrr50Sp1GrTbLtOZInif0Hd7Cp3ztT+lKLXqnr3Qo9KlTAERw6IDIOHrFu0qD6ATf6KZmrQ8JaY6YZ1I64TVHlJcqwLJeCkL0V2yF1Fy+v8Wrj8oachfwDAOZ2thX6zcNw==
3baf9028-0b55-4272-b17a-435d971e31d3	3f1fc1ad-bfe1-435a-a2eb-f534c8f4d198	privateKey	MIIEogIBAAKCAQEAztrkEHPtHvp1mRnZHxtENXfSmZseinYM8aAJ1dIOZRusEV5bcxu8gBhU3gZB8aFQ5ByVUxSkQhhC8hvrvPvT9Rcnox7k74H0LVUrLOEkpMZBomulYykmAyFlscJEp9GzUr29ECM3cHUpFWl93GWbNeYMHv5xXIdGdx1aQHpkcZaCo7X3bjr93OH3kDoZcPxHThNfIyGEQgLaJAbehPIEp56vqkc50ZCO3k1eHC1YhcONLj1FNDUxly1rmJ3DuQC6DNK+b+lnuyh3aHRv/QycR3YV7s3LRGjsmcZUvQvgV3b2Llqu4xHjG2X1RYRu8VTe5ZsVzwRGnsfC+oeHsYV3LQIDAQABAoIBABmJcuXoFeJA6+M0inY5ZMSQEB8YBB92Xvc2eXhc+Bt53NaBFluh1TXgKxwE3D/DGUwsDjBFSFkDi0I9+a6pTTvA+cr8zakW20j8bnnaKq6v7hrp3K9e/VseFKKrF9Q7An8ovu4+1sGKqUGENj5PCegPyDfMVDzm02dxp3p10bAm+o3pQ0q0K8diO3ZkIlX3030XBJeCNWbxaj2lj32OVAsee8s2rZY9TmBt7Khsil0ZLRCiwv6k7+sXQuwSzNY4rHJXRQsNav1OGQwMyH+GfSC2Xz1pVgAFWAj13yfzioPuUvqDXaBKirinz8wE3IPz33/7aBESgikuqyGcTFv6LWkCgYEA7UNapdVc5ysdZ12HIiOx5l77bS1itYLjEls0jke+qRDibuhP13ZK1Zf1Jw0j2850LaH6OxDZ3Tp6Y7Z+rqrskcG0CJ0I7uIOHDZfYEPRe8acaxuHZwsAkCBkvZb4kEkBXgXS+mfRk3RrFiQVcm7wadIVpBHfNouIRLeyME60GxkCgYEA3zDKRw3GSYYofZrh1chqqW0isobTcsTje4cLyPxRhDe1XanZTMOct5kn00B0Qj8zBIXB2FB2mCDkW9sjNNJrTrKEIad7evgHgsANn86nAqC2e+J76EJRzqpA+QMjMI8FqLY1Ome9Os1uRKHyV9rnZ8ifNNyySxJkJbp6eBohEzUCgYAOOWCA2qbEMSCFJuVIFa2/qugV5oepbBxi6FbhRMnYZuu8TG8k8rGP1pla6v3AWsM6TSCsU9lL2wqlWbaEkDi4kE1Tyt5TO/guls/m/Indis2r2i2m7tDs0xRXDWr/c3ECiwTYAEtfNLaK0ET85EvDfFXRzUR9h6X2wLCNFtrTWQKBgAUXYNXkG4zb0Zqj6NjunHhG9A6sgrBQi3vq5brs/pMMjkeXs0xL/gw2IzFve/dy56AHyRc9JqdrwKnTwubWkfoWmmsGHgv9EnbKGMV3elnV/rOuw/LVaHZVbewARVI7QP7LQUWWzjtEKmrIYvXcGYFFk1QqYKrTvZMawOZyeiStAoGATTo0hybuzhn2QHNP+Adfvoa/yerJRPj5giQz/70LrMrQDHEOmsHrqUKI3crrC3xNcGoGD7AeR2LEAQPhikvZZN1CJ2I9GBXJrZ0HjKli7tRWC2HqdQwq6fJRBeCdCMGFdaJuf/rB8okxuiCOz6/cu3rspN/0qrGKgB3NqhTnySc=
242b2259-f476-4554-946e-56f49ca92619	3f1fc1ad-bfe1-435a-a2eb-f534c8f4d198	priority	100
ff8c908a-db01-4c92-aa73-3bd4e369cc22	3f1fc1ad-bfe1-435a-a2eb-f534c8f4d198	certificate	MIICozCCAYsCBgGgyUkG+jANBgkqhkiG9w0BAQsFADAVMRMwEQYDVQQDDAphY3Rpdml0aWVzMB4XDTI2MDkyMjEzMjE0MVoXDTM2MDkyMjEzMjMyMVowFTETMBEGA1UEAwwKYWN0aXZpdGllczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAM7a5BBz7R76dZkZ2R8bRDV30pmbHop2DPGgCdXSDmUbrBFeW3MbvIAYVN4GQfGhUOQclVMUpEIYQvIb67z70/UXJ6Me5O+B9C1VKyzhJKTGQaJrpWMpJgMhZbHCRKfRs1K9vRAjN3B1KRVpfdxlmzXmDB7+cVyHRncdWkB6ZHGWgqO19246/dzh95A6GXD8R04TXyMhhEIC2iQG3oTyBKeer6pHOdGQjt5NXhwtWIXDjS49RTQ1MZcta5idw7kAugzSvm/pZ7sod2h0b/0MnEd2Fe7Ny0Ro7JnGVL0L4Fd29i5aruMR4xtl9UWEbvFU3uWbFc8ERp7HwvqHh7GFdy0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAkH5bXWXoZqmCxzyn+UkBaNQavdI0BbyO+MhdqvZCwjzhqtlK+TvUnncyzwfqV1KhNguP0LN2gipLpxJVat6pozwN6z6ZyLzbvEI/dv62SjjsFY2nfZT8GAjBPy107DIsLxSW2Csu8jnq9ZN5G02wToGTlWg2RwuR94MCdk8zpn3Ev3d9xBcp96Z0Qnu5SuSw0lalufIG8JPutPBLvQ5IDklFD0n0TrcGyx175CjvxRWyQvOK5Ps9EtCd0rvWYPWLAJt9ENBm4mAnItBOb5H4ah+Hn0cJtTl7ekfiZ1ALYKlnn+ouDunsi5xWeOqtBH1o2VnNaey8TotI9q8W4UtEkQ==
2b234863-43e3-46d7-9510-cd7cf0ca19fd	3f1fc1ad-bfe1-435a-a2eb-f534c8f4d198	algorithm	RSA-OAEP
05ac7c41-54d2-4f8a-9469-33913bfa9f0b	bea47e3d-dda5-4dba-9cc4-37cc21e57e8b	client-uris-must-match	true
6e894c55-6efb-41ce-9723-7467660fb341	bea47e3d-dda5-4dba-9cc4-37cc21e57e8b	host-sending-registration-request-must-match	true
e0a62b8f-e722-4bcb-b291-6e715dad6f26	22646213-a8f3-4a84-84fe-c440a4cbf978	max-clients	200
038ffe59-5a45-4837-9727-a0fd4d73cce7	39ab0b4f-bf72-45c0-b445-0ce881f3583b	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
92f8ba59-d9a9-470a-b5ea-6ec5aca523d0	39ab0b4f-bf72-45c0-b445-0ce881f3583b	allowed-protocol-mapper-types	saml-user-attribute-mapper
b18a5f80-ee66-43f4-a33d-0c9af38e400d	39ab0b4f-bf72-45c0-b445-0ce881f3583b	allowed-protocol-mapper-types	oidc-address-mapper
e6f6f26b-f230-482a-9237-f10ba32ad0bb	39ab0b4f-bf72-45c0-b445-0ce881f3583b	allowed-protocol-mapper-types	oidc-full-name-mapper
1d364bcf-7bb6-4813-9885-0fe407161924	39ab0b4f-bf72-45c0-b445-0ce881f3583b	allowed-protocol-mapper-types	saml-role-list-mapper
c3c06372-4451-488a-829d-ecd5124cf7fc	39ab0b4f-bf72-45c0-b445-0ce881f3583b	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
e3bd63ba-3e1f-4f75-a6e3-7711d8787ce8	39ab0b4f-bf72-45c0-b445-0ce881f3583b	allowed-protocol-mapper-types	saml-user-property-mapper
c5d29329-00b3-40c1-8d28-7f00eb7b03e2	39ab0b4f-bf72-45c0-b445-0ce881f3583b	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
761269b1-fb3e-48d9-b7d7-4fd4fd185e96	84367053-1740-4bc8-884c-f385b0ffc6f9	allowed-protocol-mapper-types	oidc-address-mapper
76eaba94-a831-409d-8358-711a18374982	84367053-1740-4bc8-884c-f385b0ffc6f9	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
de49ebd3-26b8-4cab-95e9-af7897041f89	84367053-1740-4bc8-884c-f385b0ffc6f9	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
5556c77d-76c6-470b-86f3-e01d2d43920e	84367053-1740-4bc8-884c-f385b0ffc6f9	allowed-protocol-mapper-types	saml-user-property-mapper
02084ef5-f93c-47be-ae77-6b2dfba06578	84367053-1740-4bc8-884c-f385b0ffc6f9	allowed-protocol-mapper-types	saml-role-list-mapper
9de8e996-c258-4362-a837-bc6d62505eba	84367053-1740-4bc8-884c-f385b0ffc6f9	allowed-protocol-mapper-types	oidc-full-name-mapper
144a4d5b-0497-493d-b829-a8ae449b02f9	84367053-1740-4bc8-884c-f385b0ffc6f9	allowed-protocol-mapper-types	saml-user-attribute-mapper
05bd6b5a-dfda-44cd-8eef-0dd206e7262e	84367053-1740-4bc8-884c-f385b0ffc6f9	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
c4bb5172-754b-47a7-82da-4773230aa933	c5d813b9-abad-4618-9f0b-5bb67f12d55d	allow-default-scopes	true
5ca8e14d-e122-421c-b252-674abebec084	a32512eb-5a25-4aa3-b74f-c1d60ef97411	allow-default-scopes	true
\.


--
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.composite_role (composite, child_role) FROM stdin;
de2a42ca-76e9-43a3-98d5-9abc1958b719	79d4c3e0-36f9-4931-89d5-d1708b6537bf
de2a42ca-76e9-43a3-98d5-9abc1958b719	6f4d4b1e-0e7f-4205-9724-3ce31937f12a
de2a42ca-76e9-43a3-98d5-9abc1958b719	b27e6f54-aba4-4169-ac89-fa05331ffd4a
de2a42ca-76e9-43a3-98d5-9abc1958b719	92bfebf0-96b0-489d-9ef9-5a710f773a05
de2a42ca-76e9-43a3-98d5-9abc1958b719	deb030d9-a186-4008-bf38-c62931bbafe9
de2a42ca-76e9-43a3-98d5-9abc1958b719	d62eb393-d3db-479d-b47d-18a5f0ff6c00
de2a42ca-76e9-43a3-98d5-9abc1958b719	95318046-5114-42fb-92fd-2b10ef52f9a8
de2a42ca-76e9-43a3-98d5-9abc1958b719	23d2f512-2097-4ca1-8974-3145130f8e66
de2a42ca-76e9-43a3-98d5-9abc1958b719	d392ed75-2021-4a04-bdf4-cc39e5f47e24
de2a42ca-76e9-43a3-98d5-9abc1958b719	7679e309-a29b-4eab-b631-702e258f8d63
de2a42ca-76e9-43a3-98d5-9abc1958b719	12e3d8bb-c1ad-4d63-9b9d-a4bf1faff191
de2a42ca-76e9-43a3-98d5-9abc1958b719	acd6acfc-9172-4324-acf3-3d6d0cf24b07
de2a42ca-76e9-43a3-98d5-9abc1958b719	81ce0e18-7e50-47e6-b04b-a220ee94c836
de2a42ca-76e9-43a3-98d5-9abc1958b719	3b648957-90c0-4c75-a2fa-0fa5834b44ff
de2a42ca-76e9-43a3-98d5-9abc1958b719	a5639e73-1a5e-41b6-ad4c-32ecf0136228
de2a42ca-76e9-43a3-98d5-9abc1958b719	a21ab2d7-32cf-42e6-a7e8-44965036da64
de2a42ca-76e9-43a3-98d5-9abc1958b719	3ae09de9-e5e1-44ae-8008-b22b2064ab32
de2a42ca-76e9-43a3-98d5-9abc1958b719	a9f605d8-3a36-4da3-861d-935d4dbba64b
de2a42ca-76e9-43a3-98d5-9abc1958b719	075052fb-142a-427a-8478-c6e145163156
de2a42ca-76e9-43a3-98d5-9abc1958b719	0201ee94-fbd2-4e41-9318-2d528605cd10
de2a42ca-76e9-43a3-98d5-9abc1958b719	5f45f9cd-9f89-434e-ae1e-000c62571ceb
deb030d9-a186-4008-bf38-c62931bbafe9	a9f605d8-3a36-4da3-861d-935d4dbba64b
92bfebf0-96b0-489d-9ef9-5a710f773a05	3ae09de9-e5e1-44ae-8008-b22b2064ab32
92bfebf0-96b0-489d-9ef9-5a710f773a05	0201ee94-fbd2-4e41-9318-2d528605cd10
d392ed75-2021-4a04-bdf4-cc39e5f47e24	5f45f9cd-9f89-434e-ae1e-000c62571ceb
cd3a29f2-9b61-47af-a813-f04f36297347	a16cd31a-8108-4d5e-af10-6435ea2b0ff9
cd3a29f2-9b61-47af-a813-f04f36297347	9fa04a4d-8987-42a4-8cf8-1c004a41aa2d
9fa04a4d-8987-42a4-8cf8-1c004a41aa2d	708ea108-5246-4fac-b693-8bc3a2213b0f
e5a6f115-143a-4bef-a21a-e4e420c8bf88	9c076604-940d-4094-9989-8462e278d37f
de2a42ca-76e9-43a3-98d5-9abc1958b719	41611548-e4f0-4420-88f5-365b1f657faf
cd3a29f2-9b61-47af-a813-f04f36297347	1b70dae5-618b-41b0-8f31-8793dadd40e5
cd3a29f2-9b61-47af-a813-f04f36297347	e8811d2b-7b3f-4046-9571-e020f86840f9
de2a42ca-76e9-43a3-98d5-9abc1958b719	422c82c4-9e99-4e0e-bc76-81945eaaa19f
de2a42ca-76e9-43a3-98d5-9abc1958b719	6af9bff5-6a06-49d6-91a1-3e5b79c2fb7f
de2a42ca-76e9-43a3-98d5-9abc1958b719	0eade0f3-31ed-4c69-97ef-2d39aa3584d4
de2a42ca-76e9-43a3-98d5-9abc1958b719	b52d84c8-f0e4-4051-ab15-afbde355d20c
de2a42ca-76e9-43a3-98d5-9abc1958b719	3d5747f6-b1f5-4b88-82b1-eb3546f17ca7
de2a42ca-76e9-43a3-98d5-9abc1958b719	98b0fc8c-6cf1-4243-8fd0-1305acca3248
de2a42ca-76e9-43a3-98d5-9abc1958b719	2ebb8c2a-fc6b-4eb0-a8a6-5a4be9c06cf3
de2a42ca-76e9-43a3-98d5-9abc1958b719	47fdcd93-27f1-435f-a034-3c8c47f46e64
de2a42ca-76e9-43a3-98d5-9abc1958b719	57ac5b18-31f8-40a4-8ed7-7e90b8f9c63c
de2a42ca-76e9-43a3-98d5-9abc1958b719	ebfe7410-9083-45df-b7fc-d969e8183db5
de2a42ca-76e9-43a3-98d5-9abc1958b719	a9e74615-8c0a-4a88-b128-87d4fe4acefb
de2a42ca-76e9-43a3-98d5-9abc1958b719	783cfaa8-0667-4958-ab68-3b9cc05b3b66
de2a42ca-76e9-43a3-98d5-9abc1958b719	2393493e-e239-4a71-8e3c-3a967d37d48f
de2a42ca-76e9-43a3-98d5-9abc1958b719	47aa81bb-0b89-47cb-b0f5-66a82f455f9c
de2a42ca-76e9-43a3-98d5-9abc1958b719	c5ce2c48-878e-4873-987c-d611e00772f8
de2a42ca-76e9-43a3-98d5-9abc1958b719	be58a7d2-77f3-4b49-b8d0-61b4d9d24bc6
de2a42ca-76e9-43a3-98d5-9abc1958b719	b09c00b2-475f-411e-beaf-54dd1b629271
de2a42ca-76e9-43a3-98d5-9abc1958b719	eceb4318-31b7-47bb-845d-586f2cb78c6f
de2a42ca-76e9-43a3-98d5-9abc1958b719	322b242f-ad68-4870-a8f0-2535ad44304d
de2a42ca-76e9-43a3-98d5-9abc1958b719	a3160400-66ab-49fc-b59a-8845737b28af
b52d84c8-f0e4-4051-ab15-afbde355d20c	b09c00b2-475f-411e-beaf-54dd1b629271
0eade0f3-31ed-4c69-97ef-2d39aa3584d4	be58a7d2-77f3-4b49-b8d0-61b4d9d24bc6
0eade0f3-31ed-4c69-97ef-2d39aa3584d4	322b242f-ad68-4870-a8f0-2535ad44304d
47fdcd93-27f1-435f-a034-3c8c47f46e64	a3160400-66ab-49fc-b59a-8845737b28af
b9281560-8a0b-4b7c-bcb7-a89c64200168	f4776263-17a8-4f67-a1d1-459cac7c3b73
b9281560-8a0b-4b7c-bcb7-a89c64200168	838b3bab-05e8-481e-b212-ebad09cc4fd5
b9281560-8a0b-4b7c-bcb7-a89c64200168	2c99ae8b-2886-49ff-b011-7ced0dfc8a29
b9281560-8a0b-4b7c-bcb7-a89c64200168	99ad5077-eba9-44d6-9717-ef8633c6e89e
b9281560-8a0b-4b7c-bcb7-a89c64200168	f1b0943e-d356-4452-90c4-06d98deaac75
b9281560-8a0b-4b7c-bcb7-a89c64200168	f044c17f-208b-442e-80bc-18c0ead1b3cb
b9281560-8a0b-4b7c-bcb7-a89c64200168	9a0eccb0-32bf-4968-a348-c06bbe2d88db
b9281560-8a0b-4b7c-bcb7-a89c64200168	ea37e4ba-2208-4dad-b912-21c384f889ef
b9281560-8a0b-4b7c-bcb7-a89c64200168	640bd7ce-aa1a-4ed8-9979-40a19278481c
b9281560-8a0b-4b7c-bcb7-a89c64200168	16774116-34c8-4c76-a961-cd3f243a2820
b9281560-8a0b-4b7c-bcb7-a89c64200168	820f7def-b0ff-43c7-b137-11289f5718e0
b9281560-8a0b-4b7c-bcb7-a89c64200168	7af84e55-7f25-4a9a-b493-fe39d432077a
b9281560-8a0b-4b7c-bcb7-a89c64200168	f57b7b78-79eb-4538-963f-a0148c89dde8
b9281560-8a0b-4b7c-bcb7-a89c64200168	d43fa416-5960-4b56-a261-36f36a494c5d
b9281560-8a0b-4b7c-bcb7-a89c64200168	eeda337f-3de8-4403-becb-eda863563484
b9281560-8a0b-4b7c-bcb7-a89c64200168	39149f04-98b2-4db0-9524-db72d63d809f
b9281560-8a0b-4b7c-bcb7-a89c64200168	a8717df3-7924-48ee-b816-18d326afe1aa
b9281560-8a0b-4b7c-bcb7-a89c64200168	6a819f6a-9500-432e-80c7-86dd90e2c568
b9281560-8a0b-4b7c-bcb7-a89c64200168	8464a484-9f80-4d86-8dfb-218fc2a24d4c
b9281560-8a0b-4b7c-bcb7-a89c64200168	f649e1a4-108f-4512-bc97-8d17f670b3c7
99ad5077-eba9-44d6-9717-ef8633c6e89e	a8717df3-7924-48ee-b816-18d326afe1aa
2c99ae8b-2886-49ff-b011-7ced0dfc8a29	39149f04-98b2-4db0-9524-db72d63d809f
2c99ae8b-2886-49ff-b011-7ced0dfc8a29	8464a484-9f80-4d86-8dfb-218fc2a24d4c
ea37e4ba-2208-4dad-b912-21c384f889ef	f649e1a4-108f-4512-bc97-8d17f670b3c7
3b8944bf-1a7f-4b64-90b5-f9da50ef8559	a9d69317-4a98-4ac9-82b0-f3b0099bab7a
3b8944bf-1a7f-4b64-90b5-f9da50ef8559	ea190450-c4cd-44b5-ba58-9d1ea57afd96
ea190450-c4cd-44b5-ba58-9d1ea57afd96	8b2bb14b-4b75-430c-b39c-b6f9033fbc1e
a6d88a7b-58b0-4ac8-b1bb-624cf6f81a5d	65a7a2fe-0078-45b1-85d5-5c215f2444a1
de2a42ca-76e9-43a3-98d5-9abc1958b719	d965b87f-d7d7-46b9-bbfe-700a045e9f5c
b9281560-8a0b-4b7c-bcb7-a89c64200168	9f567a9d-61f8-454a-bfd7-c48c4f0816c5
3b8944bf-1a7f-4b64-90b5-f9da50ef8559	25a9418a-92a6-4d73-b641-256fc0fd2eac
3b8944bf-1a7f-4b64-90b5-f9da50ef8559	8230806a-59f8-435d-85d1-79fcb0b036db
\.


--
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.credential (id, salt, type, user_id, created_date, user_label, secret_data, credential_data, priority, version) FROM stdin;
8d461212-99d5-4fd6-8e20-95a89ac9a71a	\N	password	c2f672a8-093a-4187-99ba-b062595802da	1790083308730	\N	{"value":"NBtgs3FF86qny/nbX+9erIgU0vuiMbtPUc+LJhTT2GQ=","salt":"yDhefg5qbWDXktQ5rIACtw==","additionalParameters":{}}	{"hashIterations":5,"algorithm":"argon2","additionalParameters":{"hashLength":["32"],"memory":["7168"],"type":["id"],"version":["1.3"],"parallelism":["1"]}}	10	0
3456a246-bc48-4ace-ab58-4c21212601fd	\N	password	9b0366ee-ee8a-4e06-9171-28c35a6d6faa	1790083524703	My password	{"value":"gvk9b0kDN6X7ied3os39Zn/oxcy4MP+tOy6DAln2D9o=","salt":"isNbWadi6/k963qaz022fQ==","additionalParameters":{}}	{"hashIterations":5,"algorithm":"argon2","additionalParameters":{"hashLength":["32"],"memory":["7168"],"type":["id"],"version":["1.3"],"parallelism":["1"]}}	10	1
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/jpa-changelog-1.0.0.Final.xml	2026-09-22 13:21:42.306327	1	EXECUTED	9:6f1016664e21e16d26517a4418f5e3df	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.33.0	\N	\N	0083299630
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/db2-jpa-changelog-1.0.0.Final.xml	2026-09-22 13:21:42.316682	2	MARK_RAN	9:828775b1596a07d1200ba1d49e5e3941	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.33.0	\N	\N	0083299630
1.1.0.Beta1	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Beta1.xml	2026-09-22 13:21:42.33927	3	EXECUTED	9:5f090e44a7d595883c1fb61f4b41fd38	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...		\N	4.33.0	\N	\N	0083299630
1.1.0.Final	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Final.xml	2026-09-22 13:21:42.342504	4	EXECUTED	9:c07e577387a3d2c04d1adc9aaad8730e	renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY		\N	4.33.0	\N	\N	0083299630
1.2.0.Beta1	psilva@redhat.com	META-INF/jpa-changelog-1.2.0.Beta1.xml	2026-09-22 13:21:42.403356	5	EXECUTED	9:b68ce996c655922dbcd2fe6b6ae72686	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.33.0	\N	\N	0083299630
1.2.0.Beta1	psilva@redhat.com	META-INF/db2-jpa-changelog-1.2.0.Beta1.xml	2026-09-22 13:21:42.408355	6	MARK_RAN	9:543b5c9989f024fe35c6f6c5a97de88e	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.33.0	\N	\N	0083299630
1.2.0.RC1	bburke@redhat.com	META-INF/jpa-changelog-1.2.0.CR1.xml	2026-09-22 13:21:42.460378	7	EXECUTED	9:765afebbe21cf5bbca048e632df38336	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.33.0	\N	\N	0083299630
1.2.0.RC1	bburke@redhat.com	META-INF/db2-jpa-changelog-1.2.0.CR1.xml	2026-09-22 13:21:42.46451	8	MARK_RAN	9:db4a145ba11a6fdaefb397f6dbf829a1	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.33.0	\N	\N	0083299630
1.2.0.Final	keycloak	META-INF/jpa-changelog-1.2.0.Final.xml	2026-09-22 13:21:42.469811	9	EXECUTED	9:9d05c7be10cdb873f8bcb41bc3a8ab23	update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT		\N	4.33.0	\N	\N	0083299630
1.3.0	bburke@redhat.com	META-INF/jpa-changelog-1.3.0.xml	2026-09-22 13:21:42.520516	10	EXECUTED	9:18593702353128d53111f9b1ff0b82b8	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...		\N	4.33.0	\N	\N	0083299630
1.4.0	bburke@redhat.com	META-INF/jpa-changelog-1.4.0.xml	2026-09-22 13:21:42.551364	11	EXECUTED	9:6122efe5f090e41a85c0f1c9e52cbb62	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.33.0	\N	\N	0083299630
1.4.0	bburke@redhat.com	META-INF/db2-jpa-changelog-1.4.0.xml	2026-09-22 13:21:42.555082	12	MARK_RAN	9:e1ff28bf7568451453f844c5d54bb0b5	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.33.0	\N	\N	0083299630
1.5.0	bburke@redhat.com	META-INF/jpa-changelog-1.5.0.xml	2026-09-22 13:21:42.570748	13	EXECUTED	9:7af32cd8957fbc069f796b61217483fd	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.33.0	\N	\N	0083299630
1.6.1_from15	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2026-09-22 13:21:42.5829	14	EXECUTED	9:6005e15e84714cd83226bf7879f54190	addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...		\N	4.33.0	\N	\N	0083299630
1.6.1_from16-pre	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2026-09-22 13:21:42.584082	15	MARK_RAN	9:bf656f5a2b055d07f314431cae76f06c	delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
1.6.1_from16	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2026-09-22 13:21:42.58562	16	MARK_RAN	9:f8dadc9284440469dcf71e25ca6ab99b	dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...		\N	4.33.0	\N	\N	0083299630
1.6.1	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2026-09-22 13:21:42.588335	17	EXECUTED	9:d41d8cd98f00b204e9800998ecf8427e	empty		\N	4.33.0	\N	\N	0083299630
1.7.0	bburke@redhat.com	META-INF/jpa-changelog-1.7.0.xml	2026-09-22 13:21:42.614483	18	EXECUTED	9:3368ff0be4c2855ee2dd9ca813b38d8e	createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...		\N	4.33.0	\N	\N	0083299630
1.8.0	mposolda@redhat.com	META-INF/jpa-changelog-1.8.0.xml	2026-09-22 13:21:42.638887	19	EXECUTED	9:8ac2fb5dd030b24c0570a763ed75ed20	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.33.0	\N	\N	0083299630
1.8.0-2	keycloak	META-INF/jpa-changelog-1.8.0.xml	2026-09-22 13:21:42.641414	20	EXECUTED	9:f91ddca9b19743db60e3057679810e6c	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.33.0	\N	\N	0083299630
22.0.5-24031	keycloak	META-INF/jpa-changelog-22.0.0.xml	2026-09-22 13:21:44.627468	119	MARK_RAN	9:a60d2d7b315ec2d3eba9e2f145f9df28	customChange		\N	4.33.0	\N	\N	0083299630
1.8.0	mposolda@redhat.com	META-INF/db2-jpa-changelog-1.8.0.xml	2026-09-22 13:21:42.643975	21	MARK_RAN	9:831e82914316dc8a57dc09d755f23c51	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.33.0	\N	\N	0083299630
1.8.0-2	keycloak	META-INF/db2-jpa-changelog-1.8.0.xml	2026-09-22 13:21:42.645345	22	MARK_RAN	9:f91ddca9b19743db60e3057679810e6c	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.33.0	\N	\N	0083299630
1.9.0	mposolda@redhat.com	META-INF/jpa-changelog-1.9.0.xml	2026-09-22 13:21:42.688343	23	EXECUTED	9:bc3d0f9e823a69dc21e23e94c7a94bb1	update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...		\N	4.33.0	\N	\N	0083299630
1.9.1	keycloak	META-INF/jpa-changelog-1.9.1.xml	2026-09-22 13:21:42.69151	24	EXECUTED	9:c9999da42f543575ab790e76439a2679	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.33.0	\N	\N	0083299630
1.9.1	keycloak	META-INF/db2-jpa-changelog-1.9.1.xml	2026-09-22 13:21:42.692361	25	MARK_RAN	9:0d6c65c6f58732d81569e77b10ba301d	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.33.0	\N	\N	0083299630
1.9.2	keycloak	META-INF/jpa-changelog-1.9.2.xml	2026-09-22 13:21:42.869784	26	EXECUTED	9:fc576660fc016ae53d2d4778d84d86d0	createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...		\N	4.33.0	\N	\N	0083299630
authz-2.0.0	psilva@redhat.com	META-INF/jpa-changelog-authz-2.0.0.xml	2026-09-22 13:21:42.906412	27	EXECUTED	9:43ed6b0da89ff77206289e87eaa9c024	createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...		\N	4.33.0	\N	\N	0083299630
authz-2.5.1	psilva@redhat.com	META-INF/jpa-changelog-authz-2.5.1.xml	2026-09-22 13:21:42.908699	28	EXECUTED	9:44bae577f551b3738740281eceb4ea70	update tableName=RESOURCE_SERVER_POLICY		\N	4.33.0	\N	\N	0083299630
2.1.0-KEYCLOAK-5461	bburke@redhat.com	META-INF/jpa-changelog-2.1.0.xml	2026-09-22 13:21:42.934798	29	EXECUTED	9:bd88e1f833df0420b01e114533aee5e8	createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...		\N	4.33.0	\N	\N	0083299630
2.2.0	bburke@redhat.com	META-INF/jpa-changelog-2.2.0.xml	2026-09-22 13:21:42.94402	30	EXECUTED	9:a7022af5267f019d020edfe316ef4371	addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...		\N	4.33.0	\N	\N	0083299630
2.3.0	bburke@redhat.com	META-INF/jpa-changelog-2.3.0.xml	2026-09-22 13:21:42.955053	31	EXECUTED	9:fc155c394040654d6a79227e56f5e25a	createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...		\N	4.33.0	\N	\N	0083299630
2.4.0	bburke@redhat.com	META-INF/jpa-changelog-2.4.0.xml	2026-09-22 13:21:42.957661	32	EXECUTED	9:eac4ffb2a14795e5dc7b426063e54d88	customChange		\N	4.33.0	\N	\N	0083299630
2.5.0	bburke@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2026-09-22 13:21:42.962075	33	EXECUTED	9:54937c05672568c4c64fc9524c1e9462	customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
2.5.0-unicode-oracle	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2026-09-22 13:21:42.963245	34	MARK_RAN	9:f9753208029f582525ed12011a19d054	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.33.0	\N	\N	0083299630
2.5.0-unicode-other-dbs	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2026-09-22 13:21:42.97782	35	EXECUTED	9:33d72168746f81f98ae3a1e8e0ca3554	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.33.0	\N	\N	0083299630
2.5.0-duplicate-email-support	slawomir@dabek.name	META-INF/jpa-changelog-2.5.0.xml	2026-09-22 13:21:42.981708	36	EXECUTED	9:61b6d3d7a4c0e0024b0c839da283da0c	addColumn tableName=REALM		\N	4.33.0	\N	\N	0083299630
2.5.0-unique-group-names	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2026-09-22 13:21:42.985061	37	EXECUTED	9:8dcac7bdf7378e7d823cdfddebf72fda	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	0083299630
2.5.1	bburke@redhat.com	META-INF/jpa-changelog-2.5.1.xml	2026-09-22 13:21:42.987109	38	EXECUTED	9:a2b870802540cb3faa72098db5388af3	addColumn tableName=FED_USER_CONSENT		\N	4.33.0	\N	\N	0083299630
3.0.0	bburke@redhat.com	META-INF/jpa-changelog-3.0.0.xml	2026-09-22 13:21:42.990541	39	EXECUTED	9:132a67499ba24bcc54fb5cbdcfe7e4c0	addColumn tableName=IDENTITY_PROVIDER		\N	4.33.0	\N	\N	0083299630
3.2.0-fix	keycloak	META-INF/jpa-changelog-3.2.0.xml	2026-09-22 13:21:42.991362	40	MARK_RAN	9:938f894c032f5430f2b0fafb1a243462	addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS		\N	4.33.0	\N	\N	0083299630
3.2.0-fix-with-keycloak-5416	keycloak	META-INF/jpa-changelog-3.2.0.xml	2026-09-22 13:21:42.992393	41	MARK_RAN	9:845c332ff1874dc5d35974b0babf3006	dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS		\N	4.33.0	\N	\N	0083299630
3.2.0-fix-offline-sessions	hmlnarik	META-INF/jpa-changelog-3.2.0.xml	2026-09-22 13:21:42.996258	42	EXECUTED	9:fc86359c079781adc577c5a217e4d04c	customChange		\N	4.33.0	\N	\N	0083299630
3.2.0-fixed	keycloak	META-INF/jpa-changelog-3.2.0.xml	2026-09-22 13:21:43.684125	43	EXECUTED	9:59a64800e3c0d09b825f8a3b444fa8f4	addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...		\N	4.33.0	\N	\N	0083299630
3.3.0	keycloak	META-INF/jpa-changelog-3.3.0.xml	2026-09-22 13:21:43.687938	44	EXECUTED	9:d48d6da5c6ccf667807f633fe489ce88	addColumn tableName=USER_ENTITY		\N	4.33.0	\N	\N	0083299630
authz-3.4.0.CR1-resource-server-pk-change-part1	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-09-22 13:21:43.690563	45	EXECUTED	9:dde36f7973e80d71fceee683bc5d2951	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE		\N	4.33.0	\N	\N	0083299630
authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-09-22 13:21:43.692862	46	EXECUTED	9:b855e9b0a406b34fa323235a0cf4f640	customChange		\N	4.33.0	\N	\N	0083299630
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-09-22 13:21:43.694746	47	MARK_RAN	9:51abbacd7b416c50c4421a8cabf7927e	dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE		\N	4.33.0	\N	\N	0083299630
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-09-22 13:21:43.753645	48	EXECUTED	9:bdc99e567b3398bac83263d375aad143	addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...		\N	4.33.0	\N	\N	0083299630
authn-3.4.0.CR1-refresh-token-max-reuse	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2026-09-22 13:21:43.756298	49	EXECUTED	9:d198654156881c46bfba39abd7769e69	addColumn tableName=REALM		\N	4.33.0	\N	\N	0083299630
3.4.0	keycloak	META-INF/jpa-changelog-3.4.0.xml	2026-09-22 13:21:43.772978	50	EXECUTED	9:cfdd8736332ccdd72c5256ccb42335db	addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...		\N	4.33.0	\N	\N	0083299630
3.4.0-KEYCLOAK-5230	hmlnarik@redhat.com	META-INF/jpa-changelog-3.4.0.xml	2026-09-22 13:21:43.926357	51	EXECUTED	9:7c84de3d9bd84d7f077607c1a4dcb714	createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...		\N	4.33.0	\N	\N	0083299630
3.4.1	psilva@redhat.com	META-INF/jpa-changelog-3.4.1.xml	2026-09-22 13:21:43.928319	52	EXECUTED	9:5a6bb36cbefb6a9d6928452c0852af2d	modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
3.4.2	keycloak	META-INF/jpa-changelog-3.4.2.xml	2026-09-22 13:21:43.930898	53	EXECUTED	9:8f23e334dbc59f82e0a328373ca6ced0	update tableName=REALM		\N	4.33.0	\N	\N	0083299630
3.4.2-KEYCLOAK-5172	mkanis@redhat.com	META-INF/jpa-changelog-3.4.2.xml	2026-09-22 13:21:43.932165	54	EXECUTED	9:9156214268f09d970cdf0e1564d866af	update tableName=CLIENT		\N	4.33.0	\N	\N	0083299630
4.0.0-KEYCLOAK-6335	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2026-09-22 13:21:43.935015	55	EXECUTED	9:db806613b1ed154826c02610b7dbdf74	createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS		\N	4.33.0	\N	\N	0083299630
4.0.0-CLEANUP-UNUSED-TABLE	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2026-09-22 13:21:43.940897	56	EXECUTED	9:229a041fb72d5beac76bb94a5fa709de	dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING		\N	4.33.0	\N	\N	0083299630
4.0.0-KEYCLOAK-6228	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2026-09-22 13:21:43.964725	57	EXECUTED	9:079899dade9c1e683f26b2aa9ca6ff04	dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...		\N	4.33.0	\N	\N	0083299630
4.0.0-KEYCLOAK-5579-fixed	mposolda@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2026-09-22 13:21:44.150027	58	EXECUTED	9:139b79bcbbfe903bb1c2d2a4dbf001d9	dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...		\N	4.33.0	\N	\N	0083299630
authz-4.0.0.CR1	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.CR1.xml	2026-09-22 13:21:44.166517	59	EXECUTED	9:b55738ad889860c625ba2bf483495a04	createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...		\N	4.33.0	\N	\N	0083299630
authz-4.0.0.Beta3	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.Beta3.xml	2026-09-22 13:21:44.170538	60	EXECUTED	9:e0057eac39aa8fc8e09ac6cfa4ae15fe	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY		\N	4.33.0	\N	\N	0083299630
authz-4.2.0.Final	mhajas@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2026-09-22 13:21:44.176338	61	EXECUTED	9:42a33806f3a0443fe0e7feeec821326c	createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...		\N	4.33.0	\N	\N	0083299630
authz-4.2.0.Final-KEYCLOAK-9944	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2026-09-22 13:21:44.179235	62	EXECUTED	9:9968206fca46eecc1f51db9c024bfe56	addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS		\N	4.33.0	\N	\N	0083299630
4.2.0-KEYCLOAK-6313	wadahiro@gmail.com	META-INF/jpa-changelog-4.2.0.xml	2026-09-22 13:21:44.182345	63	EXECUTED	9:92143a6daea0a3f3b8f598c97ce55c3d	addColumn tableName=REQUIRED_ACTION_PROVIDER		\N	4.33.0	\N	\N	0083299630
4.3.0-KEYCLOAK-7984	wadahiro@gmail.com	META-INF/jpa-changelog-4.3.0.xml	2026-09-22 13:21:44.18413	64	EXECUTED	9:82bab26a27195d889fb0429003b18f40	update tableName=REQUIRED_ACTION_PROVIDER		\N	4.33.0	\N	\N	0083299630
4.6.0-KEYCLOAK-7950	psilva@redhat.com	META-INF/jpa-changelog-4.6.0.xml	2026-09-22 13:21:44.18546	65	EXECUTED	9:e590c88ddc0b38b0ae4249bbfcb5abc3	update tableName=RESOURCE_SERVER_RESOURCE		\N	4.33.0	\N	\N	0083299630
4.6.0-KEYCLOAK-8377	keycloak	META-INF/jpa-changelog-4.6.0.xml	2026-09-22 13:21:44.208325	66	EXECUTED	9:5c1f475536118dbdc38d5d7977950cc0	createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...		\N	4.33.0	\N	\N	0083299630
4.6.0-KEYCLOAK-8555	gideonray@gmail.com	META-INF/jpa-changelog-4.6.0.xml	2026-09-22 13:21:44.228095	67	EXECUTED	9:e7c9f5f9c4d67ccbbcc215440c718a17	createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT		\N	4.33.0	\N	\N	0083299630
4.7.0-KEYCLOAK-1267	sguilhen@redhat.com	META-INF/jpa-changelog-4.7.0.xml	2026-09-22 13:21:44.231813	68	EXECUTED	9:88e0bfdda924690d6f4e430c53447dd5	addColumn tableName=REALM		\N	4.33.0	\N	\N	0083299630
4.7.0-KEYCLOAK-7275	keycloak	META-INF/jpa-changelog-4.7.0.xml	2026-09-22 13:21:44.25483	69	EXECUTED	9:f53177f137e1c46b6a88c59ec1cb5218	renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...		\N	4.33.0	\N	\N	0083299630
4.8.0-KEYCLOAK-8835	sguilhen@redhat.com	META-INF/jpa-changelog-4.8.0.xml	2026-09-22 13:21:44.259187	70	EXECUTED	9:a74d33da4dc42a37ec27121580d1459f	addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM		\N	4.33.0	\N	\N	0083299630
authz-7.0.0-KEYCLOAK-10443	psilva@redhat.com	META-INF/jpa-changelog-authz-7.0.0.xml	2026-09-22 13:21:44.261434	71	EXECUTED	9:fd4ade7b90c3b67fae0bfcfcb42dfb5f	addColumn tableName=RESOURCE_SERVER		\N	4.33.0	\N	\N	0083299630
8.0.0-adding-credential-columns	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-09-22 13:21:44.266362	72	EXECUTED	9:aa072ad090bbba210d8f18781b8cebf4	addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL		\N	4.33.0	\N	\N	0083299630
8.0.0-updating-credential-data-not-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-09-22 13:21:44.269889	73	EXECUTED	9:1ae6be29bab7c2aa376f6983b932be37	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.33.0	\N	\N	0083299630
8.0.0-updating-credential-data-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-09-22 13:21:44.270949	74	MARK_RAN	9:14706f286953fc9a25286dbd8fb30d97	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.33.0	\N	\N	0083299630
8.0.0-credential-cleanup-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-09-22 13:21:44.285305	75	EXECUTED	9:2b9cc12779be32c5b40e2e67711a218b	dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...		\N	4.33.0	\N	\N	0083299630
8.0.0-resource-tag-support	keycloak	META-INF/jpa-changelog-8.0.0.xml	2026-09-22 13:21:44.302455	76	EXECUTED	9:91fa186ce7a5af127a2d7a91ee083cc5	addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	4.33.0	\N	\N	0083299630
9.0.0-always-display-client	keycloak	META-INF/jpa-changelog-9.0.0.xml	2026-09-22 13:21:44.304817	77	EXECUTED	9:6335e5c94e83a2639ccd68dd24e2e5ad	addColumn tableName=CLIENT		\N	4.33.0	\N	\N	0083299630
9.0.0-drop-constraints-for-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2026-09-22 13:21:44.305638	78	MARK_RAN	9:6bdb5658951e028bfe16fa0a8228b530	dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...		\N	4.33.0	\N	\N	0083299630
9.0.0-increase-column-size-federated-fk	keycloak	META-INF/jpa-changelog-9.0.0.xml	2026-09-22 13:21:44.320298	79	EXECUTED	9:d5bc15a64117ccad481ce8792d4c608f	modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...		\N	4.33.0	\N	\N	0083299630
9.0.0-recreate-constraints-after-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2026-09-22 13:21:44.321251	80	MARK_RAN	9:077cba51999515f4d3e7ad5619ab592c	addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...		\N	4.33.0	\N	\N	0083299630
9.0.1-add-index-to-client.client_id	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-09-22 13:21:44.337057	81	EXECUTED	9:be969f08a163bf47c6b9e9ead8ac2afb	createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT		\N	4.33.0	\N	\N	0083299630
9.0.1-KEYCLOAK-12579-drop-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-09-22 13:21:44.338918	82	MARK_RAN	9:6d3bb4408ba5a72f39bd8a0b301ec6e3	dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	0083299630
9.0.1-KEYCLOAK-12579-add-not-null-constraint	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-09-22 13:21:44.341515	83	EXECUTED	9:966bda61e46bebf3cc39518fbed52fa7	addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	0083299630
9.0.1-KEYCLOAK-12579-recreate-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-09-22 13:21:44.342235	84	MARK_RAN	9:8dcac7bdf7378e7d823cdfddebf72fda	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	0083299630
9.0.1-add-index-to-events	keycloak	META-INF/jpa-changelog-9.0.1.xml	2026-09-22 13:21:44.358482	85	EXECUTED	9:7d93d602352a30c0c317e6a609b56599	createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY		\N	4.33.0	\N	\N	0083299630
map-remove-ri	keycloak	META-INF/jpa-changelog-11.0.0.xml	2026-09-22 13:21:44.362241	86	EXECUTED	9:71c5969e6cdd8d7b6f47cebc86d37627	dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9		\N	4.33.0	\N	\N	0083299630
map-remove-ri	keycloak	META-INF/jpa-changelog-12.0.0.xml	2026-09-22 13:21:44.369881	87	EXECUTED	9:a9ba7d47f065f041b7da856a81762021	dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...		\N	4.33.0	\N	\N	0083299630
12.1.0-add-realm-localization-table	keycloak	META-INF/jpa-changelog-12.0.0.xml	2026-09-22 13:21:44.374287	88	EXECUTED	9:fffabce2bc01e1a8f5110d5278500065	createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS		\N	4.33.0	\N	\N	0083299630
default-roles	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-09-22 13:21:44.377243	89	EXECUTED	9:fa8a5b5445e3857f4b010bafb5009957	addColumn tableName=REALM; customChange		\N	4.33.0	\N	\N	0083299630
default-roles-cleanup	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-09-22 13:21:44.38444	90	EXECUTED	9:67ac3241df9a8582d591c5ed87125f39	dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES		\N	4.33.0	\N	\N	0083299630
13.0.0-KEYCLOAK-16844	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-09-22 13:21:44.399607	91	EXECUTED	9:ad1194d66c937e3ffc82386c050ba089	createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
map-remove-ri-13.0.0	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-09-22 13:21:44.407682	92	EXECUTED	9:d9be619d94af5a2f5d07b9f003543b91	dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...		\N	4.33.0	\N	\N	0083299630
13.0.0-KEYCLOAK-17992-drop-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-09-22 13:21:44.408551	93	MARK_RAN	9:544d201116a0fcc5a5da0925fbbc3bde	dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT		\N	4.33.0	\N	\N	0083299630
13.0.0-increase-column-size-federated	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-09-22 13:21:44.415535	94	EXECUTED	9:43c0c1055b6761b4b3e89de76d612ccf	modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT		\N	4.33.0	\N	\N	0083299630
13.0.0-KEYCLOAK-17992-recreate-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-09-22 13:21:44.416497	95	MARK_RAN	9:8bd711fd0330f4fe980494ca43ab1139	addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...		\N	4.33.0	\N	\N	0083299630
json-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-13.0.0.xml	2026-09-22 13:21:44.420638	96	EXECUTED	9:e07d2bc0970c348bb06fb63b1f82ddbf	addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE		\N	4.33.0	\N	\N	0083299630
14.0.0-KEYCLOAK-11019	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-09-22 13:21:44.463185	97	EXECUTED	9:24fb8611e97f29989bea412aa38d12b7	createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
14.0.0-KEYCLOAK-18286	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-09-22 13:21:44.465083	98	MARK_RAN	9:259f89014ce2506ee84740cbf7163aa7	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
14.0.0-KEYCLOAK-18286-revert	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-09-22 13:21:44.472802	99	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
14.0.0-KEYCLOAK-18286-supported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-09-22 13:21:44.488609	100	EXECUTED	9:60ca84a0f8c94ec8c3504a5a3bc88ee8	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
14.0.0-KEYCLOAK-18286-unsupported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-09-22 13:21:44.49047	101	MARK_RAN	9:d3d977031d431db16e2c181ce49d73e9	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
KEYCLOAK-17267-add-index-to-user-attributes	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-09-22 13:21:44.506006	102	EXECUTED	9:0b305d8d1277f3a89a0a53a659ad274c	createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE		\N	4.33.0	\N	\N	0083299630
KEYCLOAK-18146-add-saml-art-binding-identifier	keycloak	META-INF/jpa-changelog-14.0.0.xml	2026-09-22 13:21:44.508201	103	EXECUTED	9:2c374ad2cdfe20e2905a84c8fac48460	customChange		\N	4.33.0	\N	\N	0083299630
15.0.0-KEYCLOAK-18467	keycloak	META-INF/jpa-changelog-15.0.0.xml	2026-09-22 13:21:44.51245	104	EXECUTED	9:47a760639ac597360a8219f5b768b4de	addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...		\N	4.33.0	\N	\N	0083299630
17.0.0-9562	keycloak	META-INF/jpa-changelog-17.0.0.xml	2026-09-22 13:21:44.527881	105	EXECUTED	9:a6272f0576727dd8cad2522335f5d99e	createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY		\N	4.33.0	\N	\N	0083299630
18.0.0-10625-IDX_ADMIN_EVENT_TIME	keycloak	META-INF/jpa-changelog-18.0.0.xml	2026-09-22 13:21:44.544209	106	EXECUTED	9:015479dbd691d9cc8669282f4828c41d	createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY		\N	4.33.0	\N	\N	0083299630
18.0.15-30992-index-consent	keycloak	META-INF/jpa-changelog-18.0.15.xml	2026-09-22 13:21:44.562732	107	EXECUTED	9:80071ede7a05604b1f4906f3bf3b00f0	createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE		\N	4.33.0	\N	\N	0083299630
19.0.0-10135	keycloak	META-INF/jpa-changelog-19.0.0.xml	2026-09-22 13:21:44.565985	108	EXECUTED	9:9518e495fdd22f78ad6425cc30630221	customChange		\N	4.33.0	\N	\N	0083299630
20.0.0-12964-supported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-09-22 13:21:44.581322	109	EXECUTED	9:e5f243877199fd96bcc842f27a1656ac	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.33.0	\N	\N	0083299630
20.0.0-12964-supported-dbs-edb-migration	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-09-22 13:21:44.600628	110	EXECUTED	9:a6b18a8e38062df5793edbe064f4aecd	dropIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE; createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.33.0	\N	\N	0083299630
20.0.0-12964-unsupported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-09-22 13:21:44.601444	111	MARK_RAN	9:1a6fcaa85e20bdeae0a9ce49b41946a5	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.33.0	\N	\N	0083299630
client-attributes-string-accomodation-fixed-pre-drop-index	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-09-22 13:21:44.603343	112	EXECUTED	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
client-attributes-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-09-22 13:21:44.607163	113	EXECUTED	9:3f332e13e90739ed0c35b0b25b7822ca	addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
client-attributes-string-accomodation-fixed-post-create-index	keycloak	META-INF/jpa-changelog-20.0.0.xml	2026-09-22 13:21:44.607925	114	MARK_RAN	9:bd2bd0fc7768cf0845ac96a8786fa735	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
21.0.2-17277	keycloak	META-INF/jpa-changelog-21.0.2.xml	2026-09-22 13:21:44.610184	115	EXECUTED	9:7ee1f7a3fb8f5588f171fb9a6ab623c0	customChange		\N	4.33.0	\N	\N	0083299630
21.1.0-19404	keycloak	META-INF/jpa-changelog-21.1.0.xml	2026-09-22 13:21:44.621774	116	EXECUTED	9:3d7e830b52f33676b9d64f7f2b2ea634	modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER		\N	4.33.0	\N	\N	0083299630
21.1.0-19404-2	keycloak	META-INF/jpa-changelog-21.1.0.xml	2026-09-22 13:21:44.62306	117	MARK_RAN	9:627d032e3ef2c06c0e1f73d2ae25c26c	addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...		\N	4.33.0	\N	\N	0083299630
22.0.0-17484-updated	keycloak	META-INF/jpa-changelog-22.0.0.xml	2026-09-22 13:21:44.625668	118	EXECUTED	9:90af0bfd30cafc17b9f4d6eccd92b8b3	customChange		\N	4.33.0	\N	\N	0083299630
23.0.0-12062	keycloak	META-INF/jpa-changelog-23.0.0.xml	2026-09-22 13:21:44.630309	120	EXECUTED	9:2168fbe728fec46ae9baf15bf80927b8	addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG		\N	4.33.0	\N	\N	0083299630
23.0.0-17258	keycloak	META-INF/jpa-changelog-23.0.0.xml	2026-09-22 13:21:44.633367	121	EXECUTED	9:36506d679a83bbfda85a27ea1864dca8	addColumn tableName=EVENT_ENTITY		\N	4.33.0	\N	\N	0083299630
24.0.0-9758	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-09-22 13:21:44.692334	122	EXECUTED	9:502c557a5189f600f0f445a9b49ebbce	addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...		\N	4.33.0	\N	\N	0083299630
24.0.0-9758-2	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-09-22 13:21:44.696022	123	EXECUTED	9:bf0fdee10afdf597a987adbf291db7b2	customChange		\N	4.33.0	\N	\N	0083299630
24.0.0-26618-drop-index-if-present	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-09-22 13:21:44.700006	124	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
24.0.0-26618-reindex	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-09-22 13:21:44.715631	125	EXECUTED	9:08707c0f0db1cef6b352db03a60edc7f	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
24.0.0-26618-edb-migration	keycloak	META-INF/jpa-changelog-24.0.0.xml	2026-09-22 13:21:44.736313	126	EXECUTED	9:2f684b29d414cd47efe3a3599f390741	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES; createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
24.0.2-27228	keycloak	META-INF/jpa-changelog-24.0.2.xml	2026-09-22 13:21:44.738643	127	EXECUTED	9:eaee11f6b8aa25d2cc6a84fb86fc6238	customChange		\N	4.33.0	\N	\N	0083299630
24.0.2-27967-drop-index-if-present	keycloak	META-INF/jpa-changelog-24.0.2.xml	2026-09-22 13:21:44.73972	128	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
24.0.2-27967-reindex	keycloak	META-INF/jpa-changelog-24.0.2.xml	2026-09-22 13:21:44.742167	129	MARK_RAN	9:d3d977031d431db16e2c181ce49d73e9	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.33.0	\N	\N	0083299630
25.0.0-28265-tables	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.74581	130	EXECUTED	9:deda2df035df23388af95bbd36c17cef	addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	0083299630
25.0.0-28265-index-creation	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.763226	131	EXECUTED	9:3e96709818458ae49f3c679ae58d263a	createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
25.0.0-28265-index-cleanup-uss-createdon	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.768197	132	EXECUTED	9:78ab4fc129ed5e8265dbcc3485fba92f	dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
25.0.0-28265-index-cleanup-uss-preload	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.773823	133	EXECUTED	9:de5f7c1f7e10994ed8b62e621d20eaab	dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
25.0.0-28265-index-cleanup-uss-by-usersess	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.778229	134	EXECUTED	9:6eee220d024e38e89c799417ec33667f	dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
25.0.0-28265-index-cleanup-css-preload	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.78394	135	EXECUTED	9:5411d2fb2891d3e8d63ddb55dfa3c0c9	dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	0083299630
25.0.0-28265-index-2-mysql	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.784912	136	MARK_RAN	9:b7ef76036d3126bb83c2423bf4d449d6	createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
25.0.0-28265-index-2-not-mysql	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.80131	137	EXECUTED	9:23396cf51ab8bc1ae6f0cac7f9f6fcf7	createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
25.0.0-org	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.809954	138	EXECUTED	9:5c859965c2c9b9c72136c360649af157	createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN		\N	4.33.0	\N	\N	0083299630
unique-consentuser	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.816176	139	EXECUTED	9:5857626a2ea8767e9a6c66bf3a2cb32f	customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...		\N	4.33.0	\N	\N	0083299630
unique-consentuser-edb-migration	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.820918	140	MARK_RAN	9:5857626a2ea8767e9a6c66bf3a2cb32f	customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...		\N	4.33.0	\N	\N	0083299630
unique-consentuser-mysql	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.82206	141	MARK_RAN	9:b79478aad5adaa1bc428e31563f55e8e	customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...		\N	4.33.0	\N	\N	0083299630
25.0.0-28861-index-creation	keycloak	META-INF/jpa-changelog-25.0.0.xml	2026-09-22 13:21:44.856041	142	EXECUTED	9:b9acb58ac958d9ada0fe12a5d4794ab1	createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET		\N	4.33.0	\N	\N	0083299630
26.0.0-org-alias	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.859945	143	EXECUTED	9:6ef7d63e4412b3c2d66ed179159886a4	addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG		\N	4.33.0	\N	\N	0083299630
26.0.0-org-group	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.865057	144	EXECUTED	9:da8e8087d80ef2ace4f89d8c5b9ca223	addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange		\N	4.33.0	\N	\N	0083299630
26.0.0-org-indexes	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.880807	145	EXECUTED	9:79b05dcd610a8c7f25ec05135eec0857	createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN		\N	4.33.0	\N	\N	0083299630
26.0.0-org-group-membership	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.88448	146	EXECUTED	9:a6ace2ce583a421d89b01ba2a28dc2d4	addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP		\N	4.33.0	\N	\N	0083299630
31296-persist-revoked-access-tokens	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.887497	147	EXECUTED	9:64ef94489d42a358e8304b0e245f0ed4	createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN		\N	4.33.0	\N	\N	0083299630
31725-index-persist-revoked-access-tokens	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.903917	148	EXECUTED	9:b994246ec2bf7c94da881e1d28782c7b	createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN		\N	4.33.0	\N	\N	0083299630
26.0.0-idps-for-login	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.93631	149	EXECUTED	9:51f5fffadf986983d4bd59582c6c1604	addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange		\N	4.33.0	\N	\N	0083299630
26.0.0-32583-drop-redundant-index-on-client-session	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.942133	150	EXECUTED	9:24972d83bf27317a055d234187bb4af9	dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	0083299630
26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.959277	151	EXECUTED	9:febdc0f47f2ed241c59e60f58c3ceea5	dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...		\N	4.33.0	\N	\N	0083299630
26.0.0-33201-org-redirect-url	keycloak	META-INF/jpa-changelog-26.0.0.xml	2026-09-22 13:21:44.961088	152	EXECUTED	9:4d0e22b0ac68ebe9794fa9cb752ea660	addColumn tableName=ORG		\N	4.33.0	\N	\N	0083299630
29399-jdbc-ping-default	keycloak	META-INF/jpa-changelog-26.1.0.xml	2026-09-22 13:21:44.965749	153	EXECUTED	9:007dbe99d7203fca403b89d4edfdf21e	createTable tableName=JGROUPS_PING; addPrimaryKey constraintName=CONSTRAINT_JGROUPS_PING, tableName=JGROUPS_PING		\N	4.33.0	\N	\N	0083299630
26.1.0-34013	keycloak	META-INF/jpa-changelog-26.1.0.xml	2026-09-22 13:21:44.968791	154	EXECUTED	9:e6b686a15759aef99a6d758a5c4c6a26	addColumn tableName=ADMIN_EVENT_ENTITY		\N	4.33.0	\N	\N	0083299630
26.1.0-34380	keycloak	META-INF/jpa-changelog-26.1.0.xml	2026-09-22 13:21:44.972925	155	EXECUTED	9:ac8b9edb7c2b6c17a1c7a11fcf5ccf01	dropTable tableName=USERNAME_LOGIN_FAILURE		\N	4.33.0	\N	\N	0083299630
26.2.0-36750	keycloak	META-INF/jpa-changelog-26.2.0.xml	2026-09-22 13:21:44.977385	156	EXECUTED	9:b49ce951c22f7eb16480ff085640a33a	createTable tableName=SERVER_CONFIG		\N	4.33.0	\N	\N	0083299630
26.2.0-26106	keycloak	META-INF/jpa-changelog-26.2.0.xml	2026-09-22 13:21:44.979375	157	EXECUTED	9:b5877d5dab7d10ff3a9d209d7beb6680	addColumn tableName=CREDENTIAL		\N	4.33.0	\N	\N	0083299630
26.2.6-39866-duplicate	keycloak	META-INF/jpa-changelog-26.2.6.xml	2026-09-22 13:21:44.981269	158	EXECUTED	9:1dc67ccee24f30331db2cba4f372e40e	customChange		\N	4.33.0	\N	\N	0083299630
26.2.6-39866-uk	keycloak	META-INF/jpa-changelog-26.2.6.xml	2026-09-22 13:21:44.9845	159	EXECUTED	9:b70b76f47210cf0a5f4ef0e219eac7cd	addUniqueConstraint constraintName=UK_MIGRATION_VERSION, tableName=MIGRATION_MODEL		\N	4.33.0	\N	\N	0083299630
26.2.6-40088-duplicate	keycloak	META-INF/jpa-changelog-26.2.6.xml	2026-09-22 13:21:44.986499	160	EXECUTED	9:cc7e02ed69ab31979afb1982f9670e8f	customChange		\N	4.33.0	\N	\N	0083299630
26.2.6-40088-uk	keycloak	META-INF/jpa-changelog-26.2.6.xml	2026-09-22 13:21:44.989435	161	EXECUTED	9:5bb848128da7bc4595cc507383325241	addUniqueConstraint constraintName=UK_MIGRATION_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	4.33.0	\N	\N	0083299630
26.3.0-groups-description	keycloak	META-INF/jpa-changelog-26.3.0.xml	2026-09-22 13:21:44.991742	162	EXECUTED	9:e1a3c05574326fb5b246b73b9a4c4d49	addColumn tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	0083299630
26.4.0-40933-saml-encryption-attributes	keycloak	META-INF/jpa-changelog-26.4.0.xml	2026-09-22 13:21:44.993596	163	EXECUTED	9:7e9eaba362ca105efdda202303a4fe49	customChange		\N	4.33.0	\N	\N	0083299630
26.4.0-51321	keycloak	META-INF/jpa-changelog-26.4.0.xml	2026-09-22 13:21:45.008731	164	EXECUTED	9:34bab2bc56f75ffd7e347c580874e306	createIndex indexName=IDX_EVENT_ENTITY_USER_ID_TYPE, tableName=EVENT_ENTITY		\N	4.33.0	\N	\N	0083299630
40343-workflow-state-table	keycloak	META-INF/jpa-changelog-26.4.0.xml	2026-09-22 13:21:45.041866	165	EXECUTED	9:ed3ab4723ceed210e5b5e60ac4562106	createTable tableName=WORKFLOW_STATE; addPrimaryKey constraintName=PK_WORKFLOW_STATE, tableName=WORKFLOW_STATE; addUniqueConstraint constraintName=UQ_WORKFLOW_RESOURCE, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_STEP, table...		\N	4.33.0	\N	\N	0083299630
26.5.0-index-offline-css-by-client	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.059585	166	EXECUTED	9:383e981ce95d16e32af757b7998820f7	createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	0083299630
26.5.0-index-offline-css-by-client-storage-provider	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.078176	167	EXECUTED	9:f5bc200e6fa7d7e483854dee535ca425	createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_STORAGE_PROVIDER, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	0083299630
26.5.0-idp-config-allow-null-fixed-drop-mssql-index	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.078922	168	MARK_RAN	9:50c51d2c98cd1d624eb1c485c3cf1f75	dropIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER		\N	4.33.0	\N	\N	0083299630
26.5.0-idp-config-allow-null	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.085431	169	EXECUTED	9:b667fb087874303b324c1af7fae4f606	dropDefaultValue columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=STORE_TOKEN, tableName=IDENTITY_PROVIDER; dropDefaultValue columnName...		\N	4.33.0	\N	\N	0083299630
26.5.0-idp-config-allow-null-fixed-create-mssql-index	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.086264	170	MARK_RAN	9:dcbbb24c151c3b0b59f12fede23cc94d	createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER		\N	4.33.0	\N	\N	0083299630
26.5.0-remove-workflow-provider-id-column	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.106752	171	EXECUTED	9:d8eeb324484d45e946d03b953e168b21	dropIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; dropColumn columnName=WORKFLOW_PROVIDER_ID, tableName=WORKFLOW_STATE		\N	4.33.0	\N	\N	0083299630
26.5.0-add-remember-me	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.110488	172	EXECUTED	9:a7273ea8b21bd2f674c9c49141999f05	addColumn tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
26.5.0-add-sess-refresh-idx	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.13076	173	EXECUTED	9:ce49383d317ccbcd3434d1f21172b0b7	createIndex indexName=IDX_USER_SESSION_EXPIRATION_CREATED, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
26.5.0-add-sess-create-idx	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.152784	174	EXECUTED	9:aaee09e23a4d8468fbc5c51b7b314c58	createIndex indexName=IDX_USER_SESSION_EXPIRATION_LAST_REFRESH, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
26.5.0-drop-sess-refresh-idx	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.15884	175	EXECUTED	9:f0082210b6ccbbaf81287c27aa23753c	dropIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION		\N	4.33.0	\N	\N	0083299630
26.5.0-mysql-mariadb-default-charset-collation	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.160104	176	MARK_RAN	9:1b383fa60d2db0a8952b365e725f9d16	customChange		\N	4.33.0	\N	\N	0083299630
26.5.0-invitations-table-fixed2	keycloak	META-INF/jpa-changelog-26.5.0.xml	2026-09-22 13:21:45.218265	177	EXECUTED	9:322cb11fc03181903dcd67a54f8b3cf0	createTable tableName=ORG_INVITATION; addForeignKeyConstraint baseTableName=ORG_INVITATION, constraintName=FK_ORG_INVITATION_ORG, referencedTableName=ORG; createIndex indexName=IDX_ORG_INVITATION_ORG_ID, tableName=ORG_INVITATION; createIndex index...		\N	4.33.0	\N	\N	0083299630
26.6.0-45009-broker-link-user-id	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.238754	178	EXECUTED	9:05026bbbc8d2ead5afcbda2f5fdf3a2b	createIndex indexName=IDX_BROKER_LINK_USER_ID, tableName=BROKER_LINK		\N	4.33.0	\N	\N	0083299630
26.6.0-45009-broker-link-identity-provider	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.258169	179	EXECUTED	9:7d9a0253c9de7be754efef8bba4265bd	createIndex indexName=IDX_BROKER_LINK_IDENTITY_PROVIDER, tableName=BROKER_LINK		\N	4.33.0	\N	\N	0083299630
26.6.0-org-group-relationship	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.278147	180	EXECUTED	9:05685853fba030f53548ac6bf23245e3	addColumn tableName=KEYCLOAK_GROUP; addForeignKeyConstraint baseTableName=KEYCLOAK_GROUP, constraintName=FK_GROUP_ORGANIZATION, referencedTableName=ORG; createIndex indexName=IDX_GROUP_ORG_ID, tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	0083299630
26.6.0-44424-index-css-user-session-and-offline	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.297315	181	EXECUTED	9:a704d8598df241a3fd3cb91b6ab4b2d4	createIndex indexName=IDX_OFFLINE_CSS_BY_USER_SESSION_AND_OFFLINE, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	0083299630
26.6.0-44424-create-realm-in-client-session	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.301528	182	EXECUTED	9:77dbbc72d943e98cfe472ba8cc56a31c	addColumn tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	0083299630
26.6.0-44424-set-realm-in-client-session	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.304172	183	EXECUTED	9:3964a3148d32a55ef81126e23cdf6721	customChange		\N	4.33.0	\N	\N	0083299630
26.6.0-44424-idx-css-realm-and-clients	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.325533	184	EXECUTED	9:a093877fff41185ac24103be80e00968	createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_AND_REALM, tableName=OFFLINE_CLIENT_SESSION		\N	4.33.0	\N	\N	0083299630
26.6.0-add-last-modified-timestamp-user	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.329763	185	EXECUTED	9:8aa583d2cdd9e913dff42fecd626c560	addColumn tableName=USER_ENTITY		\N	4.33.0	\N	\N	0083299630
26.6.0-add-timestamps-group	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.332759	186	EXECUTED	9:4363d45dc25105a3fc5db9ff6936b0a9	addColumn tableName=KEYCLOAK_GROUP		\N	4.33.0	\N	\N	0083299630
26.6.0-43829-user-created-timestamp-index	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.355738	187	EXECUTED	9:f2531a49b8bb21a7a97966d88fd1a411	createIndex indexName=IDX_USER_CREATED_TIMESTAMP, tableName=USER_ENTITY		\N	4.33.0	\N	\N	0083299630
26.6.0-48716-create-mssql-idp-index	keycloak	META-INF/jpa-changelog-26.6.0.xml	2026-09-22 13:21:45.356859	188	MARK_RAN	9:dcbbb24c151c3b0b59f12fede23cc94d	createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER		\N	4.33.0	\N	\N	0083299630
26.7.0-jdbcping-timestamp	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.360437	189	EXECUTED	9:9a91f62e494bd013594e007b74d01638	addColumn tableName=JGROUPS_PING		\N	4.33.0	\N	\N	0083299630
26.7.0-45292-realm-display-name-add-column	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.363274	190	EXECUTED	9:1de8c7824ce4fd7c739db6195f42be21	addColumn tableName=REALM		\N	4.33.0	\N	\N	0083299630
26.7.0-45292-realm-display-name-migrate-data	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.365809	191	EXECUTED	9:293096bc554dd51428d1d9882f2de1dd	customChange		\N	4.33.0	\N	\N	0083299630
26.7.0-45292-realm-display-name-remove-attribute	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.368409	192	EXECUTED	9:a08357e3b0908c09d478e692cf82f865	delete tableName=REALM_ATTRIBUTE		\N	4.33.0	\N	\N	0083299630
26.7.0-verifiable-credential	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.376963	193	EXECUTED	9:68d8df23794085e79ba08b5046cba31d	createTable tableName=USER_VER_CREDENTIAL; addPrimaryKey constraintName=CONSTRAINT_VCRED_PM, tableName=USER_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=USER_VER_CREDENTIAL, constraintName=FK_VCRED_USER, referencedTableName=USER_ENTITY; a...		\N	4.33.0	\N	\N	0083299630
26.7.0-federated-verifiable-credentials-1	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.399534	194	EXECUTED	9:49092fa73b1c2b3afca48d91b8111c65	createTable tableName=FED_USER_VER_CREDENTIAL; addUniqueConstraint constraintName=UK_FED_USER_VC, tableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_USER_VC_REALM_USER, tableName=FED_USER_VER_CREDENTIAL		\N	4.33.0	\N	\N	0083299630
26.7.0-outbox	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.473756	195	EXECUTED	9:338b2743ca1be95f895d8f9b0cbe7b55	createTable tableName=OUTBOX_ENTRY; addUniqueConstraint constraintName=UC_OUTBOX_KIND_OWNER_CORRELATION, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_DRAIN, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_REALM, tableName=OUTB...		\N	4.33.0	\N	\N	0083299630
26.7.0-9686-dynamic-scopes-consent	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.480898	196	EXECUTED	9:fb689bc3ff64e174d6319014b38876f1	addColumn tableName=USER_CONSENT_CLIENT_SCOPE; dropPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addColumn...		\N	4.33.0	\N	\N	0083299630
26.7.0-46204-issued-ver-credential-table	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.505563	197	EXECUTED	9:4918c6f68ba90ce417f1aaa031013168	createTable tableName=ISSUED_VER_CREDENTIAL; addPrimaryKey constraintName=PK_ISSUED_VER_CREDENTIAL, tableName=ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=ISSUED_VER_CREDENTIAL, constraintName=FK_ISSUED_VER_CREDENTIAL_USER, referen...		\N	4.33.0	\N	\N	0083299630
26.7.0-issued-ver-credential-expires-at-index	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.523974	198	EXECUTED	9:ab9e4c0c9f21d9217ffe52968a3cf732	createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_EXPIRES_AT, tableName=ISSUED_VER_CREDENTIAL		\N	4.33.0	\N	\N	0083299630
26.7.0-issued-ver-credential-vc-id-index	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.543482	199	EXECUTED	9:1c9b18926e48b4b66d0341400bd13834	createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_VC, tableName=ISSUED_VER_CREDENTIAL		\N	4.33.0	\N	\N	0083299630
26.7.0-federated-issued-ver-credential	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.612783	200	EXECUTED	9:3d610f5527879623a0d2362e64fa667f	createTable tableName=FED_ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=FED_ISSUED_VER_CREDENTIAL, constraintName=FK_FED_ISSUED_VC_VER_CRED, referencedTableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_ISSUED_VC_USER, ...		\N	4.33.0	\N	\N	0083299630
26.7.0-persistent-auth-session-root-table	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.618082	201	EXECUTED	9:ad622d5eebdf468747a0d08d2367a68e	createTable tableName=ROOT_AUTH_SESSION		\N	4.33.0	\N	\N	0083299630
26.7.0-persistent-auth-session-root-index	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.677379	202	EXECUTED	9:3090cd11d2dfeb5df754f41c0ffa35d7	createIndex indexName=IDX_ROOT_AUTH_SESSION_REALM, tableName=ROOT_AUTH_SESSION		\N	4.33.0	\N	\N	0083299630
26.7.0-persistent-auth-session-table	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.686804	203	EXECUTED	9:609b8a172e43f617bb8920efd2b9ae5f	createTable tableName=AUTH_SESSION; addPrimaryKey constraintName=PK_AUTH_SESSION, tableName=AUTH_SESSION; addForeignKeyConstraint baseTableName=AUTH_SESSION, constraintName=FK_AUTH_SESSION_ROOT, referencedTableName=ROOT_AUTH_SESSION		\N	4.33.0	\N	\N	0083299630
26.7.0-single-use-object-table	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.690208	204	EXECUTED	9:22bc4eb8e456b3b7be2808e457a44cb7	createTable tableName=SINGLE_USE_OBJECT		\N	4.33.0	\N	\N	0083299630
26.7.0-single-use-object-index	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.709109	205	EXECUTED	9:b2ad66c013f48dc131ce109eface7fa5	createIndex indexName=IDX_SINGLE_USE_OBJ_EXPIRE, tableName=SINGLE_USE_OBJECT		\N	4.33.0	\N	\N	0083299630
26.7.0-login-failure-table	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.713837	206	EXECUTED	9:671b50f88904b24ceb02463dd2d0c045	createTable tableName=LOGIN_FAILURE; addPrimaryKey constraintName=PK_LOGIN_FAILURE, tableName=LOGIN_FAILURE		\N	4.33.0	\N	\N	0083299630
26.7.0-login-failure-index	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.734348	207	EXECUTED	9:f554afc6ad14784c99f6ad8811ac30ec	createIndex indexName=IDX_LOGIN_FAILURE_EXPIRE, tableName=LOGIN_FAILURE		\N	4.33.0	\N	\N	0083299630
26.7.0-add-timestamps-client	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.737921	208	EXECUTED	9:df5324c82398b446690b206c07649d40	addColumn tableName=CLIENT		\N	4.33.0	\N	\N	0083299630
26.7.0-add-last-modified-timestamp-client	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.742432	209	EXECUTED	9:bae67d2faa5438ee35adfbb20a53c3c6	addColumn tableName=CLIENT		\N	4.33.0	\N	\N	0083299630
26.7.0-cluster-event	keycloak	META-INF/jpa-changelog-26.7.0.xml	2026-09-22 13:21:45.76409	210	EXECUTED	9:556b201eb9c378fa05d5bf22ec9c8dcf	createTable tableName=CLUSTER_EVENT; addPrimaryKey constraintName=PK_CLUSTER_EVENT, tableName=CLUSTER_EVENT; createIndex indexName=IDX_CLUSTER_EVENT_TARGET, tableName=CLUSTER_EVENT		\N	4.33.0	\N	\N	0083299630
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
1000	f	\N	\N
\.


--
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.default_client_scope (realm_id, scope_id, default_scope) FROM stdin;
28893197-b00a-4ee3-97e6-f2e6d1a55902	9ed3439a-efd4-40aa-9098-e15118fbc029	f
28893197-b00a-4ee3-97e6-f2e6d1a55902	cf97c84b-fe11-4188-b17f-862bd522d8ae	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	437b2f16-0428-4c20-bbc4-91725fa84419	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	a7928fad-f421-4d9e-832a-bc3d6155c063	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	250e211e-5b2f-41fe-a8c1-876269bd234c	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	3fcec8af-2f38-4386-b121-37289642a50f	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	9303a12e-0c32-459b-9e1b-a431466764b0	f
28893197-b00a-4ee3-97e6-f2e6d1a55902	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7	f
28893197-b00a-4ee3-97e6-f2e6d1a55902	76007904-3ef4-4270-8287-5ab2655f8112	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	9adeb955-9442-4725-9c5a-6109debb1e7a	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	9d138ed9-75bb-4f2b-9db2-37e95cd9345c	f
28893197-b00a-4ee3-97e6-f2e6d1a55902	3f02d134-edc1-44b1-a3bf-1659c2db9a91	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f	t
28893197-b00a-4ee3-97e6-f2e6d1a55902	1db57098-840b-4343-a174-eaf45ac2623a	f
6415217a-07af-457d-9def-590e3d8495b3	4c3d6205-0e8f-49d5-bfbb-22fd15a46629	f
6415217a-07af-457d-9def-590e3d8495b3	8e5f0d45-a9c2-4371-b98a-a420cc217a73	t
6415217a-07af-457d-9def-590e3d8495b3	49e8895f-68ea-4f99-913e-4f9036016275	t
6415217a-07af-457d-9def-590e3d8495b3	263a41f8-f9c2-425b-a71b-918b54dafad4	t
6415217a-07af-457d-9def-590e3d8495b3	6e6d99af-f520-405c-86f1-39471b7d3436	t
6415217a-07af-457d-9def-590e3d8495b3	6aad159e-e90d-4d68-919e-fecefece9b18	t
6415217a-07af-457d-9def-590e3d8495b3	2a5c9d93-ecb2-4f64-86c3-19be578057e8	f
6415217a-07af-457d-9def-590e3d8495b3	53a08e25-fdee-40c7-bbec-648af0b51ff7	f
6415217a-07af-457d-9def-590e3d8495b3	762bb7c4-3ff9-4670-ab7d-9576b26499ea	t
6415217a-07af-457d-9def-590e3d8495b3	8b383722-b769-44c6-bbcc-298528f27d6d	t
6415217a-07af-457d-9def-590e3d8495b3	d8c952af-25ed-4430-a59a-01f05813e16a	f
6415217a-07af-457d-9def-590e3d8495b3	6b14acd6-3a26-427d-803d-e7032b4f8b01	t
6415217a-07af-457d-9def-590e3d8495b3	82534042-2578-4006-a6b2-fe9a16547be9	t
6415217a-07af-457d-9def-590e3d8495b3	37482232-45fd-46df-bb95-f28015591efd	f
\.


--
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.event_entity (id, client_id, details_json, error, ip_address, realm_id, session_id, event_time, type, user_id, details_json_long_value) FROM stdin;
\.


--
-- Data for Name: fed_issued_ver_credential; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_issued_ver_credential (id, user_id, realm_id, storage_provider_id, ver_credential_id, issued_at, expires_at, client_id, revision) FROM stdin;
\.


--
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_user_attribute (id, name, user_id, realm_id, storage_provider_id, value, long_value_hash, long_value_hash_lower_case, long_value) FROM stdin;
\.


--
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_user_consent (id, client_id, user_id, realm_id, storage_provider_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_user_consent_cl_scope (user_consent_id, scope_id, parameter) FROM stdin;
\.


--
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_user_credential (id, salt, type, created_date, user_id, realm_id, storage_provider_id, user_label, secret_data, credential_data, priority) FROM stdin;
\.


--
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_user_group_membership (group_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_user_required_action (required_action, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_user_role_mapping (role_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_ver_credential; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.fed_user_ver_credential (id, user_id, realm_id, storage_provider_id, client_scope_id, revision, user_attributes, created_date, updated_date, version) FROM stdin;
\.


--
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.federated_identity (identity_provider, realm_id, federated_user_id, federated_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.federated_user (id, storage_provider_id, realm_id) FROM stdin;
\.


--
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.group_attribute (id, name, value, group_id) FROM stdin;
\.


--
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.group_role_mapping (role_id, group_id) FROM stdin;
\.


--
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.identity_provider (internal_id, enabled, provider_alias, provider_id, store_token, authenticate_by_default, realm_id, add_token_role, trust_email, first_broker_login_flow_id, post_broker_login_flow_id, provider_display_name, link_only, organization_id, hide_on_login) FROM stdin;
\.


--
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.identity_provider_config (identity_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.identity_provider_mapper (id, name, idp_alias, idp_mapper_name, realm_id) FROM stdin;
\.


--
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.idp_mapper_config (idp_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: issued_ver_credential; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.issued_ver_credential (id, user_id, ver_credential_id, issued_at, expires_at, client_id, revision) FROM stdin;
\.


--
-- Data for Name: jgroups_ping; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.jgroups_ping (address, name, cluster_name, ip, coord, last_update, coordinated_by) FROM stdin;
\.


--
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.keycloak_group (id, name, parent_group, realm_id, type, description, org_id, created_timestamp, last_modified_timestamp) FROM stdin;
\.


--
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.keycloak_role (id, client_realm_constraint, client_role, description, name, realm_id, client, realm) FROM stdin;
cd3a29f2-9b61-47af-a813-f04f36297347	28893197-b00a-4ee3-97e6-f2e6d1a55902	f	${role_default-roles}	default-roles-master	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N	\N
79d4c3e0-36f9-4931-89d5-d1708b6537bf	28893197-b00a-4ee3-97e6-f2e6d1a55902	f	${role_create-realm}	create-realm	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N	\N
de2a42ca-76e9-43a3-98d5-9abc1958b719	28893197-b00a-4ee3-97e6-f2e6d1a55902	f	${role_admin}	admin	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N	\N
6f4d4b1e-0e7f-4205-9724-3ce31937f12a	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_create-client}	create-client	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
b27e6f54-aba4-4169-ac89-fa05331ffd4a	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_view-realm}	view-realm	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
92bfebf0-96b0-489d-9ef9-5a710f773a05	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_view-users}	view-users	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
deb030d9-a186-4008-bf38-c62931bbafe9	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_view-clients}	view-clients	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
d62eb393-d3db-479d-b47d-18a5f0ff6c00	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_view-events}	view-events	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
95318046-5114-42fb-92fd-2b10ef52f9a8	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_view-identity-providers}	view-identity-providers	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
23d2f512-2097-4ca1-8974-3145130f8e66	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_view-authorization}	view-authorization	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
d392ed75-2021-4a04-bdf4-cc39e5f47e24	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_view-organizations}	view-organizations	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
7679e309-a29b-4eab-b631-702e258f8d63	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_manage-realm}	manage-realm	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
12e3d8bb-c1ad-4d63-9b9d-a4bf1faff191	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_manage-users}	manage-users	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
acd6acfc-9172-4324-acf3-3d6d0cf24b07	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_manage-clients}	manage-clients	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
81ce0e18-7e50-47e6-b04b-a220ee94c836	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_manage-events}	manage-events	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
3b648957-90c0-4c75-a2fa-0fa5834b44ff	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_manage-identity-providers}	manage-identity-providers	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
a5639e73-1a5e-41b6-ad4c-32ecf0136228	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_manage-authorization}	manage-authorization	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
a21ab2d7-32cf-42e6-a7e8-44965036da64	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_manage-organizations}	manage-organizations	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
3ae09de9-e5e1-44ae-8008-b22b2064ab32	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_query-users}	query-users	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
a9f605d8-3a36-4da3-861d-935d4dbba64b	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_query-clients}	query-clients	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
075052fb-142a-427a-8478-c6e145163156	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_query-realms}	query-realms	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
0201ee94-fbd2-4e41-9318-2d528605cd10	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_query-groups}	query-groups	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
5f45f9cd-9f89-434e-ae1e-000c62571ceb	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_query-organizations}	query-organizations	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
a16cd31a-8108-4d5e-af10-6435ea2b0ff9	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	${role_view-profile}	view-profile	28893197-b00a-4ee3-97e6-f2e6d1a55902	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	\N
9fa04a4d-8987-42a4-8cf8-1c004a41aa2d	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	${role_manage-account}	manage-account	28893197-b00a-4ee3-97e6-f2e6d1a55902	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	\N
708ea108-5246-4fac-b693-8bc3a2213b0f	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	${role_manage-account-links}	manage-account-links	28893197-b00a-4ee3-97e6-f2e6d1a55902	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	\N
3d2d6b4a-a934-4d14-b97d-cf73fb6db86f	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	${role_view-applications}	view-applications	28893197-b00a-4ee3-97e6-f2e6d1a55902	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	\N
9c076604-940d-4094-9989-8462e278d37f	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	${role_view-consent}	view-consent	28893197-b00a-4ee3-97e6-f2e6d1a55902	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	\N
e5a6f115-143a-4bef-a21a-e4e420c8bf88	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	${role_manage-consent}	manage-consent	28893197-b00a-4ee3-97e6-f2e6d1a55902	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	\N
06dcd7f7-0bdb-444c-985a-b91935673adf	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	${role_view-groups}	view-groups	28893197-b00a-4ee3-97e6-f2e6d1a55902	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	\N
c08e09fd-cded-45f8-8a70-1c4932e9be74	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	t	${role_delete-account}	delete-account	28893197-b00a-4ee3-97e6-f2e6d1a55902	a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	\N
c6c77184-b59f-4631-8549-e5edceeb56f0	816db887-b612-40f3-bd7d-ebba56eee5aa	t	${role_read-token}	read-token	28893197-b00a-4ee3-97e6-f2e6d1a55902	816db887-b612-40f3-bd7d-ebba56eee5aa	\N
41611548-e4f0-4420-88f5-365b1f657faf	a1b270bd-4d49-4150-acdc-307fd9db64d4	t	${role_impersonation}	impersonation	28893197-b00a-4ee3-97e6-f2e6d1a55902	a1b270bd-4d49-4150-acdc-307fd9db64d4	\N
1b70dae5-618b-41b0-8f31-8793dadd40e5	28893197-b00a-4ee3-97e6-f2e6d1a55902	f	${role_offline-access}	offline_access	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N	\N
e8811d2b-7b3f-4046-9571-e020f86840f9	28893197-b00a-4ee3-97e6-f2e6d1a55902	f	${role_uma_authorization}	uma_authorization	28893197-b00a-4ee3-97e6-f2e6d1a55902	\N	\N
3b8944bf-1a7f-4b64-90b5-f9da50ef8559	6415217a-07af-457d-9def-590e3d8495b3	f	${role_default-roles}	default-roles-activities	6415217a-07af-457d-9def-590e3d8495b3	\N	\N
422c82c4-9e99-4e0e-bc76-81945eaaa19f	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_create-client}	create-client	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
6af9bff5-6a06-49d6-91a1-3e5b79c2fb7f	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_view-realm}	view-realm	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
0eade0f3-31ed-4c69-97ef-2d39aa3584d4	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_view-users}	view-users	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
b52d84c8-f0e4-4051-ab15-afbde355d20c	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_view-clients}	view-clients	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
3d5747f6-b1f5-4b88-82b1-eb3546f17ca7	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_view-events}	view-events	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
98b0fc8c-6cf1-4243-8fd0-1305acca3248	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_view-identity-providers}	view-identity-providers	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
2ebb8c2a-fc6b-4eb0-a8a6-5a4be9c06cf3	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_view-authorization}	view-authorization	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
47fdcd93-27f1-435f-a034-3c8c47f46e64	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_view-organizations}	view-organizations	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
57ac5b18-31f8-40a4-8ed7-7e90b8f9c63c	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_manage-realm}	manage-realm	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
ebfe7410-9083-45df-b7fc-d969e8183db5	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_manage-users}	manage-users	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
a9e74615-8c0a-4a88-b128-87d4fe4acefb	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_manage-clients}	manage-clients	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
783cfaa8-0667-4958-ab68-3b9cc05b3b66	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_manage-events}	manage-events	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
2393493e-e239-4a71-8e3c-3a967d37d48f	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_manage-identity-providers}	manage-identity-providers	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
47aa81bb-0b89-47cb-b0f5-66a82f455f9c	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_manage-authorization}	manage-authorization	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
c5ce2c48-878e-4873-987c-d611e00772f8	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_manage-organizations}	manage-organizations	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
be58a7d2-77f3-4b49-b8d0-61b4d9d24bc6	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_query-users}	query-users	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
b09c00b2-475f-411e-beaf-54dd1b629271	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_query-clients}	query-clients	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
eceb4318-31b7-47bb-845d-586f2cb78c6f	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_query-realms}	query-realms	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
322b242f-ad68-4870-a8f0-2535ad44304d	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_query-groups}	query-groups	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
a3160400-66ab-49fc-b59a-8845737b28af	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_query-organizations}	query-organizations	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
b9281560-8a0b-4b7c-bcb7-a89c64200168	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_realm-admin}	realm-admin	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
f4776263-17a8-4f67-a1d1-459cac7c3b73	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_create-client}	create-client	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
838b3bab-05e8-481e-b212-ebad09cc4fd5	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_view-realm}	view-realm	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
2c99ae8b-2886-49ff-b011-7ced0dfc8a29	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_view-users}	view-users	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
99ad5077-eba9-44d6-9717-ef8633c6e89e	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_view-clients}	view-clients	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
f1b0943e-d356-4452-90c4-06d98deaac75	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_view-events}	view-events	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
f044c17f-208b-442e-80bc-18c0ead1b3cb	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_view-identity-providers}	view-identity-providers	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
9a0eccb0-32bf-4968-a348-c06bbe2d88db	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_view-authorization}	view-authorization	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
ea37e4ba-2208-4dad-b912-21c384f889ef	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_view-organizations}	view-organizations	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
640bd7ce-aa1a-4ed8-9979-40a19278481c	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_manage-realm}	manage-realm	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
16774116-34c8-4c76-a961-cd3f243a2820	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_manage-users}	manage-users	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
820f7def-b0ff-43c7-b137-11289f5718e0	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_manage-clients}	manage-clients	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
7af84e55-7f25-4a9a-b493-fe39d432077a	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_manage-events}	manage-events	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
f57b7b78-79eb-4538-963f-a0148c89dde8	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_manage-identity-providers}	manage-identity-providers	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
d43fa416-5960-4b56-a261-36f36a494c5d	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_manage-authorization}	manage-authorization	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
eeda337f-3de8-4403-becb-eda863563484	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_manage-organizations}	manage-organizations	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
39149f04-98b2-4db0-9524-db72d63d809f	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_query-users}	query-users	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
a8717df3-7924-48ee-b816-18d326afe1aa	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_query-clients}	query-clients	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
6a819f6a-9500-432e-80c7-86dd90e2c568	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_query-realms}	query-realms	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
8464a484-9f80-4d86-8dfb-218fc2a24d4c	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_query-groups}	query-groups	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
f649e1a4-108f-4512-bc97-8d17f670b3c7	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_query-organizations}	query-organizations	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
a9d69317-4a98-4ac9-82b0-f3b0099bab7a	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	${role_view-profile}	view-profile	6415217a-07af-457d-9def-590e3d8495b3	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	\N
ea190450-c4cd-44b5-ba58-9d1ea57afd96	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	${role_manage-account}	manage-account	6415217a-07af-457d-9def-590e3d8495b3	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	\N
8b2bb14b-4b75-430c-b39c-b6f9033fbc1e	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	${role_manage-account-links}	manage-account-links	6415217a-07af-457d-9def-590e3d8495b3	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	\N
8d04db46-d828-418a-8077-e0625ac2ddde	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	${role_view-applications}	view-applications	6415217a-07af-457d-9def-590e3d8495b3	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	\N
65a7a2fe-0078-45b1-85d5-5c215f2444a1	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	${role_view-consent}	view-consent	6415217a-07af-457d-9def-590e3d8495b3	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	\N
a6d88a7b-58b0-4ac8-b1bb-624cf6f81a5d	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	${role_manage-consent}	manage-consent	6415217a-07af-457d-9def-590e3d8495b3	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	\N
8b19a47c-6f24-4f0f-8617-5d749dc9f023	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	${role_view-groups}	view-groups	6415217a-07af-457d-9def-590e3d8495b3	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	\N
263cc1b5-7e12-45b8-b251-20ba2f55dc11	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	t	${role_delete-account}	delete-account	6415217a-07af-457d-9def-590e3d8495b3	8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	\N
d965b87f-d7d7-46b9-bbfe-700a045e9f5c	591706b4-25ee-4b00-8b43-2ddcbda19c73	t	${role_impersonation}	impersonation	28893197-b00a-4ee3-97e6-f2e6d1a55902	591706b4-25ee-4b00-8b43-2ddcbda19c73	\N
9f567a9d-61f8-454a-bfd7-c48c4f0816c5	858c5aad-975b-44f9-98e1-3f537c7caa99	t	${role_impersonation}	impersonation	6415217a-07af-457d-9def-590e3d8495b3	858c5aad-975b-44f9-98e1-3f537c7caa99	\N
1639184e-c060-439d-8197-24b00dc2d076	a4259d89-2259-4c4d-b942-a035ffdfce45	t	${role_read-token}	read-token	6415217a-07af-457d-9def-590e3d8495b3	a4259d89-2259-4c4d-b942-a035ffdfce45	\N
25a9418a-92a6-4d73-b641-256fc0fd2eac	6415217a-07af-457d-9def-590e3d8495b3	f	${role_offline-access}	offline_access	6415217a-07af-457d-9def-590e3d8495b3	\N	\N
8230806a-59f8-435d-85d1-79fcb0b036db	6415217a-07af-457d-9def-590e3d8495b3	f	${role_uma_authorization}	uma_authorization	6415217a-07af-457d-9def-590e3d8495b3	\N	\N
\.


--
-- Data for Name: login_failure; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.login_failure (realm_id, user_id, failed_login_not_before, num_failures, num_temporary_lockouts, last_failure, last_ip_failure, num_secondary_auth_failures) FROM stdin;
\.


--
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.migration_model (id, version, update_time) FROM stdin;
29g7z	26.7.3	1790083307
\.


--
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.offline_client_session (user_session_id, client_id, offline_flag, "timestamp", data, client_storage_provider, external_client_id, version, realm_id) FROM stdin;
M3ObcBLMR0JrsixosYdC1ACw	3ffabbf1-247c-4ec7-9a41-1120dbdb32af	0	1790083578	{"authMethod":"openid-connect","redirectUri":"http://localhost:8080/admin/master/console/","notes":{"clientId":"3ffabbf1-247c-4ec7-9a41-1120dbdb32af","iss":"http://localhost:8080/realms/master","startedAt":"1790083343","response_type":"code","level-of-authentication":"-1","code_challenge_method":"S256","nonce":"1069beb3-77b8-441f-bb1e-557d9369db27","response_mode":"query","scope":"openid","userSessionStartedAt":"1790083343","redirect_uri":"http://localhost:8080/admin/master/console/","state":"8259545e-c3ab-47dd-bbfd-8b9a0dcf5c36","code_challenge":"4kz_EUyF2c2dFlcOQ4Wf1s75aFFd8PHPOHieJIiSI4w"}}	local	local	4	28893197-b00a-4ee3-97e6-f2e6d1a55902
\.


--
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.offline_user_session (user_session_id, user_id, realm_id, created_on, offline_flag, data, last_session_refresh, broker_session_id, version, remember_me) FROM stdin;
M3ObcBLMR0JrsixosYdC1ACw	c2f672a8-093a-4187-99ba-b062595802da	28893197-b00a-4ee3-97e6-f2e6d1a55902	1790083343	0	{"ipAddress":"172.18.0.1","authMethod":"openid-connect","rememberMe":false,"started":0,"notes":{"KC_DEVICE_NOTE":"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xIiwib3MiOiJMaW51eCIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiQ2hyb21lLzE0OC4wLjAiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9","AUTH_TIME":"1790083343","authenticators-completed":"{\\"729b35e7-c8a0-4f56-9c19-a4b159246972\\":1790083343}"},"state":"LOGGED_IN"}	1790083578	\N	4	f
\.


--
-- Data for Name: org; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.org (id, enabled, realm_id, group_id, name, description, alias, redirect_url) FROM stdin;
\.


--
-- Data for Name: org_domain; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.org_domain (id, name, verified, org_id) FROM stdin;
\.


--
-- Data for Name: org_invitation; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.org_invitation (id, organization_id, email, first_name, last_name, created_at, expires_at, invite_link) FROM stdin;
\.


--
-- Data for Name: outbox_entry; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.outbox_entry (id, entry_kind, realm_id, owner_id, container_id, correlation_id, entry_type, payload, metadata, status, attempts, next_attempt_at, last_error, created_at, delivered_at) FROM stdin;
\.


--
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.policy_config (policy_id, name, value) FROM stdin;
\.


--
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.protocol_mapper (id, name, protocol, protocol_mapper_name, client_id, client_scope_id) FROM stdin;
43691af2-282f-4abc-b582-283b0d9bbe42	audience resolve	openid-connect	oidc-audience-resolve-mapper	31e4ea08-b5f9-4796-af44-bf3c67611ff7	\N
52b20328-ce85-43a2-be9c-23f70e07d68d	locale	openid-connect	oidc-usermodel-attribute-mapper	3ffabbf1-247c-4ec7-9a41-1120dbdb32af	\N
5630408f-6479-4b78-9438-1ffa658e10a1	role list	saml	saml-role-list-mapper	\N	cf97c84b-fe11-4188-b17f-862bd522d8ae
a3529b56-fb4b-4ff5-9851-9a6641ccfc59	organization	saml	saml-organization-membership-mapper	\N	437b2f16-0428-4c20-bbc4-91725fa84419
2576a59a-6156-49da-810f-cf3d436f33b5	AuthnContextClassRef	saml	saml-authn-context-class-ref-mapper	\N	a7928fad-f421-4d9e-832a-bc3d6155c063
1ac1f639-5677-4bd6-add1-6c0d9c2e03a4	full name	openid-connect	oidc-full-name-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
c0b2b684-512c-4b6f-90e8-1799222ddd90	family name	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
eaace326-b19d-4832-8d82-5826e150c2d9	given name	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
22f98021-93fc-4076-87f8-6065306f3745	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
10974947-ed03-4712-ada9-6abe3e1024ab	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
042096ff-8d68-4930-909b-ea3e4890c784	username	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
978d5223-5e50-4b03-9a4e-ab660bfd5813	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
4b9d4b1a-7740-409e-ba4e-4c51e1af70c9	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
7db73251-0a80-44a3-ae52-9e838f6c5720	website	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
08d367b1-919a-41c9-b9ad-031cd22cddb5	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
da789876-be64-4a7d-ad75-ae5ca7a53f0b	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
e75978a5-4c9b-4d16-9756-fd3ead685da0	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
352080d0-51fe-4e07-8e8b-9b9c05f9ee9e	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
65bde6ea-dd67-4fbe-bcbe-fa9bae4ff96a	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	250e211e-5b2f-41fe-a8c1-876269bd234c
80af483d-4f28-457c-b95f-76ab5dcce191	email	openid-connect	oidc-usermodel-attribute-mapper	\N	3fcec8af-2f38-4386-b121-37289642a50f
94b7861d-bb35-415b-8875-aa749fc63c94	email verified	openid-connect	oidc-usermodel-property-mapper	\N	3fcec8af-2f38-4386-b121-37289642a50f
b40c3614-5bcc-4a3b-a268-5353142f1485	address	openid-connect	oidc-address-mapper	\N	9303a12e-0c32-459b-9e1b-a431466764b0
58626ec4-eeee-4393-b027-3a0b76a748b8	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7
dcad58ef-f90c-4da2-aee5-3fd9dd881436	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	940ecb63-7ddd-49d1-aaee-bf1b8cd2f6b7
96b91b99-59df-499a-a5f6-74db960ba6c0	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	76007904-3ef4-4270-8287-5ab2655f8112
52d37e79-a344-4d47-9b0f-2090b2e1658c	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	76007904-3ef4-4270-8287-5ab2655f8112
d65ae98b-caf5-43e5-8ee3-b30ae2b896f1	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	76007904-3ef4-4270-8287-5ab2655f8112
a41c9ff2-5232-4a90-aaa8-0e8b98966599	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	9adeb955-9442-4725-9c5a-6109debb1e7a
fdb60650-0e25-4292-8df2-8b6a2a492c45	upn	openid-connect	oidc-usermodel-attribute-mapper	\N	9d138ed9-75bb-4f2b-9db2-37e95cd9345c
0a2f99dd-dd7f-4047-9136-581fcb8d32dc	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	9d138ed9-75bb-4f2b-9db2-37e95cd9345c
0029bca4-646b-427d-822e-639cf8a7b13c	acr loa level	openid-connect	oidc-acr-mapper	\N	3f02d134-edc1-44b1-a3bf-1659c2db9a91
d7035952-4747-4eeb-9d11-16ce205a012e	auth_time	openid-connect	oidc-usersessionmodel-note-mapper	\N	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f
b6810952-20a1-463e-a5ef-d37c111f0f43	sub	openid-connect	oidc-sub-mapper	\N	1f8ebfde-7e1f-49b3-8f23-7eae16b3a06f
3744c80f-247d-4449-984d-8a85c5089871	Client ID	openid-connect	oidc-usersessionmodel-note-mapper	\N	c80ac0b3-6580-4f75-b6af-f31ed792520a
a3fd7704-d8fe-4d90-afc9-59fdcfb6eade	Client Host	openid-connect	oidc-usersessionmodel-note-mapper	\N	c80ac0b3-6580-4f75-b6af-f31ed792520a
0ea9b930-840c-4b52-86f7-513539755b65	Client IP Address	openid-connect	oidc-usersessionmodel-note-mapper	\N	c80ac0b3-6580-4f75-b6af-f31ed792520a
a60981b7-3760-4410-a1fe-5081efaacdf4	organization	openid-connect	oidc-organization-membership-mapper	\N	1db57098-840b-4343-a174-eaf45ac2623a
2cc1412e-ea8a-4f39-93c0-019e5dacf2b6	audience resolve	openid-connect	oidc-audience-resolve-mapper	c93eed98-24b1-4b61-8e3f-11cb33ad30b3	\N
e4af2c11-eac8-486b-8965-8088f1ad7abf	role list	saml	saml-role-list-mapper	\N	8e5f0d45-a9c2-4371-b98a-a420cc217a73
ee8fffdd-ef72-4278-bc6f-6cc57ac6c5eb	organization	saml	saml-organization-membership-mapper	\N	49e8895f-68ea-4f99-913e-4f9036016275
19366b38-b8d7-4428-9f33-3dda0c9cfc9c	AuthnContextClassRef	saml	saml-authn-context-class-ref-mapper	\N	263a41f8-f9c2-425b-a71b-918b54dafad4
8b85a694-cc46-40ca-a8cb-8749a518f3e1	full name	openid-connect	oidc-full-name-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
7fb03ee0-0e9d-4dab-b6c9-708aeeac48b5	family name	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
f9d8d2b9-a261-4d67-ba3c-24ba9d7850e3	given name	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
522b7396-7a17-4a87-b713-d32254cb8421	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
acad1c4e-9c9b-4923-a3b5-d5256753a9e3	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
3b6957a4-001b-43b0-a37a-448953aaf31c	username	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
390da833-8eb6-4672-96a8-6c87abbebc10	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
917122e8-d280-46d2-8c5c-fc39fa86d48c	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
00f58821-3dbe-47f5-903f-4402f6382cf4	website	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
ba951aca-6453-4fd7-ad21-da15f8fa5f84	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
f2d1dae8-c719-4c76-96ad-519cc8c9cc83	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
3c9e369c-17eb-4417-87eb-2dd4e54e26b0	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
f050ee21-52fe-4fe2-9a95-8091a41d20f9	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
895c7e6f-1f28-498e-90a7-80d9f41afc32	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	6e6d99af-f520-405c-86f1-39471b7d3436
34cd5d68-b693-44be-9edc-637b4c83e96d	email	openid-connect	oidc-usermodel-attribute-mapper	\N	6aad159e-e90d-4d68-919e-fecefece9b18
0ef48a4a-6f4b-4bd1-b172-56bd38e4433a	email verified	openid-connect	oidc-usermodel-property-mapper	\N	6aad159e-e90d-4d68-919e-fecefece9b18
a3e14690-4dc7-4dad-ba07-b96874750043	address	openid-connect	oidc-address-mapper	\N	2a5c9d93-ecb2-4f64-86c3-19be578057e8
4f62b579-c1a8-47e5-a232-5e8d82ca060a	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	53a08e25-fdee-40c7-bbec-648af0b51ff7
b99e117f-ed9e-49d1-a022-4e3f4a4185ae	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	53a08e25-fdee-40c7-bbec-648af0b51ff7
36e6d484-a45d-47e0-9594-9a58b0b81e4d	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	762bb7c4-3ff9-4670-ab7d-9576b26499ea
c81aec85-a4df-426b-b895-fbfe3e17220e	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	762bb7c4-3ff9-4670-ab7d-9576b26499ea
38e2d8b0-2f67-4210-aae1-9d0a9e3867a9	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	762bb7c4-3ff9-4670-ab7d-9576b26499ea
b3f5362c-6b7a-483f-8acb-606d75ac705b	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	8b383722-b769-44c6-bbcc-298528f27d6d
7daf304c-01dd-4847-8930-11bd72a1c8c4	upn	openid-connect	oidc-usermodel-attribute-mapper	\N	d8c952af-25ed-4430-a59a-01f05813e16a
8af8ae7d-e566-498f-a773-7780f369a5cb	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	d8c952af-25ed-4430-a59a-01f05813e16a
b51793ca-6280-4599-9245-45dadcac00e8	acr loa level	openid-connect	oidc-acr-mapper	\N	6b14acd6-3a26-427d-803d-e7032b4f8b01
41a04943-db6e-4899-82a3-e6b75cac248b	auth_time	openid-connect	oidc-usersessionmodel-note-mapper	\N	82534042-2578-4006-a6b2-fe9a16547be9
a3e5f760-1367-4cde-b4fc-05b15098ca96	sub	openid-connect	oidc-sub-mapper	\N	82534042-2578-4006-a6b2-fe9a16547be9
569a05c6-8a4f-4796-8d7b-a870cc617545	Client ID	openid-connect	oidc-usersessionmodel-note-mapper	\N	beac0f54-8c32-4bdf-b754-582f635fdfa8
0641ccb5-44b0-4f2c-9a6e-cb2258af62dd	Client Host	openid-connect	oidc-usersessionmodel-note-mapper	\N	beac0f54-8c32-4bdf-b754-582f635fdfa8
4ea584c7-456c-4860-b653-0c2087f23969	Client IP Address	openid-connect	oidc-usersessionmodel-note-mapper	\N	beac0f54-8c32-4bdf-b754-582f635fdfa8
b62704a5-89ba-4249-80ee-7365aa4d4dd8	organization	openid-connect	oidc-organization-membership-mapper	\N	37482232-45fd-46df-bb95-f28015591efd
595e45df-9820-4532-8bb5-a627e2cab14d	locale	openid-connect	oidc-usermodel-attribute-mapper	2a6ed552-2544-4760-af30-121d32e54277	\N
\.


--
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.protocol_mapper_config (protocol_mapper_id, value, name) FROM stdin;
52b20328-ce85-43a2-be9c-23f70e07d68d	true	introspection.token.claim
52b20328-ce85-43a2-be9c-23f70e07d68d	true	userinfo.token.claim
52b20328-ce85-43a2-be9c-23f70e07d68d	locale	user.attribute
52b20328-ce85-43a2-be9c-23f70e07d68d	true	id.token.claim
52b20328-ce85-43a2-be9c-23f70e07d68d	true	access.token.claim
52b20328-ce85-43a2-be9c-23f70e07d68d	locale	claim.name
52b20328-ce85-43a2-be9c-23f70e07d68d	String	jsonType.label
5630408f-6479-4b78-9438-1ffa658e10a1	false	single
5630408f-6479-4b78-9438-1ffa658e10a1	Basic	attribute.nameformat
5630408f-6479-4b78-9438-1ffa658e10a1	Role	attribute.name
042096ff-8d68-4930-909b-ea3e4890c784	true	introspection.token.claim
042096ff-8d68-4930-909b-ea3e4890c784	true	userinfo.token.claim
042096ff-8d68-4930-909b-ea3e4890c784	username	user.attribute
042096ff-8d68-4930-909b-ea3e4890c784	true	id.token.claim
042096ff-8d68-4930-909b-ea3e4890c784	true	access.token.claim
042096ff-8d68-4930-909b-ea3e4890c784	preferred_username	claim.name
042096ff-8d68-4930-909b-ea3e4890c784	String	jsonType.label
08d367b1-919a-41c9-b9ad-031cd22cddb5	true	introspection.token.claim
08d367b1-919a-41c9-b9ad-031cd22cddb5	true	userinfo.token.claim
08d367b1-919a-41c9-b9ad-031cd22cddb5	gender	user.attribute
08d367b1-919a-41c9-b9ad-031cd22cddb5	true	id.token.claim
08d367b1-919a-41c9-b9ad-031cd22cddb5	true	access.token.claim
08d367b1-919a-41c9-b9ad-031cd22cddb5	gender	claim.name
08d367b1-919a-41c9-b9ad-031cd22cddb5	String	jsonType.label
10974947-ed03-4712-ada9-6abe3e1024ab	true	introspection.token.claim
10974947-ed03-4712-ada9-6abe3e1024ab	true	userinfo.token.claim
10974947-ed03-4712-ada9-6abe3e1024ab	nickname	user.attribute
10974947-ed03-4712-ada9-6abe3e1024ab	true	id.token.claim
10974947-ed03-4712-ada9-6abe3e1024ab	true	access.token.claim
10974947-ed03-4712-ada9-6abe3e1024ab	nickname	claim.name
10974947-ed03-4712-ada9-6abe3e1024ab	String	jsonType.label
1ac1f639-5677-4bd6-add1-6c0d9c2e03a4	true	introspection.token.claim
1ac1f639-5677-4bd6-add1-6c0d9c2e03a4	true	userinfo.token.claim
1ac1f639-5677-4bd6-add1-6c0d9c2e03a4	true	id.token.claim
1ac1f639-5677-4bd6-add1-6c0d9c2e03a4	true	access.token.claim
22f98021-93fc-4076-87f8-6065306f3745	true	introspection.token.claim
22f98021-93fc-4076-87f8-6065306f3745	true	userinfo.token.claim
22f98021-93fc-4076-87f8-6065306f3745	middleName	user.attribute
22f98021-93fc-4076-87f8-6065306f3745	true	id.token.claim
22f98021-93fc-4076-87f8-6065306f3745	true	access.token.claim
22f98021-93fc-4076-87f8-6065306f3745	middle_name	claim.name
22f98021-93fc-4076-87f8-6065306f3745	String	jsonType.label
352080d0-51fe-4e07-8e8b-9b9c05f9ee9e	true	introspection.token.claim
352080d0-51fe-4e07-8e8b-9b9c05f9ee9e	true	userinfo.token.claim
352080d0-51fe-4e07-8e8b-9b9c05f9ee9e	locale	user.attribute
352080d0-51fe-4e07-8e8b-9b9c05f9ee9e	true	id.token.claim
352080d0-51fe-4e07-8e8b-9b9c05f9ee9e	true	access.token.claim
352080d0-51fe-4e07-8e8b-9b9c05f9ee9e	locale	claim.name
352080d0-51fe-4e07-8e8b-9b9c05f9ee9e	String	jsonType.label
4b9d4b1a-7740-409e-ba4e-4c51e1af70c9	true	introspection.token.claim
4b9d4b1a-7740-409e-ba4e-4c51e1af70c9	true	userinfo.token.claim
4b9d4b1a-7740-409e-ba4e-4c51e1af70c9	picture	user.attribute
4b9d4b1a-7740-409e-ba4e-4c51e1af70c9	true	id.token.claim
4b9d4b1a-7740-409e-ba4e-4c51e1af70c9	true	access.token.claim
4b9d4b1a-7740-409e-ba4e-4c51e1af70c9	picture	claim.name
4b9d4b1a-7740-409e-ba4e-4c51e1af70c9	String	jsonType.label
65bde6ea-dd67-4fbe-bcbe-fa9bae4ff96a	true	introspection.token.claim
65bde6ea-dd67-4fbe-bcbe-fa9bae4ff96a	true	userinfo.token.claim
65bde6ea-dd67-4fbe-bcbe-fa9bae4ff96a	updatedAt	user.attribute
65bde6ea-dd67-4fbe-bcbe-fa9bae4ff96a	true	id.token.claim
65bde6ea-dd67-4fbe-bcbe-fa9bae4ff96a	true	access.token.claim
65bde6ea-dd67-4fbe-bcbe-fa9bae4ff96a	updated_at	claim.name
65bde6ea-dd67-4fbe-bcbe-fa9bae4ff96a	long	jsonType.label
7db73251-0a80-44a3-ae52-9e838f6c5720	true	introspection.token.claim
7db73251-0a80-44a3-ae52-9e838f6c5720	true	userinfo.token.claim
7db73251-0a80-44a3-ae52-9e838f6c5720	website	user.attribute
7db73251-0a80-44a3-ae52-9e838f6c5720	true	id.token.claim
7db73251-0a80-44a3-ae52-9e838f6c5720	true	access.token.claim
7db73251-0a80-44a3-ae52-9e838f6c5720	website	claim.name
7db73251-0a80-44a3-ae52-9e838f6c5720	String	jsonType.label
978d5223-5e50-4b03-9a4e-ab660bfd5813	true	introspection.token.claim
978d5223-5e50-4b03-9a4e-ab660bfd5813	true	userinfo.token.claim
978d5223-5e50-4b03-9a4e-ab660bfd5813	profile	user.attribute
978d5223-5e50-4b03-9a4e-ab660bfd5813	true	id.token.claim
978d5223-5e50-4b03-9a4e-ab660bfd5813	true	access.token.claim
978d5223-5e50-4b03-9a4e-ab660bfd5813	profile	claim.name
978d5223-5e50-4b03-9a4e-ab660bfd5813	String	jsonType.label
c0b2b684-512c-4b6f-90e8-1799222ddd90	true	introspection.token.claim
c0b2b684-512c-4b6f-90e8-1799222ddd90	true	userinfo.token.claim
c0b2b684-512c-4b6f-90e8-1799222ddd90	lastName	user.attribute
c0b2b684-512c-4b6f-90e8-1799222ddd90	true	id.token.claim
c0b2b684-512c-4b6f-90e8-1799222ddd90	true	access.token.claim
c0b2b684-512c-4b6f-90e8-1799222ddd90	family_name	claim.name
c0b2b684-512c-4b6f-90e8-1799222ddd90	String	jsonType.label
da789876-be64-4a7d-ad75-ae5ca7a53f0b	true	introspection.token.claim
da789876-be64-4a7d-ad75-ae5ca7a53f0b	true	userinfo.token.claim
da789876-be64-4a7d-ad75-ae5ca7a53f0b	birthdate	user.attribute
da789876-be64-4a7d-ad75-ae5ca7a53f0b	true	id.token.claim
da789876-be64-4a7d-ad75-ae5ca7a53f0b	true	access.token.claim
da789876-be64-4a7d-ad75-ae5ca7a53f0b	birthdate	claim.name
da789876-be64-4a7d-ad75-ae5ca7a53f0b	String	jsonType.label
e75978a5-4c9b-4d16-9756-fd3ead685da0	true	introspection.token.claim
e75978a5-4c9b-4d16-9756-fd3ead685da0	true	userinfo.token.claim
e75978a5-4c9b-4d16-9756-fd3ead685da0	zoneinfo	user.attribute
e75978a5-4c9b-4d16-9756-fd3ead685da0	true	id.token.claim
e75978a5-4c9b-4d16-9756-fd3ead685da0	true	access.token.claim
e75978a5-4c9b-4d16-9756-fd3ead685da0	zoneinfo	claim.name
e75978a5-4c9b-4d16-9756-fd3ead685da0	String	jsonType.label
eaace326-b19d-4832-8d82-5826e150c2d9	true	introspection.token.claim
eaace326-b19d-4832-8d82-5826e150c2d9	true	userinfo.token.claim
eaace326-b19d-4832-8d82-5826e150c2d9	firstName	user.attribute
eaace326-b19d-4832-8d82-5826e150c2d9	true	id.token.claim
eaace326-b19d-4832-8d82-5826e150c2d9	true	access.token.claim
eaace326-b19d-4832-8d82-5826e150c2d9	given_name	claim.name
eaace326-b19d-4832-8d82-5826e150c2d9	String	jsonType.label
80af483d-4f28-457c-b95f-76ab5dcce191	true	introspection.token.claim
80af483d-4f28-457c-b95f-76ab5dcce191	true	userinfo.token.claim
80af483d-4f28-457c-b95f-76ab5dcce191	email	user.attribute
80af483d-4f28-457c-b95f-76ab5dcce191	true	id.token.claim
80af483d-4f28-457c-b95f-76ab5dcce191	true	access.token.claim
80af483d-4f28-457c-b95f-76ab5dcce191	email	claim.name
80af483d-4f28-457c-b95f-76ab5dcce191	String	jsonType.label
94b7861d-bb35-415b-8875-aa749fc63c94	true	introspection.token.claim
94b7861d-bb35-415b-8875-aa749fc63c94	true	userinfo.token.claim
94b7861d-bb35-415b-8875-aa749fc63c94	emailVerified	user.attribute
94b7861d-bb35-415b-8875-aa749fc63c94	true	id.token.claim
94b7861d-bb35-415b-8875-aa749fc63c94	true	access.token.claim
94b7861d-bb35-415b-8875-aa749fc63c94	email_verified	claim.name
94b7861d-bb35-415b-8875-aa749fc63c94	boolean	jsonType.label
b40c3614-5bcc-4a3b-a268-5353142f1485	formatted	user.attribute.formatted
b40c3614-5bcc-4a3b-a268-5353142f1485	country	user.attribute.country
b40c3614-5bcc-4a3b-a268-5353142f1485	true	introspection.token.claim
b40c3614-5bcc-4a3b-a268-5353142f1485	postal_code	user.attribute.postal_code
b40c3614-5bcc-4a3b-a268-5353142f1485	true	userinfo.token.claim
b40c3614-5bcc-4a3b-a268-5353142f1485	street	user.attribute.street
b40c3614-5bcc-4a3b-a268-5353142f1485	true	id.token.claim
b40c3614-5bcc-4a3b-a268-5353142f1485	region	user.attribute.region
b40c3614-5bcc-4a3b-a268-5353142f1485	true	access.token.claim
b40c3614-5bcc-4a3b-a268-5353142f1485	locality	user.attribute.locality
58626ec4-eeee-4393-b027-3a0b76a748b8	true	introspection.token.claim
58626ec4-eeee-4393-b027-3a0b76a748b8	true	userinfo.token.claim
58626ec4-eeee-4393-b027-3a0b76a748b8	phoneNumber	user.attribute
58626ec4-eeee-4393-b027-3a0b76a748b8	true	id.token.claim
58626ec4-eeee-4393-b027-3a0b76a748b8	true	access.token.claim
58626ec4-eeee-4393-b027-3a0b76a748b8	phone_number	claim.name
58626ec4-eeee-4393-b027-3a0b76a748b8	String	jsonType.label
dcad58ef-f90c-4da2-aee5-3fd9dd881436	true	introspection.token.claim
dcad58ef-f90c-4da2-aee5-3fd9dd881436	true	userinfo.token.claim
dcad58ef-f90c-4da2-aee5-3fd9dd881436	phoneNumberVerified	user.attribute
dcad58ef-f90c-4da2-aee5-3fd9dd881436	true	id.token.claim
dcad58ef-f90c-4da2-aee5-3fd9dd881436	true	access.token.claim
dcad58ef-f90c-4da2-aee5-3fd9dd881436	phone_number_verified	claim.name
dcad58ef-f90c-4da2-aee5-3fd9dd881436	boolean	jsonType.label
52d37e79-a344-4d47-9b0f-2090b2e1658c	true	introspection.token.claim
52d37e79-a344-4d47-9b0f-2090b2e1658c	true	multivalued
52d37e79-a344-4d47-9b0f-2090b2e1658c	foo	user.attribute
52d37e79-a344-4d47-9b0f-2090b2e1658c	true	access.token.claim
52d37e79-a344-4d47-9b0f-2090b2e1658c	resource_access.${client_id}.roles	claim.name
52d37e79-a344-4d47-9b0f-2090b2e1658c	String	jsonType.label
96b91b99-59df-499a-a5f6-74db960ba6c0	true	introspection.token.claim
96b91b99-59df-499a-a5f6-74db960ba6c0	true	multivalued
96b91b99-59df-499a-a5f6-74db960ba6c0	foo	user.attribute
96b91b99-59df-499a-a5f6-74db960ba6c0	true	access.token.claim
96b91b99-59df-499a-a5f6-74db960ba6c0	realm_access.roles	claim.name
96b91b99-59df-499a-a5f6-74db960ba6c0	String	jsonType.label
d65ae98b-caf5-43e5-8ee3-b30ae2b896f1	true	introspection.token.claim
d65ae98b-caf5-43e5-8ee3-b30ae2b896f1	true	access.token.claim
a41c9ff2-5232-4a90-aaa8-0e8b98966599	true	introspection.token.claim
a41c9ff2-5232-4a90-aaa8-0e8b98966599	true	access.token.claim
0a2f99dd-dd7f-4047-9136-581fcb8d32dc	true	introspection.token.claim
0a2f99dd-dd7f-4047-9136-581fcb8d32dc	true	multivalued
0a2f99dd-dd7f-4047-9136-581fcb8d32dc	foo	user.attribute
0a2f99dd-dd7f-4047-9136-581fcb8d32dc	true	id.token.claim
0a2f99dd-dd7f-4047-9136-581fcb8d32dc	true	access.token.claim
0a2f99dd-dd7f-4047-9136-581fcb8d32dc	groups	claim.name
0a2f99dd-dd7f-4047-9136-581fcb8d32dc	String	jsonType.label
fdb60650-0e25-4292-8df2-8b6a2a492c45	true	introspection.token.claim
fdb60650-0e25-4292-8df2-8b6a2a492c45	true	userinfo.token.claim
fdb60650-0e25-4292-8df2-8b6a2a492c45	username	user.attribute
fdb60650-0e25-4292-8df2-8b6a2a492c45	true	id.token.claim
fdb60650-0e25-4292-8df2-8b6a2a492c45	true	access.token.claim
fdb60650-0e25-4292-8df2-8b6a2a492c45	upn	claim.name
fdb60650-0e25-4292-8df2-8b6a2a492c45	String	jsonType.label
0029bca4-646b-427d-822e-639cf8a7b13c	true	introspection.token.claim
0029bca4-646b-427d-822e-639cf8a7b13c	true	id.token.claim
0029bca4-646b-427d-822e-639cf8a7b13c	true	access.token.claim
b6810952-20a1-463e-a5ef-d37c111f0f43	true	introspection.token.claim
b6810952-20a1-463e-a5ef-d37c111f0f43	true	access.token.claim
d7035952-4747-4eeb-9d11-16ce205a012e	AUTH_TIME	user.session.note
d7035952-4747-4eeb-9d11-16ce205a012e	true	introspection.token.claim
d7035952-4747-4eeb-9d11-16ce205a012e	true	id.token.claim
d7035952-4747-4eeb-9d11-16ce205a012e	true	access.token.claim
d7035952-4747-4eeb-9d11-16ce205a012e	auth_time	claim.name
d7035952-4747-4eeb-9d11-16ce205a012e	long	jsonType.label
0ea9b930-840c-4b52-86f7-513539755b65	clientAddress	user.session.note
0ea9b930-840c-4b52-86f7-513539755b65	true	introspection.token.claim
0ea9b930-840c-4b52-86f7-513539755b65	true	id.token.claim
0ea9b930-840c-4b52-86f7-513539755b65	true	access.token.claim
0ea9b930-840c-4b52-86f7-513539755b65	clientAddress	claim.name
0ea9b930-840c-4b52-86f7-513539755b65	String	jsonType.label
3744c80f-247d-4449-984d-8a85c5089871	client_id	user.session.note
3744c80f-247d-4449-984d-8a85c5089871	true	introspection.token.claim
3744c80f-247d-4449-984d-8a85c5089871	true	id.token.claim
3744c80f-247d-4449-984d-8a85c5089871	true	access.token.claim
3744c80f-247d-4449-984d-8a85c5089871	client_id	claim.name
3744c80f-247d-4449-984d-8a85c5089871	String	jsonType.label
a3fd7704-d8fe-4d90-afc9-59fdcfb6eade	clientHost	user.session.note
a3fd7704-d8fe-4d90-afc9-59fdcfb6eade	true	introspection.token.claim
a3fd7704-d8fe-4d90-afc9-59fdcfb6eade	true	id.token.claim
a3fd7704-d8fe-4d90-afc9-59fdcfb6eade	true	access.token.claim
a3fd7704-d8fe-4d90-afc9-59fdcfb6eade	clientHost	claim.name
a3fd7704-d8fe-4d90-afc9-59fdcfb6eade	String	jsonType.label
a60981b7-3760-4410-a1fe-5081efaacdf4	true	introspection.token.claim
a60981b7-3760-4410-a1fe-5081efaacdf4	true	multivalued
a60981b7-3760-4410-a1fe-5081efaacdf4	true	id.token.claim
a60981b7-3760-4410-a1fe-5081efaacdf4	true	access.token.claim
a60981b7-3760-4410-a1fe-5081efaacdf4	organization	claim.name
a60981b7-3760-4410-a1fe-5081efaacdf4	String	jsonType.label
e4af2c11-eac8-486b-8965-8088f1ad7abf	false	single
e4af2c11-eac8-486b-8965-8088f1ad7abf	Basic	attribute.nameformat
e4af2c11-eac8-486b-8965-8088f1ad7abf	Role	attribute.name
00f58821-3dbe-47f5-903f-4402f6382cf4	true	introspection.token.claim
00f58821-3dbe-47f5-903f-4402f6382cf4	true	userinfo.token.claim
00f58821-3dbe-47f5-903f-4402f6382cf4	website	user.attribute
00f58821-3dbe-47f5-903f-4402f6382cf4	true	id.token.claim
00f58821-3dbe-47f5-903f-4402f6382cf4	true	access.token.claim
00f58821-3dbe-47f5-903f-4402f6382cf4	website	claim.name
00f58821-3dbe-47f5-903f-4402f6382cf4	String	jsonType.label
390da833-8eb6-4672-96a8-6c87abbebc10	true	introspection.token.claim
390da833-8eb6-4672-96a8-6c87abbebc10	true	userinfo.token.claim
390da833-8eb6-4672-96a8-6c87abbebc10	profile	user.attribute
390da833-8eb6-4672-96a8-6c87abbebc10	true	id.token.claim
390da833-8eb6-4672-96a8-6c87abbebc10	true	access.token.claim
390da833-8eb6-4672-96a8-6c87abbebc10	profile	claim.name
390da833-8eb6-4672-96a8-6c87abbebc10	String	jsonType.label
3b6957a4-001b-43b0-a37a-448953aaf31c	true	introspection.token.claim
3b6957a4-001b-43b0-a37a-448953aaf31c	true	userinfo.token.claim
3b6957a4-001b-43b0-a37a-448953aaf31c	username	user.attribute
3b6957a4-001b-43b0-a37a-448953aaf31c	true	id.token.claim
3b6957a4-001b-43b0-a37a-448953aaf31c	true	access.token.claim
3b6957a4-001b-43b0-a37a-448953aaf31c	preferred_username	claim.name
3b6957a4-001b-43b0-a37a-448953aaf31c	String	jsonType.label
3c9e369c-17eb-4417-87eb-2dd4e54e26b0	true	introspection.token.claim
3c9e369c-17eb-4417-87eb-2dd4e54e26b0	true	userinfo.token.claim
3c9e369c-17eb-4417-87eb-2dd4e54e26b0	zoneinfo	user.attribute
3c9e369c-17eb-4417-87eb-2dd4e54e26b0	true	id.token.claim
3c9e369c-17eb-4417-87eb-2dd4e54e26b0	true	access.token.claim
3c9e369c-17eb-4417-87eb-2dd4e54e26b0	zoneinfo	claim.name
3c9e369c-17eb-4417-87eb-2dd4e54e26b0	String	jsonType.label
522b7396-7a17-4a87-b713-d32254cb8421	true	introspection.token.claim
522b7396-7a17-4a87-b713-d32254cb8421	true	userinfo.token.claim
522b7396-7a17-4a87-b713-d32254cb8421	middleName	user.attribute
522b7396-7a17-4a87-b713-d32254cb8421	true	id.token.claim
522b7396-7a17-4a87-b713-d32254cb8421	true	access.token.claim
522b7396-7a17-4a87-b713-d32254cb8421	middle_name	claim.name
522b7396-7a17-4a87-b713-d32254cb8421	String	jsonType.label
7fb03ee0-0e9d-4dab-b6c9-708aeeac48b5	true	introspection.token.claim
7fb03ee0-0e9d-4dab-b6c9-708aeeac48b5	true	userinfo.token.claim
7fb03ee0-0e9d-4dab-b6c9-708aeeac48b5	lastName	user.attribute
7fb03ee0-0e9d-4dab-b6c9-708aeeac48b5	true	id.token.claim
7fb03ee0-0e9d-4dab-b6c9-708aeeac48b5	true	access.token.claim
7fb03ee0-0e9d-4dab-b6c9-708aeeac48b5	family_name	claim.name
7fb03ee0-0e9d-4dab-b6c9-708aeeac48b5	String	jsonType.label
895c7e6f-1f28-498e-90a7-80d9f41afc32	true	introspection.token.claim
895c7e6f-1f28-498e-90a7-80d9f41afc32	true	userinfo.token.claim
895c7e6f-1f28-498e-90a7-80d9f41afc32	updatedAt	user.attribute
895c7e6f-1f28-498e-90a7-80d9f41afc32	true	id.token.claim
895c7e6f-1f28-498e-90a7-80d9f41afc32	true	access.token.claim
895c7e6f-1f28-498e-90a7-80d9f41afc32	updated_at	claim.name
895c7e6f-1f28-498e-90a7-80d9f41afc32	long	jsonType.label
8b85a694-cc46-40ca-a8cb-8749a518f3e1	true	introspection.token.claim
8b85a694-cc46-40ca-a8cb-8749a518f3e1	true	userinfo.token.claim
8b85a694-cc46-40ca-a8cb-8749a518f3e1	true	id.token.claim
8b85a694-cc46-40ca-a8cb-8749a518f3e1	true	access.token.claim
917122e8-d280-46d2-8c5c-fc39fa86d48c	true	introspection.token.claim
917122e8-d280-46d2-8c5c-fc39fa86d48c	true	userinfo.token.claim
917122e8-d280-46d2-8c5c-fc39fa86d48c	picture	user.attribute
917122e8-d280-46d2-8c5c-fc39fa86d48c	true	id.token.claim
917122e8-d280-46d2-8c5c-fc39fa86d48c	true	access.token.claim
917122e8-d280-46d2-8c5c-fc39fa86d48c	picture	claim.name
917122e8-d280-46d2-8c5c-fc39fa86d48c	String	jsonType.label
acad1c4e-9c9b-4923-a3b5-d5256753a9e3	true	introspection.token.claim
acad1c4e-9c9b-4923-a3b5-d5256753a9e3	true	userinfo.token.claim
acad1c4e-9c9b-4923-a3b5-d5256753a9e3	nickname	user.attribute
acad1c4e-9c9b-4923-a3b5-d5256753a9e3	true	id.token.claim
acad1c4e-9c9b-4923-a3b5-d5256753a9e3	true	access.token.claim
acad1c4e-9c9b-4923-a3b5-d5256753a9e3	nickname	claim.name
acad1c4e-9c9b-4923-a3b5-d5256753a9e3	String	jsonType.label
ba951aca-6453-4fd7-ad21-da15f8fa5f84	true	introspection.token.claim
ba951aca-6453-4fd7-ad21-da15f8fa5f84	true	userinfo.token.claim
ba951aca-6453-4fd7-ad21-da15f8fa5f84	gender	user.attribute
ba951aca-6453-4fd7-ad21-da15f8fa5f84	true	id.token.claim
ba951aca-6453-4fd7-ad21-da15f8fa5f84	true	access.token.claim
ba951aca-6453-4fd7-ad21-da15f8fa5f84	gender	claim.name
ba951aca-6453-4fd7-ad21-da15f8fa5f84	String	jsonType.label
f050ee21-52fe-4fe2-9a95-8091a41d20f9	true	introspection.token.claim
f050ee21-52fe-4fe2-9a95-8091a41d20f9	true	userinfo.token.claim
f050ee21-52fe-4fe2-9a95-8091a41d20f9	locale	user.attribute
f050ee21-52fe-4fe2-9a95-8091a41d20f9	true	id.token.claim
f050ee21-52fe-4fe2-9a95-8091a41d20f9	true	access.token.claim
f050ee21-52fe-4fe2-9a95-8091a41d20f9	locale	claim.name
f050ee21-52fe-4fe2-9a95-8091a41d20f9	String	jsonType.label
f2d1dae8-c719-4c76-96ad-519cc8c9cc83	true	introspection.token.claim
f2d1dae8-c719-4c76-96ad-519cc8c9cc83	true	userinfo.token.claim
f2d1dae8-c719-4c76-96ad-519cc8c9cc83	birthdate	user.attribute
f2d1dae8-c719-4c76-96ad-519cc8c9cc83	true	id.token.claim
f2d1dae8-c719-4c76-96ad-519cc8c9cc83	true	access.token.claim
f2d1dae8-c719-4c76-96ad-519cc8c9cc83	birthdate	claim.name
f2d1dae8-c719-4c76-96ad-519cc8c9cc83	String	jsonType.label
f9d8d2b9-a261-4d67-ba3c-24ba9d7850e3	true	introspection.token.claim
f9d8d2b9-a261-4d67-ba3c-24ba9d7850e3	true	userinfo.token.claim
f9d8d2b9-a261-4d67-ba3c-24ba9d7850e3	firstName	user.attribute
f9d8d2b9-a261-4d67-ba3c-24ba9d7850e3	true	id.token.claim
f9d8d2b9-a261-4d67-ba3c-24ba9d7850e3	true	access.token.claim
f9d8d2b9-a261-4d67-ba3c-24ba9d7850e3	given_name	claim.name
f9d8d2b9-a261-4d67-ba3c-24ba9d7850e3	String	jsonType.label
0ef48a4a-6f4b-4bd1-b172-56bd38e4433a	true	introspection.token.claim
0ef48a4a-6f4b-4bd1-b172-56bd38e4433a	true	userinfo.token.claim
0ef48a4a-6f4b-4bd1-b172-56bd38e4433a	emailVerified	user.attribute
0ef48a4a-6f4b-4bd1-b172-56bd38e4433a	true	id.token.claim
0ef48a4a-6f4b-4bd1-b172-56bd38e4433a	true	access.token.claim
0ef48a4a-6f4b-4bd1-b172-56bd38e4433a	email_verified	claim.name
0ef48a4a-6f4b-4bd1-b172-56bd38e4433a	boolean	jsonType.label
34cd5d68-b693-44be-9edc-637b4c83e96d	true	introspection.token.claim
34cd5d68-b693-44be-9edc-637b4c83e96d	true	userinfo.token.claim
34cd5d68-b693-44be-9edc-637b4c83e96d	email	user.attribute
34cd5d68-b693-44be-9edc-637b4c83e96d	true	id.token.claim
34cd5d68-b693-44be-9edc-637b4c83e96d	true	access.token.claim
34cd5d68-b693-44be-9edc-637b4c83e96d	email	claim.name
34cd5d68-b693-44be-9edc-637b4c83e96d	String	jsonType.label
a3e14690-4dc7-4dad-ba07-b96874750043	formatted	user.attribute.formatted
a3e14690-4dc7-4dad-ba07-b96874750043	country	user.attribute.country
a3e14690-4dc7-4dad-ba07-b96874750043	true	introspection.token.claim
a3e14690-4dc7-4dad-ba07-b96874750043	postal_code	user.attribute.postal_code
a3e14690-4dc7-4dad-ba07-b96874750043	true	userinfo.token.claim
a3e14690-4dc7-4dad-ba07-b96874750043	street	user.attribute.street
a3e14690-4dc7-4dad-ba07-b96874750043	true	id.token.claim
a3e14690-4dc7-4dad-ba07-b96874750043	region	user.attribute.region
a3e14690-4dc7-4dad-ba07-b96874750043	true	access.token.claim
a3e14690-4dc7-4dad-ba07-b96874750043	locality	user.attribute.locality
4f62b579-c1a8-47e5-a232-5e8d82ca060a	true	introspection.token.claim
4f62b579-c1a8-47e5-a232-5e8d82ca060a	true	userinfo.token.claim
4f62b579-c1a8-47e5-a232-5e8d82ca060a	phoneNumber	user.attribute
4f62b579-c1a8-47e5-a232-5e8d82ca060a	true	id.token.claim
4f62b579-c1a8-47e5-a232-5e8d82ca060a	true	access.token.claim
4f62b579-c1a8-47e5-a232-5e8d82ca060a	phone_number	claim.name
4f62b579-c1a8-47e5-a232-5e8d82ca060a	String	jsonType.label
b99e117f-ed9e-49d1-a022-4e3f4a4185ae	true	introspection.token.claim
b99e117f-ed9e-49d1-a022-4e3f4a4185ae	true	userinfo.token.claim
b99e117f-ed9e-49d1-a022-4e3f4a4185ae	phoneNumberVerified	user.attribute
b99e117f-ed9e-49d1-a022-4e3f4a4185ae	true	id.token.claim
b99e117f-ed9e-49d1-a022-4e3f4a4185ae	true	access.token.claim
b99e117f-ed9e-49d1-a022-4e3f4a4185ae	phone_number_verified	claim.name
b99e117f-ed9e-49d1-a022-4e3f4a4185ae	boolean	jsonType.label
36e6d484-a45d-47e0-9594-9a58b0b81e4d	true	introspection.token.claim
36e6d484-a45d-47e0-9594-9a58b0b81e4d	true	multivalued
36e6d484-a45d-47e0-9594-9a58b0b81e4d	foo	user.attribute
36e6d484-a45d-47e0-9594-9a58b0b81e4d	true	access.token.claim
36e6d484-a45d-47e0-9594-9a58b0b81e4d	realm_access.roles	claim.name
36e6d484-a45d-47e0-9594-9a58b0b81e4d	String	jsonType.label
38e2d8b0-2f67-4210-aae1-9d0a9e3867a9	true	introspection.token.claim
38e2d8b0-2f67-4210-aae1-9d0a9e3867a9	true	access.token.claim
c81aec85-a4df-426b-b895-fbfe3e17220e	true	introspection.token.claim
c81aec85-a4df-426b-b895-fbfe3e17220e	true	multivalued
c81aec85-a4df-426b-b895-fbfe3e17220e	foo	user.attribute
c81aec85-a4df-426b-b895-fbfe3e17220e	true	access.token.claim
c81aec85-a4df-426b-b895-fbfe3e17220e	resource_access.${client_id}.roles	claim.name
c81aec85-a4df-426b-b895-fbfe3e17220e	String	jsonType.label
b3f5362c-6b7a-483f-8acb-606d75ac705b	true	introspection.token.claim
b3f5362c-6b7a-483f-8acb-606d75ac705b	true	access.token.claim
7daf304c-01dd-4847-8930-11bd72a1c8c4	true	introspection.token.claim
7daf304c-01dd-4847-8930-11bd72a1c8c4	true	userinfo.token.claim
7daf304c-01dd-4847-8930-11bd72a1c8c4	username	user.attribute
7daf304c-01dd-4847-8930-11bd72a1c8c4	true	id.token.claim
7daf304c-01dd-4847-8930-11bd72a1c8c4	true	access.token.claim
7daf304c-01dd-4847-8930-11bd72a1c8c4	upn	claim.name
7daf304c-01dd-4847-8930-11bd72a1c8c4	String	jsonType.label
8af8ae7d-e566-498f-a773-7780f369a5cb	true	introspection.token.claim
8af8ae7d-e566-498f-a773-7780f369a5cb	true	multivalued
8af8ae7d-e566-498f-a773-7780f369a5cb	foo	user.attribute
8af8ae7d-e566-498f-a773-7780f369a5cb	true	id.token.claim
8af8ae7d-e566-498f-a773-7780f369a5cb	true	access.token.claim
8af8ae7d-e566-498f-a773-7780f369a5cb	groups	claim.name
8af8ae7d-e566-498f-a773-7780f369a5cb	String	jsonType.label
b51793ca-6280-4599-9245-45dadcac00e8	true	introspection.token.claim
b51793ca-6280-4599-9245-45dadcac00e8	true	id.token.claim
b51793ca-6280-4599-9245-45dadcac00e8	true	access.token.claim
41a04943-db6e-4899-82a3-e6b75cac248b	AUTH_TIME	user.session.note
41a04943-db6e-4899-82a3-e6b75cac248b	true	introspection.token.claim
41a04943-db6e-4899-82a3-e6b75cac248b	true	id.token.claim
41a04943-db6e-4899-82a3-e6b75cac248b	true	access.token.claim
41a04943-db6e-4899-82a3-e6b75cac248b	auth_time	claim.name
41a04943-db6e-4899-82a3-e6b75cac248b	long	jsonType.label
a3e5f760-1367-4cde-b4fc-05b15098ca96	true	introspection.token.claim
a3e5f760-1367-4cde-b4fc-05b15098ca96	true	access.token.claim
0641ccb5-44b0-4f2c-9a6e-cb2258af62dd	clientHost	user.session.note
0641ccb5-44b0-4f2c-9a6e-cb2258af62dd	true	introspection.token.claim
0641ccb5-44b0-4f2c-9a6e-cb2258af62dd	true	id.token.claim
0641ccb5-44b0-4f2c-9a6e-cb2258af62dd	true	access.token.claim
0641ccb5-44b0-4f2c-9a6e-cb2258af62dd	clientHost	claim.name
0641ccb5-44b0-4f2c-9a6e-cb2258af62dd	String	jsonType.label
4ea584c7-456c-4860-b653-0c2087f23969	clientAddress	user.session.note
4ea584c7-456c-4860-b653-0c2087f23969	true	introspection.token.claim
4ea584c7-456c-4860-b653-0c2087f23969	true	id.token.claim
4ea584c7-456c-4860-b653-0c2087f23969	true	access.token.claim
4ea584c7-456c-4860-b653-0c2087f23969	clientAddress	claim.name
4ea584c7-456c-4860-b653-0c2087f23969	String	jsonType.label
569a05c6-8a4f-4796-8d7b-a870cc617545	client_id	user.session.note
569a05c6-8a4f-4796-8d7b-a870cc617545	true	introspection.token.claim
569a05c6-8a4f-4796-8d7b-a870cc617545	true	id.token.claim
569a05c6-8a4f-4796-8d7b-a870cc617545	true	access.token.claim
569a05c6-8a4f-4796-8d7b-a870cc617545	client_id	claim.name
569a05c6-8a4f-4796-8d7b-a870cc617545	String	jsonType.label
b62704a5-89ba-4249-80ee-7365aa4d4dd8	true	introspection.token.claim
b62704a5-89ba-4249-80ee-7365aa4d4dd8	true	multivalued
b62704a5-89ba-4249-80ee-7365aa4d4dd8	true	id.token.claim
b62704a5-89ba-4249-80ee-7365aa4d4dd8	true	access.token.claim
b62704a5-89ba-4249-80ee-7365aa4d4dd8	organization	claim.name
b62704a5-89ba-4249-80ee-7365aa4d4dd8	String	jsonType.label
595e45df-9820-4532-8bb5-a627e2cab14d	true	introspection.token.claim
595e45df-9820-4532-8bb5-a627e2cab14d	true	userinfo.token.claim
595e45df-9820-4532-8bb5-a627e2cab14d	locale	user.attribute
595e45df-9820-4532-8bb5-a627e2cab14d	true	id.token.claim
595e45df-9820-4532-8bb5-a627e2cab14d	true	access.token.claim
595e45df-9820-4532-8bb5-a627e2cab14d	locale	claim.name
595e45df-9820-4532-8bb5-a627e2cab14d	String	jsonType.label
\.


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm (id, access_code_lifespan, user_action_lifespan, access_token_lifespan, account_theme, admin_theme, email_theme, enabled, events_enabled, events_expiration, login_theme, name, not_before, password_policy, registration_allowed, remember_me, reset_password_allowed, social, ssl_required, sso_idle_timeout, sso_max_lifespan, update_profile_on_soc_login, verify_email, master_admin_client, login_lifespan, internationalization_enabled, default_locale, reg_email_as_username, admin_events_enabled, admin_events_details_enabled, edit_username_allowed, otp_policy_counter, otp_policy_window, otp_policy_period, otp_policy_digits, otp_policy_alg, otp_policy_type, browser_flow, registration_flow, direct_grant_flow, reset_credentials_flow, client_auth_flow, offline_session_idle_timeout, revoke_refresh_token, access_token_life_implicit, login_with_email_allowed, duplicate_emails_allowed, docker_auth_flow, refresh_token_max_reuse, allow_user_managed_access, sso_max_lifespan_remember_me, sso_idle_timeout_remember_me, default_role, display_name) FROM stdin;
28893197-b00a-4ee3-97e6-f2e6d1a55902	60	300	60	\N	\N	\N	t	f	0	\N	master	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	a1b270bd-4d49-4150-acdc-307fd9db64d4	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	616e425f-e4e1-4670-a415-c26774f6d5cb	7280ac76-c972-4d93-8cf6-6c386c57cdc1	ad5e0974-6ab0-46e0-bd09-fe2b2e989cab	741fb533-562d-4c84-bc72-607502106eb4	02beda3e-915d-4d5f-b2e3-820304650fb9	2592000	f	900	t	f	4136fda9-887e-4262-ac8d-5322c7200b25	0	f	0	0	cd3a29f2-9b61-47af-a813-f04f36297347	Keycloak
6415217a-07af-457d-9def-590e3d8495b3	60	300	300	\N	\N	\N	t	f	0	\N	activities	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	591706b4-25ee-4b00-8b43-2ddcbda19c73	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	d84e232b-be58-4308-9e77-42bfa3ae73e7	8a056892-8b97-474d-8a97-f0703859b975	d67b9d0b-3f0e-4cda-95a6-cc3c93cb4de1	2b7516fc-0c03-4f82-bb75-61f20bfb40a3	769b997f-d4fb-45ae-9e58-7ed875376dae	2592000	f	900	t	f	9b62f3db-0aa6-446c-887b-a8782e39f67f	0	f	0	0	3b8944bf-1a7f-4b64-90b5-f9da50ef8559	\N
\.


--
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm_attribute (name, realm_id, value) FROM stdin;
_browser_header.contentSecurityPolicyReportOnly	28893197-b00a-4ee3-97e6-f2e6d1a55902	
_browser_header.xContentTypeOptions	28893197-b00a-4ee3-97e6-f2e6d1a55902	nosniff
_browser_header.referrerPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	no-referrer
_browser_header.xRobotsTag	28893197-b00a-4ee3-97e6-f2e6d1a55902	none
_browser_header.xFrameOptions	28893197-b00a-4ee3-97e6-f2e6d1a55902	SAMEORIGIN
_browser_header.contentSecurityPolicy	28893197-b00a-4ee3-97e6-f2e6d1a55902	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.strictTransportSecurity	28893197-b00a-4ee3-97e6-f2e6d1a55902	max-age=31536000; includeSubDomains
bruteForceProtected	28893197-b00a-4ee3-97e6-f2e6d1a55902	false
permanentLockout	28893197-b00a-4ee3-97e6-f2e6d1a55902	false
maxTemporaryLockouts	28893197-b00a-4ee3-97e6-f2e6d1a55902	0
bruteForceStrategy	28893197-b00a-4ee3-97e6-f2e6d1a55902	MULTIPLE
maxFailureWaitSeconds	28893197-b00a-4ee3-97e6-f2e6d1a55902	900
minimumQuickLoginWaitSeconds	28893197-b00a-4ee3-97e6-f2e6d1a55902	60
waitIncrementSeconds	28893197-b00a-4ee3-97e6-f2e6d1a55902	60
quickLoginCheckMilliSeconds	28893197-b00a-4ee3-97e6-f2e6d1a55902	1000
maxDeltaTimeSeconds	28893197-b00a-4ee3-97e6-f2e6d1a55902	43200
failureFactor	28893197-b00a-4ee3-97e6-f2e6d1a55902	30
maxSecondaryAuthFailures	28893197-b00a-4ee3-97e6-f2e6d1a55902	0
realmReusableOtpCode	28893197-b00a-4ee3-97e6-f2e6d1a55902	false
firstBrokerLoginFlowId	28893197-b00a-4ee3-97e6-f2e6d1a55902	fb11acb2-143a-4bf8-8326-22e561b73872
displayNameHtml	28893197-b00a-4ee3-97e6-f2e6d1a55902	<div class="kc-logo-text"><span>Keycloak</span></div>
defaultSignatureAlgorithm	28893197-b00a-4ee3-97e6-f2e6d1a55902	RS256
offlineSessionMaxLifespanEnabled	28893197-b00a-4ee3-97e6-f2e6d1a55902	false
offlineSessionMaxLifespan	28893197-b00a-4ee3-97e6-f2e6d1a55902	5184000
_browser_header.contentSecurityPolicyReportOnly	6415217a-07af-457d-9def-590e3d8495b3	
_browser_header.xContentTypeOptions	6415217a-07af-457d-9def-590e3d8495b3	nosniff
_browser_header.referrerPolicy	6415217a-07af-457d-9def-590e3d8495b3	no-referrer
_browser_header.xRobotsTag	6415217a-07af-457d-9def-590e3d8495b3	none
_browser_header.xFrameOptions	6415217a-07af-457d-9def-590e3d8495b3	SAMEORIGIN
_browser_header.contentSecurityPolicy	6415217a-07af-457d-9def-590e3d8495b3	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.strictTransportSecurity	6415217a-07af-457d-9def-590e3d8495b3	max-age=31536000; includeSubDomains
bruteForceProtected	6415217a-07af-457d-9def-590e3d8495b3	false
permanentLockout	6415217a-07af-457d-9def-590e3d8495b3	false
maxTemporaryLockouts	6415217a-07af-457d-9def-590e3d8495b3	0
bruteForceStrategy	6415217a-07af-457d-9def-590e3d8495b3	MULTIPLE
maxFailureWaitSeconds	6415217a-07af-457d-9def-590e3d8495b3	900
minimumQuickLoginWaitSeconds	6415217a-07af-457d-9def-590e3d8495b3	60
waitIncrementSeconds	6415217a-07af-457d-9def-590e3d8495b3	60
quickLoginCheckMilliSeconds	6415217a-07af-457d-9def-590e3d8495b3	1000
maxDeltaTimeSeconds	6415217a-07af-457d-9def-590e3d8495b3	43200
failureFactor	6415217a-07af-457d-9def-590e3d8495b3	30
maxSecondaryAuthFailures	6415217a-07af-457d-9def-590e3d8495b3	0
realmReusableOtpCode	6415217a-07af-457d-9def-590e3d8495b3	false
defaultSignatureAlgorithm	6415217a-07af-457d-9def-590e3d8495b3	RS256
offlineSessionMaxLifespanEnabled	6415217a-07af-457d-9def-590e3d8495b3	false
offlineSessionMaxLifespan	6415217a-07af-457d-9def-590e3d8495b3	5184000
actionTokenGeneratedByAdminLifespan	6415217a-07af-457d-9def-590e3d8495b3	43200
actionTokenGeneratedByUserLifespan	6415217a-07af-457d-9def-590e3d8495b3	300
oauth2DeviceCodeLifespan	6415217a-07af-457d-9def-590e3d8495b3	600
oauth2DevicePollingInterval	6415217a-07af-457d-9def-590e3d8495b3	5
webAuthnPolicyRpEntityName	6415217a-07af-457d-9def-590e3d8495b3	keycloak
webAuthnPolicySignatureAlgorithms	6415217a-07af-457d-9def-590e3d8495b3	ES256,RS256
webAuthnPolicyRpId	6415217a-07af-457d-9def-590e3d8495b3	
webAuthnPolicyAttestationConveyancePreference	6415217a-07af-457d-9def-590e3d8495b3	not specified
webAuthnPolicyAuthenticatorAttachment	6415217a-07af-457d-9def-590e3d8495b3	not specified
webAuthnPolicyResidentKey	6415217a-07af-457d-9def-590e3d8495b3	not specified
webAuthnPolicyRequireResidentKey	6415217a-07af-457d-9def-590e3d8495b3	not specified
webAuthnPolicyUserVerificationRequirement	6415217a-07af-457d-9def-590e3d8495b3	not specified
webAuthnPolicyCreateTimeout	6415217a-07af-457d-9def-590e3d8495b3	0
webAuthnPolicyAvoidSameAuthenticatorRegister	6415217a-07af-457d-9def-590e3d8495b3	false
webAuthnPolicyRpEntityNamePasswordless	6415217a-07af-457d-9def-590e3d8495b3	keycloak
webAuthnPolicySignatureAlgorithmsPasswordless	6415217a-07af-457d-9def-590e3d8495b3	ES256,RS256
webAuthnPolicyRpIdPasswordless	6415217a-07af-457d-9def-590e3d8495b3	
webAuthnPolicyAttestationConveyancePreferencePasswordless	6415217a-07af-457d-9def-590e3d8495b3	not specified
webAuthnPolicyAuthenticatorAttachmentPasswordless	6415217a-07af-457d-9def-590e3d8495b3	not specified
webAuthnPolicyResidentKeyPasswordless	6415217a-07af-457d-9def-590e3d8495b3	required
webAuthnPolicyRequireResidentKeyPasswordless	6415217a-07af-457d-9def-590e3d8495b3	not specified
webAuthnPolicyUserVerificationRequirementPasswordless	6415217a-07af-457d-9def-590e3d8495b3	required
webAuthnPolicyCreateTimeoutPasswordless	6415217a-07af-457d-9def-590e3d8495b3	0
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	6415217a-07af-457d-9def-590e3d8495b3	false
cibaBackchannelTokenDeliveryMode	6415217a-07af-457d-9def-590e3d8495b3	poll
cibaExpiresIn	6415217a-07af-457d-9def-590e3d8495b3	120
cibaInterval	6415217a-07af-457d-9def-590e3d8495b3	5
cibaAuthRequestedUserHint	6415217a-07af-457d-9def-590e3d8495b3	login_hint
parRequestUriLifespan	6415217a-07af-457d-9def-590e3d8495b3	60
firstBrokerLoginFlowId	6415217a-07af-457d-9def-590e3d8495b3	481fdddb-7d4b-487c-8deb-66a426ba0629
\.


--
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm_default_groups (realm_id, group_id) FROM stdin;
\.


--
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm_enabled_event_types (realm_id, value) FROM stdin;
\.


--
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm_events_listeners (realm_id, value) FROM stdin;
28893197-b00a-4ee3-97e6-f2e6d1a55902	jboss-logging
6415217a-07af-457d-9def-590e3d8495b3	jboss-logging
\.


--
-- Data for Name: realm_localizations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm_localizations (realm_id, locale, texts) FROM stdin;
\.


--
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm_required_credential (type, form_label, input, secret, realm_id) FROM stdin;
password	password	t	t	28893197-b00a-4ee3-97e6-f2e6d1a55902
password	password	t	t	6415217a-07af-457d-9def-590e3d8495b3
\.


--
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm_smtp_config (realm_id, value, name) FROM stdin;
\.


--
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.realm_supported_locales (realm_id, value) FROM stdin;
\.


--
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.redirect_uris (client_id, value) FROM stdin;
a61ed0e7-8ffb-458e-9171-3bd28c20ad3a	/realms/master/account/*
31e4ea08-b5f9-4796-af44-bf3c67611ff7	/realms/master/account/*
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	/admin/master/console/*
8fc0cdf7-46a0-4390-9b8d-16ad1a58838c	/realms/activities/account/*
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	/realms/activities/account/*
2a6ed552-2544-4760-af30-121d32e54277	/admin/activities/console/*
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	*
1c969aed-9377-4054-8d11-632fec9a059d	http://localhost:5173/*
\.


--
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.required_action_config (required_action_id, value, name) FROM stdin;
\.


--
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.required_action_provider (id, alias, name, realm_id, enabled, default_action, provider_id, priority) FROM stdin;
bba50347-99da-46ca-889c-8b6b46184646	VERIFY_EMAIL	Verify Email	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	VERIFY_EMAIL	50
b284008b-ea32-44ca-8f79-f928dbb40705	UPDATE_PROFILE	Update Profile	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	UPDATE_PROFILE	40
b5eba487-1da7-45e9-b279-19376baaf71b	CONFIGURE_TOTP	Configure OTP	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	CONFIGURE_TOTP	54
6812a78c-2b49-4bfb-aa5e-81f5cb41e882	UPDATE_PASSWORD	Update Password	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	UPDATE_PASSWORD	57
aac4aa25-f414-4021-abdb-5072884c4f7d	TERMS_AND_CONDITIONS	Terms and Conditions	28893197-b00a-4ee3-97e6-f2e6d1a55902	f	f	TERMS_AND_CONDITIONS	20
1d3e5eea-1edc-4935-a582-7fe7a04edb3a	delete_account	Delete Account	28893197-b00a-4ee3-97e6-f2e6d1a55902	f	f	delete_account	60
ced5602c-082c-42e5-932a-fb6eb878d078	delete_credential	Delete Credential	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	delete_credential	110
d32f5c71-a9ef-4894-a327-441b531afe18	update_user_locale	Update User Locale	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	update_user_locale	1000
00a47d0f-aa74-4a89-9f2d-60514c648515	UPDATE_EMAIL	Update Email	28893197-b00a-4ee3-97e6-f2e6d1a55902	f	f	UPDATE_EMAIL	70
e5b41722-b8fc-490b-849d-749e752f2c5e	CONFIGURE_RECOVERY_AUTHN_CODES	Recovery Authentication Codes	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	CONFIGURE_RECOVERY_AUTHN_CODES	130
97ad0f4f-28db-4e6e-954f-9c5d96ef448e	webauthn-register	Webauthn Register	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	webauthn-register	80
ca03c337-006e-4d60-82d8-584335993d85	webauthn-register-passwordless	Webauthn Register Passwordless	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	webauthn-register-passwordless	90
c4da9064-36b6-4cfd-be08-652fc270cfc4	VERIFY_PROFILE	Verify Profile	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	VERIFY_PROFILE	100
6755cf7b-a95a-46b7-b665-0c44d30040c3	idp_link	Linking Identity Provider	28893197-b00a-4ee3-97e6-f2e6d1a55902	t	f	idp_link	120
7ee93593-d138-49d3-9d55-c8071d38ae11	VERIFY_EMAIL	Verify Email	6415217a-07af-457d-9def-590e3d8495b3	t	f	VERIFY_EMAIL	50
bc7c1e02-f43b-4b12-9191-8d06635154f2	UPDATE_PROFILE	Update Profile	6415217a-07af-457d-9def-590e3d8495b3	t	f	UPDATE_PROFILE	40
b69fb76b-cda3-446e-af82-08df14ef3615	CONFIGURE_TOTP	Configure OTP	6415217a-07af-457d-9def-590e3d8495b3	t	f	CONFIGURE_TOTP	54
b4f10ec0-48b4-4098-a1e8-2a23726edd8e	UPDATE_PASSWORD	Update Password	6415217a-07af-457d-9def-590e3d8495b3	t	f	UPDATE_PASSWORD	57
fa8ee045-0bd8-4c2b-a91d-412589578cc2	TERMS_AND_CONDITIONS	Terms and Conditions	6415217a-07af-457d-9def-590e3d8495b3	f	f	TERMS_AND_CONDITIONS	20
eeacf601-a7f7-4ed7-90d5-4636ec76a512	delete_account	Delete Account	6415217a-07af-457d-9def-590e3d8495b3	f	f	delete_account	60
9da348cf-9ece-4589-9cad-c34731be738e	delete_credential	Delete Credential	6415217a-07af-457d-9def-590e3d8495b3	t	f	delete_credential	110
e8acfa37-a736-4699-a908-2f2249605011	update_user_locale	Update User Locale	6415217a-07af-457d-9def-590e3d8495b3	t	f	update_user_locale	1000
51771410-9a8d-4d95-a9d2-1cdc9da2f9d3	UPDATE_EMAIL	Update Email	6415217a-07af-457d-9def-590e3d8495b3	f	f	UPDATE_EMAIL	70
4946b561-c0ca-4ac2-8ac3-ae97eadf4c6a	CONFIGURE_RECOVERY_AUTHN_CODES	Recovery Authentication Codes	6415217a-07af-457d-9def-590e3d8495b3	t	f	CONFIGURE_RECOVERY_AUTHN_CODES	130
f9854995-3189-492c-9bb8-59a6e76981c9	webauthn-register	Webauthn Register	6415217a-07af-457d-9def-590e3d8495b3	t	f	webauthn-register	80
c44b51a7-78b0-424f-8c01-db10f4661da4	webauthn-register-passwordless	Webauthn Register Passwordless	6415217a-07af-457d-9def-590e3d8495b3	t	f	webauthn-register-passwordless	90
64885d0c-248c-4267-87cf-e90eb227cb57	VERIFY_PROFILE	Verify Profile	6415217a-07af-457d-9def-590e3d8495b3	t	f	VERIFY_PROFILE	100
4748cc8f-2859-4e5e-bbb3-cddfeb241239	idp_link	Linking Identity Provider	6415217a-07af-457d-9def-590e3d8495b3	t	f	idp_link	120
\.


--
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_attribute (id, name, value, resource_id) FROM stdin;
\.


--
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_policy (resource_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_scope (resource_id, scope_id) FROM stdin;
\.


--
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_server (id, allow_rs_remote_mgmt, policy_enforce_mode, decision_strategy) FROM stdin;
\.


--
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_server_perm_ticket (id, owner, requester, created_timestamp, granted_timestamp, resource_id, scope_id, resource_server_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_server_policy (id, name, description, type, decision_strategy, logic, resource_server_id, owner) FROM stdin;
\.


--
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_server_resource (id, name, type, icon_uri, owner, resource_server_id, owner_managed_access, display_name) FROM stdin;
\.


--
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_server_scope (id, name, icon_uri, resource_server_id, display_name) FROM stdin;
\.


--
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.resource_uris (resource_id, value) FROM stdin;
\.


--
-- Data for Name: revoked_token; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.revoked_token (id, expire) FROM stdin;
\.


--
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.role_attribute (id, role_id, name, value) FROM stdin;
\.


--
-- Data for Name: root_auth_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.root_auth_session (id, realm_id, "timestamp", version) FROM stdin;
\.


--
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.scope_mapping (client_id, role_id) FROM stdin;
31e4ea08-b5f9-4796-af44-bf3c67611ff7	06dcd7f7-0bdb-444c-985a-b91935673adf
31e4ea08-b5f9-4796-af44-bf3c67611ff7	9fa04a4d-8987-42a4-8cf8-1c004a41aa2d
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	ea190450-c4cd-44b5-ba58-9d1ea57afd96
c93eed98-24b1-4b61-8e3f-11cb33ad30b3	8b19a47c-6f24-4f0f-8617-5d749dc9f023
\.


--
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.scope_policy (scope_id, policy_id) FROM stdin;
\.


--
-- Data for Name: server_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.server_config (server_config_key, value, version) FROM stdin;
\.


--
-- Data for Name: single_use_object; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.single_use_object (id, notes, expire) FROM stdin;
\.


--
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_attribute (name, value, user_id, id, long_value_hash, long_value_hash_lower_case, long_value) FROM stdin;
is_temporary_admin	true	c2f672a8-093a-4187-99ba-b062595802da	642cc878-1e65-4e50-ade2-5cdc694b54d7	\N	\N	\N
\.


--
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_consent (id, client_id, user_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_consent_client_scope (user_consent_id, scope_id, parameter) FROM stdin;
\.


--
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_entity (id, email, email_constraint, email_verified, enabled, federation_link, first_name, last_name, realm_id, username, created_timestamp, service_account_client_link, not_before, last_modified_timestamp) FROM stdin;
c2f672a8-093a-4187-99ba-b062595802da	\N	10004680-06f0-4403-8fc5-4c0121c2b526	f	t	\N	\N	\N	28893197-b00a-4ee3-97e6-f2e6d1a55902	admin	1790083308625	\N	0	1790083308625
9b0366ee-ee8a-4e06-9171-28c35a6d6faa	admin@example.com	admin@example.com	t	t	\N	Admin	Admin	6415217a-07af-457d-9def-590e3d8495b3	admin	1790083506353	\N	0	1790083506353
\.


--
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_federation_config (user_federation_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_federation_mapper (id, name, federation_provider_id, federation_mapper_type, realm_id) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_federation_mapper_config (user_federation_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_federation_provider (id, changed_sync_period, display_name, full_sync_period, last_sync, priority, provider_name, realm_id) FROM stdin;
\.


--
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_group_membership (group_id, user_id, membership_type) FROM stdin;
\.


--
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_required_action (user_id, required_action) FROM stdin;
\.


--
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_role_mapping (role_id, user_id) FROM stdin;
cd3a29f2-9b61-47af-a813-f04f36297347	c2f672a8-093a-4187-99ba-b062595802da
de2a42ca-76e9-43a3-98d5-9abc1958b719	c2f672a8-093a-4187-99ba-b062595802da
3b8944bf-1a7f-4b64-90b5-f9da50ef8559	9b0366ee-ee8a-4e06-9171-28c35a6d6faa
\.


--
-- Data for Name: user_ver_credential; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_ver_credential (id, client_scope_id, user_id, revision, created_date, updated_date, user_attributes, version) FROM stdin;
\.


--
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.web_origins (client_id, value) FROM stdin;
3ffabbf1-247c-4ec7-9a41-1120dbdb32af	+
2a6ed552-2544-4760-af30-121d32e54277	+
0c88691e-f9a5-4a3c-a8fb-53e8d3321d30	*
1c969aed-9377-4054-8d11-632fec9a059d	*
\.


--
-- Data for Name: workflow_state; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.workflow_state (execution_id, resource_id, workflow_id, resource_type, scheduled_step_id, scheduled_step_timestamp) FROM stdin;
\.


--
-- Name: org_domain ORG_DOMAIN_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.org_domain
    ADD CONSTRAINT "ORG_DOMAIN_pkey" PRIMARY KEY (id, name);


--
-- Name: org ORG_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT "ORG_pkey" PRIMARY KEY (id);


--
-- Name: server_config SERVER_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.server_config
    ADD CONSTRAINT "SERVER_CONFIG_pkey" PRIMARY KEY (server_config_key);


--
-- Name: keycloak_role UK_J3RWUVD56ONTGSUHOGM184WW2-2; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT "UK_J3RWUVD56ONTGSUHOGM184WW2-2" UNIQUE (name, client_realm_constraint);


--
-- Name: client_auth_flow_bindings c_cli_flow_bind; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_auth_flow_bindings
    ADD CONSTRAINT c_cli_flow_bind PRIMARY KEY (client_id, binding_name);


--
-- Name: client_scope_client c_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT c_cli_scope_bind PRIMARY KEY (client_id, scope_id);


--
-- Name: client_initial_access cnstr_client_init_acc_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT cnstr_client_init_acc_pk PRIMARY KEY (id);


--
-- Name: realm_default_groups con_group_id_def_groups; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT con_group_id_def_groups UNIQUE (group_id);


--
-- Name: broker_link constr_broker_link_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.broker_link
    ADD CONSTRAINT constr_broker_link_pk PRIMARY KEY (identity_provider, user_id);


--
-- Name: component_config constr_component_config_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT constr_component_config_pk PRIMARY KEY (id);


--
-- Name: component constr_component_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT constr_component_pk PRIMARY KEY (id);


--
-- Name: fed_user_required_action constr_fed_required_action; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_required_action
    ADD CONSTRAINT constr_fed_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: fed_user_attribute constr_fed_user_attr_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_attribute
    ADD CONSTRAINT constr_fed_user_attr_pk PRIMARY KEY (id);


--
-- Name: fed_user_consent constr_fed_user_consent_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_consent
    ADD CONSTRAINT constr_fed_user_consent_pk PRIMARY KEY (id);


--
-- Name: fed_user_credential constr_fed_user_cred_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_credential
    ADD CONSTRAINT constr_fed_user_cred_pk PRIMARY KEY (id);


--
-- Name: fed_user_group_membership constr_fed_user_group; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_group_membership
    ADD CONSTRAINT constr_fed_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: fed_user_role_mapping constr_fed_user_role; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_role_mapping
    ADD CONSTRAINT constr_fed_user_role PRIMARY KEY (role_id, user_id);


--
-- Name: federated_user constr_federated_user; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.federated_user
    ADD CONSTRAINT constr_federated_user PRIMARY KEY (id);


--
-- Name: realm_default_groups constr_realm_default_groups; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT constr_realm_default_groups PRIMARY KEY (realm_id, group_id);


--
-- Name: realm_enabled_event_types constr_realm_enabl_event_types; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT constr_realm_enabl_event_types PRIMARY KEY (realm_id, value);


--
-- Name: realm_events_listeners constr_realm_events_listeners; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT constr_realm_events_listeners PRIMARY KEY (realm_id, value);


--
-- Name: realm_supported_locales constr_realm_supported_locales; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT constr_realm_supported_locales PRIMARY KEY (realm_id, value);


--
-- Name: identity_provider constraint_2b; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT constraint_2b PRIMARY KEY (internal_id);


--
-- Name: client_attributes constraint_3c; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT constraint_3c PRIMARY KEY (client_id, name);


--
-- Name: event_entity constraint_4; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.event_entity
    ADD CONSTRAINT constraint_4 PRIMARY KEY (id);


--
-- Name: federated_identity constraint_40; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT constraint_40 PRIMARY KEY (identity_provider, user_id);


--
-- Name: realm constraint_4a; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT constraint_4a PRIMARY KEY (id);


--
-- Name: user_federation_provider constraint_5c; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT constraint_5c PRIMARY KEY (id);


--
-- Name: client constraint_7; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT constraint_7 PRIMARY KEY (id);


--
-- Name: scope_mapping constraint_81; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT constraint_81 PRIMARY KEY (client_id, role_id);


--
-- Name: client_node_registrations constraint_84; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT constraint_84 PRIMARY KEY (client_id, name);


--
-- Name: realm_attribute constraint_9; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT constraint_9 PRIMARY KEY (name, realm_id);


--
-- Name: realm_required_credential constraint_92; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT constraint_92 PRIMARY KEY (realm_id, type);


--
-- Name: keycloak_role constraint_a; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT constraint_a PRIMARY KEY (id);


--
-- Name: admin_event_entity constraint_admin_event_entity; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.admin_event_entity
    ADD CONSTRAINT constraint_admin_event_entity PRIMARY KEY (id);


--
-- Name: authenticator_config_entry constraint_auth_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authenticator_config_entry
    ADD CONSTRAINT constraint_auth_cfg_pk PRIMARY KEY (authenticator_id, name);


--
-- Name: authentication_execution constraint_auth_exec_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT constraint_auth_exec_pk PRIMARY KEY (id);


--
-- Name: authentication_flow constraint_auth_flow_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT constraint_auth_flow_pk PRIMARY KEY (id);


--
-- Name: authenticator_config constraint_auth_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT constraint_auth_pk PRIMARY KEY (id);


--
-- Name: user_role_mapping constraint_c; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT constraint_c PRIMARY KEY (role_id, user_id);


--
-- Name: composite_role constraint_composite_role; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT constraint_composite_role PRIMARY KEY (composite, child_role);


--
-- Name: identity_provider_config constraint_d; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT constraint_d PRIMARY KEY (identity_provider_id, name);


--
-- Name: policy_config constraint_dpc; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT constraint_dpc PRIMARY KEY (policy_id, name);


--
-- Name: realm_smtp_config constraint_e; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT constraint_e PRIMARY KEY (realm_id, name);


--
-- Name: credential constraint_f; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT constraint_f PRIMARY KEY (id);


--
-- Name: user_federation_config constraint_f9; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT constraint_f9 PRIMARY KEY (user_federation_provider_id, name);


--
-- Name: resource_server_perm_ticket constraint_fapmt; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT constraint_fapmt PRIMARY KEY (id);


--
-- Name: resource_server_resource constraint_farsr; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT constraint_farsr PRIMARY KEY (id);


--
-- Name: resource_server_policy constraint_farsrp; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT constraint_farsrp PRIMARY KEY (id);


--
-- Name: associated_policy constraint_farsrpap; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT constraint_farsrpap PRIMARY KEY (policy_id, associated_policy_id);


--
-- Name: resource_policy constraint_farsrpp; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT constraint_farsrpp PRIMARY KEY (resource_id, policy_id);


--
-- Name: resource_server_scope constraint_farsrs; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT constraint_farsrs PRIMARY KEY (id);


--
-- Name: resource_scope constraint_farsrsp; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT constraint_farsrsp PRIMARY KEY (resource_id, scope_id);


--
-- Name: scope_policy constraint_farsrsps; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT constraint_farsrsps PRIMARY KEY (scope_id, policy_id);


--
-- Name: user_entity constraint_fb; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT constraint_fb PRIMARY KEY (id);


--
-- Name: user_federation_mapper_config constraint_fedmapper_cfg_pm; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT constraint_fedmapper_cfg_pm PRIMARY KEY (user_federation_mapper_id, name);


--
-- Name: user_federation_mapper constraint_fedmapperpm; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT constraint_fedmapperpm PRIMARY KEY (id);


--
-- Name: fed_user_consent_cl_scope constraint_fgrntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_consent_cl_scope
    ADD CONSTRAINT constraint_fgrntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id, parameter);


--
-- Name: user_consent_client_scope constraint_grntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT constraint_grntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id, parameter);


--
-- Name: user_consent constraint_grntcsnt_pm; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT constraint_grntcsnt_pm PRIMARY KEY (id);


--
-- Name: keycloak_group constraint_group; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT constraint_group PRIMARY KEY (id);


--
-- Name: group_attribute constraint_group_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT constraint_group_attribute_pk PRIMARY KEY (id);


--
-- Name: group_role_mapping constraint_group_role; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT constraint_group_role PRIMARY KEY (role_id, group_id);


--
-- Name: identity_provider_mapper constraint_idpm; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT constraint_idpm PRIMARY KEY (id);


--
-- Name: idp_mapper_config constraint_idpmconfig; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT constraint_idpmconfig PRIMARY KEY (idp_mapper_id, name);


--
-- Name: jgroups_ping constraint_jgroups_ping; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.jgroups_ping
    ADD CONSTRAINT constraint_jgroups_ping PRIMARY KEY (address);


--
-- Name: migration_model constraint_migmod; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT constraint_migmod PRIMARY KEY (id);


--
-- Name: offline_client_session constraint_offl_cl_ses_pk3; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.offline_client_session
    ADD CONSTRAINT constraint_offl_cl_ses_pk3 PRIMARY KEY (user_session_id, client_id, client_storage_provider, external_client_id, offline_flag);


--
-- Name: offline_user_session constraint_offl_us_ses_pk2; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.offline_user_session
    ADD CONSTRAINT constraint_offl_us_ses_pk2 PRIMARY KEY (user_session_id, offline_flag);


--
-- Name: org_invitation constraint_org_invitation; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.org_invitation
    ADD CONSTRAINT constraint_org_invitation PRIMARY KEY (id);


--
-- Name: protocol_mapper constraint_pcm; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT constraint_pcm PRIMARY KEY (id);


--
-- Name: protocol_mapper_config constraint_pmconfig; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT constraint_pmconfig PRIMARY KEY (protocol_mapper_id, name);


--
-- Name: redirect_uris constraint_redirect_uris; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT constraint_redirect_uris PRIMARY KEY (client_id, value);


--
-- Name: required_action_config constraint_req_act_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.required_action_config
    ADD CONSTRAINT constraint_req_act_cfg_pk PRIMARY KEY (required_action_id, name);


--
-- Name: required_action_provider constraint_req_act_prv_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT constraint_req_act_prv_pk PRIMARY KEY (id);


--
-- Name: user_required_action constraint_required_action; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT constraint_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: resource_uris constraint_resour_uris_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT constraint_resour_uris_pk PRIMARY KEY (resource_id, value);


--
-- Name: role_attribute constraint_role_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT constraint_role_attribute_pk PRIMARY KEY (id);


--
-- Name: revoked_token constraint_rt; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.revoked_token
    ADD CONSTRAINT constraint_rt PRIMARY KEY (id);


--
-- Name: user_attribute constraint_user_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT constraint_user_attribute_pk PRIMARY KEY (id);


--
-- Name: user_group_membership constraint_user_group; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT constraint_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: user_ver_credential constraint_vcred_pm; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_ver_credential
    ADD CONSTRAINT constraint_vcred_pm PRIMARY KEY (id);


--
-- Name: web_origins constraint_web_origins; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT constraint_web_origins PRIMARY KEY (client_id, value);


--
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


--
-- Name: auth_session pk_auth_session; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_session
    ADD CONSTRAINT pk_auth_session PRIMARY KEY (root_auth_session_id, tab_id);


--
-- Name: client_scope_attributes pk_cl_tmpl_attr; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT pk_cl_tmpl_attr PRIMARY KEY (scope_id, name);


--
-- Name: client_scope pk_cli_template; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT pk_cli_template PRIMARY KEY (id);


--
-- Name: cluster_event pk_cluster_event; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cluster_event
    ADD CONSTRAINT pk_cluster_event PRIMARY KEY (id, target_cluster);


--
-- Name: fed_issued_ver_credential pk_fed_issued_ver_credential; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_issued_ver_credential
    ADD CONSTRAINT pk_fed_issued_ver_credential PRIMARY KEY (id);


--
-- Name: fed_user_ver_credential pk_fed_user_ver_credential; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_ver_credential
    ADD CONSTRAINT pk_fed_user_ver_credential PRIMARY KEY (id);


--
-- Name: issued_ver_credential pk_issued_ver_credential; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.issued_ver_credential
    ADD CONSTRAINT pk_issued_ver_credential PRIMARY KEY (id);


--
-- Name: login_failure pk_login_failure; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.login_failure
    ADD CONSTRAINT pk_login_failure PRIMARY KEY (realm_id, user_id);


--
-- Name: outbox_entry pk_outbox_entry; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.outbox_entry
    ADD CONSTRAINT pk_outbox_entry PRIMARY KEY (id);


--
-- Name: resource_server pk_resource_server; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server
    ADD CONSTRAINT pk_resource_server PRIMARY KEY (id);


--
-- Name: root_auth_session pk_root_auth_session; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.root_auth_session
    ADD CONSTRAINT pk_root_auth_session PRIMARY KEY (id);


--
-- Name: single_use_object pk_single_use_object; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.single_use_object
    ADD CONSTRAINT pk_single_use_object PRIMARY KEY (id);


--
-- Name: client_scope_role_mapping pk_template_scope; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT pk_template_scope PRIMARY KEY (scope_id, role_id);


--
-- Name: workflow_state pk_workflow_state; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workflow_state
    ADD CONSTRAINT pk_workflow_state PRIMARY KEY (execution_id);


--
-- Name: default_client_scope r_def_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT r_def_cli_scope_bind PRIMARY KEY (realm_id, scope_id);


--
-- Name: realm_localizations realm_localizations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_localizations
    ADD CONSTRAINT realm_localizations_pkey PRIMARY KEY (realm_id, locale);


--
-- Name: resource_attribute res_attr_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT res_attr_pk PRIMARY KEY (id);


--
-- Name: keycloak_group sibling_names; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT sibling_names UNIQUE (realm_id, parent_group, name);


--
-- Name: outbox_entry uc_outbox_kind_owner_correlation; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.outbox_entry
    ADD CONSTRAINT uc_outbox_kind_owner_correlation UNIQUE (entry_kind, owner_id, correlation_id);


--
-- Name: identity_provider uk_2daelwnibji49avxsrtuf6xj33; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT uk_2daelwnibji49avxsrtuf6xj33 UNIQUE (provider_alias, realm_id);


--
-- Name: client uk_b71cjlbenv945rb6gcon438at; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT uk_b71cjlbenv945rb6gcon438at UNIQUE (realm_id, client_id);


--
-- Name: client_scope uk_cli_scope; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT uk_cli_scope UNIQUE (realm_id, name);


--
-- Name: user_entity uk_dykn684sl8up1crfei6eckhd7; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_dykn684sl8up1crfei6eckhd7 UNIQUE (realm_id, email_constraint);


--
-- Name: user_consent uk_external_consent; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_external_consent UNIQUE (client_storage_provider, external_client_id, user_id);


--
-- Name: fed_user_ver_credential uk_fed_user_vc; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_user_ver_credential
    ADD CONSTRAINT uk_fed_user_vc UNIQUE (user_id, client_scope_id);


--
-- Name: resource_server_resource uk_frsr6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5ha6 UNIQUE (name, owner, resource_server_id);


--
-- Name: resource_server_perm_ticket uk_frsr6t700s9v50bu18ws5pmt; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5pmt UNIQUE (owner, requester, resource_server_id, resource_id, scope_id);


--
-- Name: resource_server_policy uk_frsrpt700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT uk_frsrpt700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: resource_server_scope uk_frsrst700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT uk_frsrst700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: user_ver_credential uk_kkuwuvd67ontgsugogm8uewre; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_ver_credential
    ADD CONSTRAINT uk_kkuwuvd67ontgsugogm8uewre UNIQUE (user_id, client_scope_id);


--
-- Name: user_consent uk_local_consent; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_local_consent UNIQUE (client_id, user_id);


--
-- Name: migration_model uk_migration_update_time; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT uk_migration_update_time UNIQUE (update_time);


--
-- Name: migration_model uk_migration_version; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT uk_migration_version UNIQUE (version);


--
-- Name: org uk_org_alias; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_alias UNIQUE (realm_id, alias);


--
-- Name: org uk_org_group; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_group UNIQUE (group_id);


--
-- Name: org_invitation uk_org_invitation_email; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.org_invitation
    ADD CONSTRAINT uk_org_invitation_email UNIQUE (organization_id, email);


--
-- Name: org uk_org_name; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_name UNIQUE (realm_id, name);


--
-- Name: realm uk_orvsdmla56612eaefiq6wl5oi; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT uk_orvsdmla56612eaefiq6wl5oi UNIQUE (name);


--
-- Name: user_entity uk_ru8tt6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_ru8tt6t700s9v50bu18ws5ha6 UNIQUE (realm_id, username);


--
-- Name: workflow_state uq_workflow_resource; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workflow_state
    ADD CONSTRAINT uq_workflow_resource UNIQUE (workflow_id, resource_id);


--
-- Name: fed_user_attr_long_values; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX fed_user_attr_long_values ON public.fed_user_attribute USING btree (long_value_hash, name);


--
-- Name: fed_user_attr_long_values_lower_case; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX fed_user_attr_long_values_lower_case ON public.fed_user_attribute USING btree (long_value_hash_lower_case, name);


--
-- Name: idx_admin_event_time; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_admin_event_time ON public.admin_event_entity USING btree (realm_id, admin_event_time);


--
-- Name: idx_assoc_pol_assoc_pol_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_assoc_pol_assoc_pol_id ON public.associated_policy USING btree (associated_policy_id);


--
-- Name: idx_auth_config_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_auth_config_realm ON public.authenticator_config USING btree (realm_id);


--
-- Name: idx_auth_exec_flow; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_auth_exec_flow ON public.authentication_execution USING btree (flow_id);


--
-- Name: idx_auth_exec_realm_flow; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_auth_exec_realm_flow ON public.authentication_execution USING btree (realm_id, flow_id);


--
-- Name: idx_auth_flow_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_auth_flow_realm ON public.authentication_flow USING btree (realm_id);


--
-- Name: idx_broker_link_identity_provider; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_broker_link_identity_provider ON public.broker_link USING btree (realm_id, identity_provider, broker_user_id);


--
-- Name: idx_broker_link_user_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_broker_link_user_id ON public.broker_link USING btree (user_id);


--
-- Name: idx_cl_clscope; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_cl_clscope ON public.client_scope_client USING btree (scope_id);


--
-- Name: idx_client_att_by_name_value; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_client_att_by_name_value ON public.client_attributes USING btree (name, substr(value, 1, 255));


--
-- Name: idx_client_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_client_id ON public.client USING btree (client_id);


--
-- Name: idx_client_init_acc_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_client_init_acc_realm ON public.client_initial_access USING btree (realm_id);


--
-- Name: idx_clscope_attrs; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_clscope_attrs ON public.client_scope_attributes USING btree (scope_id);


--
-- Name: idx_clscope_cl; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_clscope_cl ON public.client_scope_client USING btree (client_id);


--
-- Name: idx_clscope_protmap; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_clscope_protmap ON public.protocol_mapper USING btree (client_scope_id);


--
-- Name: idx_clscope_role; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_clscope_role ON public.client_scope_role_mapping USING btree (scope_id);


--
-- Name: idx_cluster_event_target; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_cluster_event_target ON public.cluster_event USING btree (target_cluster, created_at);


--
-- Name: idx_compo_config_compo; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_compo_config_compo ON public.component_config USING btree (component_id);


--
-- Name: idx_component_provider_type; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_component_provider_type ON public.component USING btree (provider_type);


--
-- Name: idx_component_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_component_realm ON public.component USING btree (realm_id);


--
-- Name: idx_composite; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_composite ON public.composite_role USING btree (composite);


--
-- Name: idx_composite_child; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_composite_child ON public.composite_role USING btree (child_role);


--
-- Name: idx_defcls_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_defcls_realm ON public.default_client_scope USING btree (realm_id);


--
-- Name: idx_defcls_scope; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_defcls_scope ON public.default_client_scope USING btree (scope_id);


--
-- Name: idx_event_entity_user_id_type; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_event_entity_user_id_type ON public.event_entity USING btree (user_id, type, event_time);


--
-- Name: idx_event_time; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_event_time ON public.event_entity USING btree (realm_id, event_time);


--
-- Name: idx_fed_issued_vc_cred_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fed_issued_vc_cred_id ON public.fed_issued_ver_credential USING btree (ver_credential_id);


--
-- Name: idx_fed_issued_vc_expires; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fed_issued_vc_expires ON public.fed_issued_ver_credential USING btree (expires_at);


--
-- Name: idx_fed_issued_vc_storage; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fed_issued_vc_storage ON public.fed_issued_ver_credential USING btree (storage_provider_id);


--
-- Name: idx_fed_issued_vc_user; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fed_issued_vc_user ON public.fed_issued_ver_credential USING btree (user_id, realm_id, issued_at);


--
-- Name: idx_fed_user_vc_realm_user; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fed_user_vc_realm_user ON public.fed_user_ver_credential USING btree (realm_id, user_id);


--
-- Name: idx_fedidentity_feduser; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fedidentity_feduser ON public.federated_identity USING btree (federated_user_id);


--
-- Name: idx_fedidentity_user; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fedidentity_user ON public.federated_identity USING btree (user_id);


--
-- Name: idx_fu_attribute; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_attribute ON public.fed_user_attribute USING btree (user_id, realm_id, name);


--
-- Name: idx_fu_cnsnt_ext; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_cnsnt_ext ON public.fed_user_consent USING btree (user_id, client_storage_provider, external_client_id);


--
-- Name: idx_fu_consent; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_consent ON public.fed_user_consent USING btree (user_id, client_id);


--
-- Name: idx_fu_consent_ru; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_consent_ru ON public.fed_user_consent USING btree (realm_id, user_id);


--
-- Name: idx_fu_credential; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_credential ON public.fed_user_credential USING btree (user_id, type);


--
-- Name: idx_fu_credential_ru; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_credential_ru ON public.fed_user_credential USING btree (realm_id, user_id);


--
-- Name: idx_fu_group_membership; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_group_membership ON public.fed_user_group_membership USING btree (user_id, group_id);


--
-- Name: idx_fu_group_membership_ru; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_group_membership_ru ON public.fed_user_group_membership USING btree (realm_id, user_id);


--
-- Name: idx_fu_required_action; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_required_action ON public.fed_user_required_action USING btree (user_id, required_action);


--
-- Name: idx_fu_required_action_ru; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_required_action_ru ON public.fed_user_required_action USING btree (realm_id, user_id);


--
-- Name: idx_fu_role_mapping; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_role_mapping ON public.fed_user_role_mapping USING btree (user_id, role_id);


--
-- Name: idx_fu_role_mapping_ru; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_fu_role_mapping_ru ON public.fed_user_role_mapping USING btree (realm_id, user_id);


--
-- Name: idx_group_att_by_name_value; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_group_att_by_name_value ON public.group_attribute USING btree (name, ((value)::character varying(250)));


--
-- Name: idx_group_attr_group; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_group_attr_group ON public.group_attribute USING btree (group_id);


--
-- Name: idx_group_org_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_group_org_id ON public.keycloak_group USING btree (org_id);


--
-- Name: idx_group_role_mapp_group; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_group_role_mapp_group ON public.group_role_mapping USING btree (group_id);


--
-- Name: idx_id_prov_mapp_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_id_prov_mapp_realm ON public.identity_provider_mapper USING btree (realm_id);


--
-- Name: idx_ident_prov_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_ident_prov_realm ON public.identity_provider USING btree (realm_id);


--
-- Name: idx_idp_for_login; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_idp_for_login ON public.identity_provider USING btree (realm_id, enabled, link_only, hide_on_login, organization_id);


--
-- Name: idx_idp_realm_org; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_idp_realm_org ON public.identity_provider USING btree (realm_id, organization_id);


--
-- Name: idx_issued_ver_credential_expires_at; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_issued_ver_credential_expires_at ON public.issued_ver_credential USING btree (expires_at);


--
-- Name: idx_issued_ver_credential_user; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_issued_ver_credential_user ON public.issued_ver_credential USING btree (user_id, issued_at);


--
-- Name: idx_issued_ver_credential_vc; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_issued_ver_credential_vc ON public.issued_ver_credential USING btree (ver_credential_id);


--
-- Name: idx_keycloak_role_client; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_keycloak_role_client ON public.keycloak_role USING btree (client);


--
-- Name: idx_keycloak_role_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_keycloak_role_realm ON public.keycloak_role USING btree (realm);


--
-- Name: idx_login_failure_expire; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_login_failure_expire ON public.login_failure USING btree (last_failure);


--
-- Name: idx_offline_css_by_client; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_offline_css_by_client ON public.offline_client_session USING btree (client_id, offline_flag) WHERE ((client_id)::text <> 'external'::text);


--
-- Name: idx_offline_css_by_client_and_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_offline_css_by_client_and_realm ON public.offline_client_session USING btree (realm_id, offline_flag, client_id, client_storage_provider, external_client_id);


--
-- Name: idx_offline_css_by_client_storage_provider; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_offline_css_by_client_storage_provider ON public.offline_client_session USING btree (client_storage_provider, external_client_id, offline_flag) WHERE ((client_storage_provider)::text <> 'internal'::text);


--
-- Name: idx_offline_css_by_user_session_and_offline; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_offline_css_by_user_session_and_offline ON public.offline_client_session USING btree (offline_flag, user_session_id);


--
-- Name: idx_offline_uss_by_broker_session_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_offline_uss_by_broker_session_id ON public.offline_user_session USING btree (broker_session_id, realm_id);


--
-- Name: idx_offline_uss_by_user; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_offline_uss_by_user ON public.offline_user_session USING btree (user_id, realm_id, offline_flag);


--
-- Name: idx_org_domain_org_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_org_domain_org_id ON public.org_domain USING btree (org_id);


--
-- Name: idx_org_invitation_email; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_org_invitation_email ON public.org_invitation USING btree (email);


--
-- Name: idx_org_invitation_expires; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_org_invitation_expires ON public.org_invitation USING btree (expires_at);


--
-- Name: idx_org_invitation_org_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_org_invitation_org_id ON public.org_invitation USING btree (organization_id);


--
-- Name: idx_outbox_container; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_outbox_container ON public.outbox_entry USING btree (entry_kind, owner_id, container_id);


--
-- Name: idx_outbox_drain; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_outbox_drain ON public.outbox_entry USING btree (entry_kind, status, next_attempt_at);


--
-- Name: idx_outbox_owner; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_outbox_owner ON public.outbox_entry USING btree (entry_kind, owner_id, status);


--
-- Name: idx_outbox_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_outbox_realm ON public.outbox_entry USING btree (entry_kind, realm_id, status);


--
-- Name: idx_perm_ticket_owner; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_perm_ticket_owner ON public.resource_server_perm_ticket USING btree (owner);


--
-- Name: idx_perm_ticket_requester; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_perm_ticket_requester ON public.resource_server_perm_ticket USING btree (requester);


--
-- Name: idx_protocol_mapper_client; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_protocol_mapper_client ON public.protocol_mapper USING btree (client_id);


--
-- Name: idx_realm_attr_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_realm_attr_realm ON public.realm_attribute USING btree (realm_id);


--
-- Name: idx_realm_clscope; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_realm_clscope ON public.client_scope USING btree (realm_id);


--
-- Name: idx_realm_def_grp_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_realm_def_grp_realm ON public.realm_default_groups USING btree (realm_id);


--
-- Name: idx_realm_evt_list_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_realm_evt_list_realm ON public.realm_events_listeners USING btree (realm_id);


--
-- Name: idx_realm_evt_types_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_realm_evt_types_realm ON public.realm_enabled_event_types USING btree (realm_id);


--
-- Name: idx_realm_master_adm_cli; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_realm_master_adm_cli ON public.realm USING btree (master_admin_client);


--
-- Name: idx_realm_supp_local_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_realm_supp_local_realm ON public.realm_supported_locales USING btree (realm_id);


--
-- Name: idx_redir_uri_client; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_redir_uri_client ON public.redirect_uris USING btree (client_id);


--
-- Name: idx_req_act_prov_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_req_act_prov_realm ON public.required_action_provider USING btree (realm_id);


--
-- Name: idx_res_policy_policy; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_res_policy_policy ON public.resource_policy USING btree (policy_id);


--
-- Name: idx_res_scope_scope; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_res_scope_scope ON public.resource_scope USING btree (scope_id);


--
-- Name: idx_res_serv_pol_res_serv; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_res_serv_pol_res_serv ON public.resource_server_policy USING btree (resource_server_id);


--
-- Name: idx_res_srv_res_res_srv; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_res_srv_res_res_srv ON public.resource_server_resource USING btree (resource_server_id);


--
-- Name: idx_res_srv_scope_res_srv; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_res_srv_scope_res_srv ON public.resource_server_scope USING btree (resource_server_id);


--
-- Name: idx_rev_token_on_expire; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_rev_token_on_expire ON public.revoked_token USING btree (expire);


--
-- Name: idx_role_attribute; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_role_attribute ON public.role_attribute USING btree (role_id);


--
-- Name: idx_role_clscope; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_role_clscope ON public.client_scope_role_mapping USING btree (role_id);


--
-- Name: idx_root_auth_session_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_root_auth_session_realm ON public.root_auth_session USING btree (realm_id, "timestamp");


--
-- Name: idx_scope_mapping_role; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_scope_mapping_role ON public.scope_mapping USING btree (role_id);


--
-- Name: idx_scope_policy_policy; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_scope_policy_policy ON public.scope_policy USING btree (policy_id);


--
-- Name: idx_single_use_obj_expire; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_single_use_obj_expire ON public.single_use_object USING btree (expire);


--
-- Name: idx_update_time; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_update_time ON public.migration_model USING btree (update_time);


--
-- Name: idx_usconsent_clscope; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_usconsent_clscope ON public.user_consent_client_scope USING btree (user_consent_id);


--
-- Name: idx_usconsent_scope_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_usconsent_scope_id ON public.user_consent_client_scope USING btree (scope_id);


--
-- Name: idx_user_attribute; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_attribute ON public.user_attribute USING btree (user_id);


--
-- Name: idx_user_attribute_name; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_attribute_name ON public.user_attribute USING btree (name, value);


--
-- Name: idx_user_consent; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_consent ON public.user_consent USING btree (user_id);


--
-- Name: idx_user_created_timestamp; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_created_timestamp ON public.user_entity USING btree (realm_id, created_timestamp);


--
-- Name: idx_user_credential; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_credential ON public.credential USING btree (user_id);


--
-- Name: idx_user_email; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_email ON public.user_entity USING btree (email);


--
-- Name: idx_user_group_mapping; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_group_mapping ON public.user_group_membership USING btree (user_id);


--
-- Name: idx_user_reqactions; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_reqactions ON public.user_required_action USING btree (user_id);


--
-- Name: idx_user_role_mapping; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_role_mapping ON public.user_role_mapping USING btree (user_id);


--
-- Name: idx_user_service_account; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_service_account ON public.user_entity USING btree (realm_id, service_account_client_link);


--
-- Name: idx_user_session_expiration_created; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_session_expiration_created ON public.offline_user_session USING btree (realm_id, offline_flag, remember_me, created_on, user_session_id, user_id);


--
-- Name: idx_user_session_expiration_last_refresh; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_user_session_expiration_last_refresh ON public.offline_user_session USING btree (realm_id, offline_flag, remember_me, last_session_refresh, user_session_id, user_id);


--
-- Name: idx_usr_fed_map_fed_prv; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_usr_fed_map_fed_prv ON public.user_federation_mapper USING btree (federation_provider_id);


--
-- Name: idx_usr_fed_map_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_usr_fed_map_realm ON public.user_federation_mapper USING btree (realm_id);


--
-- Name: idx_usr_fed_prv_realm; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_usr_fed_prv_realm ON public.user_federation_provider USING btree (realm_id);


--
-- Name: idx_web_orig_client; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_web_orig_client ON public.web_origins USING btree (client_id);


--
-- Name: idx_workflow_state_provider; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_workflow_state_provider ON public.workflow_state USING btree (resource_id);


--
-- Name: idx_workflow_state_step; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX idx_workflow_state_step ON public.workflow_state USING btree (workflow_id, scheduled_step_id);


--
-- Name: user_attr_long_values; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX user_attr_long_values ON public.user_attribute USING btree (long_value_hash, name);


--
-- Name: user_attr_long_values_lower_case; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX user_attr_long_values_lower_case ON public.user_attribute USING btree (long_value_hash_lower_case, name);


--
-- Name: identity_provider fk2b4ebc52ae5c3b34; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT fk2b4ebc52ae5c3b34 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_attributes fk3c47c64beacca966; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT fk3c47c64beacca966 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: federated_identity fk404288b92ef007a6; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT fk404288b92ef007a6 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_node_registrations fk4129723ba992f594; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT fk4129723ba992f594 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: redirect_uris fk_1burs8pb4ouj97h5wuppahv9f; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT fk_1burs8pb4ouj97h5wuppahv9f FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: user_federation_provider fk_1fj32f6ptolw2qy60cd8n01e8; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT fk_1fj32f6ptolw2qy60cd8n01e8 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_required_credential fk_5hg65lybevavkqfki3kponh9v; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT fk_5hg65lybevavkqfki3kponh9v FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_attribute fk_5hrm2vlf9ql5fu022kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu022kqepovbr FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: user_attribute fk_5hrm2vlf9ql5fu043kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu043kqepovbr FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: user_required_action fk_6qj3w1jw9cvafhe19bwsiuvmd; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT fk_6qj3w1jw9cvafhe19bwsiuvmd FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: keycloak_role fk_6vyqfe4cn4wlq8r6kt5vdsj5c; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT fk_6vyqfe4cn4wlq8r6kt5vdsj5c FOREIGN KEY (realm) REFERENCES public.realm(id);


--
-- Name: realm_smtp_config fk_70ej8xdxgxd0b9hh6180irr0o; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT fk_70ej8xdxgxd0b9hh6180irr0o FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_attribute fk_8shxd6l3e9atqukacxgpffptw; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT fk_8shxd6l3e9atqukacxgpffptw FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: composite_role fk_a63wvekftu8jo1pnj81e7mce2; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_a63wvekftu8jo1pnj81e7mce2 FOREIGN KEY (composite) REFERENCES public.keycloak_role(id);


--
-- Name: authentication_execution fk_auth_exec_flow; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_flow FOREIGN KEY (flow_id) REFERENCES public.authentication_flow(id);


--
-- Name: authentication_execution fk_auth_exec_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authentication_flow fk_auth_flow_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT fk_auth_flow_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authenticator_config fk_auth_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT fk_auth_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: auth_session fk_auth_session_root; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_session
    ADD CONSTRAINT fk_auth_session_root FOREIGN KEY (root_auth_session_id) REFERENCES public.root_auth_session(id) ON DELETE CASCADE;


--
-- Name: user_role_mapping fk_c4fqv34p1mbylloxang7b1q3l; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT fk_c4fqv34p1mbylloxang7b1q3l FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_scope_attributes fk_cl_scope_attr_scope; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT fk_cl_scope_attr_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope_role_mapping fk_cl_scope_rm_scope; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: protocol_mapper fk_cli_scope_mapper; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_cli_scope_mapper FOREIGN KEY (client_scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_initial_access fk_client_init_acc_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT fk_client_init_acc_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: component_config fk_component_config; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT fk_component_config FOREIGN KEY (component_id) REFERENCES public.component(id);


--
-- Name: component fk_component_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT fk_component_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_default_groups fk_def_groups_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: fed_issued_ver_credential fk_fed_issued_vc_ver_cred; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.fed_issued_ver_credential
    ADD CONSTRAINT fk_fed_issued_vc_ver_cred FOREIGN KEY (ver_credential_id) REFERENCES public.fed_user_ver_credential(id);


--
-- Name: user_federation_mapper_config fk_fedmapper_cfg; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT fk_fedmapper_cfg FOREIGN KEY (user_federation_mapper_id) REFERENCES public.user_federation_mapper(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_fedprv; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_fedprv FOREIGN KEY (federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: associated_policy fk_frsr5s213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsr5s213xcx4wnkog82ssrfy FOREIGN KEY (associated_policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrasp13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrasp13xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog82sspmt; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82sspmt FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_resource fk_frsrho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog83sspmt; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog83sspmt FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog84sspmt; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog84sspmt FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: associated_policy fk_frsrpas14xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsrpas14xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrpass3xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrpass3xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_perm_ticket fk_frsrpo2128cx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrpo2128cx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_policy fk_frsrpo213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT fk_frsrpo213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_scope fk_frsrpos13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrpos13xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpos53xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpos53xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpp213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpp213xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_scope fk_frsrps213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrps213xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_scope fk_frsrso213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT fk_frsrso213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: composite_role fk_gr7thllb9lu8q4vqa4524jjy8; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_gr7thllb9lu8q4vqa4524jjy8 FOREIGN KEY (child_role) REFERENCES public.keycloak_role(id);


--
-- Name: user_consent_client_scope fk_grntcsnt_clsc_usc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT fk_grntcsnt_clsc_usc FOREIGN KEY (user_consent_id) REFERENCES public.user_consent(id);


--
-- Name: user_consent fk_grntcsnt_user; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT fk_grntcsnt_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: group_attribute fk_group_attribute_group; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT fk_group_attribute_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: keycloak_group fk_group_organization; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT fk_group_organization FOREIGN KEY (org_id) REFERENCES public.org(id);


--
-- Name: group_role_mapping fk_group_role_group; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: realm_enabled_event_types fk_h846o4h0w8epx5nwedrf5y69j; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT fk_h846o4h0w8epx5nwedrf5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_events_listeners fk_h846o4h0w8epx5nxev9f5y69j; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT fk_h846o4h0w8epx5nxev9f5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: identity_provider_mapper fk_idpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT fk_idpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: idp_mapper_config fk_idpmconfig; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT fk_idpmconfig FOREIGN KEY (idp_mapper_id) REFERENCES public.identity_provider_mapper(id);


--
-- Name: issued_ver_credential fk_issued_ver_credential_user; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.issued_ver_credential
    ADD CONSTRAINT fk_issued_ver_credential_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: issued_ver_credential fk_issued_ver_credential_vc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.issued_ver_credential
    ADD CONSTRAINT fk_issued_ver_credential_vc FOREIGN KEY (ver_credential_id) REFERENCES public.user_ver_credential(id);


--
-- Name: web_origins fk_lojpho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: org_invitation fk_org_invitation_org; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.org_invitation
    ADD CONSTRAINT fk_org_invitation_org FOREIGN KEY (organization_id) REFERENCES public.org(id) ON DELETE CASCADE;


--
-- Name: scope_mapping fk_ouse064plmlr732lxjcn1q5f1; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: protocol_mapper fk_pcm_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_pcm_realm FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: credential fk_pfyr0glasqyl0dei3kl69r6v0; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT fk_pfyr0glasqyl0dei3kl69r6v0 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: protocol_mapper_config fk_pmconfig; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT fk_pmconfig FOREIGN KEY (protocol_mapper_id) REFERENCES public.protocol_mapper(id);


--
-- Name: default_client_scope fk_r_def_cli_scope_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: required_action_provider fk_req_act_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT fk_req_act_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_uris fk_resource_server_uris; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT fk_resource_server_uris FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: role_attribute fk_role_attribute_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT fk_role_attribute_id FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_supported_locales fk_supported_locales_realm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT fk_supported_locales_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_config fk_t13hpu1j94r2ebpekr39x5eu5; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT fk_t13hpu1j94r2ebpekr39x5eu5 FOREIGN KEY (user_federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_group_membership fk_user_group_user; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT fk_user_group_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: user_ver_credential fk_vcred_user; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_ver_credential
    ADD CONSTRAINT fk_vcred_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: policy_config fkdc34197cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT fkdc34197cf864c4e43 FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: identity_provider_config fkdc4897cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT fkdc4897cf864c4e43 FOREIGN KEY (identity_provider_id) REFERENCES public.identity_provider(internal_id);


--
-- PostgreSQL database dump complete
--

\unrestrict s2Unbp4FZWCtyP161HYkZ5MUplTrVlq3rGV3vf4JZ5DFgKYqznT7OseHj5J2py0

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict p5kbVlbgr7CofO6CBHMaDZhKnpGeKGGCh7F4iwQ1sd8dDw8tdxZRFzNsh4A6sOV

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict p5kbVlbgr7CofO6CBHMaDZhKnpGeKGGCh7F4iwQ1sd8dDw8tdxZRFzNsh4A6sOV

--
-- PostgreSQL database cluster dump complete
--

