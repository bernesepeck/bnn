--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: CustomSections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CustomSections" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    link character varying(255),
    city integer
);


--
-- Name: CustomSections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."CustomSections_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: CustomSections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."CustomSections_id_seq" OWNED BY public."CustomSections".id;


--
-- Name: CustomSections_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CustomSections_translations" (
    id integer NOT NULL,
    "CustomSections_id" integer,
    languages_code character varying(255),
    title character varying(255),
    description text,
    "linkText" character varying(255)
);


--
-- Name: CustomSections_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."CustomSections_translations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: CustomSections_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."CustomSections_translations_id_seq" OWNED BY public."CustomSections_translations".id;


--
-- Name: EmailForm; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EmailForm" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    "emailTo" character varying(255),
    city integer
);


--
-- Name: EmailForm_FormFields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EmailForm_FormFields" (
    id integer NOT NULL,
    "EmailForm_id" integer,
    "FormFields_id" integer
);


--
-- Name: EmailForm_FormFields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."EmailForm_FormFields_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: EmailForm_FormFields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."EmailForm_FormFields_id_seq" OWNED BY public."EmailForm_FormFields".id;


--
-- Name: EmailForm_FormFields_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EmailForm_FormFields_translations" (
    id integer NOT NULL,
    "EmailForm_FormFields_id" integer,
    languages_code character varying(255),
    label character varying(255)
);


--
-- Name: EmailForm_FormFields_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."EmailForm_FormFields_translations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: EmailForm_FormFields_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."EmailForm_FormFields_translations_id_seq" OWNED BY public."EmailForm_FormFields_translations".id;


--
-- Name: EmailForm_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."EmailForm_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: EmailForm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."EmailForm_id_seq" OWNED BY public."EmailForm".id;


--
-- Name: EmailForm_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EmailForm_translations" (
    id integer NOT NULL,
    "EmailForm_id" integer,
    languages_code character varying(255),
    subject character varying(255),
    title character varying(255),
    description text,
    "submitText" character varying(255)
);


--
-- Name: EmailForm_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."EmailForm_translations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: EmailForm_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."EmailForm_translations_id_seq" OWNED BY public."EmailForm_translations".id;


--
-- Name: FormFields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."FormFields" (
    id integer NOT NULL,
    type character varying(255)
);


--
-- Name: FormFields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."FormFields_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: FormFields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."FormFields_id_seq" OWNED BY public."FormFields".id;


--
-- Name: SupportLinks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SupportLinks" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    date_created timestamp with time zone,
    link character varying(255),
    city integer
);


--
-- Name: SupportLinks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."SupportLinks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: SupportLinks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."SupportLinks_id_seq" OWNED BY public."SupportLinks".id;


--
-- Name: SupportLinks_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SupportLinks_translations" (
    id integer NOT NULL,
    "SupportLinks_id" integer,
    languages_code character varying(255),
    title character varying(255),
    description text,
    "linkText" character varying(255) DEFAULT 'Einschreiben'::character varying
);


--
-- Name: SupportLinks_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."SupportLinks_translations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: SupportLinks_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."SupportLinks_translations_id_seq" OWNED BY public."SupportLinks_translations".id;


--
-- Name: city; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.city (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    date_updated timestamp with time zone
);


--
-- Name: city_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.city_files (
    id integer NOT NULL,
    city_id integer,
    directus_files_id uuid
);


--
-- Name: city_files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.city_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: city_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.city_files_id_seq OWNED BY public.city_files.id;


--
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;


--
-- Name: city_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.city_translations (
    id integer NOT NULL,
    city_id integer,
    languages_code character varying(255),
    name character varying(255),
    page_title character varying(255),
    description text,
    sponsors text
);


--
-- Name: city_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.city_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: city_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.city_translations_id_seq OWNED BY public.city_translations.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    cities integer
);


--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: countries_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries_translations (
    id integer NOT NULL,
    countries_id integer,
    languages_code character varying(255),
    name character varying(255)
);


--
-- Name: countries_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.countries_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: countries_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.countries_translations_id_seq OWNED BY public.countries_translations.id;


--
-- Name: directus_activity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text,
    origin character varying(255)
);


--
-- Name: directus_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;


--
-- Name: directus_collections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(30),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);


--
-- Name: directus_dashboards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);


--
-- Name: directus_extensions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_extensions (
    name character varying(255) NOT NULL,
    enabled boolean DEFAULT true NOT NULL
);


--
-- Name: directus_fields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;


--
-- Name: directus_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    uploaded_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json
);


--
-- Name: directus_flows; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


--
-- Name: directus_folders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);


--
-- Name: directus_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: directus_notifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;


--
-- Name: directus_operations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


--
-- Name: directus_panels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(30) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


--
-- Name: directus_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    role uuid,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text
);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;


--
-- Name: directus_presets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(30) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_presets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;


--
-- Name: directus_relations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;


--
-- Name: directus_revisions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;


--
-- Name: directus_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(30) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT true NOT NULL
);


--
-- Name: directus_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent character varying(255),
    share uuid,
    origin character varying(255)
);


--
-- Name: directus_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json
);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;


--
-- Name: directus_shares; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);


--
-- Name: directus_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


--
-- Name: directus_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json
);


--
-- Name: directus_versions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);


--
-- Name: directus_webhooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json
);


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;


--
-- Name: event; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.event (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    date_updated timestamp with time zone,
    teaser uuid,
    city integer,
    link character varying(255)
);


--
-- Name: event_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.event_id_seq OWNED BY public.event.id;


--
-- Name: event_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.event_translations (
    id integer NOT NULL,
    event_id integer,
    languages_code character varying(255),
    name character varying(255),
    description text,
    location character varying(255),
    "customDates" text
);


--
-- Name: event_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.event_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.event_translations_id_seq OWNED BY public.event_translations.id;


--
-- Name: home; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home (
    id integer NOT NULL
);


--
-- Name: home_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_id_seq OWNED BY public.home.id;


--
-- Name: home_translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home_translations (
    id integer NOT NULL,
    home_id integer,
    languages_code character varying(255),
    titel character varying(255),
    description text,
    contentbox json
);


--
-- Name: home_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_translations_id_seq OWNED BY public.home_translations.id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.languages (
    code character varying(255) NOT NULL,
    name character varying(255)
);


--
-- Name: CustomSections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CustomSections" ALTER COLUMN id SET DEFAULT nextval('public."CustomSections_id_seq"'::regclass);


--
-- Name: CustomSections_translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CustomSections_translations" ALTER COLUMN id SET DEFAULT nextval('public."CustomSections_translations_id_seq"'::regclass);


--
-- Name: EmailForm id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm" ALTER COLUMN id SET DEFAULT nextval('public."EmailForm_id_seq"'::regclass);


--
-- Name: EmailForm_FormFields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_FormFields" ALTER COLUMN id SET DEFAULT nextval('public."EmailForm_FormFields_id_seq"'::regclass);


--
-- Name: EmailForm_FormFields_translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_FormFields_translations" ALTER COLUMN id SET DEFAULT nextval('public."EmailForm_FormFields_translations_id_seq"'::regclass);


--
-- Name: EmailForm_translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_translations" ALTER COLUMN id SET DEFAULT nextval('public."EmailForm_translations_id_seq"'::regclass);


--
-- Name: FormFields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FormFields" ALTER COLUMN id SET DEFAULT nextval('public."FormFields_id_seq"'::regclass);


--
-- Name: SupportLinks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SupportLinks" ALTER COLUMN id SET DEFAULT nextval('public."SupportLinks_id_seq"'::regclass);


--
-- Name: SupportLinks_translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SupportLinks_translations" ALTER COLUMN id SET DEFAULT nextval('public."SupportLinks_translations_id_seq"'::regclass);


--
-- Name: city id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);


--
-- Name: city_files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city_files ALTER COLUMN id SET DEFAULT nextval('public.city_files_id_seq'::regclass);


--
-- Name: city_translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city_translations ALTER COLUMN id SET DEFAULT nextval('public.city_translations_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: countries_translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries_translations ALTER COLUMN id SET DEFAULT nextval('public.countries_translations_id_seq'::regclass);


--
-- Name: directus_activity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);


--
-- Name: directus_fields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);


--
-- Name: directus_notifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);


--
-- Name: directus_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);


--
-- Name: directus_presets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);


--
-- Name: directus_relations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);


--
-- Name: directus_revisions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);


--
-- Name: directus_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);


--
-- Name: directus_webhooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);


--
-- Name: event id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event ALTER COLUMN id SET DEFAULT nextval('public.event_id_seq'::regclass);


--
-- Name: event_translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event_translations ALTER COLUMN id SET DEFAULT nextval('public.event_translations_id_seq'::regclass);


--
-- Name: home id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home ALTER COLUMN id SET DEFAULT nextval('public.home_id_seq'::regclass);


--
-- Name: home_translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_translations ALTER COLUMN id SET DEFAULT nextval('public.home_translations_id_seq'::regclass);


--
-- Data for Name: CustomSections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CustomSections" (id, status, sort, date_created, date_updated, link, city) FROM stdin;
1	draft	\N	2024-02-02 10:24:56.021+00	2024-02-02 10:25:53.9+00	https://www.beimnamennennen.ch/fr/_files/ugd/760542_d48074e289cc44c780c31302e44e150e.pdf	2
\.


--
-- Data for Name: CustomSections_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CustomSections_translations" (id, "CustomSections_id", languages_code, title, description, "linkText") FROM stdin;
1	1	de	 Petition im Rahmen der Aktion „Beim Namen nennen“ 2023: Wiederaufnahme des Resettlement-Programms der Schweiz ermöglichen	<p>Im Juni werden in zehn verschiedenen Schweizer St&auml;dten die Namen von &uuml;ber 51&lsquo;000 M&auml;nner, Frauen und Kinder gelesen und aufgeschrieben, die auf der Flucht nach Europa ums Leben gekommen sind. Die europ&auml;ische und schweizerische Migrationspolitik ist mitverantwortlich f&uuml;r dieses entsetzliche Sterben an den Grenzen Europas. Es braucht sichere Fluchtwege.<br>Als erstes sollte die Schweiz so schnell wie m&ouml;glich, das von BR Karin Keller-Suter vor Weihnachten 2022 ausgesetzte Resettlement-Programm wieder aufnehmen. In diesem Programm nimmt die Schweiz vom UNHCR anerkannte Fl&uuml;chtlinge zum Beispiel aus den Lagern im Nahen Osten direkt in die Schweiz auf. Der gef&auml;hrliche Fluchtweg entf&auml;llt.<br>Die Schweiz hat sich verpflichtet bis Ende 2023 insgesamt 1600 besonders verletzliche Personen aufzunehmen (zum Beispiel: Frauen, Kinder und UMA, die Opfer von Folter, sexueller Gewalt, Menschenhandel und Sklaverei sind oder unter der Bedrohung solcher Gewalttaten gelebt haben.) Noch immer warten 800 Menschen sehnlichst darauf, aus den<br>prek&auml;ren Verh&auml;ltnissen direkt in die Schweiz aufgenommen zu werden.<br>Nun m&ouml;chte der Bundesrat die Einreisen wieder erm&ouml;glichen. Er ist dabei aber auf die Unterst&uuml;tzung der Kantone angewiesen.<br>Wir bitten den Regierungsrat des Kantons Bern: Senden Sie ein positives Signal an den Bundesrat und sichern Sie die Bereitschaft des Kantons zu, die Menschen, die dem Kanton Bern zugeteilt w&uuml;rden, aufzunehmen mit allem, was dazu geh&ouml;rt.<br>Viele Freiwillige in NGOs, in den Kirchen und auch die St&auml;dte bieten Hand, um bei der Betreuung, Unterbringung und Integration dieser Menschen zu helfen.</p>	Petition unterschreiben
2	1	fr	Pétition dans le cadre de l'action "Appeler un chat un chat" 2023 : Permettre la reprise du programme de réinstallation de la Suisse	<p>En juin, dans dix villes suisses diff&eacute;rentes, les noms de plus de 51'000 hommes, femmes et enfants qui ont perdu la vie en fuyant vers l'Europe seront lus et &eacute;crits. La politique migratoire europ&eacute;enne et suisse est en partie responsable de cette mort horrible aux fronti&egrave;res de l'Europe. Il faut des voies de fuite s&ucirc;res.<br>En premier lieu, la Suisse devrait reprendre le plus rapidement possible le programme de r&eacute;installation suspendu par la conseill&egrave;re f&eacute;d&eacute;rale Karin Keller-Suter avant No&euml;l 2022. Dans le cadre de ce programme, la Suisse accueille directement en Suisse des r&eacute;fugi&eacute;s reconnus par le HCR, par exemple en provenance des camps du Proche-Orient. La voie de fuite dangereuse est ainsi supprim&eacute;e.<br>La Suisse s'est engag&eacute;e &agrave; accueillir au total 1600 personnes particuli&egrave;rement vuln&eacute;rables d'ici fin 2023 (par exemple : des femmes, des enfants et des MNA qui sont victimes de torture, de violences sexuelles, de la traite des &ecirc;tres humains et de l'esclavage ou qui ont v&eacute;cu sous la menace de tels actes de violence). Aujourd'hui encore, 800 personnes attendent avec impatience de pouvoir sortir des<br>&ecirc;tre admises directement en Suisse dans des conditions pr&eacute;caires.<br>Le Conseil f&eacute;d&eacute;ral souhaite &agrave; pr&eacute;sent permettre &agrave; nouveau ces entr&eacute;es. Mais pour cela, il a besoin du soutien des cantons.<br>Nous demandons au Conseil d'Etat du canton de Berne : envoyez un signal positif au Conseil f&eacute;d&eacute;ral et assurez la disponibilit&eacute; du canton &agrave; accueillir les personnes qui seraient attribu&eacute;es au canton de Berne, avec tout ce que cela implique.<br>De nombreux b&eacute;n&eacute;voles dans les ONG, les &eacute;glises et d'autres organisations sont pr&ecirc;ts &agrave; s'engager.</p>	Signer la pétition
\.


--
-- Data for Name: EmailForm; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."EmailForm" (id, status, sort, date_created, date_updated, "emailTo", city) FROM stdin;
1	draft	\N	2024-02-03 14:57:39.131+00	2024-02-03 18:44:41.352+00	gannonline90@gmail.com	2
\.


--
-- Data for Name: EmailForm_FormFields; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."EmailForm_FormFields" (id, "EmailForm_id", "FormFields_id") FROM stdin;
1	1	1
2	1	2
3	1	4
\.


--
-- Data for Name: EmailForm_FormFields_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."EmailForm_FormFields_translations" (id, "EmailForm_FormFields_id", languages_code, label) FROM stdin;
1	1	de	Flaggentyp
2	1	fr	Type de drapeau
3	2	de	Betrag
4	2	fr	Montant
5	3	de	Next Day Delivery?
\.


--
-- Data for Name: EmailForm_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."EmailForm_translations" (id, "EmailForm_id", languages_code, subject, title, description, "submitText") FROM stdin;
1	1	de	neue Bestellung	Flaggen bestellen	Um Ihre Fahnen zu bestellen, geben Sie bitte die Anzahl und die Art der Fahnen an, die Sie wünschen. 	Bestellung
2	1	fr	nouvelle commande	Commander des drapeaux	Pour commander vos drapeaux, veuillez indiquer le nombre et le type de drapeaux que vous souhaitez. 	Commande
\.


--
-- Data for Name: FormFields; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."FormFields" (id, type) FROM stdin;
1	text
2	number
3	checkbox
4	checkbox
\.


--
-- Data for Name: SupportLinks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."SupportLinks" (id, status, sort, date_created, link, city) FROM stdin;
1	draft	\N	2024-01-28 09:24:48.935+00	https://schichtplan.immerda.ch/plans/show/20faf8ea45acb5a5fd12f40d20cebe53c6ef6d62	2
2	draft	\N	2024-01-28 09:32:51.312+00	https://turno.immerda.ch/	2
3	draft	\N	2024-01-28 09:33:36.084+00	https://turno.immerda.ch/	2
4	draft	\N	2024-01-28 09:35:30.573+00	https://turno.immerda.ch/	2
5	draft	\N	2024-01-28 09:36:15.444+00	https://turno.immerda.ch/	2
6	draft	\N	2024-01-28 09:37:29.831+00	https://turno.immerda.ch/	2
7	draft	\N	2024-01-28 09:45:16.187+00	https://turno.immerda.ch/	2
8	draft	\N	2024-01-28 09:45:45.607+00	https://turno.immerda.ch/	2
\.


--
-- Data for Name: SupportLinks_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."SupportLinks_translations" (id, "SupportLinks_id", languages_code, title, description, "linkText") FROM stdin;
1	1	de	Abbau 30. Juni	\N	Einschreiben
2	1	fr	Démontage 30 juin	\N	commencez maintenant
3	2	de	Namen aufhängen	\N	Einschreiben
4	2	fr	\N	\N	Einschreiben
5	3	de	Namen schreiben	\N	Einschreiben
6	4	de	Namen lesen	\N	Einschreiben
7	5	de	Beitrag zur vollen Stunde	\N	Einschreiben
8	6	de	Info und Einführung	\N	Einschreiben
9	7	de	Info für Passant*innen	\N	Einschreiben
10	8	de	Aufbau 16. Juni 2023	\N	Einschreiben
\.


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.city (id, status, sort, date_updated) FROM stdin;
1	draft	\N	2024-01-28 11:22:39.355+00
2	draft	\N	2024-02-03 15:28:22.208+00
\.


--
-- Data for Name: city_files; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.city_files (id, city_id, directus_files_id) FROM stdin;
20	2	b8438249-863c-449a-8fe5-568f4e47b67b
21	2	4ddcfe09-9d8c-4faf-875b-f4badd641872
22	2	3fe2f5dd-65dd-4441-b0d6-fe6b00e20b7e
23	2	8690b83f-d3a7-4c50-a73d-ca1457c60576
24	2	a395308d-6b1a-4db4-8b3c-c39009964fbf
25	2	57f3e7e0-db45-42fc-ab87-af4daa0bb144
26	2	3785366c-a15c-4648-9398-be2b068af3ac
27	2	92930338-0f26-4953-9074-a7bbad626063
28	2	f97ece40-8c83-445f-84aa-296470d9156c
29	2	a6d8e567-36f1-421a-ac23-5e549a84d564
30	2	f3e9f151-89f9-4521-8682-719049e2066d
31	2	9624d4fa-f777-4d8c-a25a-0c44d4f3335d
32	2	be7798e7-4a82-476d-9337-efb46d483803
33	2	a1140a22-23f1-4cdd-b36e-a892b4ff7e48
34	2	c0ca15c3-237b-4903-8bdb-bb26785bb930
35	2	248abf34-2e4e-43f1-9257-c6ec55cb1e83
36	2	979419ac-8085-42df-a425-af8c952f7840
37	2	5e740af8-492d-4540-b959-ae89e0576ce3
38	2	c64a680d-6535-47c6-a527-0808229d2fcf
\.


--
-- Data for Name: city_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.city_translations (id, city_id, languages_code, name, page_title, description, sponsors) FROM stdin;
1	1	de	Basel	\N	\N	\N
2	1	fr	Bâle	\N	\N	\N
4	2	fr	Berne	\N	\N	\N
3	2	de	Bern	Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europa 24 Stunden vom Samstag, 17. Juni, 12 Uhr, bis Sonntag, 18. Juni, 12 Uhr, Heiliggeistkirche Bern	<p>Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und<br>schafft es nur gelegentlich in die Medien. Seit 1993 sind &uuml;ber 51 000 Kinder, Frauen und<br>M&auml;nner gestorben. Oder m&uuml;ssen wir die Frage stellen, ob sie get&ouml;tet wurden? Von einer<br>immer h&auml;rteren Politik der L&auml;nder Europas, die verhindert, dass diese Menschen legal in<br>Europa einreisen k&ouml;nnen, um hier ein Asylgesuch zu stellen. Sie m&uuml;ssen vor<br>lebensgef&auml;hrlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in<br>unw&uuml;rdigen Fl&uuml;chtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann<br>und wie es weiter geht. Dar&uuml;ber sind wir entsetzt und fordern sichere Fluchtwege! Mit<br>verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren<br>&ouml;ffentlich gegen die unhaltbare Situation.</p>	about us, accompagno, Administration röm.-kath. Konfessionsteil des Kantons St. Gallen, AGORA - Aumônerie genevoise oecuménique auprès des requérants d'asile, Alarmphone, Alte Kirche Fluntern, Alte Nikolaikirche Frankfurt am Main, Amnesty International Gruppe Chur, Amnesty Gruppe Luzern, Amt für Gesellschaftsfragen Stadt St. Gallen, Association de la Journée des réfugié-es de Neuchâtel, Asyl in der Kirche, Berlin Be Aware and Share, Basel Begegnungstage in und um den Graefe-Kiez Berlin, Berliner Missionswerk / EKBO, Pfarrerin für Migration und Integration Dagmar, Apel, Bündner Forum der Religionen, Capacity Zürich, Caritas Luzern, Caritas Schweiz, Caritas St. Gallen-Appenzell, Caritas und youngCaritas Zürich, Caritasverband Offenburg-Kehl e.V., Christkatholische Kirche im Kanton Zürich, Christkatholische Kirchgemeinde Luzern, Citykirche Offener St. Jakob, Cityseelsorge der Kath. Kirche im Lebensraum St. Gallen, CJD Standort Zeche, Germania BvB P, Maßnahme Schwerpunkt Holzwerken, Communauté des sœurs de Grandchamp, Areuse\nCommunauté Israélite du Canton de Neuchâtel, La Chaux-de-Fonds, Comunauté Orthodoxe Érythréenne de Neuchâtel, Diakonisches Werk Dortmund und Lünen GmbH, Diakonisches Werk im Evangelischen Kirchenbezirk Ortenau, Diakoniewerk Essen, Diaspora & Development "D&D"; e.V., DIGO - Dachverband Islamischen Gemeinden Ostschweiz, Domkirche St. Blasii zu Braunschweig, Droit de rester Neuchâtel, ECAP Zentralschweiz, Eglise catholique-chrétienne du canton de Neuchâtel, Eglise catholique romaine à Neuchâtel, Eglise réformée évangélique du canton de Neuchâtel, ESG-Ruhr /Ev. Studierendengemeinde, Ev., Erwachsenenbildungswerk Westfalen-Lippe, Ev. Kirchengemeinde Kreuzberg Berlin, Ev. Kirchenkreis Dortmund, Referat Ökumene, Ev. Stadtkirche St. Reinoldi Dortmund, Ev.-luth. Kirchengemeinde St. Blasius, Braunschweig, Ev.-luth. Kirchengemeinde St. Magni, Braunschweig, Evang.-methodistische, Kirche St. Gallen-Teufen, Evang.-ref. Kirchgemeinde St. Gallen Centrum, Evang.-ref. Kirchgemeinde St. Gallen Straubenzell, Evang.-ref. Kirchgemeinde St. Gallen,Tablat, Evangelische Erwachsenenbildung Ortenau, Evangelische Kirchengemeinde Kehl, Evangelische Kirche in Essen, Evangelische Kirche Westfalen, Evangelisches Studierendenzentrum, Die Brücke, ExpoTranskultur Zürich, Fachstelle Migration Evangelisch-reformierte Landeskirche Graubünden, Flüchtlingshilfe im Stadtbezirk Aplerbeck e.V., Flüchtlingspaten Dortmund e.V., Forum der Religionen Graubünden, Grenzenlose Wärme e.V., Gasthaus–Ökumenische-Wohnunglosen-Initiative e.V.,Grossmünster Zürich, Groupe d'accueil A la rencontre (RequérEnsemble), Groupe d'accueil, Req'EREN, HEKS Schweiz, Helferei Zürich, IG offenes Davos, IG Sans-Papiers St. Gallenm, Islamische Gemeinschaft Volketswil, Jesuiten Flüchtlingsdienst Schweiz, Johanneskirche Zürich, Jugendrotkreuz Luzern, Kath. Kirchgemeinde St. Gallen, Kath. Pfarr- und Kirchgemeinde Wil / SG, Katholische Kirche, Liebfrauen Zürich, Katholische Kirche Stadt Luzern, Katholische Kirche im Kanton Luzern, Katholische Kirchgemeinde Chur, Katholische Kirchgemeinde Kehl, Katholische Pfarrei St., Benignus Pfäffikon, Katholische Pfarrei St. Gallus Zürich, Kirche St. Peter Zürich, Konrad-Adenauer-Stiftung e.V, Kontaktstelle Ev. Jugend, Referat für Gesellschaftliche Verantwortung des Ev. Kirchenkreises Dortmund, Kreuzberger Ökumene, Berlin, Literaturhaus Basel, Luzerner Asylnetz, Marktkirche Essen, Moschee El-Hidaje, St. Gallen, NCBI, Offene Kirche Elisabethen, oikos-Institut für Mission und Ökumene, Paroisse réformée de Neuchâtel Accueil Café Migrants Passionskirche, Ev. Kirchengemeinde Heilig-Kreuz-Passion Berlin, Pastorales Zentrum Röm.-kath. Kirche, Baselland, Pastoralraum Basel-Stadt, Pax Christi, Berlin, Pauluskirche Ev. Lydia-Kirchengemeinde Dortmund, Pfarrei San Pio X, Basel, Privat Engagierte BS/BL, ProAsyl/Flüchtlingsrat Essen e.V., Projekt Ankommen e.V., Reformierte Kirche Zürich KK9, Reformierte Kirche Chur, Reformierte Kirche Stadt Luzern,\nReformierte, Regards et Récits, Neuchâtel, Regionalbüro Westfalen, Röm- kath. Pfarrei Bruder Klaus, Birsfelden, Röm.- kath. Pastoralraum Allschwil-Schönenbuch, Röm.- kath. Pastoralraum am Blauen,Röm.-kath. Pfarrei St. Anton Pratteln-Augst, Sant'Egidio Schweiz, SAH Zentralschweiz, Schulreferat des Ev. Kirchenkreises Dortmund, Schweizerische Flüchtlingshilfe, Seebrücke Essen, Seebrücke Schweiz, Service de la cohésion multiculturelle du canton de Neuchâtel (COSM), SINGA Switzerland, Solidaritätshaus St. Gallen, Solidaritätsnetz Ostschweiz,Solinetz Luzern, Solinetz Zürich, SOS Méditerranée Genève, SOS Méditerranée Suisse Neuchâtel, SOS MEDITERRANEE, Ortsgruppe Basel, SOS MEDITERRANEE, Ortsgruppe Zürich, Staffan Gettys/Firma, TermitenBau, SPAZ, Spezialseelsorge und Diakonie, RKK BS TRAIN OF HOPE Dortmund e.V., Unia Neuchâtel, United4Rescue – Gemeinsam Retten e.V., Verein Hilfe für Asylsuchende Graubünden, Verein Miteinander Valzeina, VMDO Verbund der sozial-kulturellen Migrantenvereine in Dortmund e.v. (VMDO e.V.), Vossa Lingua Verein für Interkultur, Wasserkirche Zürich, We are AIA/Awareness in Art Zürich, Welthaus Dortmund e.V., Weltweit Berlin, Zen Peacemakers Bern, Zen-Zentrum im grünen Ring, St. Gallen\n\nSponsoren: AkiB, Katholische Kirche Region Bern, Kirche in Bewegung Refbejuso, Kirchgemeinde\nFrieden, Kirchgemeinde Heiliggeist, Kirchgemeinde Paulus, offene kirche bern, Ref.\nGesamtkirchgemeinde Bern
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, status, sort, date_created, date_updated, cities) FROM stdin;
1	draft	\N	2024-01-20 15:44:14.529+00	\N	\N
\.


--
-- Data for Name: countries_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries_translations (id, countries_id, languages_code, name) FROM stdin;
1	1	de	Deutschland
2	1	fr	Allemagne
\.


--
-- Data for Name: directus_activity; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, comment, origin) FROM stdin;
1	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 13:39:54.475+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
2	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:00:37.094+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	1	\N	http://localhost:8055
3	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:00:37.131+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	2	\N	http://localhost:8055
4	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:00:37.157+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	3	\N	http://localhost:8055
5	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:00:37.186+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	4	\N	http://localhost:8055
6	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:00:37.212+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city	\N	http://localhost:8055
7	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:01:57.628+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	5	\N	http://localhost:8055
8	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:02:11.089+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	6	\N	http://localhost:8055
9	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:02:39.738+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city	\N	http://localhost:8055
10	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:27.872+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_roles	68c58399-f145-49aa-9db1-ee94c793b427	\N	http://localhost:8055
11	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:27.949+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	1	\N	http://localhost:8055
12	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:27.973+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	2	\N	http://localhost:8055
13	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:27.997+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	3	\N	http://localhost:8055
14	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.018+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	4	\N	http://localhost:8055
15	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.04+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	5	\N	http://localhost:8055
16	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.061+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	6	\N	http://localhost:8055
17	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.081+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	7	\N	http://localhost:8055
18	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.099+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	8	\N	http://localhost:8055
19	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.117+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	9	\N	http://localhost:8055
20	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.134+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	10	\N	http://localhost:8055
21	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.146+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	11	\N	http://localhost:8055
22	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.155+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	12	\N	http://localhost:8055
23	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.162+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	13	\N	http://localhost:8055
24	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.168+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	14	\N	http://localhost:8055
25	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.174+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	15	\N	http://localhost:8055
26	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.18+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	16	\N	http://localhost:8055
27	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.185+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	17	\N	http://localhost:8055
28	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.191+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	18	\N	http://localhost:8055
29	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.197+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	19	\N	http://localhost:8055
30	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.202+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	20	\N	http://localhost:8055
31	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.212+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	21	\N	http://localhost:8055
32	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.222+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	22	\N	http://localhost:8055
33	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.232+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	23	\N	http://localhost:8055
34	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:28.246+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	24	\N	http://localhost:8055
35	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:45.528+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	25	\N	http://localhost:8055
36	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:45.536+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	27	\N	http://localhost:8055
37	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:45.538+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	26	\N	http://localhost:8055
38	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:45.541+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	28	\N	http://localhost:8055
40	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:47.789+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	25	\N	http://localhost:8055
41	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:47.794+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	26	\N	http://localhost:8055
42	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:47.798+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	27	\N	http://localhost:8055
43	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:47.802+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	28	\N	http://localhost:8055
44	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:47.806+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	29	\N	http://localhost:8055
45	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:05:52.349+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	30	\N	http://localhost:8055
46	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:07:12.412+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	city	1	\N	http://localhost:8055
48	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:11:54.665+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	7	\N	http://localhost:8055
49	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:11:54.691+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	8	\N	http://localhost:8055
50	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:11:54.711+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	9	\N	http://localhost:8055
51	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:11:54.736+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	10	\N	http://localhost:8055
52	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:11:54.756+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event	\N	http://localhost:8055
39	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:04:45.547+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	29	\N	http://localhost:8055
47	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:07:27.599+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
53	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:14:30.256+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	11	\N	http://localhost:8055
54	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:15:12.592+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	12	\N	http://localhost:8055
55	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:15:52.157+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	13	\N	http://localhost:8055
56	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:16:05.356+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event	\N	http://localhost:8055
57	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:16:56.005+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_files	af7343e3-944c-4e04-b175-2bd2f5d4c06a	\N	http://localhost:8055
58	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:16:56.019+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_files	af7343e3-944c-4e04-b175-2bd2f5d4c06a	\N	http://localhost:8055
59	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:17:31.531+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event	1	\N	http://localhost:8055
60	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:19:49.41+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	7	\N	http://localhost:8055
61	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:22:11.451+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
62	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:22:32.805+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event	1	\N	http://localhost:8055
63	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:23:31.905+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event	2	\N	http://localhost:8055
64	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:24:12.955+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	30	\N	http://localhost:8055
65	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:24:24.451+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	31	\N	http://localhost:8055
66	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:24:36.418+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	31	\N	http://localhost:8055
67	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:24:39.262+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	32	\N	http://localhost:8055
68	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:24:52.267+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	32	\N	http://localhost:8055
69	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:25:04.963+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	33	\N	http://localhost:8055
70	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:25:36.858+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	33	\N	http://localhost:8055
71	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:25:45.115+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	34	\N	http://localhost:8055
72	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:25:51.681+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	34	\N	http://localhost:8055
73	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:25:54.98+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	35	\N	http://localhost:8055
74	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:26:06.683+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	35	\N	http://localhost:8055
75	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:26:10.88+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	36	\N	http://localhost:8055
76	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:26:26.994+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	36	\N	http://localhost:8055
77	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:26:47.048+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_roles	68c58399-f145-49aa-9db1-ee94c793b427	\N	http://localhost:8055
78	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:27:39.429+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
79	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:28:02.721+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
80	create	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:28:41.047+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event	3	\N	http://localhost:8055
81	delete	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:28:54.143+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event	3	\N	http://localhost:8055
82	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:29:01.559+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
83	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:29:23.891+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_roles	68c58399-f145-49aa-9db1-ee94c793b427	\N	http://localhost:8055
288	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.41+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	2	\N	http://localhost:8055
84	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:29:31.892+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
85	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:29:58.406+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
86	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:30:05.508+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	32	\N	http://localhost:8055
87	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:30:07.377+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	31	\N	http://localhost:8055
88	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:30:09.21+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	30	\N	http://localhost:8055
89	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:30:24.425+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	37	\N	http://localhost:8055
90	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:30:43.664+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	37	\N	http://localhost:8055
91	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:30:58.102+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
92	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:31:32.879+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
93	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:31:48.46+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	37	\N	http://localhost:8055
94	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:31:56.266+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	35	\N	http://localhost:8055
95	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:32:05.766+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
96	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:32:33.05+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
97	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:32:37.817+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	38	\N	http://localhost:8055
98	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:32:45.809+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	38	\N	http://localhost:8055
99	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:32:53.007+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
100	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:33:34.081+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
101	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:34:11.548+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	38	\N	http://localhost:8055
102	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:34:19.081+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
103	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:34:38.154+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
104	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:35:17.599+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	36	\N	http://localhost:8055
105	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:35:28.292+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
106	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:36:00.03+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
107	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:37:21.035+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
108	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:37:38.084+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
109	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:37:52.479+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	36	\N	http://localhost:8055
110	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:38:11.981+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	33	\N	http://localhost:8055
111	login	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:38:19.141+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	\N	http://localhost:8055
112	create	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:40:32.754+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_files	a91d6db5-2f9d-4b23-abc6-df09ba3a19fc	\N	http://localhost:8055
113	delete	507e3800-1c28-454b-bcd2-766cda54a162	2024-01-20 14:40:32.773+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_files	a91d6db5-2f9d-4b23-abc6-df09ba3a19fc	\N	http://localhost:8055
114	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:42:56.502+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
115	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:43:28.717+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	39	\N	http://localhost:8055
116	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:43:30.534+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	40	\N	http://localhost:8055
117	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:43:35.406+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	39	\N	http://localhost:8055
118	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:43:37.791+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_permissions	41	\N	http://localhost:8055
119	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:47:51.78+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city	\N	http://localhost:8055
120	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:47:51.791+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event	\N	http://localhost:8055
121	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:47:53.949+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event	\N	http://localhost:8055
122	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:47:53.972+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city	\N	http://localhost:8055
123	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:47:59.309+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event	\N	http://localhost:8055
124	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:47:59.321+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city	\N	http://localhost:8055
125	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:48:01.639+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city	\N	http://localhost:8055
126	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:48:01.662+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event	\N	http://localhost:8055
127	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:51:52.163+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	15	\N	http://localhost:8055
128	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:51:52.185+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	languages	\N	http://localhost:8055
129	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:52:03.788+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	16	\N	http://localhost:8055
130	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:56:47.556+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	17	\N	http://localhost:8055
131	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:56:47.808+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	18	\N	http://localhost:8055
132	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:56:47.826+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event_translations	\N	http://localhost:8055
133	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:56:48.032+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	19	\N	http://localhost:8055
134	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:56:48.226+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	20	\N	http://localhost:8055
135	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:59:18.62+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	21	\N	http://localhost:8055
136	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 14:59:34.718+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	22	\N	http://localhost:8055
137	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:00:27.409+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	languages	de	\N	http://localhost:8055
138	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:00:34.854+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	languages	fr	\N	http://localhost:8055
139	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:03:36.235+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event_translations	1	\N	http://localhost:8055
140	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:03:36.256+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event_translations	2	\N	http://localhost:8055
141	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:03:36.272+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event	1	\N	http://localhost:8055
142	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:04:35.792+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event_translations	3	\N	http://localhost:8055
143	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:04:35.813+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event_translations	4	\N	http://localhost:8055
144	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:04:35.829+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	event	2	\N	http://localhost:8055
145	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:05:00.983+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event	\N	http://localhost:8055
146	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:05:58.773+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	7	\N	http://localhost:8055
147	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:05:58.901+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	8	\N	http://localhost:8055
148	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:05:59.018+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	9	\N	http://localhost:8055
149	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:05:59.112+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	17	\N	http://localhost:8055
150	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:05:59.151+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	10	\N	http://localhost:8055
151	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:05:59.186+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	13	\N	http://localhost:8055
152	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:05:59.223+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
153	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:06:41.578+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	event	\N	http://localhost:8055
154	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:16.601+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	17	\N	http://localhost:8055
155	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:33.123+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	7	\N	http://localhost:8055
156	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:33.185+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
157	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:33.228+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	8	\N	http://localhost:8055
158	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:33.273+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	9	\N	http://localhost:8055
159	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:33.312+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	17	\N	http://localhost:8055
160	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:33.346+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	10	\N	http://localhost:8055
161	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:33.381+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	13	\N	http://localhost:8055
162	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:35.107+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	7	\N	http://localhost:8055
163	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:35.198+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
164	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:35.24+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	17	\N	http://localhost:8055
165	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:35.274+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	8	\N	http://localhost:8055
166	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:35.308+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	9	\N	http://localhost:8055
167	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:35.343+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	10	\N	http://localhost:8055
168	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:35.377+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	13	\N	http://localhost:8055
169	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:09:50.807+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
170	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:25.012+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
171	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:46.805+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
172	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:46.915+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	7	\N	http://localhost:8055
173	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:47.027+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	17	\N	http://localhost:8055
174	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:47.122+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	8	\N	http://localhost:8055
175	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:47.212+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	9	\N	http://localhost:8055
176	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:47.311+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	10	\N	http://localhost:8055
177	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:47.396+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	13	\N	http://localhost:8055
178	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:48.156+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	17	\N	http://localhost:8055
179	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:48.274+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
180	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:48.367+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	7	\N	http://localhost:8055
181	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:48.462+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	8	\N	http://localhost:8055
182	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:48.58+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	9	\N	http://localhost:8055
183	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:48.679+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	10	\N	http://localhost:8055
184	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:10:48.78+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	13	\N	http://localhost:8055
185	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:32:28.469+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	23	\N	http://localhost:8055
186	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:32:28.692+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	24	\N	http://localhost:8055
187	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:32:28.71+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city_translations	\N	http://localhost:8055
188	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:32:28.866+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	25	\N	http://localhost:8055
189	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:32:29.037+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	26	\N	http://localhost:8055
190	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:33:37.645+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	27	\N	http://localhost:8055
191	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:33:49.18+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	28	\N	http://localhost:8055
192	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:34:00.311+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	29	\N	http://localhost:8055
193	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:34:43.803+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	30	\N	http://localhost:8055
194	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:36:06.253+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	31	\N	http://localhost:8055
195	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:36:55.181+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city_translations	\N	http://localhost:8055
196	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:37:11.967+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	city	\N	http://localhost:8055
197	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:37:49.152+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	23	\N	http://localhost:8055
198	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:38:42.926+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	city_translations	1	\N	http://localhost:8055
199	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:38:42.945+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	city_translations	2	\N	http://localhost:8055
200	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:38:42.958+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	city	1	\N	http://localhost:8055
201	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:39:01.196+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	city_translations	3	\N	http://localhost:8055
202	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:39:01.215+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	city_translations	4	\N	http://localhost:8055
203	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:39:01.227+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
204	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:39:29.4+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	1	\N	http://localhost:8055
205	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:41:40.201+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
206	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:41:58.88+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	14	\N	http://localhost:8055
207	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:42:47.085+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	32	\N	http://localhost:8055
208	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:42:47.106+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	33	\N	http://localhost:8055
209	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:42:47.114+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	34	\N	http://localhost:8055
210	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:42:47.119+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	35	\N	http://localhost:8055
211	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:42:47.126+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	36	\N	http://localhost:8055
212	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:42:47.132+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	countries	\N	http://localhost:8055
213	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:43:19.243+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	37	\N	http://localhost:8055
214	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:43:19.474+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	38	\N	http://localhost:8055
215	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:43:19.492+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	countries_translations	\N	http://localhost:8055
216	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:43:19.646+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	39	\N	http://localhost:8055
217	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:43:19.826+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	40	\N	http://localhost:8055
218	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:43:34.472+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	41	\N	http://localhost:8055
219	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:44:14.547+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	countries_translations	1	\N	http://localhost:8055
220	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:44:14.568+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	countries_translations	2	\N	http://localhost:8055
221	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:44:14.584+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	countries	1	\N	http://localhost:8055
222	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:45:17.056+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	countries	\N	http://localhost:8055
223	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:45:38.149+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	37	\N	http://localhost:8055
224	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:46:14.781+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	37	\N	http://localhost:8055
225	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:48:37.335+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_collections	countries_translations	\N	http://localhost:8055
226	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:51:21.921+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	42	\N	http://localhost:8055
227	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-20 15:53:47.499+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	directus_fields	43	\N	http://localhost:8055
228	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 13:59:43.06+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	42	\N	http://localhost:8055
229	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 13:59:45.73+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	43	\N	http://localhost:8055
230	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 13:59:47.763+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	44	\N	http://localhost:8055
231	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 13:59:50.435+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	45	\N	http://localhost:8055
232	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 13:59:51.724+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	46	\N	http://localhost:8055
233	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:09:54.243+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	23	\N	http://localhost:8055
234	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:23:21.551+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	44	\N	http://localhost:8055
235	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:23:21.691+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	45	\N	http://localhost:8055
236	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:23:21.699+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	city_files	\N	http://localhost:8055
237	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:23:21.822+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	46	\N	http://localhost:8055
238	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:23:22.003+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	47	\N	http://localhost:8055
239	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:24:11.688+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f90ae2c5-682a-4fe8-8fbc-3f31a4257cf7	\N	http://localhost:8055
240	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:24:11.705+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f90ae2c5-682a-4fe8-8fbc-3f31a4257cf7	\N	http://localhost:8055
241	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-27 14:27:54.446+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	239810f8-beac-4b54-b540-f84cb45ad0e6	\N	http://localhost:8055
242	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:15:28.449+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	48	\N	http://localhost:8055
243	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:15:28.486+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	49	\N	http://localhost:8055
244	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:15:28.508+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	50	\N	http://localhost:8055
245	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:15:28.52+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	51	\N	http://localhost:8055
246	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:15:28.529+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	SupportLinks	\N	http://localhost:8055
247	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:17:19.201+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	52	\N	http://localhost:8055
248	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:17:49.48+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	53	\N	http://localhost:8055
249	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:17:49.725+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	54	\N	http://localhost:8055
250	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:17:49.747+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	SupportLinks_translations	\N	http://localhost:8055
251	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:17:49.916+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	55	\N	http://localhost:8055
252	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:17:50.029+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	56	\N	http://localhost:8055
255	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:18:36.52+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	58	\N	http://localhost:8055
253	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:18:02.156+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	SupportLinks	\N	http://localhost:8055
254	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:18:27.712+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	57	\N	http://localhost:8055
256	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:19:26.784+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	59	\N	http://localhost:8055
257	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:22:53.474+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	60	\N	http://localhost:8055
258	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:24:48.953+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	1	\N	http://localhost:8055
259	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:24:48.972+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	2	\N	http://localhost:8055
260	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:24:48.99+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	1	\N	http://localhost:8055
261	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:25:19.292+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	60	\N	http://localhost:8055
262	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:32:51.331+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	3	\N	http://localhost:8055
263	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:32:51.353+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	4	\N	http://localhost:8055
264	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:32:51.371+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	2	\N	http://localhost:8055
265	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:33:36.104+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	5	\N	http://localhost:8055
266	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:33:36.122+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	3	\N	http://localhost:8055
267	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:35:30.588+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	6	\N	http://localhost:8055
268	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:35:30.605+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	4	\N	http://localhost:8055
269	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:36:15.461+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	7	\N	http://localhost:8055
270	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:36:15.476+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	5	\N	http://localhost:8055
271	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:37:29.85+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	8	\N	http://localhost:8055
272	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:37:29.868+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	6	\N	http://localhost:8055
273	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:40:36.332+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	SupportLinks	\N	http://localhost:8055
274	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:41:27.868+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	53	\N	http://localhost:8055
275	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:42:10.674+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	53	\N	http://localhost:8055
276	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:42:56.06+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	59	\N	http://localhost:8055
277	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:44:17.911+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	59	\N	http://localhost:8055
278	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:44:28.787+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	59	\N	http://localhost:8055
279	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:45:16.204+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	9	\N	http://localhost:8055
280	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:45:16.222+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	7	\N	http://localhost:8055
281	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:45:45.62+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks_translations	10	\N	http://localhost:8055
282	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 09:45:45.636+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	8	\N	http://localhost:8055
283	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:17:17.015+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	47	\N	http://localhost:8055
284	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:17:18.632+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	48	\N	http://localhost:8055
285	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:20:18.555+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	49	\N	http://localhost:8055
286	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:07.002+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	61	\N	http://localhost:8055
287	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.374+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	1	\N	http://localhost:8055
289	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.439+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	3	\N	http://localhost:8055
290	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.467+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	4	\N	http://localhost:8055
291	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.49+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	5	\N	http://localhost:8055
292	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.502+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	6	\N	http://localhost:8055
293	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.513+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	7	\N	http://localhost:8055
294	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.522+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	8	\N	http://localhost:8055
295	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:22:39.531+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	1	\N	http://localhost:8055
296	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:24:16.222+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	1	\N	http://localhost:8055
297	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:24:16.228+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	2	\N	http://localhost:8055
298	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:24:16.236+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	3	\N	http://localhost:8055
299	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:24:16.241+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	4	\N	http://localhost:8055
300	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:24:16.246+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	5	\N	http://localhost:8055
301	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:24:16.251+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	6	\N	http://localhost:8055
302	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:24:16.257+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	7	\N	http://localhost:8055
303	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:24:16.263+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	8	\N	http://localhost:8055
304	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:30:21.879+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	62	\N	http://localhost:8055
305	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:09.23+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	63	\N	http://localhost:8055
306	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.112+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	1	\N	http://localhost:8055
307	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.14+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	2	\N	http://localhost:8055
308	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.165+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	3	\N	http://localhost:8055
309	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.189+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	4	\N	http://localhost:8055
310	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.215+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	5	\N	http://localhost:8055
311	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.243+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	6	\N	http://localhost:8055
312	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.275+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	7	\N	http://localhost:8055
313	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.293+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	SupportLinks	8	\N	http://localhost:8055
314	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:31:25.305+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
315	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:33:25.911+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	64	\N	http://localhost:8055
316	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:41:47.474+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_translations	3	\N	http://localhost:8055
317	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-01-28 11:41:47.5+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
318	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:12:22.264+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	65	\N	http://localhost:8055
319	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:13:19.252+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	66	\N	http://localhost:8055
321	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:22:24.369+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	68	\N	http://localhost:8055
329	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:52:05.882+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	62	\N	http://localhost:8055
330	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:12:39.706+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	69	\N	http://localhost:8055
331	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:12:39.739+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	70	\N	http://localhost:8055
332	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:12:39.764+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	71	\N	http://localhost:8055
333	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:12:39.789+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	72	\N	http://localhost:8055
334	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:12:39.8+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	73	\N	http://localhost:8055
335	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:12:39.809+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	CustomSections	\N	http://localhost:8055
355	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:39:59.78+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	83	\N	http://localhost:8055
356	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:40:29.852+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	83	\N	http://localhost:8055
360	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.43+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	83ad9a9d-77dc-4eca-9a0e-4596b1221f0b	\N	http://localhost:8055
364	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.53+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	425a0e8e-16b3-4405-9e7d-4d133b09c14b	\N	http://localhost:8055
371	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.687+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5ce3e335-c4ec-4b6c-a4e3-8635d1f5659c	\N	http://localhost:8055
373	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.771+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	9a84a67e-7ce4-4058-9999-e3618f028112	\N	http://localhost:8055
376	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:36.762+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	ec2bd7e0-01a0-4571-8f1b-56b3bac4da7e	\N	http://localhost:8055
378	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:56.684+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	88ec0a8b-f67a-4449-b7f1-26202cb606ca	\N	http://localhost:8055
382	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.548+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	2ab59289-4609-4754-aa16-a48358f1d5bf	\N	http://localhost:8055
424	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.012+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	1	\N	http://localhost:8055
391	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.729+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	7ca7e9cb-0a8e-4c5f-8f1a-32f5f544ff2f	\N	http://localhost:8055
414	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:46:44.767+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	52	\N	http://localhost:8055
418	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:46:44.797+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	55	\N	http://localhost:8055
320	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:16:59.552+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	67	\N	http://localhost:8055
336	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:14:10.082+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	74	\N	http://localhost:8055
338	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:14:44.147+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	76	\N	http://localhost:8055
339	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:14:44.17+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	CustomSections_translations	\N	http://localhost:8055
340	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:14:44.354+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	77	\N	http://localhost:8055
342	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:14:55.426+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	79	\N	http://localhost:8055
357	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:41:29.211+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	83	\N	http://localhost:8055
361	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.435+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	cdd76a04-84f2-426d-b3e6-a4d48ec8a7aa	\N	http://localhost:8055
365	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.54+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f80b438b-97d2-4fb9-8645-fd2b334f628c	\N	http://localhost:8055
368	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.659+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	56e68cfa-5ac6-4c83-ac3e-f8ac6652fd80	\N	http://localhost:8055
415	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:46:44.776+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	49	\N	http://localhost:8055
322	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:27:55.31+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5556b0ea-7025-40a9-aaaf-b55713639b87	\N	http://localhost:8055
337	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:14:43.89+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	75	\N	http://localhost:8055
341	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:14:44.588+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	78	\N	http://localhost:8055
343	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:15:12.988+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	80	\N	http://localhost:8055
345	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:16:43.359+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	CustomSections	\N	http://localhost:8055
358	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:45:58.899+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	50	\N	http://localhost:8055
359	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:46:00.127+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	51	\N	http://localhost:8055
362	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.438+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	4aece6fc-c22f-4751-8f2e-cb8453ec98ae	\N	http://localhost:8055
366	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.547+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	981dd0e3-e926-47d4-8794-c7a307017c08	\N	http://localhost:8055
370	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.684+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	9130e67e-5565-4a66-bc25-c478cf7e70e8	\N	http://localhost:8055
372	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.74+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	cdbe52e5-a926-44e0-9eab-51e1a6abaeb4	\N	http://localhost:8055
374	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.78+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	a6150896-1236-46da-b6b2-916ac4c336b5	\N	http://localhost:8055
377	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:44.469+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	255e9876-3511-4338-932d-de553ca6523a	\N	http://localhost:8055
379	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:56.713+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	8b3b763c-9d84-4797-ba28-6e52eab82a73	\N	http://localhost:8055
381	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.536+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	7b5011a5-e238-459c-b133-9cb10c0f49b5	\N	http://localhost:8055
385	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.574+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	3a2dfe2d-cb94-452c-bdff-dd3ac2396b6f	\N	http://localhost:8055
388	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.677+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	0174130c-f4f5-44aa-a9c7-35f8b5ead135	\N	http://localhost:8055
416	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:46:44.782+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	53	\N	http://localhost:8055
419	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:46:58.602+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	53	\N	http://localhost:8055
420	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:46:59.919+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	54	\N	http://localhost:8055
421	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:47:01.366+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	55	\N	http://localhost:8055
422	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:47:02.737+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	52	\N	http://localhost:8055
323	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:28:54.057+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	event_translations	5	\N	http://localhost:8055
324	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:28:54.066+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	event_translations	6	\N	http://localhost:8055
325	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:28:54.072+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	event	4	\N	http://localhost:8055
344	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:15:28.247+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	81	\N	http://localhost:8055
363	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.441+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5fe1e0ef-1903-4907-bd61-167b748b3820	\N	http://localhost:8055
367	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.551+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	a22a9ec3-84c9-4b95-9a00-7d9f62eaf1a6	\N	http://localhost:8055
369	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:06.677+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	cdbe4b25-5eac-4489-a45e-e254e04e83a1	\N	http://localhost:8055
417	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:46:44.787+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	54	\N	http://localhost:8055
326	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:37:27.11+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	event_translations	7	\N	http://localhost:8055
327	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:37:27.12+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	event_translations	8	\N	http://localhost:8055
328	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 09:37:27.129+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	event	5	\N	http://localhost:8055
346	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:19:32.535+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	82	\N	http://localhost:8055
347	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:20:00.809+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	83	\N	http://localhost:8055
375	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:30.347+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	dc123d72-8323-45eb-a943-36389dc5bea6	\N	http://localhost:8055
380	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:27:56.718+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f9874dc2-dbd2-4b87-bd32-12ce32a1f526	\N	http://localhost:8055
384	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.551+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	0c6462b2-f86e-4fca-a960-23c0222ce597	\N	http://localhost:8055
392	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.737+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	3e1f3db6-0a84-433e-957c-972ce8a1d278	\N	http://localhost:8055
393	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.807+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	c55467d4-8338-437b-a177-c0710f9a535d	\N	http://localhost:8055
423	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:49:16.652+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	56	\N	http://localhost:8055
348	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:24:56.028+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	CustomSections_translations	1	\N	http://localhost:8055
349	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:24:56.036+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	CustomSections_translations	2	\N	http://localhost:8055
350	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:24:56.044+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	CustomSections	1	\N	http://localhost:8055
383	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.549+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5c60c983-c656-4bb7-bd46-0a107e5bde4c	\N	http://localhost:8055
389	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.686+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	ca987d87-80ed-42f0-b50e-56340b1f497e	\N	http://localhost:8055
394	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:09.988+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	1	\N	http://localhost:8055
395	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.007+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	2	\N	http://localhost:8055
396	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.024+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	3	\N	http://localhost:8055
397	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.042+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	4	\N	http://localhost:8055
398	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.058+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	5	\N	http://localhost:8055
399	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.073+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	6	\N	http://localhost:8055
400	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.09+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	7	\N	http://localhost:8055
401	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.105+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	8	\N	http://localhost:8055
402	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.12+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	9	\N	http://localhost:8055
403	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.136+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	10	\N	http://localhost:8055
404	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.157+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	11	\N	http://localhost:8055
405	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.173+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	12	\N	http://localhost:8055
406	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.19+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	13	\N	http://localhost:8055
407	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.206+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	14	\N	http://localhost:8055
408	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.223+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	15	\N	http://localhost:8055
409	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.24+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	16	\N	http://localhost:8055
410	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.257+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	17	\N	http://localhost:8055
411	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.268+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	18	\N	http://localhost:8055
412	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.274+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	19	\N	http://localhost:8055
413	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:10.281+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
351	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:25:16.723+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	84	\N	http://localhost:8055
386	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.575+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f1585467-0562-4b63-bd7d-bedadf620e8b	\N	http://localhost:8055
390	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.725+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	16ef4a31-4ab0-4cab-898b-618be781d472	\N	http://localhost:8055
352	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:25:53.92+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	CustomSections_translations	1	\N	http://localhost:8055
353	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:25:53.951+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	CustomSections_translations	2	\N	http://localhost:8055
354	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 10:25:53.976+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	CustomSections	1	\N	http://localhost:8055
387	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 11:28:06.676+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	02735120-e2ae-4389-ac2e-2426d10b7944	\N	http://localhost:8055
425	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.018+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	10	\N	http://localhost:8055
426	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.022+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	11	\N	http://localhost:8055
427	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.026+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	12	\N	http://localhost:8055
428	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.029+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	13	\N	http://localhost:8055
429	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.033+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	14	\N	http://localhost:8055
430	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.038+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	15	\N	http://localhost:8055
431	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.042+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	2	\N	http://localhost:8055
432	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.046+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	3	\N	http://localhost:8055
433	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.049+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	4	\N	http://localhost:8055
434	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.052+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	5	\N	http://localhost:8055
435	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.055+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	6	\N	http://localhost:8055
436	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.059+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	7	\N	http://localhost:8055
437	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.062+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	8	\N	http://localhost:8055
438	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.065+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	9	\N	http://localhost:8055
439	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:48.118+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
483	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:51:23.237+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	dddd	\N	http://localhost:8055
485	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.5+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	1	\N	http://localhost:8055
486	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.506+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	2	\N	http://localhost:8055
487	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.512+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	3	\N	http://localhost:8055
488	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.517+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	4	\N	http://localhost:8055
489	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.522+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	5	\N	http://localhost:8055
490	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.527+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	6	\N	http://localhost:8055
491	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.532+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	7	\N	http://localhost:8055
492	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.538+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	8	\N	http://localhost:8055
493	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.543+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	9	\N	http://localhost:8055
494	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.55+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	10	\N	http://localhost:8055
495	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.555+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	11	\N	http://localhost:8055
496	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.56+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	12	\N	http://localhost:8055
497	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.565+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	13	\N	http://localhost:8055
498	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.571+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	14	\N	http://localhost:8055
499	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.576+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	15	\N	http://localhost:8055
500	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.581+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	16	\N	http://localhost:8055
501	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.588+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	17	\N	http://localhost:8055
502	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.593+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	18	\N	http://localhost:8055
503	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:27.597+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	19	\N	http://localhost:8055
440	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:54.059+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	16	\N	http://localhost:8055
441	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:54.065+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	17	\N	http://localhost:8055
442	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:54.07+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	18	\N	http://localhost:8055
443	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:54.076+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	19	\N	http://localhost:8055
444	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:48:54.111+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
484	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:52:17.992+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	city_files	\N	http://localhost:8055
516	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:16.563+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
519	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.487+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	4ddcfe09-9d8c-4faf-875b-f4badd641872	\N	http://localhost:8055
525	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.128+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f97ece40-8c83-445f-84aa-296470d9156c	\N	http://localhost:8055
529	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.635+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	be7798e7-4a82-476d-9337-efb46d483803	\N	http://localhost:8055
531	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.645+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	c0ca15c3-237b-4903-8bdb-bb26785bb930	\N	http://localhost:8055
533	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:07.103+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	979419ac-8085-42df-a425-af8c952f7840	\N	http://localhost:8055
535	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:07.108+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	c64a680d-6535-47c6-a527-0808229d2fcf	\N	http://localhost:8055
536	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.264+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	20	\N	http://localhost:8055
537	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.29+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	21	\N	http://localhost:8055
538	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.303+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	22	\N	http://localhost:8055
539	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.312+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	23	\N	http://localhost:8055
540	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.319+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	24	\N	http://localhost:8055
541	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.327+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	25	\N	http://localhost:8055
542	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.333+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	26	\N	http://localhost:8055
543	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.34+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	27	\N	http://localhost:8055
544	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.347+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	28	\N	http://localhost:8055
545	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.353+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	29	\N	http://localhost:8055
546	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.36+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	30	\N	http://localhost:8055
547	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.366+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	31	\N	http://localhost:8055
548	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.372+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	32	\N	http://localhost:8055
549	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.381+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	33	\N	http://localhost:8055
550	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.387+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	34	\N	http://localhost:8055
551	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.393+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	35	\N	http://localhost:8055
552	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.399+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	36	\N	http://localhost:8055
553	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.404+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	37	\N	http://localhost:8055
554	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.411+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city_files	38	\N	http://localhost:8055
555	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:56:14.418+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
556	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:47:39.742+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	86	\N	http://localhost:8055
445	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.712+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	c55467d4-8338-437b-a177-c0710f9a535d	\N	http://localhost:8055
446	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.718+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	3e1f3db6-0a84-433e-957c-972ce8a1d278	\N	http://localhost:8055
447	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.723+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	7ca7e9cb-0a8e-4c5f-8f1a-32f5f544ff2f	\N	http://localhost:8055
448	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.728+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	16ef4a31-4ab0-4cab-898b-618be781d472	\N	http://localhost:8055
449	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.733+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	ca987d87-80ed-42f0-b50e-56340b1f497e	\N	http://localhost:8055
450	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.737+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	0174130c-f4f5-44aa-a9c7-35f8b5ead135	\N	http://localhost:8055
451	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.742+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	02735120-e2ae-4389-ac2e-2426d10b7944	\N	http://localhost:8055
452	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.746+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	3a2dfe2d-cb94-452c-bdff-dd3ac2396b6f	\N	http://localhost:8055
453	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.75+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f1585467-0562-4b63-bd7d-bedadf620e8b	\N	http://localhost:8055
454	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.755+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	0c6462b2-f86e-4fca-a960-23c0222ce597	\N	http://localhost:8055
455	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.76+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	2ab59289-4609-4754-aa16-a48358f1d5bf	\N	http://localhost:8055
456	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.764+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5c60c983-c656-4bb7-bd46-0a107e5bde4c	\N	http://localhost:8055
457	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.768+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	7b5011a5-e238-459c-b133-9cb10c0f49b5	\N	http://localhost:8055
458	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.773+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f9874dc2-dbd2-4b87-bd32-12ce32a1f526	\N	http://localhost:8055
459	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.777+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	8b3b763c-9d84-4797-ba28-6e52eab82a73	\N	http://localhost:8055
460	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.782+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	88ec0a8b-f67a-4449-b7f1-26202cb606ca	\N	http://localhost:8055
461	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.786+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	255e9876-3511-4338-932d-de553ca6523a	\N	http://localhost:8055
462	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.793+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	ec2bd7e0-01a0-4571-8f1b-56b3bac4da7e	\N	http://localhost:8055
463	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.8+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	dc123d72-8323-45eb-a943-36389dc5bea6	\N	http://localhost:8055
464	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.805+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	a6150896-1236-46da-b6b2-916ac4c336b5	\N	http://localhost:8055
465	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.811+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	9a84a67e-7ce4-4058-9999-e3618f028112	\N	http://localhost:8055
466	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.816+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	cdbe52e5-a926-44e0-9eab-51e1a6abaeb4	\N	http://localhost:8055
467	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.821+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5ce3e335-c4ec-4b6c-a4e3-8635d1f5659c	\N	http://localhost:8055
468	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.826+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	9130e67e-5565-4a66-bc25-c478cf7e70e8	\N	http://localhost:8055
469	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:12.832+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	cdbe4b25-5eac-4489-a45e-e254e04e83a1	\N	http://localhost:8055
517	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.476+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	b8438249-863c-449a-8fe5-568f4e47b67b	\N	http://localhost:8055
521	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.917+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	a395308d-6b1a-4db4-8b3c-c39009964fbf	\N	http://localhost:8055
522	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:57.254+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	57f3e7e0-db45-42fc-ab87-af4daa0bb144	\N	http://localhost:8055
526	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.135+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	a6d8e567-36f1-421a-ac23-5e549a84d564	\N	http://localhost:8055
528	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.634+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	9624d4fa-f777-4d8c-a25a-0c44d4f3335d	\N	http://localhost:8055
470	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.775+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	56e68cfa-5ac6-4c83-ac3e-f8ac6652fd80	\N	http://localhost:8055
471	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.781+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	a22a9ec3-84c9-4b95-9a00-7d9f62eaf1a6	\N	http://localhost:8055
472	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.786+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	981dd0e3-e926-47d4-8794-c7a307017c08	\N	http://localhost:8055
473	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.79+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f80b438b-97d2-4fb9-8645-fd2b334f628c	\N	http://localhost:8055
474	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.795+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	425a0e8e-16b3-4405-9e7d-4d133b09c14b	\N	http://localhost:8055
475	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.8+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	4aece6fc-c22f-4751-8f2e-cb8453ec98ae	\N	http://localhost:8055
476	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.804+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	cdd76a04-84f2-426d-b3e6-a4d48ec8a7aa	\N	http://localhost:8055
477	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.81+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5fe1e0ef-1903-4907-bd61-167b748b3820	\N	http://localhost:8055
478	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.815+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	83ad9a9d-77dc-4eca-9a0e-4596b1221f0b	\N	http://localhost:8055
479	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.819+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5556b0ea-7025-40a9-aaaf-b55713639b87	\N	http://localhost:8055
480	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:49:16.824+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	239810f8-beac-4b54-b540-f84cb45ad0e6	\N	http://localhost:8055
518	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.482+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	3fe2f5dd-65dd-4441-b0d6-fe6b00e20b7e	\N	http://localhost:8055
523	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.116+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	3785366c-a15c-4648-9398-be2b068af3ac	\N	http://localhost:8055
527	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.152+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	f3e9f151-89f9-4521-8682-719049e2066d	\N	http://localhost:8055
530	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.64+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	a1140a22-23f1-4cdd-b36e-a892b4ff7e48	\N	http://localhost:8055
534	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:07.107+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	5e740af8-492d-4540-b959-ae89e0576ce3	\N	http://localhost:8055
557	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:47:39.777+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	87	\N	http://localhost:8055
558	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:47:39.804+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	88	\N	http://localhost:8055
559	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:47:39.831+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	89	\N	http://localhost:8055
560	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:47:39.851+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	90	\N	http://localhost:8055
561	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:47:39.862+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm	\N	http://localhost:8055
563	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:48:18.969+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	91	\N	http://localhost:8055
564	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:48:18.997+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	92	\N	http://localhost:8055
565	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:48:19.02+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	93	\N	http://localhost:8055
566	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:48:19.043+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	94	\N	http://localhost:8055
567	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:48:19.064+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	95	\N	http://localhost:8055
568	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:48:19.089+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	CityFormFields	\N	http://localhost:8055
575	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:50:51.76+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	101	\N	http://localhost:8055
581	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:52:21.906+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	106	\N	http://localhost:8055
585	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:52:22.433+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	109	\N	http://localhost:8055
587	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:54:50.937+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	111	\N	http://localhost:8055
589	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:55:16.406+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	113	\N	http://localhost:8055
481	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:50:26.233+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	85	\N	http://localhost:8055
482	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:50:26.257+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	dddd	\N	http://localhost:8055
520	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.492+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	8690b83f-d3a7-4c50-a73d-ca1457c60576	\N	http://localhost:8055
524	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.117+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	92930338-0f26-4953-9074-a7bbad626063	\N	http://localhost:8055
532	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.648+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_files	248abf34-2e4e-43f1-9257-c6ec55cb1e83	\N	http://localhost:8055
562	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:47:55.969+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm	\N	http://localhost:8055
569	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:48:40.716+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	96	\N	http://localhost:8055
570	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:50:32.091+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	97	\N	http://localhost:8055
571	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:50:32.274+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	98	\N	http://localhost:8055
572	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:50:32.281+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	CityFormFields_translations	\N	http://localhost:8055
573	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:50:32.373+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	99	\N	http://localhost:8055
574	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:50:32.474+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	100	\N	http://localhost:8055
576	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:51:25.26+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	102	\N	http://localhost:8055
577	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:51:25.5+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	103	\N	http://localhost:8055
578	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:51:25.519+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm_CityFormFields	\N	http://localhost:8055
579	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:51:25.703+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	104	\N	http://localhost:8055
580	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:51:25.81+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	105	\N	http://localhost:8055
582	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:52:22.113+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	107	\N	http://localhost:8055
583	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:52:22.126+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm_translations	\N	http://localhost:8055
584	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:52:22.271+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	108	\N	http://localhost:8055
586	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:52:46.336+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	110	\N	http://localhost:8055
588	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:55:01.579+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	112	\N	http://localhost:8055
590	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 13:55:38.719+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	114	\N	http://localhost:8055
591	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:17:41.452+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	CityFormFields	\N	http://localhost:8055
592	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:18:12.21+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	115	\N	http://localhost:8055
593	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:18:12.495+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	116	\N	http://localhost:8055
594	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:18:12.518+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm_CityFormFields_translations	\N	http://localhost:8055
595	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:18:12.72+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	117	\N	http://localhost:8055
596	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:18:12.926+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	118	\N	http://localhost:8055
597	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:18:22.843+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	119	\N	http://localhost:8055
600	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:27:46.129+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	120	\N	http://localhost:8055
601	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:27:46.241+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	121	\N	http://localhost:8055
602	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:27:46.249+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm_CityFormFields_1	\N	http://localhost:8055
603	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:27:46.325+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	122	\N	http://localhost:8055
604	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:27:46.407+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	123	\N	http://localhost:8055
607	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:30:11.537+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	124	\N	http://localhost:8055
614	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:34:57.569+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	CityFormFields_translations	\N	http://localhost:8055
615	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:35:02.718+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	CityFormFields	\N	http://localhost:8055
616	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:35:07.642+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm	\N	http://localhost:8055
617	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:35:14.494+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm_CityFormFields	\N	http://localhost:8055
618	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:35:18.242+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm_CityFormFields_1	\N	http://localhost:8055
619	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:35:25.756+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm_CityFormFields_translations	\N	http://localhost:8055
620	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:35:32.337+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	DynamicCityForm_translations	\N	http://localhost:8055
621	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:36:59.932+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	125	\N	http://localhost:8055
622	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:36:59.94+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	126	\N	http://localhost:8055
623	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:36:59.947+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	127	\N	http://localhost:8055
624	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:36:59.954+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	128	\N	http://localhost:8055
625	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:36:59.959+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	129	\N	http://localhost:8055
626	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:36:59.966+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	EmailForm	\N	http://localhost:8055
627	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:37:10.278+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	130	\N	http://localhost:8055
628	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:37:20.102+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	131	\N	http://localhost:8055
629	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:37:20.201+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	132	\N	http://localhost:8055
630	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:37:20.207+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	EmailForm_translations	\N	http://localhost:8055
631	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:37:20.274+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	133	\N	http://localhost:8055
632	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:37:20.342+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	134	\N	http://localhost:8055
633	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:37:37.645+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	135	\N	http://localhost:8055
634	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:37:51.573+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	136	\N	http://localhost:8055
635	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:38:55.253+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	137	\N	http://localhost:8055
636	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:39:05.592+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	138	\N	http://localhost:8055
637	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:39:19.215+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	EmailForm	\N	http://localhost:8055
638	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:41:52.488+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	139	\N	http://localhost:8055
639	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:41:52.495+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	FormFields	\N	http://localhost:8055
640	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:43:03.669+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	140	\N	http://localhost:8055
641	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:47:56.768+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	141	\N	http://localhost:8055
642	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:47:56.999+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	142	\N	http://localhost:8055
643	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:47:57.007+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	EmailForm_FormFields	\N	http://localhost:8055
644	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:47:57.079+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	143	\N	http://localhost:8055
645	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:47:57.16+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	144	\N	http://localhost:8055
646	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:48:36.392+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	145	\N	http://localhost:8055
647	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:48:36.502+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	146	\N	http://localhost:8055
648	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:48:36.51+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_collections	EmailForm_FormFields_translations	\N	http://localhost:8055
649	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:48:36.585+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	147	\N	http://localhost:8055
650	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:48:36.659+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	148	\N	http://localhost:8055
651	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:48:54.534+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	149	\N	http://localhost:8055
652	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:50:28.736+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	141	\N	http://localhost:8055
653	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.138+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	FormFields	1	\N	http://localhost:8055
654	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.148+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_FormFields_translations	1	\N	http://localhost:8055
655	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.155+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_FormFields_translations	2	\N	http://localhost:8055
656	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.162+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_FormFields	1	\N	http://localhost:8055
657	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.173+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	FormFields	2	\N	http://localhost:8055
658	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.182+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_FormFields_translations	3	\N	http://localhost:8055
659	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.19+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_FormFields_translations	4	\N	http://localhost:8055
660	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.199+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_FormFields	2	\N	http://localhost:8055
661	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.213+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_translations	1	\N	http://localhost:8055
662	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.222+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_translations	2	\N	http://localhost:8055
663	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:57:39.227+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm	1	\N	http://localhost:8055
664	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:58:16.931+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	141	\N	http://localhost:8055
665	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 14:59:39.648+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	141	\N	http://localhost:8055
666	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:03:01.239+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	145	\N	http://localhost:8055
667	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:04:01.963+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	145	\N	http://localhost:8055
668	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:04:44.425+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	145	\N	http://localhost:8055
669	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:06:44.621+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm	1	\N	http://localhost:8055
670	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:07:25.926+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	131	\N	http://localhost:8055
671	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:10:16.932+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	150	\N	http://localhost:8055
672	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:11:09.094+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	151	\N	http://localhost:8055
673	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:11:22.398+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm	1	\N	http://localhost:8055
674	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:14:02.503+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	152	\N	http://localhost:8055
675	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:14:19.434+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
676	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:27:14.317+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	153	\N	http://localhost:8055
677	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:27:46.287+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	154	\N	http://localhost:8055
678	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:28:06.108+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	154	\N	http://localhost:8055
679	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:28:22.221+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm	1	\N	http://localhost:8055
680	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:28:22.247+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	city	2	\N	http://localhost:8055
681	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:35:44.454+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	57	\N	http://localhost:8055
682	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:35:45.509+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	58	\N	http://localhost:8055
683	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:35:46.564+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	59	\N	http://localhost:8055
684	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:35:47.6+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	60	\N	http://localhost:8055
685	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 15:35:49.179+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	61	\N	http://localhost:8055
686	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:17:18.885+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_fields	140	\N	http://localhost:8055
687	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:17:31.195+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	FormFields	3	\N	http://localhost:8055
688	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:17:56.987+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	FormFields	4	\N	http://localhost:8055
689	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:17:57.005+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_FormFields_translations	5	\N	http://localhost:8055
690	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:17:57.011+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm_FormFields	3	\N	http://localhost:8055
691	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:17:57.019+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm	1	\N	http://localhost:8055
692	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:30:42.724+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
693	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:34:08.06+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
694	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:38:40.401+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
695	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:38:40.425+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
696	run	\N	2024-02-03 17:38:58.369+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
697	run	\N	2024-02-03 17:40:58.23+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
698	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:41:04.344+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
699	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:41:04.374+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
700	run	\N	2024-02-03 17:41:18.511+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
701	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:44:26.84+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
702	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:44:26.874+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
703	run	\N	2024-02-03 17:44:29.12+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
704	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:46:15.73+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
705	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:46:15.76+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
706	run	\N	2024-02-03 17:46:17.51+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
707	run	\N	2024-02-03 17:49:00.854+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
708	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:52:25.553+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	62	\N	http://localhost:8055
709	run	\N	2024-02-03 17:52:29.128+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
710	run	\N	2024-02-03 17:52:31.713+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
711	run	\N	2024-02-03 17:52:32.808+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
712	run	\N	2024-02-03 17:52:33.79+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
713	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:52:44.672+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	63	\N	http://localhost:8055
714	run	\N	2024-02-03 17:52:47.062+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
715	run	\N	2024-02-03 17:52:47.881+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
716	run	\N	2024-02-03 17:52:48.412+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
717	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:52:54.369+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	63	\N	http://localhost:8055
718	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:52:55.664+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	62	\N	http://localhost:8055
719	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:53:03.482+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	64	\N	http://localhost:8055
720	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:53:06.409+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	65	\N	http://localhost:8055
721	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 17:53:07.487+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	66	\N	http://localhost:8055
722	run	\N	2024-02-03 17:53:12.352+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
723	run	\N	2024-02-03 18:02:03.693+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
724	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:02:58.502+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	67	\N	http://localhost:8055
725	run	\N	2024-02-03 18:03:07.42+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
726	run	\N	2024-02-03 18:06:32.088+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
727	run	\N	2024-02-03 18:07:34.421+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
728	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:07:39.796+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
729	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:07:39.809+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
730	run	\N	2024-02-03 18:07:41.878+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
731	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:08:50.666+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
732	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:08:50.701+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
733	run	\N	2024-02-03 18:08:52.694+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
734	run	\N	2024-02-03 18:08:53.452+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
735	run	\N	2024-02-03 18:08:53.604+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
736	run	\N	2024-02-03 18:08:53.714+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
737	run	\N	2024-02-03 18:08:53.877+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
738	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:10:10.493+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
739	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:10:10.525+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
740	run	\N	2024-02-03 18:10:12.53+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
741	run	\N	2024-02-03 18:10:13.192+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
742	run	\N	2024-02-03 18:10:13.317+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
743	run	\N	2024-02-03 18:10:13.458+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
744	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:10:55.603+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
745	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:10:55.628+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
746	run	\N	2024-02-03 18:10:57.5+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
747	run	\N	2024-02-03 18:10:57.64+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
748	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:11:28.992+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
749	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:11:29.026+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
750	run	\N	2024-02-03 18:11:32.222+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
751	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:11:51.657+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
752	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:11:51.686+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
753	run	\N	2024-02-03 18:11:54.005+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
754	run	\N	2024-02-03 18:11:54.211+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
755	run	\N	2024-02-03 18:11:54.374+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
756	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:12:21.442+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
757	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:12:21.471+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
758	run	\N	2024-02-03 18:12:23.303+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
759	run	\N	2024-02-03 18:12:23.417+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
760	run	\N	2024-02-03 18:12:23.527+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
761	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:12:43.986+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
762	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:12:44.018+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
763	run	\N	2024-02-03 18:12:45.997+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
764	run	\N	2024-02-03 18:12:46.148+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
765	run	\N	2024-02-03 18:12:46.281+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
766	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:13:06.53+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
767	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:13:06.56+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
768	run	\N	2024-02-03 18:13:09.375+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
769	run	\N	2024-02-03 18:13:09.501+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
770	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:14:08.898+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
771	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:14:08.927+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
772	run	\N	2024-02-03 18:14:13.334+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
773	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:15:07.505+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	\N	http://localhost:8055
774	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:15:07.534+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:8055
775	run	\N	2024-02-03 18:15:09.866+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
776	run	\N	2024-02-03 18:15:10.633+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
777	run	\N	2024-02-03 18:18:55.828+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
778	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:19:52.673+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	67	\N	http://localhost:8055
779	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:19:54.301+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	64	\N	http://localhost:8055
780	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:19:56.084+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	56	\N	http://localhost:8055
781	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:20:02.528+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	66	\N	http://localhost:8055
782	delete	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:20:05.721+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_permissions	65	\N	http://localhost:8055
783	run	\N	2024-02-03 18:20:08.606+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
784	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:32:52.594+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
785	run	\N	2024-02-03 18:32:57.058+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
786	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:34:37.795+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm	1	\N	http://localhost:8055
787	run	\N	2024-02-03 18:35:07.477+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
788	run	\N	2024-02-03 18:36:00.216+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
789	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:44:13.744+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
790	run	\N	2024-02-03 18:44:21.571+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
791	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-03 18:44:41.357+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	EmailForm	1	\N	http://localhost:8055
792	run	\N	2024-02-03 18:44:53.111+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	\N	http://localhost:1234
793	login	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:17:31.324+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_users	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	http://localhost:8055
797	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:17:57.863+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	157	\N	http://localhost:8055
798	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:17:57.869+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_collections	home_translations	\N	http://localhost:8055
799	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:17:57.909+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	158	\N	http://localhost:8055
808	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-10 06:59:56.258+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	home	1	\N	http://localhost:8055
794	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:17:46.97+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	155	\N	http://localhost:8055
795	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:17:46.981+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_collections	home	\N	http://localhost:8055
809	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-10 07:03:31.142+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	162	\N	http://localhost:8055
796	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:17:57.791+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	156	\N	http://localhost:8055
800	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:17:57.947+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	159	\N	http://localhost:8055
810	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-10 07:04:29.984+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	home_translations	1	\N	http://localhost:8055
811	update	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-10 07:04:29.99+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	home	1	\N	http://localhost:8055
801	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:18:09.065+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	160	\N	http://localhost:8055
803	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:19:12.381+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	162	\N	http://localhost:8055
802	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:18:19.4+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_fields	161	\N	http://localhost:8055
804	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:19:22.235+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_permissions	68	\N	http://localhost:8055
805	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:19:23.86+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	directus_permissions	69	\N	http://localhost:8055
806	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:20:51.759+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	home_translations	1	\N	http://localhost:8055
807	create	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 12:20:51.764+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	home	1	\N	http://localhost:8055
\.


--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
languages	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
event_translations	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
event	\N	\N	{{translations.name}}	f	f	\N	\N	t	archived	draft	\N	all	\N	\N	2	\N	open	\N	f
city_translations	import_export	\N	{{name}}	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
city	\N	\N	{{translations.name}}	f	f	\N	\N	t	archived	draft	\N	all	\N	\N	1	\N	open	\N	f
countries	\N	\N	{{translations.name}}	f	f	\N	\N	t	archived	draft	\N	all	\N	\N	\N	\N	open	\N	f
countries_translations	import_export	\N	{{name}}	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
SupportLinks_translations	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
SupportLinks	\N	\N	{{translations.title}}	f	f	\N	\N	t	archived	draft	\N	all	\N	\N	\N	\N	open	\N	f
CustomSections_translations	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
CustomSections	\N	\N	\N	f	f	\N	\N	t	archived	draft	\N	all	\N	\N	\N	\N	open	\N	f
city_files	import_export	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
EmailForm_translations	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
EmailForm	\N	\N	\N	f	f	\N	\N	t	archived	draft	\N	all	\N	\N	\N	\N	open	\N	f
FormFields	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
EmailForm_FormFields	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
EmailForm_FormFields_translations	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
home	\N	\N	\N	f	t	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
home_translations	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
\.


--
-- Data for Name: directus_dashboards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
\.


--
-- Data for Name: directus_extensions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_extensions (name, enabled) FROM stdin;
\.


--
-- Data for Name: directus_fields; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) FROM stdin;
2	city	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
3	city	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
4	city	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
15	languages	code	\N	input	\N	\N	\N	f	f	1	full	\N	\N	\N	f	\N	\N	\N
16	languages	name	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	t	\N	\N	\N
18	event_translations	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
19	event_translations	event_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
20	event_translations	languages_code	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
21	event_translations	name	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
22	event_translations	description	\N	input-rich-text-html	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
38	countries_translations	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
39	countries_translations	countries_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
17	event	translations	translations	translations	{"defaultLanguage":"de","languageField":"name"}	translations	{"template":"{{name}}"}	f	f	1	full	\N	\N	\N	f	\N	\N	\N
40	countries_translations	languages_code	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
7	event	id	\N	input	\N	\N	\N	t	f	3	full	\N	\N	\N	f	\N	\N	\N
8	event	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	4	full	\N	\N	\N	f	\N	\N	\N
9	event	sort	\N	input	\N	\N	\N	f	t	5	full	\N	\N	\N	f	\N	\N	\N
10	event	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	6	half	\N	\N	\N	f	\N	\N	\N
13	event	teaser	file	file-image	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
24	city_translations	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
25	city_translations	city_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
26	city_translations	languages_code	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
27	city_translations	name	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
29	city_translations	page_title	\N	input	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
30	city_translations	description	\N	input-rich-text-html	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
31	city_translations	sponsors	\N	input-multiline	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
41	countries_translations	name	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
56	SupportLinks_translations	languages_code	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
37	countries	translations	translations	translations	{"defaultLanguage":"de"}	translations	{"template":"{{name}}","defaultLanguage":"de"}	f	f	6	full	\N	\N	\N	f	\N	\N	\N
42	countries	cities	m2o	select-dropdown-m2o	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
57	SupportLinks_translations	title	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
1	city	id	\N	input	\N	\N	\N	t	f	1	full	\N	\N	\N	f	\N	\N	\N
23	city	translations	translations	translations	{"defaultLanguage":"de"}	translations	{"template":"{{name}}","languageField":"code"}	f	f	7	full	\N	\N	\N	f	\N	\N	\N
44	city	gallery	files	files	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
45	city_files	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
46	city_files	city_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
14	event	city	m2o	select-dropdown-m2o	{"template":"{{translations.name}}"}	related-values	{"template":"{{translations.name}}"}	f	f	2	full	\N	\N	\N	t	\N	\N	\N
32	countries	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
33	countries	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
34	countries	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
35	countries	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
36	countries	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
47	city_files	directus_files_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
48	SupportLinks	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
49	SupportLinks	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
50	SupportLinks	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
51	SupportLinks	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
52	SupportLinks	link	\N	input	\N	\N	\N	f	f	5	full	\N	\N	\N	t	\N	\N	\N
54	SupportLinks_translations	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
55	SupportLinks_translations	SupportLinks_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
58	SupportLinks_translations	description	\N	input-multiline	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
60	SupportLinks_translations	linkText	\N	input	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
53	SupportLinks	translations	translations	translations	{"languageField":"code","defaultLanguage":"de"}	translations	{"template":"{{title}}","defaultLanguage":"de","languageField":"code"}	f	f	6	full	\N	\N	\N	f	\N	\N	\N
63	city	supportlinks	o2m	list-o2m	\N	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
64	city	events	o2m	list-o2m	\N	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
66	event	link	\N	input	\N	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
67	event_translations	location	\N	input	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
68	event_translations	customDates	\N	input-multiline	\N	\N	\N	f	f	7	full	\N	\N	\N	t	\N	\N	\N
62	SupportLinks	city	m2o	select-dropdown-m2o	\N	related-values	{"template":"{{translations.name}}"}	f	f	7	full	\N	\N	\N	f	\N	\N	\N
69	CustomSections	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
129	EmailForm	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
70	CustomSections	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
71	CustomSections	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
72	CustomSections	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
73	CustomSections	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
75	CustomSections	translations	translations	translations	{"languageField":"code","defaultLanguage":"de"}	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
76	CustomSections_translations	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
77	CustomSections_translations	CustomSections_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
78	CustomSections_translations	languages_code	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
79	CustomSections_translations	title	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
80	CustomSections_translations	description	\N	input-rich-text-html	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
81	CustomSections	link	\N	input	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
82	CustomSections	city	m2o	select-dropdown-m2o	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
84	CustomSections_translations	linkText	\N	input	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
83	city	customSections	o2m	list-o2m	{"template":"{{translations.title}}"}	related-values	{"template":"{{translations.title}}"}	f	f	11	full	\N	\N	\N	f	\N	\N	\N
125	EmailForm	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
126	EmailForm	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
127	EmailForm	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
128	EmailForm	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	4	half	\N	\N	\N	f	\N	\N	\N
130	EmailForm	emailTo	\N	input	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
132	EmailForm_translations	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
133	EmailForm_translations	EmailForm_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
134	EmailForm_translations	languages_code	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
135	EmailForm_translations	subject	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
136	EmailForm_translations	title	\N	input	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
137	EmailForm_translations	description	\N	input-multiline	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
138	EmailForm_translations	submitText	\N	input	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
139	FormFields	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
142	EmailForm_FormFields	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
143	EmailForm_FormFields	EmailForm_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
144	EmailForm_FormFields	FormFields_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
146	EmailForm_FormFields_translations	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
147	EmailForm_FormFields_translations	EmailForm_FormFields_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
148	EmailForm_FormFields_translations	languages_code	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
149	EmailForm_FormFields_translations	label	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	t	\N	\N	\N
154	city	emailForm	o2m	list-o2m	\N	related-values	{"template":"{{translations.title}}"}	f	f	12	full	\N	\N	\N	f	\N	\N	\N
141	EmailForm	fields	m2m	list-m2m	{"junctionFieldLocation":"top","allowDuplicates":true,"template":"{{translations.label}}"}	related-values	{"template":"{{translations.label}}"}	f	f	8	full	\N	\N	\N	t	\N	\N	\N
140	FormFields	type	\N	select-dropdown	{"choices":[{"text":"number","value":"number"},{"text":"text","value":"text"},{"text":"checkbox","value":"checkbox"}]}	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
145	EmailForm_FormFields	translations	translations	translations	{"languageField":"code","defaultLanguage":"de","userLanguage":true}	translations	{"userLanguage":true,"defaultLanguage":"de","template":"{{label}}","languageField":"code"}	f	f	4	full	\N	\N	\N	f	\N	\N	\N
131	EmailForm	translations	translations	translations	{"defaultLanguage":"de","languageField":"code"}	translations	{"defaultLanguage":"de","languageField":"code","userLanguage":true,"template":"{{title}}"}	f	f	7	full	\N	\N	\N	f	\N	\N	\N
153	EmailForm	city	m2o	select-dropdown-m2o	\N	\N	\N	f	f	9	full	\N	\N	\N	t	\N	\N	\N
155	home	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
156	home	translations	translations	translations	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
157	home_translations	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
158	home_translations	home_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
159	home_translations	languages_code	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
160	home_translations	titel	\N	input	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
161	home_translations	description	\N	input-multiline	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
162	home_translations	contentbox	cast-json	list	{"fields":[{"field":"title","name":"title","type":"string","meta":{"field":"title","type":"string","interface":"input"}},{"field":"description","name":"description","type":"text","meta":{"field":"description","type":"text","interface":"input-rich-text-html"}},{"field":"width","name":"width","type":"integer","meta":{"field":"width","type":"integer","interface":"select-dropdown","options":{"choices":[{"text":"Full width","value":"1"},{"text":"Half width","value":"0.5"}]}}}]}	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
\.


--
-- Data for Name: directus_files; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, uploaded_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata) FROM stdin;
b8438249-863c-449a-8fe5-568f4e47b67b	local	b8438249-863c-449a-8fe5-568f4e47b67b.jpg	bern_lesen-schreiben-03.jpg	Bern Lesen Schreiben 03	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.464589+00	\N	2024-02-02 14:54:42.519+00	\N	145234	750	750	\N	\N	\N	\N	\N	{}
4ddcfe09-9d8c-4faf-875b-f4badd641872	local	4ddcfe09-9d8c-4faf-875b-f4badd641872.jpg	bern_lesen-schreiben-02.jpg	Bern Lesen Schreiben 02	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.465119+00	\N	2024-02-02 14:54:42.522+00	\N	112678	750	750	\N	\N	\N	\N	\N	{}
3fe2f5dd-65dd-4441-b0d6-fe6b00e20b7e	local	3fe2f5dd-65dd-4441-b0d6-fe6b00e20b7e.jpg	bern_lesen-schreiben-06.jpg	Bern Lesen Schreiben 06	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.469792+00	\N	2024-02-02 14:54:42.524+00	\N	146581	750	750	\N	\N	\N	\N	\N	{}
8690b83f-d3a7-4c50-a73d-ca1457c60576	local	8690b83f-d3a7-4c50-a73d-ca1457c60576.jpg	bern_lesen-schreiben-01.jpg	Bern Lesen Schreiben 01	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.470336+00	\N	2024-02-02 14:54:42.527+00	\N	198041	1000	714	\N	\N	\N	\N	\N	{}
a395308d-6b1a-4db4-8b3c-c39009964fbf	local	a395308d-6b1a-4db4-8b3c-c39009964fbf.jpg	bern_lesen-schreiben-09.jpg	Bern Lesen Schreiben 09	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:42.91284+00	\N	2024-02-02 14:54:42.948+00	\N	425117	1400	1000	\N	\N	\N	\N	\N	{}
57f3e7e0-db45-42fc-ab87-af4daa0bb144	local	57f3e7e0-db45-42fc-ab87-af4daa0bb144.jpg	bern_lesen-schreiben-10.jpg	Bern Lesen Schreiben 10	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:54:57.241269+00	\N	2024-02-02 14:54:57.303+00	\N	526139	1400	1000	\N	\N	\N	\N	\N	{}
a6d8e567-36f1-421a-ac23-5e549a84d564	local	a6d8e567-36f1-421a-ac23-5e549a84d564.jpg	CDE_CO2N_MFR8782.jpg	Cde C O2 N Mf R8782	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.120715+00	\N	2024-02-02 14:55:06.179+00	\N	419281	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.2,"ExposureTime":0.01,"FocalLength":50,"ISO":50}}
92930338-0f26-4953-9074-a7bbad626063	local	92930338-0f26-4953-9074-a7bbad626063.jpg	CDE_CO2N_MFR8686.jpg	Cde C O2 N Mf R8686	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.095816+00	\N	2024-02-02 14:55:06.18+00	\N	414567	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.3,"ExposureTime":0.004,"FocalLength":50,"ISO":400}}
3785366c-a15c-4648-9398-be2b068af3ac	local	3785366c-a15c-4648-9398-be2b068af3ac.jpg	CDE_CO2N_MFR8794.jpg	Cde C O2 N Mf R8794	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.09505+00	\N	2024-02-02 14:55:06.183+00	\N	554710	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.2,"ExposureTime":0.005,"FocalLength":50,"ISO":50}}
f3e9f151-89f9-4521-8682-719049e2066d	local	f3e9f151-89f9-4521-8682-719049e2066d.jpg	OK_BNN_MFR5701.jpg	Ok Bnn Mf R5701	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.145949+00	\N	2024-02-02 14:55:06.21+00	\N	477344	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.8,"ExposureTime":0.01,"FocalLength":35,"ISO":500}}
f97ece40-8c83-445f-84aa-296470d9156c	local	f97ece40-8c83-445f-84aa-296470d9156c.jpg	CDE_CO2N_MFR2867.jpg	Cde C O2 N Mf R2867	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.115456+00	\N	2024-02-02 14:55:06.211+00	\N	965249	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 7_2"},"exif":{"FNumber":5.6,"ExposureTime":0.07692307692307693,"FocalLength":25.5,"ISO":160}}
be7798e7-4a82-476d-9337-efb46d483803	local	be7798e7-4a82-476d-9337-efb46d483803.jpg	OK_BNN_MFR5703.jpg	Ok Bnn Mf R5703	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.613407+00	\N	2024-02-02 14:55:06.69+00	\N	422100	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.8,"ExposureTime":0.000625,"FocalLength":35,"ISO":500}}
9624d4fa-f777-4d8c-a25a-0c44d4f3335d	local	9624d4fa-f777-4d8c-a25a-0c44d4f3335d.jpg	OK_BNN_MFR5706.jpg	Ok Bnn Mf R5706	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.613006+00	\N	2024-02-02 14:55:06.695+00	\N	607145	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.8,"ExposureTime":0.00003125,"FocalLength":85,"ISO":500}}
248abf34-2e4e-43f1-9257-c6ec55cb1e83	local	248abf34-2e4e-43f1-9257-c6ec55cb1e83.jpg	OK_BNN_MFR5772.jpg	Ok Bnn Mf R5772	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.620577+00	\N	2024-02-02 14:55:06.699+00	\N	576622	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.8,"ExposureTime":0.000125,"FocalLength":35,"ISO":200}}
a1140a22-23f1-4cdd-b36e-a892b4ff7e48	local	a1140a22-23f1-4cdd-b36e-a892b4ff7e48.jpg	OK_BNN_MFR5718.jpg	Ok Bnn Mf R5718	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.619392+00	\N	2024-02-02 14:55:06.7+00	\N	680042	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.8,"ExposureTime":0.0004,"FocalLength":35,"ISO":50}}
c0ca15c3-237b-4903-8bdb-bb26785bb930	local	c0ca15c3-237b-4903-8bdb-bb26785bb930.jpg	OK_BNN_MFR5735.jpg	Ok Bnn Mf R5735	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:06.619871+00	\N	2024-02-02 14:55:06.728+00	\N	777482	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.8,"ExposureTime":0.00015625,"FocalLength":35,"ISO":32}}
5e740af8-492d-4540-b959-ae89e0576ce3	local	5e740af8-492d-4540-b959-ae89e0576ce3.jpg	OK_BNN_MFR5788.jpg	Ok Bnn Mf R5788	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:07.098258+00	\N	2024-02-02 14:55:07.133+00	\N	568831	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.8,"ExposureTime":0.00015625,"FocalLength":35,"ISO":64}}
979419ac-8085-42df-a425-af8c952f7840	local	979419ac-8085-42df-a425-af8c952f7840.jpg	OK_BNN_MFR5724.jpg	Ok Bnn Mf R5724	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:07.097993+00	\N	2024-02-02 14:55:07.134+00	\N	838179	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 9"},"exif":{"FNumber":1.8,"ExposureTime":0.002,"FocalLength":35,"ISO":32}}
c64a680d-6535-47c6-a527-0808229d2fcf	local	c64a680d-6535-47c6-a527-0808229d2fcf.jpg	CDE_CO2N_MFR2853.jpg	Cde C O2 N Mf R2853	image/jpeg	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-02 14:55:07.102321+00	\N	2024-02-02 14:55:07.136+00	\N	709020	1200	800	\N	\N	\N	\N	\N	{"ifd0":{"Make":"NIKON CORPORATION","Model":"NIKON Z 7_2"},"exif":{"FNumber":16,"ExposureTime":0.06666666666666667,"FocalLength":42,"ISO":31}}
\.


--
-- Data for Name: directus_flows; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created) FROM stdin;
fdcaf62f-a842-492d-9e73-c719f558a149	Send Email	alternate_email	\N	Sends an email	active	webhook	all	{"method":"POST"}	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	2024-02-03 17:30:42.718+00	db513aee-cd3a-47a9-95e5-a98f1cc92d13
\.


--
-- Data for Name: directus_folders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_folders (id, name, parent) FROM stdin;
\.


--
-- Data for Name: directus_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
20201028A	Remove Collection Foreign Keys	2024-01-20 13:39:03.595285+00
20201029A	Remove System Relations	2024-01-20 13:39:03.608431+00
20201029B	Remove System Collections	2024-01-20 13:39:03.620341+00
20201029C	Remove System Fields	2024-01-20 13:39:03.643883+00
20201105A	Add Cascade System Relations	2024-01-20 13:39:03.73052+00
20201105B	Change Webhook URL Type	2024-01-20 13:39:03.745771+00
20210225A	Add Relations Sort Field	2024-01-20 13:39:03.759681+00
20210304A	Remove Locked Fields	2024-01-20 13:39:03.767076+00
20210312A	Webhooks Collections Text	2024-01-20 13:39:03.781417+00
20210331A	Add Refresh Interval	2024-01-20 13:39:03.788361+00
20210415A	Make Filesize Nullable	2024-01-20 13:39:03.805635+00
20210416A	Add Collections Accountability	2024-01-20 13:39:03.816195+00
20210422A	Remove Files Interface	2024-01-20 13:39:03.822579+00
20210506A	Rename Interfaces	2024-01-20 13:39:03.882742+00
20210510A	Restructure Relations	2024-01-20 13:39:03.923199+00
20210518A	Add Foreign Key Constraints	2024-01-20 13:39:03.941554+00
20210519A	Add System Fk Triggers	2024-01-20 13:39:03.999801+00
20210521A	Add Collections Icon Color	2024-01-20 13:39:04.006424+00
20210525A	Add Insights	2024-01-20 13:39:04.047471+00
20210608A	Add Deep Clone Config	2024-01-20 13:39:04.054193+00
20210626A	Change Filesize Bigint	2024-01-20 13:39:04.081575+00
20210716A	Add Conditions to Fields	2024-01-20 13:39:04.088087+00
20210721A	Add Default Folder	2024-01-20 13:39:04.102323+00
20210802A	Replace Groups	2024-01-20 13:39:04.114767+00
20210803A	Add Required to Fields	2024-01-20 13:39:04.122007+00
20210805A	Update Groups	2024-01-20 13:39:04.132255+00
20210805B	Change Image Metadata Structure	2024-01-20 13:39:04.142991+00
20210811A	Add Geometry Config	2024-01-20 13:39:04.149777+00
20210831A	Remove Limit Column	2024-01-20 13:39:04.156112+00
20210903A	Add Auth Provider	2024-01-20 13:39:04.192456+00
20210907A	Webhooks Collections Not Null	2024-01-20 13:39:04.20829+00
20210910A	Move Module Setup	2024-01-20 13:39:04.22014+00
20210920A	Webhooks URL Not Null	2024-01-20 13:39:04.251083+00
20210924A	Add Collection Organization	2024-01-20 13:39:04.2629+00
20210927A	Replace Fields Group	2024-01-20 13:39:04.292826+00
20210927B	Replace M2M Interface	2024-01-20 13:39:04.299073+00
20210929A	Rename Login Action	2024-01-20 13:39:04.304404+00
20211007A	Update Presets	2024-01-20 13:39:04.320389+00
20211009A	Add Auth Data	2024-01-20 13:39:04.327655+00
20211016A	Add Webhook Headers	2024-01-20 13:39:04.334362+00
20211103A	Set Unique to User Token	2024-01-20 13:39:04.345335+00
20211103B	Update Special Geometry	2024-01-20 13:39:04.351736+00
20211104A	Remove Collections Listing	2024-01-20 13:39:04.358532+00
20211118A	Add Notifications	2024-01-20 13:39:04.387423+00
20211211A	Add Shares	2024-01-20 13:39:04.425171+00
20211230A	Add Project Descriptor	2024-01-20 13:39:04.431996+00
20220303A	Remove Default Project Color	2024-01-20 13:39:04.451123+00
20220308A	Add Bookmark Icon and Color	2024-01-20 13:39:04.458291+00
20220314A	Add Translation Strings	2024-01-20 13:39:04.464757+00
20220322A	Rename Field Typecast Flags	2024-01-20 13:39:04.477669+00
20220323A	Add Field Validation	2024-01-20 13:39:04.485589+00
20220325A	Fix Typecast Flags	2024-01-20 13:39:04.497771+00
20220325B	Add Default Language	2024-01-20 13:39:04.517767+00
20220402A	Remove Default Value Panel Icon	2024-01-20 13:39:04.535494+00
20220429A	Add Flows	2024-01-20 13:39:04.610162+00
20220429B	Add Color to Insights Icon	2024-01-20 13:39:04.61653+00
20220429C	Drop Non Null From IP of Activity	2024-01-20 13:39:04.622841+00
20220429D	Drop Non Null From Sender of Notifications	2024-01-20 13:39:04.628847+00
20220614A	Rename Hook Trigger to Event	2024-01-20 13:39:04.63422+00
20220801A	Update Notifications Timestamp Column	2024-01-20 13:39:04.65082+00
20220802A	Add Custom Aspect Ratios	2024-01-20 13:39:04.657759+00
20220826A	Add Origin to Accountability	2024-01-20 13:39:04.666349+00
20230401A	Update Material Icons	2024-01-20 13:39:04.684316+00
20230525A	Add Preview Settings	2024-01-20 13:39:04.690727+00
20230526A	Migrate Translation Strings	2024-01-20 13:39:04.717342+00
20230721A	Require Shares Fields	2024-01-20 13:39:04.731802+00
20230823A	Add Content Versioning	2024-01-20 13:39:04.767656+00
20230927A	Themes	2024-01-20 13:39:04.800755+00
20231009A	Update CSV Fields to Text	2024-01-20 13:39:04.811945+00
20231009B	Update Panel Options	2024-01-20 13:39:04.818519+00
20231010A	Add Extensions	2024-01-20 13:39:04.829862+00
\.


--
-- Data for Name: directus_notifications; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
\.


--
-- Data for Name: directus_operations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	Send Email	mail_vy7n5	mail	19	1	{"subject":"{{$trigger.body.subject}}","body":"{{$trigger.body.values}}","to":"{{$trigger.body.emailTo}}"}	\N	\N	fdcaf62f-a842-492d-9e73-c719f558a149	2024-02-03 17:38:40.394+00	db513aee-cd3a-47a9-95e5-a98f1cc92d13
\.


--
-- Data for Name: directus_panels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields) FROM stdin;
1	68c58399-f145-49aa-9db1-ee94c793b427	directus_files	create	{}	\N	\N	*
2	68c58399-f145-49aa-9db1-ee94c793b427	directus_files	read	{}	\N	\N	*
3	68c58399-f145-49aa-9db1-ee94c793b427	directus_files	update	{}	\N	\N	*
4	68c58399-f145-49aa-9db1-ee94c793b427	directus_files	delete	{}	\N	\N	*
5	68c58399-f145-49aa-9db1-ee94c793b427	directus_dashboards	create	{}	\N	\N	*
6	68c58399-f145-49aa-9db1-ee94c793b427	directus_dashboards	read	{}	\N	\N	*
7	68c58399-f145-49aa-9db1-ee94c793b427	directus_dashboards	update	{}	\N	\N	*
8	68c58399-f145-49aa-9db1-ee94c793b427	directus_dashboards	delete	{}	\N	\N	*
9	68c58399-f145-49aa-9db1-ee94c793b427	directus_panels	create	{}	\N	\N	*
10	68c58399-f145-49aa-9db1-ee94c793b427	directus_panels	read	{}	\N	\N	*
11	68c58399-f145-49aa-9db1-ee94c793b427	directus_panels	update	{}	\N	\N	*
12	68c58399-f145-49aa-9db1-ee94c793b427	directus_panels	delete	{}	\N	\N	*
13	68c58399-f145-49aa-9db1-ee94c793b427	directus_folders	create	{}	\N	\N	*
14	68c58399-f145-49aa-9db1-ee94c793b427	directus_folders	read	{}	\N	\N	*
15	68c58399-f145-49aa-9db1-ee94c793b427	directus_folders	update	{}	\N	\N	*
16	68c58399-f145-49aa-9db1-ee94c793b427	directus_folders	delete	{}	\N	\N	\N
17	68c58399-f145-49aa-9db1-ee94c793b427	directus_users	read	{}	\N	\N	*
18	68c58399-f145-49aa-9db1-ee94c793b427	directus_users	update	{"id":{"_eq":"$CURRENT_USER"}}	\N	\N	first_name,last_name,email,password,location,title,description,avatar,language,appearance,theme_light,theme_dark,theme_light_overrides,theme_dark_overrides,tfa_secret
19	68c58399-f145-49aa-9db1-ee94c793b427	directus_roles	read	{}	\N	\N	*
20	68c58399-f145-49aa-9db1-ee94c793b427	directus_shares	read	{"_or":[{"role":{"_eq":"$CURRENT_ROLE"}},{"role":{"_null":true}}]}	\N	\N	*
21	68c58399-f145-49aa-9db1-ee94c793b427	directus_shares	create	{}	\N	\N	*
22	68c58399-f145-49aa-9db1-ee94c793b427	directus_shares	update	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*
23	68c58399-f145-49aa-9db1-ee94c793b427	directus_shares	delete	{"user_created":{"_eq":"$CURRENT_USER"}}	\N	\N	*
24	68c58399-f145-49aa-9db1-ee94c793b427	directus_flows	read	{"trigger":{"_eq":"manual"}}	\N	\N	id,status,name,icon,color,options,trigger
37	68c58399-f145-49aa-9db1-ee94c793b427	city	read	{}	{}	\N	*
35	68c58399-f145-49aa-9db1-ee94c793b427	event	read	{}	{}	\N	*
38	68c58399-f145-49aa-9db1-ee94c793b427	city	update	{"_and":[{"name":{"_contains":"Basel"}}]}	\N	\N	country,status
36	68c58399-f145-49aa-9db1-ee94c793b427	event	update	{"_and":[{"city":{"_eq":"1"}}]}	\N	\N	teaser,name,status,sort,description
33	68c58399-f145-49aa-9db1-ee94c793b427	event	create	\N	{"_and":[{"city":{"_eq":"1"}}]}	\N	status,sort,description,name,teaser,city
40	\N	city	read	{}	{}	\N	*
41	\N	event	read	{}	{}	\N	*
42	\N	city_translations	read	{}	{}	\N	*
43	\N	countries	read	{}	{}	\N	*
44	\N	countries_translations	read	{}	{}	\N	*
45	\N	event_translations	read	{}	{}	\N	*
46	\N	languages	read	{}	{}	\N	*
47	\N	SupportLinks	read	{}	{}	\N	*
48	\N	SupportLinks_translations	read	{}	{}	\N	*
50	\N	CustomSections	read	{}	{}	\N	*
51	\N	CustomSections_translations	read	{}	{}	\N	*
49	\N	city_files	read	{}	{}	\N	*
57	\N	EmailForm	read	{}	{}	\N	*
58	\N	EmailForm_FormFields	read	{}	{}	\N	*
59	\N	EmailForm_FormFields_translations	read	{}	{}	\N	*
60	\N	EmailForm_translations	read	{}	{}	\N	*
61	\N	FormFields	read	{}	{}	\N	*
68	\N	home	read	{}	{}	\N	*
69	\N	home_translations	read	{}	{}	\N	*
\.


--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
2	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	event	\N	\N	{"tabular":{"page":1}}	\N	10	\N	bookmark	\N
3	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	countries	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
4	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	SupportLinks	\N	\N	{"tabular":{"fields":["city","link","status","translations"]}}	{"tabular":{"widths":{"link":250}}}	\N	\N	bookmark	\N
5	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	directus_files	\N	cards	{"cards":{"sort":["-uploaded_on"],"page":1}}	{"cards":{"icon":"insert_drive_file","title":"{{ title }}","subtitle":"{{ type }} • {{ filesize }}","size":4,"imageFit":"crop"}}	\N	\N	bookmark	\N
1	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	languages	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
6	\N	db513aee-cd3a-47a9-95e5-a98f1cc92d13	\N	EmailForm	\N	\N	{"tabular":{"page":1,"fields":["emailTo","fields","status","translations"]}}	{"tabular":{"widths":{"translations":256.5}}}	\N	\N	bookmark	\N
\.


--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
1	event	teaser	directus_files	\N	\N	\N	\N	\N	nullify
3	event_translations	languages_code	languages	\N	\N	\N	event_id	\N	nullify
4	event_translations	event_id	event	translations	\N	\N	languages_code	\N	nullify
5	city_translations	languages_code	languages	\N	\N	\N	city_id	\N	nullify
6	city_translations	city_id	city	translations	\N	\N	languages_code	\N	nullify
7	countries_translations	languages_code	languages	\N	\N	\N	countries_id	\N	nullify
8	countries_translations	countries_id	countries	translations	\N	\N	languages_code	\N	nullify
9	countries	cities	city	\N	\N	\N	\N	\N	nullify
12	SupportLinks_translations	languages_code	languages	\N	\N	\N	SupportLinks_id	\N	nullify
13	SupportLinks_translations	SupportLinks_id	SupportLinks	translations	\N	\N	languages_code	\N	nullify
15	SupportLinks	city	city	supportlinks	\N	\N	\N	\N	nullify
2	event	city	city	events	\N	\N	\N	\N	nullify
16	CustomSections_translations	languages_code	languages	\N	\N	\N	CustomSections_id	\N	nullify
17	CustomSections_translations	CustomSections_id	CustomSections	translations	\N	\N	languages_code	\N	nullify
18	CustomSections	city	city	customSections	\N	\N	\N	\N	nullify
10	city_files	directus_files_id	directus_files	\N	\N	\N	city_id	\N	nullify
11	city_files	city_id	city	gallery	\N	\N	directus_files_id	\N	delete
29	EmailForm_translations	languages_code	languages	\N	\N	\N	EmailForm_id	\N	nullify
30	EmailForm_translations	EmailForm_id	EmailForm	translations	\N	\N	languages_code	\N	nullify
31	EmailForm_FormFields	FormFields_id	FormFields	\N	\N	\N	EmailForm_id	\N	nullify
32	EmailForm_FormFields	EmailForm_id	EmailForm	fields	\N	\N	FormFields_id	\N	nullify
33	EmailForm_FormFields_translations	languages_code	languages	\N	\N	\N	EmailForm_FormFields_id	\N	nullify
34	EmailForm_FormFields_translations	EmailForm_FormFields_id	EmailForm_FormFields	translations	\N	\N	languages_code	\N	nullify
38	EmailForm	city	city	emailForm	\N	\N	\N	\N	nullify
39	home_translations	languages_code	languages	\N	\N	\N	home_id	\N	nullify
40	home_translations	home_id	home	translations	\N	\N	languages_code	\N	nullify
\.


--
-- Data for Name: directus_revisions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
1	2	directus_fields	1	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"city"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"city"}	\N	\N
2	3	directus_fields	2	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"city"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"city"}	\N	\N
3	4	directus_fields	3	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"city"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"city"}	\N	\N
4	5	directus_fields	4	{"sort":4,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"city"}	{"sort":4,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"city"}	\N	\N
5	6	directus_collections	city	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"city"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"city"}	\N	\N
6	7	directus_fields	5	{"sort":5,"interface":"input","special":null,"collection":"city","field":"country"}	{"sort":5,"interface":"input","special":null,"collection":"city","field":"country"}	\N	\N
7	8	directus_fields	6	{"sort":6,"interface":"input","special":null,"collection":"city","field":"name"}	{"sort":6,"interface":"input","special":null,"collection":"city","field":"name"}	\N	\N
8	9	directus_collections	city	{"collection":"city","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"archive_field":null,"sort_field":null}	\N	\N
9	10	directus_roles	68c58399-f145-49aa-9db1-ee94c793b427	{"name":"Basel City Admin","admin_access":false,"app_access":true}	{"name":"Basel City Admin","admin_access":false,"app_access":true}	\N	\N
10	11	directus_permissions	1	{"collection":"directus_files","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_files","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
11	12	directus_permissions	2	{"collection":"directus_files","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_files","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
12	13	directus_permissions	3	{"collection":"directus_files","action":"update","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_files","action":"update","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
13	14	directus_permissions	4	{"collection":"directus_files","action":"delete","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_files","action":"delete","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
14	15	directus_permissions	5	{"collection":"directus_dashboards","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_dashboards","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
15	16	directus_permissions	6	{"collection":"directus_dashboards","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_dashboards","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
16	17	directus_permissions	7	{"collection":"directus_dashboards","action":"update","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_dashboards","action":"update","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
17	18	directus_permissions	8	{"collection":"directus_dashboards","action":"delete","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_dashboards","action":"delete","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
18	19	directus_permissions	9	{"collection":"directus_panels","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_panels","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
19	20	directus_permissions	10	{"collection":"directus_panels","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_panels","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
20	21	directus_permissions	11	{"collection":"directus_panels","action":"update","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_panels","action":"update","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
21	22	directus_permissions	12	{"collection":"directus_panels","action":"delete","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_panels","action":"delete","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
22	23	directus_permissions	13	{"collection":"directus_folders","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_folders","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
23	24	directus_permissions	14	{"collection":"directus_folders","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_folders","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
24	25	directus_permissions	15	{"collection":"directus_folders","action":"update","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_folders","action":"update","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
25	26	directus_permissions	16	{"collection":"directus_folders","action":"delete","permissions":{},"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_folders","action":"delete","permissions":{},"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
26	27	directus_permissions	17	{"collection":"directus_users","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_users","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
27	28	directus_permissions	18	{"collection":"directus_users","action":"update","permissions":{"id":{"_eq":"$CURRENT_USER"}},"fields":["first_name","last_name","email","password","location","title","description","avatar","language","appearance","theme_light","theme_dark","theme_light_overrides","theme_dark_overrides","tfa_secret"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_users","action":"update","permissions":{"id":{"_eq":"$CURRENT_USER"}},"fields":["first_name","last_name","email","password","location","title","description","avatar","language","appearance","theme_light","theme_dark","theme_light_overrides","theme_dark_overrides","tfa_secret"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
28	29	directus_permissions	19	{"collection":"directus_roles","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_roles","action":"read","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
29	30	directus_permissions	20	{"collection":"directus_shares","action":"read","permissions":{"_or":[{"role":{"_eq":"$CURRENT_ROLE"}},{"role":{"_null":true}}]},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_shares","action":"read","permissions":{"_or":[{"role":{"_eq":"$CURRENT_ROLE"}},{"role":{"_null":true}}]},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
30	31	directus_permissions	21	{"collection":"directus_shares","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_shares","action":"create","permissions":{},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
31	32	directus_permissions	22	{"collection":"directus_shares","action":"update","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_shares","action":"update","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
32	33	directus_permissions	23	{"collection":"directus_shares","action":"delete","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_shares","action":"delete","permissions":{"user_created":{"_eq":"$CURRENT_USER"}},"fields":["*"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
33	34	directus_permissions	24	{"collection":"directus_flows","action":"read","permissions":{"trigger":{"_eq":"manual"}},"fields":["id","status","name","icon","color","options","trigger"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"collection":"directus_flows","action":"read","permissions":{"trigger":{"_eq":"manual"}},"fields":["id","status","name","icon","color","options","trigger"],"role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
34	35	directus_permissions	25	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"create","fields":["*"],"permissions":{},"validation":{}}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"create","fields":["*"],"permissions":{},"validation":{}}	\N	\N
35	36	directus_permissions	27	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update","fields":["*"],"permissions":{},"validation":{}}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update","fields":["*"],"permissions":{},"validation":{}}	\N	\N
36	38	directus_permissions	28	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"delete","fields":["*"],"permissions":{},"validation":{}}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"delete","fields":["*"],"permissions":{},"validation":{}}	\N	\N
37	37	directus_permissions	26	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
38	39	directus_permissions	29	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"share","fields":["*"],"permissions":{},"validation":{}}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"share","fields":["*"],"permissions":{},"validation":{}}	\N	\N
39	45	directus_permissions	30	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"create","fields":["*"],"permissions":{},"validation":{}}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"create","fields":["*"],"permissions":{},"validation":{}}	\N	\N
40	46	city	1	{"country":"Switzerland","name":"Basel"}	{"country":"Switzerland","name":"Basel"}	\N	\N
41	47	city	2	{"country":"Switzerland","name":"Bern"}	{"country":"Switzerland","name":"Bern"}	\N	\N
42	48	directus_fields	7	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"event"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"event"}	\N	\N
65	73	directus_permissions	35	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"read"}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"read"}	\N	\N
66	74	directus_permissions	35	{"id":35,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"read","permissions":{"_and":[{"city":{"_eq":null}}]},"validation":null,"presets":null,"fields":null}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"read","permissions":{"_and":[{"city":{"_eq":null}}]},"validation":null,"presets":null,"fields":null}	\N	\N
67	75	directus_permissions	36	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"update"}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"update"}	\N	\N
185	217	directus_fields	40	{"sort":3,"hidden":true,"collection":"countries_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"countries_translations","field":"languages_code"}	\N	\N
43	49	directus_fields	8	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"event"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"event"}	\N	\N
44	50	directus_fields	9	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"event"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"event"}	\N	\N
45	51	directus_fields	10	{"sort":4,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"event"}	{"sort":4,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"event"}	\N	\N
46	52	directus_collections	event	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"event"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"event"}	\N	\N
47	53	directus_fields	11	{"sort":5,"interface":"input","special":null,"collection":"event","field":"name"}	{"sort":5,"interface":"input","special":null,"collection":"event","field":"name"}	\N	\N
48	54	directus_fields	12	{"sort":6,"interface":"input","special":null,"collection":"event","field":"description"}	{"sort":6,"interface":"input","special":null,"collection":"event","field":"description"}	\N	\N
49	55	directus_fields	13	{"sort":7,"interface":"file-image","special":["file"],"collection":"event","field":"teaser"}	{"sort":7,"interface":"file-image","special":["file"],"collection":"event","field":"teaser"}	\N	\N
50	56	directus_collections	event	{"collection":"event","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"archive_field":null,"sort_field":null}	\N	\N
51	57	directus_files	af7343e3-944c-4e04-b175-2bd2f5d4c06a	{"title":"Screenshot From 2023 12 11 15 01 26","filename_download":"Screenshot from 2023-12-11 15-01-26.png","type":"image/png","storage":"local"}	{"title":"Screenshot From 2023 12 11 15 01 26","filename_download":"Screenshot from 2023-12-11 15-01-26.png","type":"image/png","storage":"local"}	\N	\N
52	59	event	1	{"name":"DJ Bobo Live","description":"DJ Bobo Live in basel for the 40th time!!!"}	{"name":"DJ Bobo Live","description":"DJ Bobo Live in basel for the 40th time!!!"}	\N	\N
53	60	directus_fields	7	{"id":7,"collection":"event","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"id","hidden":false}	\N	\N
54	61	directus_fields	14	{"sort":8,"interface":"select-dropdown-m2o","special":["m2o"],"required":true,"collection":"event","field":"city"}	{"sort":8,"interface":"select-dropdown-m2o","special":["m2o"],"required":true,"collection":"event","field":"city"}	\N	\N
55	62	event	1	{"id":1,"status":"draft","sort":null,"date_updated":"2024-01-20T14:22:32.800Z","name":"DJ Bobo Live","description":"DJ Bobo Live in basel for the 40th time!!!","teaser":null,"city":1}	{"city":1,"date_updated":"2024-01-20T14:22:32.800Z"}	\N	\N
56	63	event	2	{"name":"Beer Run","description":"Bern's yearly Beern Run!","city":2}	{"name":"Beer Run","description":"Bern's yearly Beern Run!","city":2}	\N	\N
57	64	directus_permissions	30	{"id":30,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"create","permissions":{},"validation":{"_and":[{"name":{"_contains":"Basel"}}]},"presets":null,"fields":["*"]}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"create","permissions":{},"validation":{"_and":[{"name":{"_contains":"Basel"}}]},"presets":null,"fields":["*"]}	\N	\N
58	65	directus_permissions	31	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read"}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read"}	\N	\N
59	66	directus_permissions	31	{"id":31,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read","permissions":{"_and":[{"name":{"_contains":"Basel"}}]},"validation":null,"presets":null,"fields":null}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read","permissions":{"_and":[{"name":{"_contains":"Basel"}}]},"validation":null,"presets":null,"fields":null}	\N	\N
60	67	directus_permissions	32	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update"}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update"}	\N	\N
61	68	directus_permissions	32	{"id":32,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update","permissions":null,"validation":{"_and":[{"name":{"_contains":"Basel"}}]},"presets":null,"fields":null}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update","permissions":null,"validation":{"_and":[{"name":{"_contains":"Basel"}}]},"presets":null,"fields":null}	\N	\N
62	69	directus_permissions	33	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"create"}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"create"}	\N	\N
63	70	directus_permissions	33	{"id":33,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"create","permissions":null,"validation":{"_and":[{"city":{"_eq":null}}]},"presets":null,"fields":null}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"create","permissions":null,"validation":{"_and":[{"city":{"_eq":null}}]},"presets":null,"fields":null}	\N	\N
64	71	directus_permissions	34	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"read"}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"read"}	\N	\N
68	76	directus_permissions	36	{"id":36,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"update","permissions":{"_and":[{"city":{"_eq":null}}]},"validation":null,"presets":null,"fields":null}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"update","permissions":{"_and":[{"city":{"_eq":null}}]},"validation":null,"presets":null,"fields":null}	\N	\N
69	77	directus_roles	68c58399-f145-49aa-9db1-ee94c793b427	{"id":"68c58399-f145-49aa-9db1-ee94c793b427","name":"Basel City Admin","icon":"supervised_user_circle","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":true,"app_access":true,"users":[]}	{"admin_access":true}	\N	\N
70	78	directus_users	507e3800-1c28-454b-bcd2-766cda54a162	{"first_name":"Basel","last_name":"Admin","password":"**********","email":"mirjamthomet@gmail.com","role":"68c58399-f145-49aa-9db1-ee94c793b427"}	{"first_name":"Basel","last_name":"Admin","password":"**********","email":"mirjamthomet@gmail.com","role":"68c58399-f145-49aa-9db1-ee94c793b427"}	\N	\N
71	80	event	3	{"name":"test perm","city":2}	{"name":"test perm","city":2}	\N	\N
72	83	directus_roles	68c58399-f145-49aa-9db1-ee94c793b427	{"id":"68c58399-f145-49aa-9db1-ee94c793b427","name":"Basel City Admin","icon":"supervised_user_circle","description":null,"ip_access":null,"enforce_tfa":false,"admin_access":false,"app_access":true,"users":["507e3800-1c28-454b-bcd2-766cda54a162"]}	{"admin_access":false}	\N	\N
73	89	directus_permissions	37	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read"}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read"}	\N	\N
74	90	directus_permissions	37	{"id":37,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read","permissions":{"_and":[{"name":{"_contains":"Basel"}}]},"validation":null,"presets":null,"fields":null}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read","permissions":{"_and":[{"name":{"_contains":"Basel"}}]},"validation":null,"presets":null,"fields":null}	\N	\N
75	93	directus_permissions	37	{"id":37,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"read","permissions":{},"validation":{},"presets":null,"fields":["*"]}	{"permissions":{},"validation":{},"fields":["*"]}	\N	\N
76	94	directus_permissions	35	{"id":35,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"read","permissions":{},"validation":{},"presets":null,"fields":["*"]}	{"permissions":{},"validation":{},"fields":["*"]}	\N	\N
77	97	directus_permissions	38	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update"}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update"}	\N	\N
78	98	directus_permissions	38	{"id":38,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update","permissions":{"_and":[{"name":{"_contains":"Basel"}}]},"validation":null,"presets":null,"fields":null}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update","permissions":{"_and":[{"name":{"_contains":"Basel"}}]},"validation":null,"presets":null,"fields":null}	\N	\N
79	101	directus_permissions	38	{"id":38,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update","permissions":{"_and":[{"name":{"_contains":"Basel"}}]},"validation":null,"presets":null,"fields":["country","status"]}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"city","action":"update","permissions":{"_and":[{"name":{"_contains":"Basel"}}]},"validation":null,"presets":null,"fields":["country","status"]}	\N	\N
80	104	directus_permissions	36	{"id":36,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"update","permissions":{"_and":[{"city":{"_eq":null}}]},"validation":null,"presets":null,"fields":["teaser","name","status","sort","description"]}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"update","permissions":{"_and":[{"city":{"_eq":null}}]},"validation":null,"presets":null,"fields":["teaser","name","status","sort","description"]}	\N	\N
81	109	directus_permissions	36	{"id":36,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"update","permissions":{"_and":[{"city":{"_eq":"1"}}]},"validation":null,"presets":null,"fields":["teaser","name","status","sort","description"]}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"update","permissions":{"_and":[{"city":{"_eq":"1"}}]},"validation":null,"presets":null,"fields":["teaser","name","status","sort","description"]}	\N	\N
82	110	directus_permissions	33	{"id":33,"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"create","permissions":null,"validation":{"_and":[{"city":{"_eq":"1"}}]},"presets":null,"fields":["status","sort","description","name","teaser","city"]}	{"role":"68c58399-f145-49aa-9db1-ee94c793b427","collection":"event","action":"create","permissions":null,"validation":{"_and":[{"city":{"_eq":"1"}}]},"presets":null,"fields":["status","sort","description","name","teaser","city"]}	\N	\N
83	112	directus_files	a91d6db5-2f9d-4b23-abc6-df09ba3a19fc	{"title":"Screenshot From 2023 12 21 13 45 59","filename_download":"Screenshot from 2023-12-21 13-45-59.png","type":"image/png","storage":"local"}	{"title":"Screenshot From 2023 12 21 13 45 59","filename_download":"Screenshot from 2023-12-21 13-45-59.png","type":"image/png","storage":"local"}	\N	\N
84	115	directus_permissions	39	{"role":null,"collection":"city","action":"create","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"city","action":"create","fields":["*"],"permissions":{},"validation":{}}	\N	\N
85	116	directus_permissions	40	{"role":null,"collection":"city","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"city","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
86	118	directus_permissions	41	{"role":null,"collection":"event","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"event","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
87	119	directus_collections	city	{"collection":"city","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":1,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"sort":1,"group":null}	\N	\N
88	120	directus_collections	event	{"collection":"event","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":2,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"sort":2,"group":null}	\N	\N
181	213	directus_fields	37	{"sort":6,"interface":"translations","special":["translations"],"options":{"defaultLanguage":"de"},"collection":"countries","field":"translations"}	{"sort":6,"interface":"translations","special":["translations"],"options":{"defaultLanguage":"de"},"collection":"countries","field":"translations"}	\N	\N
89	121	directus_collections	event	{"collection":"event","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":1,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"sort":1,"group":null}	\N	\N
90	122	directus_collections	city	{"collection":"city","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":2,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"sort":2,"group":null}	\N	\N
91	123	directus_collections	event	{"collection":"event","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":1,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"sort":1,"group":null}	\N	\N
92	124	directus_collections	city	{"collection":"city","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":2,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"sort":2,"group":null}	\N	\N
93	125	directus_collections	city	{"collection":"city","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":1,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"sort":1,"group":null}	\N	\N
94	126	directus_collections	event	{"collection":"event","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":2,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"sort":2,"group":null}	\N	\N
95	127	directus_fields	15	{"sort":1,"interface":"input","readonly":false,"hidden":false,"field":"code","collection":"languages"}	{"sort":1,"interface":"input","readonly":false,"hidden":false,"field":"code","collection":"languages"}	\N	\N
96	128	directus_collections	languages	{"singleton":false,"collection":"languages"}	{"singleton":false,"collection":"languages"}	\N	\N
97	129	directus_fields	16	{"sort":2,"interface":"input","special":null,"required":true,"collection":"languages","field":"name"}	{"sort":2,"interface":"input","special":null,"required":true,"collection":"languages","field":"name"}	\N	\N
98	130	directus_fields	17	{"sort":9,"interface":"translations","special":["translations"],"options":{"defaultLanguage":"de"},"collection":"event","field":"translations"}	{"sort":9,"interface":"translations","special":["translations"],"options":{"defaultLanguage":"de"},"collection":"event","field":"translations"}	\N	\N
99	131	directus_fields	18	{"sort":1,"hidden":true,"field":"id","collection":"event_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"event_translations"}	\N	\N
100	132	directus_collections	event_translations	{"hidden":true,"icon":"import_export","collection":"event_translations"}	{"hidden":true,"icon":"import_export","collection":"event_translations"}	\N	\N
101	133	directus_fields	19	{"sort":2,"hidden":true,"collection":"event_translations","field":"event_id"}	{"sort":2,"hidden":true,"collection":"event_translations","field":"event_id"}	\N	\N
102	134	directus_fields	20	{"sort":3,"hidden":true,"collection":"event_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"event_translations","field":"languages_code"}	\N	\N
103	135	directus_fields	21	{"sort":4,"interface":"input","special":null,"collection":"event_translations","field":"name"}	{"sort":4,"interface":"input","special":null,"collection":"event_translations","field":"name"}	\N	\N
104	136	directus_fields	22	{"sort":5,"interface":"input-rich-text-html","special":null,"collection":"event_translations","field":"description"}	{"sort":5,"interface":"input-rich-text-html","special":null,"collection":"event_translations","field":"description"}	\N	\N
105	137	languages	de	{"code":"de","name":"German"}	{"code":"de","name":"German"}	\N	\N
106	138	languages	fr	{"code":"fr","name":"French"}	{"code":"fr","name":"French"}	\N	\N
109	141	event	1	{"id":1,"status":"draft","sort":null,"date_updated":"2024-01-20T15:03:36.217Z","teaser":null,"city":2,"translations":[1,2]}	{"city":2,"date_updated":"2024-01-20T15:03:36.217Z"}	\N	\N
107	139	event_translations	1	{"name":"Berner Bierlauf","languages_code":{"code":"de"},"event_id":"1","description":"<p>Berner Bierlauf Berner Bierlauf</p>"}	{"name":"Berner Bierlauf","languages_code":{"code":"de"},"event_id":"1","description":"<p>Berner Bierlauf Berner Bierlauf</p>"}	109	\N
108	140	event_translations	2	{"name":"Course de bière à Berne","languages_code":{"code":"fr"},"description":"<p>Course de bi&egrave;re &agrave; Berne Course de bi&egrave;re &agrave; Berne</p>","event_id":"1"}	{"name":"Course de bière à Berne","languages_code":{"code":"fr"},"description":"<p>Course de bi&egrave;re &agrave; Berne Course de bi&egrave;re &agrave; Berne</p>","event_id":"1"}	109	\N
112	144	event	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-01-20T15:04:35.777Z","teaser":null,"city":1,"translations":[3,4]}	{"city":1,"date_updated":"2024-01-20T15:04:35.777Z"}	\N	\N
110	142	event_translations	3	{"name":"Tanz im Wald in Basel","languages_code":{"code":"de"},"description":"<p>Tanz im Wald in Basel Tanz im Wald in Basel</p>","event_id":"2"}	{"name":"Tanz im Wald in Basel","languages_code":{"code":"de"},"description":"<p>Tanz im Wald in Basel Tanz im Wald in Basel</p>","event_id":"2"}	112	\N
111	143	event_translations	4	{"name":"Danse dans les bois à Bâle","languages_code":{"code":"fr"},"description":"<p>Danse dans les bois &agrave; B&acirc;le Danse dans les bois &agrave; B&acirc;le</p>","event_id":"2"}	{"name":"Danse dans les bois à Bâle","languages_code":{"code":"fr"},"description":"<p>Danse dans les bois &agrave; B&acirc;le Danse dans les bois &agrave; B&acirc;le</p>","event_id":"2"}	112	\N
113	145	directus_collections	event	{"collection":"event","icon":null,"note":null,"display_template":"{{translations}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":2,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{translations}}"}	\N	\N
114	146	directus_fields	7	{"id":7,"collection":"event","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"id","sort":1,"group":null}	\N	\N
115	147	directus_fields	8	{"id":8,"collection":"event","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"status","sort":2,"group":null}	\N	\N
116	148	directus_fields	9	{"id":9,"collection":"event","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"sort","sort":3,"group":null}	\N	\N
117	149	directus_fields	17	{"id":17,"collection":"event","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"translations","sort":4,"group":null}	\N	\N
118	150	directus_fields	10	{"id":10,"collection":"event","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"date_updated","sort":5,"group":null}	\N	\N
119	151	directus_fields	13	{"id":13,"collection":"event","field":"teaser","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"teaser","sort":6,"group":null}	\N	\N
120	152	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","sort":7,"group":null}	\N	\N
121	153	directus_collections	event	{"collection":"event","icon":null,"note":null,"display_template":"{{translations.name}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":2,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{translations.name}}"}	\N	\N
122	154	directus_fields	17	{"id":17,"collection":"event","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de","languageField":"name"},"display":"translations","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de","languageField":"name"},"display":"translations","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
123	155	directus_fields	7	{"id":7,"collection":"event","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"id","sort":1,"group":null}	\N	\N
124	156	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","sort":2,"group":null}	\N	\N
125	157	directus_fields	8	{"id":8,"collection":"event","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"status","sort":3,"group":null}	\N	\N
183	215	directus_collections	countries_translations	{"hidden":true,"icon":"import_export","collection":"countries_translations"}	{"hidden":true,"icon":"import_export","collection":"countries_translations"}	\N	\N
126	158	directus_fields	9	{"id":9,"collection":"event","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"sort","sort":4,"group":null}	\N	\N
127	159	directus_fields	17	{"id":17,"collection":"event","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de","languageField":"name"},"display":"translations","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"translations","sort":5,"group":null}	\N	\N
128	160	directus_fields	10	{"id":10,"collection":"event","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"date_updated","sort":6,"group":null}	\N	\N
129	161	directus_fields	13	{"id":13,"collection":"event","field":"teaser","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"teaser","sort":7,"group":null}	\N	\N
130	162	directus_fields	7	{"id":7,"collection":"event","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"id","sort":1,"group":null}	\N	\N
131	163	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","sort":2,"group":null}	\N	\N
132	164	directus_fields	17	{"id":17,"collection":"event","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de","languageField":"name"},"display":"translations","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"translations","sort":3,"group":null}	\N	\N
133	165	directus_fields	8	{"id":8,"collection":"event","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"status","sort":4,"group":null}	\N	\N
134	166	directus_fields	9	{"id":9,"collection":"event","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"sort","sort":5,"group":null}	\N	\N
135	167	directus_fields	10	{"id":10,"collection":"event","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"date_updated","sort":6,"group":null}	\N	\N
136	168	directus_fields	13	{"id":13,"collection":"event","field":"teaser","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"teaser","sort":7,"group":null}	\N	\N
137	169	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
138	170	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
139	171	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","sort":1,"group":null}	\N	\N
140	172	directus_fields	7	{"id":7,"collection":"event","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"id","sort":2,"group":null}	\N	\N
141	173	directus_fields	17	{"id":17,"collection":"event","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de","languageField":"name"},"display":"translations","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"translations","sort":3,"group":null}	\N	\N
311	344	directus_fields	81	{"sort":7,"interface":"input","special":null,"collection":"CustomSections","field":"link"}	{"sort":7,"interface":"input","special":null,"collection":"CustomSections","field":"link"}	\N	\N
376	409	city_files	16	{"city_id":"2","directus_files_id":{"id":"16ef4a31-4ab0-4cab-898b-618be781d472"}}	{"city_id":"2","directus_files_id":{"id":"16ef4a31-4ab0-4cab-898b-618be781d472"}}	380	\N
142	174	directus_fields	8	{"id":8,"collection":"event","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"status","sort":4,"group":null}	\N	\N
143	175	directus_fields	9	{"id":9,"collection":"event","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"sort","sort":5,"group":null}	\N	\N
144	176	directus_fields	10	{"id":10,"collection":"event","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"date_updated","sort":6,"group":null}	\N	\N
145	177	directus_fields	13	{"id":13,"collection":"event","field":"teaser","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"teaser","sort":7,"group":null}	\N	\N
146	178	directus_fields	17	{"id":17,"collection":"event","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de","languageField":"name"},"display":"translations","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"translations","sort":1,"group":null}	\N	\N
147	179	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","sort":2,"group":null}	\N	\N
148	180	directus_fields	7	{"id":7,"collection":"event","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"id","sort":3,"group":null}	\N	\N
149	181	directus_fields	8	{"id":8,"collection":"event","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"status","sort":4,"group":null}	\N	\N
150	182	directus_fields	9	{"id":9,"collection":"event","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"sort","sort":5,"group":null}	\N	\N
151	183	directus_fields	10	{"id":10,"collection":"event","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"date_updated","sort":6,"group":null}	\N	\N
152	184	directus_fields	13	{"id":13,"collection":"event","field":"teaser","special":["file"],"interface":"file-image","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"teaser","sort":7,"group":null}	\N	\N
153	185	directus_fields	23	{"sort":7,"interface":"translations","special":["translations"],"options":{"defaultLanguage":"de"},"collection":"city","field":"translations"}	{"sort":7,"interface":"translations","special":["translations"],"options":{"defaultLanguage":"de"},"collection":"city","field":"translations"}	\N	\N
154	186	directus_fields	24	{"sort":1,"hidden":true,"field":"id","collection":"city_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"city_translations"}	\N	\N
155	187	directus_collections	city_translations	{"hidden":true,"icon":"import_export","collection":"city_translations"}	{"hidden":true,"icon":"import_export","collection":"city_translations"}	\N	\N
156	188	directus_fields	25	{"sort":2,"hidden":true,"collection":"city_translations","field":"city_id"}	{"sort":2,"hidden":true,"collection":"city_translations","field":"city_id"}	\N	\N
157	189	directus_fields	26	{"sort":3,"hidden":true,"collection":"city_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"city_translations","field":"languages_code"}	\N	\N
158	190	directus_fields	27	{"sort":4,"interface":"input","special":null,"collection":"city_translations","field":"name"}	{"sort":4,"interface":"input","special":null,"collection":"city_translations","field":"name"}	\N	\N
159	191	directus_fields	28	{"sort":5,"interface":"input","special":null,"collection":"city_translations","field":"description"}	{"sort":5,"interface":"input","special":null,"collection":"city_translations","field":"description"}	\N	\N
160	192	directus_fields	29	{"sort":6,"interface":"input","special":null,"collection":"city_translations","field":"page_title"}	{"sort":6,"interface":"input","special":null,"collection":"city_translations","field":"page_title"}	\N	\N
161	193	directus_fields	30	{"sort":7,"interface":"input-rich-text-html","special":null,"collection":"city_translations","field":"description"}	{"sort":7,"interface":"input-rich-text-html","special":null,"collection":"city_translations","field":"description"}	\N	\N
162	194	directus_fields	31	{"sort":8,"interface":"input-multiline","special":null,"collection":"city_translations","field":"sponsors"}	{"sort":8,"interface":"input-multiline","special":null,"collection":"city_translations","field":"sponsors"}	\N	\N
163	195	directus_collections	city_translations	{"collection":"city_translations","icon":"import_export","note":null,"display_template":"{{name}}","hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{name}}"}	\N	\N
164	196	directus_collections	city	{"collection":"city","icon":null,"note":null,"display_template":"{{translations.name}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":1,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{translations.name}}"}	\N	\N
184	216	directus_fields	39	{"sort":2,"hidden":true,"collection":"countries_translations","field":"countries_id"}	{"sort":2,"hidden":true,"collection":"countries_translations","field":"countries_id"}	\N	\N
186	218	directus_fields	41	{"sort":4,"interface":"input","special":null,"collection":"countries_translations","field":"name"}	{"sort":4,"interface":"input","special":null,"collection":"countries_translations","field":"name"}	\N	\N
165	197	directus_fields	23	{"id":23,"collection":"city","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":"translations","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"city","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":"translations","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
168	200	city	1	{"id":1,"status":"draft","sort":null,"date_updated":"2024-01-20T15:38:42.911Z","translations":[1,2]}	{"date_updated":"2024-01-20T15:38:42.911Z"}	\N	\N
166	198	city_translations	1	{"name":"Basel","languages_code":{"code":"de"},"city_id":"1"}	{"name":"Basel","languages_code":{"code":"de"},"city_id":"1"}	168	\N
167	199	city_translations	2	{"name":"Bâle","languages_code":{"code":"fr"},"city_id":"1"}	{"name":"Bâle","languages_code":{"code":"fr"},"city_id":"1"}	168	\N
171	203	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-01-20T15:39:01.181Z","translations":[3,4]}	{"date_updated":"2024-01-20T15:39:01.181Z"}	\N	\N
169	201	city_translations	3	{"name":"Bern","languages_code":{"code":"de"},"city_id":"2"}	{"name":"Bern","languages_code":{"code":"de"},"city_id":"2"}	171	\N
170	202	city_translations	4	{"name":"Berne","languages_code":{"code":"fr"},"city_id":"2"}	{"name":"Berne","languages_code":{"code":"fr"},"city_id":"2"}	171	\N
172	204	directus_fields	1	{"id":1,"collection":"city","field":"id","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":false,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"city","field":"id","hidden":false}	\N	\N
173	205	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{translations.name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{translations.name}}"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
174	206	directus_fields	14	{"id":14,"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{translations.name}}"},"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"event","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{translations.name}}"},"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
175	207	directus_fields	32	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"countries"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"countries"}	\N	\N
176	208	directus_fields	33	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"countries"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"countries"}	\N	\N
177	209	directus_fields	34	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"countries"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"countries"}	\N	\N
178	210	directus_fields	35	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"countries"}	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"countries"}	\N	\N
179	211	directus_fields	36	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"countries"}	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"countries"}	\N	\N
180	212	directus_collections	countries	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"countries"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"countries"}	\N	\N
182	214	directus_fields	38	{"sort":1,"hidden":true,"field":"id","collection":"countries_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"countries_translations"}	\N	\N
189	221	countries	1	{"translations":{"create":[{"name":"Deutschland","languages_code":{"code":"de"}},{"name":"Allemagne","languages_code":{"code":"fr"}}],"update":[],"delete":[]}}	{"translations":{"create":[{"name":"Deutschland","languages_code":{"code":"de"}},{"name":"Allemagne","languages_code":{"code":"fr"}}],"update":[],"delete":[]}}	\N	\N
187	219	countries_translations	1	{"name":"Deutschland","languages_code":{"code":"de"},"countries_id":1}	{"name":"Deutschland","languages_code":{"code":"de"},"countries_id":1}	189	\N
188	220	countries_translations	2	{"name":"Allemagne","languages_code":{"code":"fr"},"countries_id":1}	{"name":"Allemagne","languages_code":{"code":"fr"},"countries_id":1}	189	\N
190	222	directus_collections	countries	{"collection":"countries","icon":null,"note":null,"display_template":"{{translations.name}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{translations.name}}","archive_field":null,"sort_field":null}	\N	\N
191	223	directus_fields	37	{"id":37,"collection":"countries","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"countries","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":"related-values","display_options":{"template":"{{name}}"},"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
192	224	directus_fields	37	{"id":37,"collection":"countries","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":"translations","display_options":{"template":"{{name}}","defaultLanguage":"de"},"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"countries","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":"translations","display_options":{"template":"{{name}}","defaultLanguage":"de"},"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
193	225	directus_collections	countries_translations	{"collection":"countries_translations","icon":"import_export","note":null,"display_template":"{{name}}","hidden":true,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{name}}"}	\N	\N
194	226	directus_fields	42	{"sort":7,"interface":"select-dropdown-m2o","special":["m2o"],"collection":"countries","field":"cities"}	{"sort":7,"interface":"select-dropdown-m2o","special":["m2o"],"collection":"countries","field":"cities"}	\N	\N
195	227	directus_fields	43	{"sort":8,"interface":"datetime","special":null,"collection":"event","field":"start"}	{"sort":8,"interface":"datetime","special":null,"collection":"event","field":"start"}	\N	\N
196	228	directus_permissions	42	{"role":null,"collection":"city_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"city_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
197	229	directus_permissions	43	{"role":null,"collection":"countries","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"countries","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
198	230	directus_permissions	44	{"role":null,"collection":"countries_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"countries_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
199	231	directus_permissions	45	{"role":null,"collection":"event_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"event_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
200	232	directus_permissions	46	{"role":null,"collection":"languages","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"languages","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
201	233	directus_fields	23	{"id":23,"collection":"city","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":"translations","display_options":{"template":"{{name}}","languageField":"code"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"city","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de"},"display":"translations","display_options":{"template":"{{name}}","languageField":"code"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
202	234	directus_fields	44	{"sort":8,"interface":"files","special":["files"],"collection":"city","field":"gallery"}	{"sort":8,"interface":"files","special":["files"],"collection":"city","field":"gallery"}	\N	\N
203	235	directus_fields	45	{"sort":1,"hidden":true,"field":"id","collection":"city_files"}	{"sort":1,"hidden":true,"field":"id","collection":"city_files"}	\N	\N
204	236	directus_collections	city_files	{"hidden":true,"icon":"import_export","collection":"city_files"}	{"hidden":true,"icon":"import_export","collection":"city_files"}	\N	\N
205	237	directus_fields	46	{"sort":2,"hidden":true,"collection":"city_files","field":"city_id"}	{"sort":2,"hidden":true,"collection":"city_files","field":"city_id"}	\N	\N
206	238	directus_fields	47	{"sort":3,"hidden":true,"collection":"city_files","field":"directus_files_id"}	{"sort":3,"hidden":true,"collection":"city_files","field":"directus_files_id"}	\N	\N
207	239	directus_files	f90ae2c5-682a-4fe8-8fbc-3f31a4257cf7	{"title":"0ab7b648 1665 4eff Bdf9 2a5b86da89ae","filename_download":"0ab7b648-1665-4eff-bdf9-2a5b86da89ae.webp","type":"image/webp","storage":"local"}	{"title":"0ab7b648 1665 4eff Bdf9 2a5b86da89ae","filename_download":"0ab7b648-1665-4eff-bdf9-2a5b86da89ae.webp","type":"image/webp","storage":"local"}	\N	\N
262	295	city	1	{"id":1,"status":"draft","sort":null,"date_updated":"2024-01-28T11:22:39.355Z","translations":[1,2],"gallery":[],"supportlinks":[1,2,3,4,5,6,7,8]}	{"date_updated":"2024-01-28T11:22:39.355Z"}	\N	\N
208	241	directus_files	239810f8-beac-4b54-b540-f84cb45ad0e6	{"title":"0ab7b648 1665 4eff Bdf9 2a5b86da89ae","filename_download":"0ab7b648-1665-4eff-bdf9-2a5b86da89ae.webp","type":"image/webp","storage":"local"}	{"title":"0ab7b648 1665 4eff Bdf9 2a5b86da89ae","filename_download":"0ab7b648-1665-4eff-bdf9-2a5b86da89ae.webp","type":"image/webp","storage":"local"}	\N	\N
209	242	directus_fields	48	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"SupportLinks"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"SupportLinks"}	\N	\N
210	243	directus_fields	49	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"SupportLinks"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"SupportLinks"}	\N	\N
211	244	directus_fields	50	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"SupportLinks"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"SupportLinks"}	\N	\N
212	245	directus_fields	51	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"SupportLinks"}	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"SupportLinks"}	\N	\N
213	246	directus_collections	SupportLinks	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"SupportLinks"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"SupportLinks"}	\N	\N
214	247	directus_fields	52	{"sort":5,"interface":"input","special":null,"required":true,"collection":"SupportLinks","field":"link"}	{"sort":5,"interface":"input","special":null,"required":true,"collection":"SupportLinks","field":"link"}	\N	\N
215	248	directus_fields	53	{"sort":6,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"SupportLinks","field":"translations"}	{"sort":6,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"SupportLinks","field":"translations"}	\N	\N
216	249	directus_fields	54	{"sort":1,"hidden":true,"field":"id","collection":"SupportLinks_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"SupportLinks_translations"}	\N	\N
217	250	directus_collections	SupportLinks_translations	{"hidden":true,"icon":"import_export","collection":"SupportLinks_translations"}	{"hidden":true,"icon":"import_export","collection":"SupportLinks_translations"}	\N	\N
218	251	directus_fields	55	{"sort":2,"hidden":true,"collection":"SupportLinks_translations","field":"SupportLinks_id"}	{"sort":2,"hidden":true,"collection":"SupportLinks_translations","field":"SupportLinks_id"}	\N	\N
219	252	directus_fields	56	{"sort":3,"hidden":true,"collection":"SupportLinks_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"SupportLinks_translations","field":"languages_code"}	\N	\N
220	253	directus_collections	SupportLinks	{"collection":"SupportLinks","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"archive_field":null,"sort_field":null}	\N	\N
221	254	directus_fields	57	{"sort":4,"interface":"input","special":null,"collection":"SupportLinks_translations","field":"title"}	{"sort":4,"interface":"input","special":null,"collection":"SupportLinks_translations","field":"title"}	\N	\N
222	255	directus_fields	58	{"sort":5,"interface":"input-multiline","special":null,"collection":"SupportLinks_translations","field":"description"}	{"sort":5,"interface":"input-multiline","special":null,"collection":"SupportLinks_translations","field":"description"}	\N	\N
223	256	directus_fields	59	{"sort":7,"interface":"select-dropdown-m2o","special":["m2o"],"collection":"SupportLinks","field":"city"}	{"sort":7,"interface":"select-dropdown-m2o","special":["m2o"],"collection":"SupportLinks","field":"city"}	\N	\N
224	257	directus_fields	60	{"sort":6,"interface":"input","special":null,"collection":"SupportLinks_translations","field":"linkText"}	{"sort":6,"interface":"input","special":null,"collection":"SupportLinks_translations","field":"linkText"}	\N	\N
227	260	SupportLinks	1	{"link":"https://schichtplan.immerda.ch/plans/show/20faf8ea45acb5a5fd12f40d20cebe53c6ef6d62","translations":{"create":[{"title":"Abbau 30. Juni","languages_code":{"code":"de"},"linkText":"Einschreiben"},{"title":"Démontage 30 juin","languages_code":{"code":"fr"},"linkText":"commencez maintenant"}],"update":[],"delete":[]},"city":2}	{"link":"https://schichtplan.immerda.ch/plans/show/20faf8ea45acb5a5fd12f40d20cebe53c6ef6d62","translations":{"create":[{"title":"Abbau 30. Juni","languages_code":{"code":"de"},"linkText":"Einschreiben"},{"title":"Démontage 30 juin","languages_code":{"code":"fr"},"linkText":"commencez maintenant"}],"update":[],"delete":[]},"city":2}	\N	\N
225	258	SupportLinks_translations	1	{"title":"Abbau 30. Juni","languages_code":{"code":"de"},"linkText":"Einschreiben","SupportLinks_id":1}	{"title":"Abbau 30. Juni","languages_code":{"code":"de"},"linkText":"Einschreiben","SupportLinks_id":1}	227	\N
256	289	SupportLinks	3	{"id":3,"status":"draft","sort":null,"date_created":"2024-01-28T09:33:36.084Z","link":"https://turno.immerda.ch/","city":1,"translations":[5]}	{"city":"1"}	262	\N
257	290	SupportLinks	4	{"id":4,"status":"draft","sort":null,"date_created":"2024-01-28T09:35:30.573Z","link":"https://turno.immerda.ch/","city":1,"translations":[6]}	{"city":"1"}	262	\N
258	291	SupportLinks	5	{"id":5,"status":"draft","sort":null,"date_created":"2024-01-28T09:36:15.444Z","link":"https://turno.immerda.ch/","city":1,"translations":[7]}	{"city":"1"}	262	\N
226	259	SupportLinks_translations	2	{"title":"Démontage 30 juin","languages_code":{"code":"fr"},"linkText":"commencez maintenant","SupportLinks_id":1}	{"title":"Démontage 30 juin","languages_code":{"code":"fr"},"linkText":"commencez maintenant","SupportLinks_id":1}	227	\N
228	261	directus_fields	60	{"id":60,"collection":"SupportLinks_translations","field":"linkText","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"SupportLinks_translations","field":"linkText","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
231	264	SupportLinks	2	{"link":"https://turno.immerda.ch/","translations":{"create":[{"title":"Namen aufhängen","languages_code":{"code":"de"},"linkText":"Einschreiben"},{"languages_code":{"code":"fr"}}],"update":[],"delete":[]},"city":2}	{"link":"https://turno.immerda.ch/","translations":{"create":[{"title":"Namen aufhängen","languages_code":{"code":"de"},"linkText":"Einschreiben"},{"languages_code":{"code":"fr"}}],"update":[],"delete":[]},"city":2}	\N	\N
229	262	SupportLinks_translations	3	{"title":"Namen aufhängen","languages_code":{"code":"de"},"linkText":"Einschreiben","SupportLinks_id":2}	{"title":"Namen aufhängen","languages_code":{"code":"de"},"linkText":"Einschreiben","SupportLinks_id":2}	231	\N
230	263	SupportLinks_translations	4	{"languages_code":{"code":"fr"},"SupportLinks_id":2}	{"languages_code":{"code":"fr"},"SupportLinks_id":2}	231	\N
233	266	SupportLinks	3	{"translations":{"create":[{"title":"Namen schreiben","languages_code":{"code":"de"},"linkText":"Einschreiben"}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	{"translations":{"create":[{"title":"Namen schreiben","languages_code":{"code":"de"},"linkText":"Einschreiben"}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	\N	\N
232	265	SupportLinks_translations	5	{"title":"Namen schreiben","languages_code":{"code":"de"},"linkText":"Einschreiben","SupportLinks_id":3}	{"title":"Namen schreiben","languages_code":{"code":"de"},"linkText":"Einschreiben","SupportLinks_id":3}	233	\N
235	268	SupportLinks	4	{"link":"https://turno.immerda.ch/","translations":{"create":[{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Namen lesen"}],"update":[],"delete":[]},"city":2}	{"link":"https://turno.immerda.ch/","translations":{"create":[{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Namen lesen"}],"update":[],"delete":[]},"city":2}	\N	\N
234	267	SupportLinks_translations	6	{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Namen lesen","SupportLinks_id":4}	{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Namen lesen","SupportLinks_id":4}	235	\N
237	270	SupportLinks	5	{"translations":{"create":[{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Beitrag zur vollen Stunde"}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	{"translations":{"create":[{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Beitrag zur vollen Stunde"}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	\N	\N
236	269	SupportLinks_translations	7	{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Beitrag zur vollen Stunde","SupportLinks_id":5}	{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Beitrag zur vollen Stunde","SupportLinks_id":5}	237	\N
239	272	SupportLinks	6	{"translations":{"create":[{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Info und Einführung"}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	{"translations":{"create":[{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Info und Einführung"}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	\N	\N
238	271	SupportLinks_translations	8	{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Info und Einführung","SupportLinks_id":6}	{"linkText":"Einschreiben","languages_code":{"code":"de"},"title":"Info und Einführung","SupportLinks_id":6}	239	\N
240	273	directus_collections	SupportLinks	{"collection":"SupportLinks","icon":null,"note":null,"display_template":"{{translations.title}}","hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"display_template":"{{translations.title}}"}	\N	\N
241	274	directus_fields	53	{"id":53,"collection":"SupportLinks","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de"},"display":"related-values","display_options":{"template":"{{title}}"},"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"SupportLinks","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de"},"display":"related-values","display_options":{"template":"{{title}}"},"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
259	292	SupportLinks	6	{"id":6,"status":"draft","sort":null,"date_created":"2024-01-28T09:37:29.831Z","link":"https://turno.immerda.ch/","city":1,"translations":[8]}	{"city":"1"}	262	\N
260	293	SupportLinks	7	{"id":7,"status":"draft","sort":null,"date_created":"2024-01-28T09:45:16.187Z","link":"https://turno.immerda.ch/","city":1,"translations":[9]}	{"city":"1"}	262	\N
261	294	SupportLinks	8	{"id":8,"status":"draft","sort":null,"date_created":"2024-01-28T09:45:45.607Z","link":"https://turno.immerda.ch/","city":1,"translations":[10]}	{"city":"1"}	262	\N
242	275	directus_fields	53	{"id":53,"collection":"SupportLinks","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de"},"display":"translations","display_options":{"template":"{{title}}","defaultLanguage":"de","languageField":"code"},"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"SupportLinks","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de"},"display":"translations","display_options":{"template":"{{title}}","defaultLanguage":"de","languageField":"code"},"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
243	276	directus_fields	59	{"id":59,"collection":"SupportLinks","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"SupportLinks","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
244	277	directus_fields	59	{"id":59,"collection":"SupportLinks","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"SupportLinks","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
245	278	directus_fields	59	{"id":59,"collection":"SupportLinks","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"SupportLinks","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
247	280	SupportLinks	7	{"translations":{"create":[{"title":"Info für Passant*innen","languages_code":{"code":"de"}}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	{"translations":{"create":[{"title":"Info für Passant*innen","languages_code":{"code":"de"}}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	\N	\N
246	279	SupportLinks_translations	9	{"title":"Info für Passant*innen","languages_code":{"code":"de"},"SupportLinks_id":7}	{"title":"Info für Passant*innen","languages_code":{"code":"de"},"SupportLinks_id":7}	247	\N
249	282	SupportLinks	8	{"translations":{"create":[{"title":"Aufbau 16. Juni 2023","languages_code":{"code":"de"}}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	{"translations":{"create":[{"title":"Aufbau 16. Juni 2023","languages_code":{"code":"de"}}],"update":[],"delete":[]},"link":"https://turno.immerda.ch/","city":2}	\N	\N
248	281	SupportLinks_translations	10	{"title":"Aufbau 16. Juni 2023","languages_code":{"code":"de"},"SupportLinks_id":8}	{"title":"Aufbau 16. Juni 2023","languages_code":{"code":"de"},"SupportLinks_id":8}	249	\N
250	283	directus_permissions	47	{"role":null,"collection":"SupportLinks","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"SupportLinks","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
251	284	directus_permissions	48	{"role":null,"collection":"SupportLinks_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"SupportLinks_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
252	285	directus_permissions	49	{"role":null,"collection":"city_files","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"city_files","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
253	286	directus_fields	61	{"sort":9,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"supportlinks"}	{"sort":9,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"supportlinks"}	\N	\N
254	287	SupportLinks	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-01-28T09:24:48.935Z","link":"https://schichtplan.immerda.ch/plans/show/20faf8ea45acb5a5fd12f40d20cebe53c6ef6d62","city":1,"translations":[1,2]}	{"city":"1"}	262	\N
255	288	SupportLinks	2	{"id":2,"status":"draft","sort":null,"date_created":"2024-01-28T09:32:51.312Z","link":"https://turno.immerda.ch/","city":1,"translations":[3,4]}	{"city":"1"}	262	\N
263	296	SupportLinks	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-01-28T09:24:48.935Z","link":"https://schichtplan.immerda.ch/plans/show/20faf8ea45acb5a5fd12f40d20cebe53c6ef6d62","city":2,"translations":[1,2]}	{"city":2}	\N	\N
264	297	SupportLinks	2	{"id":2,"status":"draft","sort":null,"date_created":"2024-01-28T09:32:51.312Z","link":"https://turno.immerda.ch/","city":2,"translations":[3,4]}	{"city":2}	\N	\N
265	298	SupportLinks	3	{"id":3,"status":"draft","sort":null,"date_created":"2024-01-28T09:33:36.084Z","link":"https://turno.immerda.ch/","city":2,"translations":[5]}	{"city":2}	\N	\N
266	299	SupportLinks	4	{"id":4,"status":"draft","sort":null,"date_created":"2024-01-28T09:35:30.573Z","link":"https://turno.immerda.ch/","city":2,"translations":[6]}	{"city":2}	\N	\N
267	300	SupportLinks	5	{"id":5,"status":"draft","sort":null,"date_created":"2024-01-28T09:36:15.444Z","link":"https://turno.immerda.ch/","city":2,"translations":[7]}	{"city":2}	\N	\N
268	301	SupportLinks	6	{"id":6,"status":"draft","sort":null,"date_created":"2024-01-28T09:37:29.831Z","link":"https://turno.immerda.ch/","city":2,"translations":[8]}	{"city":2}	\N	\N
269	302	SupportLinks	7	{"id":7,"status":"draft","sort":null,"date_created":"2024-01-28T09:45:16.187Z","link":"https://turno.immerda.ch/","city":2,"translations":[9]}	{"city":2}	\N	\N
270	303	SupportLinks	8	{"id":8,"status":"draft","sort":null,"date_created":"2024-01-28T09:45:45.607Z","link":"https://turno.immerda.ch/","city":2,"translations":[10]}	{"city":2}	\N	\N
271	304	directus_fields	62	{"sort":7,"interface":"select-dropdown-m2o","special":["m2o"],"collection":"SupportLinks","field":"city"}	{"sort":7,"interface":"select-dropdown-m2o","special":["m2o"],"collection":"SupportLinks","field":"city"}	\N	\N
272	305	directus_fields	63	{"sort":9,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"supportlinks"}	{"sort":9,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"supportlinks"}	\N	\N
281	314	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-01-28T11:31:25.098Z","translations":[3,4],"gallery":[],"supportlinks":[1,2,3,4,5,6,7,8]}	{"date_updated":"2024-01-28T11:31:25.098Z"}	\N	\N
273	306	SupportLinks	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-01-28T09:24:48.935Z","link":"https://schichtplan.immerda.ch/plans/show/20faf8ea45acb5a5fd12f40d20cebe53c6ef6d62","city":2,"translations":[1,2]}	{"city":2}	281	\N
274	307	SupportLinks	2	{"id":2,"status":"draft","sort":null,"date_created":"2024-01-28T09:32:51.312Z","link":"https://turno.immerda.ch/","city":2,"translations":[3,4]}	{"city":2}	281	\N
275	308	SupportLinks	3	{"id":3,"status":"draft","sort":null,"date_created":"2024-01-28T09:33:36.084Z","link":"https://turno.immerda.ch/","city":2,"translations":[5]}	{"city":2}	281	\N
276	309	SupportLinks	4	{"id":4,"status":"draft","sort":null,"date_created":"2024-01-28T09:35:30.573Z","link":"https://turno.immerda.ch/","city":2,"translations":[6]}	{"city":2}	281	\N
277	310	SupportLinks	5	{"id":5,"status":"draft","sort":null,"date_created":"2024-01-28T09:36:15.444Z","link":"https://turno.immerda.ch/","city":2,"translations":[7]}	{"city":2}	281	\N
278	311	SupportLinks	6	{"id":6,"status":"draft","sort":null,"date_created":"2024-01-28T09:37:29.831Z","link":"https://turno.immerda.ch/","city":2,"translations":[8]}	{"city":2}	281	\N
279	312	SupportLinks	7	{"id":7,"status":"draft","sort":null,"date_created":"2024-01-28T09:45:16.187Z","link":"https://turno.immerda.ch/","city":2,"translations":[9]}	{"city":2}	281	\N
280	313	SupportLinks	8	{"id":8,"status":"draft","sort":null,"date_created":"2024-01-28T09:45:45.607Z","link":"https://turno.immerda.ch/","city":2,"translations":[10]}	{"city":2}	281	\N
282	315	directus_fields	64	{"sort":10,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"events"}	{"sort":10,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"events"}	\N	\N
284	317	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-01-28T11:41:47.454Z","translations":[3,4],"gallery":[],"supportlinks":[1,2,3,4,5,6,7,8],"events":[1]}	{"date_updated":"2024-01-28T11:41:47.454Z"}	\N	\N
283	316	city_translations	3	{"id":3,"city_id":2,"languages_code":"de","name":"Bern","page_title":"Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europa 24 Stunden vom Samstag, 17. Juni, 12 Uhr, bis Sonntag, 18. Juni, 12 Uhr, Heiliggeistkirche Bern","description":"<p>Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und<br>schafft es nur gelegentlich in die Medien. Seit 1993 sind &uuml;ber 51 000 Kinder, Frauen und<br>M&auml;nner gestorben. Oder m&uuml;ssen wir die Frage stellen, ob sie get&ouml;tet wurden? Von einer<br>immer h&auml;rteren Politik der L&auml;nder Europas, die verhindert, dass diese Menschen legal in<br>Europa einreisen k&ouml;nnen, um hier ein Asylgesuch zu stellen. Sie m&uuml;ssen vor<br>lebensgef&auml;hrlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in<br>unw&uuml;rdigen Fl&uuml;chtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann<br>und wie es weiter geht. Dar&uuml;ber sind wir entsetzt und fordern sichere Fluchtwege! Mit<br>verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren<br>&ouml;ffentlich gegen die unhaltbare Situation.</p>","sponsors":"about us, accompagno, Administration röm.-kath. Konfessionsteil des Kantons St. Gallen, AGORA - Aumônerie genevoise oecuménique auprès des requérants d'asile, Alarmphone, Alte Kirche Fluntern, Alte Nikolaikirche Frankfurt am Main, Amnesty International Gruppe Chur, Amnesty Gruppe Luzern, Amt für Gesellschaftsfragen Stadt St. Gallen, Association de la Journée des réfugié-es de Neuchâtel, Asyl in der Kirche, Berlin Be Aware and Share, Basel Begegnungstage in und um den Graefe-Kiez Berlin, Berliner Missionswerk / EKBO, Pfarrerin für Migration und Integration Dagmar, Apel, Bündner Forum der Religionen, Capacity Zürich, Caritas Luzern, Caritas Schweiz, Caritas St. Gallen-Appenzell, Caritas und youngCaritas Zürich, Caritasverband Offenburg-Kehl e.V., Christkatholische Kirche im Kanton Zürich, Christkatholische Kirchgemeinde Luzern, Citykirche Offener St. Jakob, Cityseelsorge der Kath. Kirche im Lebensraum St. Gallen, CJD Standort Zeche, Germania BvB P, Maßnahme Schwerpunkt Holzwerken, Communauté des sœurs de Grandchamp, Areuse\\nCommunauté Israélite du Canton de Neuchâtel, La Chaux-de-Fonds, Comunauté Orthodoxe Érythréenne de Neuchâtel, Diakonisches Werk Dortmund und Lünen GmbH, Diakonisches Werk im Evangelischen Kirchenbezirk Ortenau, Diakoniewerk Essen, Diaspora & Development \\"D&D\\"; e.V., DIGO - Dachverband Islamischen Gemeinden Ostschweiz, Domkirche St. Blasii zu Braunschweig, Droit de rester Neuchâtel, ECAP Zentralschweiz, Eglise catholique-chrétienne du canton de Neuchâtel, Eglise catholique romaine à Neuchâtel, Eglise réformée évangélique du canton de Neuchâtel, ESG-Ruhr /Ev. Studierendengemeinde, Ev., Erwachsenenbildungswerk Westfalen-Lippe, Ev. Kirchengemeinde Kreuzberg Berlin, Ev. Kirchenkreis Dortmund, Referat Ökumene, Ev. Stadtkirche St. Reinoldi Dortmund, Ev.-luth. Kirchengemeinde St. Blasius, Braunschweig, Ev.-luth. Kirchengemeinde St. Magni, Braunschweig, Evang.-methodistische, Kirche St. Gallen-Teufen, Evang.-ref. Kirchgemeinde St. Gallen Centrum, Evang.-ref. Kirchgemeinde St. Gallen Straubenzell, Evang.-ref. Kirchgemeinde St. Gallen,Tablat, Evangelische Erwachsenenbildung Ortenau, Evangelische Kirchengemeinde Kehl, Evangelische Kirche in Essen, Evangelische Kirche Westfalen, Evangelisches Studierendenzentrum, Die Brücke, ExpoTranskultur Zürich, Fachstelle Migration Evangelisch-reformierte Landeskirche Graubünden, Flüchtlingshilfe im Stadtbezirk Aplerbeck e.V., Flüchtlingspaten Dortmund e.V., Forum der Religionen Graubünden, Grenzenlose Wärme e.V., Gasthaus–Ökumenische-Wohnunglosen-Initiative e.V.,Grossmünster Zürich, Groupe d'accueil A la rencontre (RequérEnsemble), Groupe d'accueil, Req'EREN, HEKS Schweiz, Helferei Zürich, IG offenes Davos, IG Sans-Papiers St. Gallenm, Islamische Gemeinschaft Volketswil, Jesuiten Flüchtlingsdienst Schweiz, Johanneskirche Zürich, Jugendrotkreuz Luzern, Kath. Kirchgemeinde St. Gallen, Kath. Pfarr- und Kirchgemeinde Wil / SG, Katholische Kirche, Liebfrauen Zürich, Katholische Kirche Stadt Luzern, Katholische Kirche im Kanton Luzern, Katholische Kirchgemeinde Chur, Katholische Kirchgemeinde Kehl, Katholische Pfarrei St., Benignus Pfäffikon, Katholische Pfarrei St. Gallus Zürich, Kirche St. Peter Zürich, Konrad-Adenauer-Stiftung e.V, Kontaktstelle Ev. Jugend, Referat für Gesellschaftliche Verantwortung des Ev. Kirchenkreises Dortmund, Kreuzberger Ökumene, Berlin, Literaturhaus Basel, Luzerner Asylnetz, Marktkirche Essen, Moschee El-Hidaje, St. Gallen, NCBI, Offene Kirche Elisabethen, oikos-Institut für Mission und Ökumene, Paroisse réformée de Neuchâtel Accueil Café Migrants Passionskirche, Ev. Kirchengemeinde Heilig-Kreuz-Passion Berlin, Pastorales Zentrum Röm.-kath. Kirche, Baselland, Pastoralraum Basel-Stadt, Pax Christi, Berlin, Pauluskirche Ev. Lydia-Kirchengemeinde Dortmund, Pfarrei San Pio X, Basel, Privat Engagierte BS/BL, ProAsyl/Flüchtlingsrat Essen e.V., Projekt Ankommen e.V., Reformierte Kirche Zürich KK9, Reformierte Kirche Chur, Reformierte Kirche Stadt Luzern,\\nReformierte, Regards et Récits, Neuchâtel, Regionalbüro Westfalen, Röm- kath. Pfarrei Bruder Klaus, Birsfelden, Röm.- kath. Pastoralraum Allschwil-Schönenbuch, Röm.- kath. Pastoralraum am Blauen,Röm.-kath. Pfarrei St. Anton Pratteln-Augst, Sant'Egidio Schweiz, SAH Zentralschweiz, Schulreferat des Ev. Kirchenkreises Dortmund, Schweizerische Flüchtlingshilfe, Seebrücke Essen, Seebrücke Schweiz, Service de la cohésion multiculturelle du canton de Neuchâtel (COSM), SINGA Switzerland, Solidaritätshaus St. Gallen, Solidaritätsnetz Ostschweiz,Solinetz Luzern, Solinetz Zürich, SOS Méditerranée Genève, SOS Méditerranée Suisse Neuchâtel, SOS MEDITERRANEE, Ortsgruppe Basel, SOS MEDITERRANEE, Ortsgruppe Zürich, Staffan Gettys/Firma, TermitenBau, SPAZ, Spezialseelsorge und Diakonie, RKK BS TRAIN OF HOPE Dortmund e.V., Unia Neuchâtel, United4Rescue – Gemeinsam Retten e.V., Verein Hilfe für Asylsuchende Graubünden, Verein Miteinander Valzeina, VMDO Verbund der sozial-kulturellen Migrantenvereine in Dortmund e.v. (VMDO e.V.), Vossa Lingua Verein für Interkultur, Wasserkirche Zürich, We are AIA/Awareness in Art Zürich, Welthaus Dortmund e.V., Weltweit Berlin, Zen Peacemakers Bern, Zen-Zentrum im grünen Ring, St. Gallen\\n\\nSponsoren: AkiB, Katholische Kirche Region Bern, Kirche in Bewegung Refbejuso, Kirchgemeinde\\nFrieden, Kirchgemeinde Heiliggeist, Kirchgemeinde Paulus, offene kirche bern, Ref.\\nGesamtkirchgemeinde Bern"}	{"city_id":"2","languages_code":"de","page_title":"Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europa 24 Stunden vom Samstag, 17. Juni, 12 Uhr, bis Sonntag, 18. Juni, 12 Uhr, Heiliggeistkirche Bern","description":"<p>Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und<br>schafft es nur gelegentlich in die Medien. Seit 1993 sind &uuml;ber 51 000 Kinder, Frauen und<br>M&auml;nner gestorben. Oder m&uuml;ssen wir die Frage stellen, ob sie get&ouml;tet wurden? Von einer<br>immer h&auml;rteren Politik der L&auml;nder Europas, die verhindert, dass diese Menschen legal in<br>Europa einreisen k&ouml;nnen, um hier ein Asylgesuch zu stellen. Sie m&uuml;ssen vor<br>lebensgef&auml;hrlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in<br>unw&uuml;rdigen Fl&uuml;chtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann<br>und wie es weiter geht. Dar&uuml;ber sind wir entsetzt und fordern sichere Fluchtwege! Mit<br>verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren<br>&ouml;ffentlich gegen die unhaltbare Situation.</p>","sponsors":"about us, accompagno, Administration röm.-kath. Konfessionsteil des Kantons St. Gallen, AGORA - Aumônerie genevoise oecuménique auprès des requérants d'asile, Alarmphone, Alte Kirche Fluntern, Alte Nikolaikirche Frankfurt am Main, Amnesty International Gruppe Chur, Amnesty Gruppe Luzern, Amt für Gesellschaftsfragen Stadt St. Gallen, Association de la Journée des réfugié-es de Neuchâtel, Asyl in der Kirche, Berlin Be Aware and Share, Basel Begegnungstage in und um den Graefe-Kiez Berlin, Berliner Missionswerk / EKBO, Pfarrerin für Migration und Integration Dagmar, Apel, Bündner Forum der Religionen, Capacity Zürich, Caritas Luzern, Caritas Schweiz, Caritas St. Gallen-Appenzell, Caritas und youngCaritas Zürich, Caritasverband Offenburg-Kehl e.V., Christkatholische Kirche im Kanton Zürich, Christkatholische Kirchgemeinde Luzern, Citykirche Offener St. Jakob, Cityseelsorge der Kath. Kirche im Lebensraum St. Gallen, CJD Standort Zeche, Germania BvB P, Maßnahme Schwerpunkt Holzwerken, Communauté des sœurs de Grandchamp, Areuse\\nCommunauté Israélite du Canton de Neuchâtel, La Chaux-de-Fonds, Comunauté Orthodoxe Érythréenne de Neuchâtel, Diakonisches Werk Dortmund und Lünen GmbH, Diakonisches Werk im Evangelischen Kirchenbezirk Ortenau, Diakoniewerk Essen, Diaspora & Development \\"D&D\\"; e.V., DIGO - Dachverband Islamischen Gemeinden Ostschweiz, Domkirche St. Blasii zu Braunschweig, Droit de rester Neuchâtel, ECAP Zentralschweiz, Eglise catholique-chrétienne du canton de Neuchâtel, Eglise catholique romaine à Neuchâtel, Eglise réformée évangélique du canton de Neuchâtel, ESG-Ruhr /Ev. Studierendengemeinde, Ev., Erwachsenenbildungswerk Westfalen-Lippe, Ev. Kirchengemeinde Kreuzberg Berlin, Ev. Kirchenkreis Dortmund, Referat Ökumene, Ev. Stadtkirche St. Reinoldi Dortmund, Ev.-luth. Kirchengemeinde St. Blasius, Braunschweig, Ev.-luth. Kirchengemeinde St. Magni, Braunschweig, Evang.-methodistische, Kirche St. Gallen-Teufen, Evang.-ref. Kirchgemeinde St. Gallen Centrum, Evang.-ref. Kirchgemeinde St. Gallen Straubenzell, Evang.-ref. Kirchgemeinde St. Gallen,Tablat, Evangelische Erwachsenenbildung Ortenau, Evangelische Kirchengemeinde Kehl, Evangelische Kirche in Essen, Evangelische Kirche Westfalen, Evangelisches Studierendenzentrum, Die Brücke, ExpoTranskultur Zürich, Fachstelle Migration Evangelisch-reformierte Landeskirche Graubünden, Flüchtlingshilfe im Stadtbezirk Aplerbeck e.V., Flüchtlingspaten Dortmund e.V., Forum der Religionen Graubünden, Grenzenlose Wärme e.V., Gasthaus–Ökumenische-Wohnunglosen-Initiative e.V.,Grossmünster Zürich, Groupe d'accueil A la rencontre (RequérEnsemble), Groupe d'accueil, Req'EREN, HEKS Schweiz, Helferei Zürich, IG offenes Davos, IG Sans-Papiers St. Gallenm, Islamische Gemeinschaft Volketswil, Jesuiten Flüchtlingsdienst Schweiz, Johanneskirche Zürich, Jugendrotkreuz Luzern, Kath. Kirchgemeinde St. Gallen, Kath. Pfarr- und Kirchgemeinde Wil / SG, Katholische Kirche, Liebfrauen Zürich, Katholische Kirche Stadt Luzern, Katholische Kirche im Kanton Luzern, Katholische Kirchgemeinde Chur, Katholische Kirchgemeinde Kehl, Katholische Pfarrei St., Benignus Pfäffikon, Katholische Pfarrei St. Gallus Zürich, Kirche St. Peter Zürich, Konrad-Adenauer-Stiftung e.V, Kontaktstelle Ev. Jugend, Referat für Gesellschaftliche Verantwortung des Ev. Kirchenkreises Dortmund, Kreuzberger Ökumene, Berlin, Literaturhaus Basel, Luzerner Asylnetz, Marktkirche Essen, Moschee El-Hidaje, St. Gallen, NCBI, Offene Kirche Elisabethen, oikos-Institut für Mission und Ökumene, Paroisse réformée de Neuchâtel Accueil Café Migrants Passionskirche, Ev. Kirchengemeinde Heilig-Kreuz-Passion Berlin, Pastorales Zentrum Röm.-kath. Kirche, Baselland, Pastoralraum Basel-Stadt, Pax Christi, Berlin, Pauluskirche Ev. Lydia-Kirchengemeinde Dortmund, Pfarrei San Pio X, Basel, Privat Engagierte BS/BL, ProAsyl/Flüchtlingsrat Essen e.V., Projekt Ankommen e.V., Reformierte Kirche Zürich KK9, Reformierte Kirche Chur, Reformierte Kirche Stadt Luzern,\\nReformierte, Regards et Récits, Neuchâtel, Regionalbüro Westfalen, Röm- kath. Pfarrei Bruder Klaus, Birsfelden, Röm.- kath. Pastoralraum Allschwil-Schönenbuch, Röm.- kath. Pastoralraum am Blauen,Röm.-kath. Pfarrei St. Anton Pratteln-Augst, Sant'Egidio Schweiz, SAH Zentralschweiz, Schulreferat des Ev. Kirchenkreises Dortmund, Schweizerische Flüchtlingshilfe, Seebrücke Essen, Seebrücke Schweiz, Service de la cohésion multiculturelle du canton de Neuchâtel (COSM), SINGA Switzerland, Solidaritätshaus St. Gallen, Solidaritätsnetz Ostschweiz,Solinetz Luzern, Solinetz Zürich, SOS Méditerranée Genève, SOS Méditerranée Suisse Neuchâtel, SOS MEDITERRANEE, Ortsgruppe Basel, SOS MEDITERRANEE, Ortsgruppe Zürich, Staffan Gettys/Firma, TermitenBau, SPAZ, Spezialseelsorge und Diakonie, RKK BS TRAIN OF HOPE Dortmund e.V., Unia Neuchâtel, United4Rescue – Gemeinsam Retten e.V., Verein Hilfe für Asylsuchende Graubünden, Verein Miteinander Valzeina, VMDO Verbund der sozial-kulturellen Migrantenvereine in Dortmund e.v. (VMDO e.V.), Vossa Lingua Verein für Interkultur, Wasserkirche Zürich, We are AIA/Awareness in Art Zürich, Welthaus Dortmund e.V., Weltweit Berlin, Zen Peacemakers Bern, Zen-Zentrum im grünen Ring, St. Gallen\\n\\nSponsoren: AkiB, Katholische Kirche Region Bern, Kirche in Bewegung Refbejuso, Kirchgemeinde\\nFrieden, Kirchgemeinde Heiliggeist, Kirchgemeinde Paulus, offene kirche bern, Ref.\\nGesamtkirchgemeinde Bern"}	284	\N
285	318	directus_fields	65	{"sort":9,"collection":"event","field":"end","special":null,"interface":"datetime","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"validation":null,"validation_message":null}	{"sort":9,"collection":"event","field":"end","special":null,"interface":"datetime","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"validation":null,"validation_message":null}	\N	\N
286	319	directus_fields	66	{"sort":10,"interface":"input","special":null,"collection":"event","field":"link"}	{"sort":10,"interface":"input","special":null,"collection":"event","field":"link"}	\N	\N
288	321	directus_fields	68	{"sort":7,"interface":"input-multiline","special":null,"required":true,"collection":"event_translations","field":"customDates"}	{"sort":7,"interface":"input-multiline","special":null,"required":true,"collection":"event_translations","field":"customDates"}	\N	\N
295	328	event	5	{"translations":{"create":[{"location":"Bovetstrasse 1, 3007 Bern","languages_code":{"code":"de"},"name":"Gottesdienste und Gedenkaktionen auf Italienisch in der Missione Cattolica di Lingua Italiana","description":"<p>&lt;p class=\\"font_8\\"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>","customDates":"2023-06-17"},{"location":"Bovetstrasse 1, 3007 Bern","languages_code":{"code":"fr"},"name":"Services religieux et actions commémoratives en italien à la Missione Cattolica di Lingua Italiana","description":"<p>&lt;p class=\\"font_8\\"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>","customDates":"2023-06-17"}],"update":[],"delete":[]},"city":2}	{"translations":{"create":[{"location":"Bovetstrasse 1, 3007 Bern","languages_code":{"code":"de"},"name":"Gottesdienste und Gedenkaktionen auf Italienisch in der Missione Cattolica di Lingua Italiana","description":"<p>&lt;p class=\\"font_8\\"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>","customDates":"2023-06-17"},{"location":"Bovetstrasse 1, 3007 Bern","languages_code":{"code":"fr"},"name":"Services religieux et actions commémoratives en italien à la Missione Cattolica di Lingua Italiana","description":"<p>&lt;p class=\\"font_8\\"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>","customDates":"2023-06-17"}],"update":[],"delete":[]},"city":2}	\N	\N
293	326	event_translations	7	{"location":"Bovetstrasse 1, 3007 Bern","languages_code":{"code":"de"},"name":"Gottesdienste und Gedenkaktionen auf Italienisch in der Missione Cattolica di Lingua Italiana","description":"<p>&lt;p class=\\"font_8\\"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>","customDates":"2023-06-17","event_id":5}	{"location":"Bovetstrasse 1, 3007 Bern","languages_code":{"code":"de"},"name":"Gottesdienste und Gedenkaktionen auf Italienisch in der Missione Cattolica di Lingua Italiana","description":"<p>&lt;p class=\\"font_8\\"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>","customDates":"2023-06-17","event_id":5}	295	\N
351	384	directus_files	0c6462b2-f86e-4fca-a960-23c0222ce597	{"title":"Cde C O2 N Mf R8782","filename_download":"CDE_CO2N_MFR8782.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R8782","filename_download":"CDE_CO2N_MFR8782.jpg","type":"image/jpeg","storage":"local"}	\N	\N
294	327	event_translations	8	{"location":"Bovetstrasse 1, 3007 Bern","languages_code":{"code":"fr"},"name":"Services religieux et actions commémoratives en italien à la Missione Cattolica di Lingua Italiana","description":"<p>&lt;p class=\\"font_8\\"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>","customDates":"2023-06-17","event_id":5}	{"location":"Bovetstrasse 1, 3007 Bern","languages_code":{"code":"fr"},"name":"Services religieux et actions commémoratives en italien à la Missione Cattolica di Lingua Italiana","description":"<p>&lt;p class=\\"font_8\\"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>","customDates":"2023-06-17","event_id":5}	295	\N
296	329	directus_fields	62	{"id":62,"collection":"SupportLinks","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"SupportLinks","field":"city","special":["m2o"],"interface":"select-dropdown-m2o","options":null,"display":"related-values","display_options":{"template":"{{translations.name}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
287	320	directus_fields	67	{"sort":6,"interface":"input","special":null,"collection":"event_translations","field":"location"}	{"sort":6,"interface":"input","special":null,"collection":"event_translations","field":"location"}	\N	\N
297	330	directus_fields	69	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"CustomSections"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"CustomSections"}	\N	\N
298	331	directus_fields	70	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"CustomSections"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"CustomSections"}	\N	\N
299	332	directus_fields	71	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"CustomSections"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"CustomSections"}	\N	\N
300	333	directus_fields	72	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"CustomSections"}	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"CustomSections"}	\N	\N
301	334	directus_fields	73	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"CustomSections"}	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"CustomSections"}	\N	\N
302	335	directus_collections	CustomSections	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"CustomSections"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"CustomSections"}	\N	\N
312	345	directus_collections	CustomSections	{"collection":"CustomSections","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"archive_field":null,"sort_field":null}	\N	\N
317	350	CustomSections	1	{"translations":{"create":[{"title":" Petition im Rahmen der Aktion „Beim Namen nennen“ 2023: Wiederaufnahme des Resettlement-Programms der Schweiz ermöglichen","languages_code":{"code":"de"},"description":"<p>Im Juni werden in zehn verschiedenen Schweizer St&auml;dten die Namen von &uuml;ber 51&lsquo;000 M&auml;nner, Frauen und Kinder gelesen und aufgeschrieben, die auf der Flucht nach Europa ums Leben gekommen sind. Die europ&auml;ische und schweizerische Migrationspolitik ist mitverantwortlich f&uuml;r dieses entsetzliche Sterben an den Grenzen Europas. Es braucht sichere Fluchtwege.<br>Als erstes sollte die Schweiz so schnell wie m&ouml;glich, das von BR Karin Keller-Suter vor Weihnachten 2022 ausgesetzte Resettlement-Programm wieder aufnehmen. In diesem Programm nimmt die Schweiz vom UNHCR anerkannte Fl&uuml;chtlinge zum Beispiel aus den Lagern im Nahen Osten direkt in die Schweiz auf. Der gef&auml;hrliche Fluchtweg entf&auml;llt.<br>Die Schweiz hat sich verpflichtet bis Ende 2023 insgesamt 1600 besonders verletzliche Personen aufzunehmen (zum Beispiel: Frauen, Kinder und UMA, die Opfer von Folter, sexueller Gewalt, Menschenhandel und Sklaverei sind oder unter der Bedrohung solcher Gewalttaten gelebt haben.) Noch immer warten 800 Menschen sehnlichst darauf, aus den<br>prek&auml;ren Verh&auml;ltnissen direkt in die Schweiz aufgenommen zu werden.<br>Nun m&ouml;chte der Bundesrat die Einreisen wieder erm&ouml;glichen. Er ist dabei aber auf die Unterst&uuml;tzung der Kantone angewiesen.<br>Wir bitten den Regierungsrat des Kantons Bern: Senden Sie ein positives Signal an den Bundesrat und sichern Sie die Bereitschaft des Kantons zu, die Menschen, die dem Kanton Bern zugeteilt w&uuml;rden, aufzunehmen mit allem, was dazu geh&ouml;rt.<br>Viele Freiwillige in NGOs, in den Kirchen und auch die St&auml;dte bieten Hand, um bei der Betreuung, Unterbringung und Integration dieser Menschen zu helfen.</p>"},{"title":"Pétition dans le cadre de l'action \\"Appeler un chat un chat\\" 2023 : Permettre la reprise du programme de réinstallation de la Suisse","languages_code":{"code":"fr"},"description":"<p>En juin, dans dix villes suisses diff&eacute;rentes, les noms de plus de 51'000 hommes, femmes et enfants qui ont perdu la vie en fuyant vers l'Europe seront lus et &eacute;crits. La politique migratoire europ&eacute;enne et suisse est en partie responsable de cette mort horrible aux fronti&egrave;res de l'Europe. Il faut des voies de fuite s&ucirc;res.<br>En premier lieu, la Suisse devrait reprendre le plus rapidement possible le programme de r&eacute;installation suspendu par la conseill&egrave;re f&eacute;d&eacute;rale Karin Keller-Suter avant No&euml;l 2022. Dans le cadre de ce programme, la Suisse accueille directement en Suisse des r&eacute;fugi&eacute;s reconnus par le HCR, par exemple en provenance des camps du Proche-Orient. La voie de fuite dangereuse est ainsi supprim&eacute;e.<br>La Suisse s'est engag&eacute;e &agrave; accueillir au total 1600 personnes particuli&egrave;rement vuln&eacute;rables d'ici fin 2023 (par exemple : des femmes, des enfants et des MNA qui sont victimes de torture, de violences sexuelles, de la traite des &ecirc;tres humains et de l'esclavage ou qui ont v&eacute;cu sous la menace de tels actes de violence). Aujourd'hui encore, 800 personnes attendent avec impatience de pouvoir sortir des<br>&ecirc;tre admises directement en Suisse dans des conditions pr&eacute;caires.<br>Le Conseil f&eacute;d&eacute;ral souhaite &agrave; pr&eacute;sent permettre &agrave; nouveau ces entr&eacute;es. Mais pour cela, il a besoin du soutien des cantons.<br>Nous demandons au Conseil d'Etat du canton de Berne : envoyez un signal positif au Conseil f&eacute;d&eacute;ral et assurez la disponibilit&eacute; du canton &agrave; accueillir les personnes qui seraient attribu&eacute;es au canton de Berne, avec tout ce que cela implique.<br>De nombreux b&eacute;n&eacute;voles dans les ONG, les &eacute;glises et d'autres organisations sont pr&ecirc;ts &agrave; s'engager.</p>"}],"update":[],"delete":[]},"link":"https://www.beimnamennennen.ch/fr/_files/ugd/760542_d48074e289cc44c780c31302e44e150e.pdf","city":2}	{"translations":{"create":[{"title":" Petition im Rahmen der Aktion „Beim Namen nennen“ 2023: Wiederaufnahme des Resettlement-Programms der Schweiz ermöglichen","languages_code":{"code":"de"},"description":"<p>Im Juni werden in zehn verschiedenen Schweizer St&auml;dten die Namen von &uuml;ber 51&lsquo;000 M&auml;nner, Frauen und Kinder gelesen und aufgeschrieben, die auf der Flucht nach Europa ums Leben gekommen sind. Die europ&auml;ische und schweizerische Migrationspolitik ist mitverantwortlich f&uuml;r dieses entsetzliche Sterben an den Grenzen Europas. Es braucht sichere Fluchtwege.<br>Als erstes sollte die Schweiz so schnell wie m&ouml;glich, das von BR Karin Keller-Suter vor Weihnachten 2022 ausgesetzte Resettlement-Programm wieder aufnehmen. In diesem Programm nimmt die Schweiz vom UNHCR anerkannte Fl&uuml;chtlinge zum Beispiel aus den Lagern im Nahen Osten direkt in die Schweiz auf. Der gef&auml;hrliche Fluchtweg entf&auml;llt.<br>Die Schweiz hat sich verpflichtet bis Ende 2023 insgesamt 1600 besonders verletzliche Personen aufzunehmen (zum Beispiel: Frauen, Kinder und UMA, die Opfer von Folter, sexueller Gewalt, Menschenhandel und Sklaverei sind oder unter der Bedrohung solcher Gewalttaten gelebt haben.) Noch immer warten 800 Menschen sehnlichst darauf, aus den<br>prek&auml;ren Verh&auml;ltnissen direkt in die Schweiz aufgenommen zu werden.<br>Nun m&ouml;chte der Bundesrat die Einreisen wieder erm&ouml;glichen. Er ist dabei aber auf die Unterst&uuml;tzung der Kantone angewiesen.<br>Wir bitten den Regierungsrat des Kantons Bern: Senden Sie ein positives Signal an den Bundesrat und sichern Sie die Bereitschaft des Kantons zu, die Menschen, die dem Kanton Bern zugeteilt w&uuml;rden, aufzunehmen mit allem, was dazu geh&ouml;rt.<br>Viele Freiwillige in NGOs, in den Kirchen und auch die St&auml;dte bieten Hand, um bei der Betreuung, Unterbringung und Integration dieser Menschen zu helfen.</p>"},{"title":"Pétition dans le cadre de l'action \\"Appeler un chat un chat\\" 2023 : Permettre la reprise du programme de réinstallation de la Suisse","languages_code":{"code":"fr"},"description":"<p>En juin, dans dix villes suisses diff&eacute;rentes, les noms de plus de 51'000 hommes, femmes et enfants qui ont perdu la vie en fuyant vers l'Europe seront lus et &eacute;crits. La politique migratoire europ&eacute;enne et suisse est en partie responsable de cette mort horrible aux fronti&egrave;res de l'Europe. Il faut des voies de fuite s&ucirc;res.<br>En premier lieu, la Suisse devrait reprendre le plus rapidement possible le programme de r&eacute;installation suspendu par la conseill&egrave;re f&eacute;d&eacute;rale Karin Keller-Suter avant No&euml;l 2022. Dans le cadre de ce programme, la Suisse accueille directement en Suisse des r&eacute;fugi&eacute;s reconnus par le HCR, par exemple en provenance des camps du Proche-Orient. La voie de fuite dangereuse est ainsi supprim&eacute;e.<br>La Suisse s'est engag&eacute;e &agrave; accueillir au total 1600 personnes particuli&egrave;rement vuln&eacute;rables d'ici fin 2023 (par exemple : des femmes, des enfants et des MNA qui sont victimes de torture, de violences sexuelles, de la traite des &ecirc;tres humains et de l'esclavage ou qui ont v&eacute;cu sous la menace de tels actes de violence). Aujourd'hui encore, 800 personnes attendent avec impatience de pouvoir sortir des<br>&ecirc;tre admises directement en Suisse dans des conditions pr&eacute;caires.<br>Le Conseil f&eacute;d&eacute;ral souhaite &agrave; pr&eacute;sent permettre &agrave; nouveau ces entr&eacute;es. Mais pour cela, il a besoin du soutien des cantons.<br>Nous demandons au Conseil d'Etat du canton de Berne : envoyez un signal positif au Conseil f&eacute;d&eacute;ral et assurez la disponibilit&eacute; du canton &agrave; accueillir les personnes qui seraient attribu&eacute;es au canton de Berne, avec tout ce que cela implique.<br>De nombreux b&eacute;n&eacute;voles dans les ONG, les &eacute;glises et d'autres organisations sont pr&ecirc;ts &agrave; s'engager.</p>"}],"update":[],"delete":[]},"link":"https://www.beimnamennennen.ch/fr/_files/ugd/760542_d48074e289cc44c780c31302e44e150e.pdf","city":2}	\N	\N
322	355	directus_fields	83	{"id":83,"collection":"city","field":"customSections","special":["o2m"],"interface":"list-o2m","options":null,"display":"related-values","display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"city","field":"customSections","special":["o2m"],"interface":"list-o2m","options":null,"display":"related-values","display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
323	356	directus_fields	83	{"id":83,"collection":"city","field":"customSections","special":["o2m"],"interface":"list-o2m","options":{"template":"{{translations.title}}"},"display":"related-values","display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"city","field":"customSections","special":["o2m"],"interface":"list-o2m","options":{"template":"{{translations.title}}"},"display":"related-values","display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
327	360	directus_files	83ad9a9d-77dc-4eca-9a0e-4596b1221f0b	{"title":"Bern Lesen Schreiben 03","filename_download":"bern_lesen-schreiben-03.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 03","filename_download":"bern_lesen-schreiben-03.jpg","type":"image/jpeg","storage":"local"}	\N	\N
702	794	directus_fields	155	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"home"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"home"}	\N	\N
329	363	directus_files	5fe1e0ef-1903-4907-bd61-167b748b3820	{"title":"Bern Lesen Schreiben 02","filename_download":"bern_lesen-schreiben-02.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 02","filename_download":"bern_lesen-schreiben-02.jpg","type":"image/jpeg","storage":"local"}	\N	\N
331	364	directus_files	425a0e8e-16b3-4405-9e7d-4d133b09c14b	{"title":"Cde C O2 N Mf R2867","filename_download":"CDE_CO2N_MFR2867.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R2867","filename_download":"CDE_CO2N_MFR2867.jpg","type":"image/jpeg","storage":"local"}	\N	\N
333	367	directus_files	a22a9ec3-84c9-4b95-9a00-7d9f62eaf1a6	{"title":"Ok Bnn Mf R5706","filename_download":"OK_BNN_MFR5706.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5706","filename_download":"OK_BNN_MFR5706.jpg","type":"image/jpeg","storage":"local"}	\N	\N
336	369	directus_files	cdbe4b25-5eac-4489-a45e-e254e04e83a1	{"title":"Ok Bnn Mf R5718","filename_download":"OK_BNN_MFR5718.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5718","filename_download":"OK_BNN_MFR5718.jpg","type":"image/jpeg","storage":"local"}	\N	\N
338	371	directus_files	5ce3e335-c4ec-4b6c-a4e3-8635d1f5659c	{"title":"Ok Bnn Mf R5772","filename_download":"OK_BNN_MFR5772.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5772","filename_download":"OK_BNN_MFR5772.jpg","type":"image/jpeg","storage":"local"}	\N	\N
340	373	directus_files	9a84a67e-7ce4-4058-9999-e3618f028112	{"title":"Ok Bnn Mf R5788","filename_download":"OK_BNN_MFR5788.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5788","filename_download":"OK_BNN_MFR5788.jpg","type":"image/jpeg","storage":"local"}	\N	\N
342	375	directus_files	dc123d72-8323-45eb-a943-36389dc5bea6	{"title":"Bern Lesen Schreiben 03","filename_download":"bern_lesen-schreiben-03.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 03","filename_download":"bern_lesen-schreiben-03.jpg","type":"image/jpeg","storage":"local"}	\N	\N
289	322	directus_files	5556b0ea-7025-40a9-aaaf-b55713639b87	{"title":"Cds Bpan 15 06 20 800","filename_download":"Cds_BPAN_15_06_20_800.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cds Bpan 15 06 20 800","filename_download":"Cds_BPAN_15_06_20_800.jpg","type":"image/jpeg","storage":"local"}	\N	\N
303	336	directus_fields	74	{"sort":6,"interface":"input","special":null,"collection":"CustomSections","field":"title"}	{"sort":6,"interface":"input","special":null,"collection":"CustomSections","field":"title"}	\N	\N
305	338	directus_fields	76	{"sort":1,"hidden":true,"field":"id","collection":"CustomSections_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"CustomSections_translations"}	\N	\N
306	339	directus_collections	CustomSections_translations	{"hidden":true,"icon":"import_export","collection":"CustomSections_translations"}	{"hidden":true,"icon":"import_export","collection":"CustomSections_translations"}	\N	\N
307	340	directus_fields	77	{"sort":2,"hidden":true,"collection":"CustomSections_translations","field":"CustomSections_id"}	{"sort":2,"hidden":true,"collection":"CustomSections_translations","field":"CustomSections_id"}	\N	\N
309	342	directus_fields	79	{"sort":4,"interface":"input","special":null,"collection":"CustomSections_translations","field":"title"}	{"sort":4,"interface":"input","special":null,"collection":"CustomSections_translations","field":"title"}	\N	\N
313	346	directus_fields	82	{"sort":8,"interface":"select-dropdown-m2o","special":["m2o"],"collection":"CustomSections","field":"city"}	{"sort":8,"interface":"select-dropdown-m2o","special":["m2o"],"collection":"CustomSections","field":"city"}	\N	\N
314	347	directus_fields	83	{"sort":11,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"customSections"}	{"sort":11,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"customSections"}	\N	\N
315	348	CustomSections_translations	1	{"title":" Petition im Rahmen der Aktion „Beim Namen nennen“ 2023: Wiederaufnahme des Resettlement-Programms der Schweiz ermöglichen","languages_code":{"code":"de"},"description":"<p>Im Juni werden in zehn verschiedenen Schweizer St&auml;dten die Namen von &uuml;ber 51&lsquo;000 M&auml;nner, Frauen und Kinder gelesen und aufgeschrieben, die auf der Flucht nach Europa ums Leben gekommen sind. Die europ&auml;ische und schweizerische Migrationspolitik ist mitverantwortlich f&uuml;r dieses entsetzliche Sterben an den Grenzen Europas. Es braucht sichere Fluchtwege.<br>Als erstes sollte die Schweiz so schnell wie m&ouml;glich, das von BR Karin Keller-Suter vor Weihnachten 2022 ausgesetzte Resettlement-Programm wieder aufnehmen. In diesem Programm nimmt die Schweiz vom UNHCR anerkannte Fl&uuml;chtlinge zum Beispiel aus den Lagern im Nahen Osten direkt in die Schweiz auf. Der gef&auml;hrliche Fluchtweg entf&auml;llt.<br>Die Schweiz hat sich verpflichtet bis Ende 2023 insgesamt 1600 besonders verletzliche Personen aufzunehmen (zum Beispiel: Frauen, Kinder und UMA, die Opfer von Folter, sexueller Gewalt, Menschenhandel und Sklaverei sind oder unter der Bedrohung solcher Gewalttaten gelebt haben.) Noch immer warten 800 Menschen sehnlichst darauf, aus den<br>prek&auml;ren Verh&auml;ltnissen direkt in die Schweiz aufgenommen zu werden.<br>Nun m&ouml;chte der Bundesrat die Einreisen wieder erm&ouml;glichen. Er ist dabei aber auf die Unterst&uuml;tzung der Kantone angewiesen.<br>Wir bitten den Regierungsrat des Kantons Bern: Senden Sie ein positives Signal an den Bundesrat und sichern Sie die Bereitschaft des Kantons zu, die Menschen, die dem Kanton Bern zugeteilt w&uuml;rden, aufzunehmen mit allem, was dazu geh&ouml;rt.<br>Viele Freiwillige in NGOs, in den Kirchen und auch die St&auml;dte bieten Hand, um bei der Betreuung, Unterbringung und Integration dieser Menschen zu helfen.</p>","CustomSections_id":1}	{"title":" Petition im Rahmen der Aktion „Beim Namen nennen“ 2023: Wiederaufnahme des Resettlement-Programms der Schweiz ermöglichen","languages_code":{"code":"de"},"description":"<p>Im Juni werden in zehn verschiedenen Schweizer St&auml;dten die Namen von &uuml;ber 51&lsquo;000 M&auml;nner, Frauen und Kinder gelesen und aufgeschrieben, die auf der Flucht nach Europa ums Leben gekommen sind. Die europ&auml;ische und schweizerische Migrationspolitik ist mitverantwortlich f&uuml;r dieses entsetzliche Sterben an den Grenzen Europas. Es braucht sichere Fluchtwege.<br>Als erstes sollte die Schweiz so schnell wie m&ouml;glich, das von BR Karin Keller-Suter vor Weihnachten 2022 ausgesetzte Resettlement-Programm wieder aufnehmen. In diesem Programm nimmt die Schweiz vom UNHCR anerkannte Fl&uuml;chtlinge zum Beispiel aus den Lagern im Nahen Osten direkt in die Schweiz auf. Der gef&auml;hrliche Fluchtweg entf&auml;llt.<br>Die Schweiz hat sich verpflichtet bis Ende 2023 insgesamt 1600 besonders verletzliche Personen aufzunehmen (zum Beispiel: Frauen, Kinder und UMA, die Opfer von Folter, sexueller Gewalt, Menschenhandel und Sklaverei sind oder unter der Bedrohung solcher Gewalttaten gelebt haben.) Noch immer warten 800 Menschen sehnlichst darauf, aus den<br>prek&auml;ren Verh&auml;ltnissen direkt in die Schweiz aufgenommen zu werden.<br>Nun m&ouml;chte der Bundesrat die Einreisen wieder erm&ouml;glichen. Er ist dabei aber auf die Unterst&uuml;tzung der Kantone angewiesen.<br>Wir bitten den Regierungsrat des Kantons Bern: Senden Sie ein positives Signal an den Bundesrat und sichern Sie die Bereitschaft des Kantons zu, die Menschen, die dem Kanton Bern zugeteilt w&uuml;rden, aufzunehmen mit allem, was dazu geh&ouml;rt.<br>Viele Freiwillige in NGOs, in den Kirchen und auch die St&auml;dte bieten Hand, um bei der Betreuung, Unterbringung und Integration dieser Menschen zu helfen.</p>","CustomSections_id":1}	317	\N
316	349	CustomSections_translations	2	{"title":"Pétition dans le cadre de l'action \\"Appeler un chat un chat\\" 2023 : Permettre la reprise du programme de réinstallation de la Suisse","languages_code":{"code":"fr"},"description":"<p>En juin, dans dix villes suisses diff&eacute;rentes, les noms de plus de 51'000 hommes, femmes et enfants qui ont perdu la vie en fuyant vers l'Europe seront lus et &eacute;crits. La politique migratoire europ&eacute;enne et suisse est en partie responsable de cette mort horrible aux fronti&egrave;res de l'Europe. Il faut des voies de fuite s&ucirc;res.<br>En premier lieu, la Suisse devrait reprendre le plus rapidement possible le programme de r&eacute;installation suspendu par la conseill&egrave;re f&eacute;d&eacute;rale Karin Keller-Suter avant No&euml;l 2022. Dans le cadre de ce programme, la Suisse accueille directement en Suisse des r&eacute;fugi&eacute;s reconnus par le HCR, par exemple en provenance des camps du Proche-Orient. La voie de fuite dangereuse est ainsi supprim&eacute;e.<br>La Suisse s'est engag&eacute;e &agrave; accueillir au total 1600 personnes particuli&egrave;rement vuln&eacute;rables d'ici fin 2023 (par exemple : des femmes, des enfants et des MNA qui sont victimes de torture, de violences sexuelles, de la traite des &ecirc;tres humains et de l'esclavage ou qui ont v&eacute;cu sous la menace de tels actes de violence). Aujourd'hui encore, 800 personnes attendent avec impatience de pouvoir sortir des<br>&ecirc;tre admises directement en Suisse dans des conditions pr&eacute;caires.<br>Le Conseil f&eacute;d&eacute;ral souhaite &agrave; pr&eacute;sent permettre &agrave; nouveau ces entr&eacute;es. Mais pour cela, il a besoin du soutien des cantons.<br>Nous demandons au Conseil d'Etat du canton de Berne : envoyez un signal positif au Conseil f&eacute;d&eacute;ral et assurez la disponibilit&eacute; du canton &agrave; accueillir les personnes qui seraient attribu&eacute;es au canton de Berne, avec tout ce que cela implique.<br>De nombreux b&eacute;n&eacute;voles dans les ONG, les &eacute;glises et d'autres organisations sont pr&ecirc;ts &agrave; s'engager.</p>","CustomSections_id":1}	{"title":"Pétition dans le cadre de l'action \\"Appeler un chat un chat\\" 2023 : Permettre la reprise du programme de réinstallation de la Suisse","languages_code":{"code":"fr"},"description":"<p>En juin, dans dix villes suisses diff&eacute;rentes, les noms de plus de 51'000 hommes, femmes et enfants qui ont perdu la vie en fuyant vers l'Europe seront lus et &eacute;crits. La politique migratoire europ&eacute;enne et suisse est en partie responsable de cette mort horrible aux fronti&egrave;res de l'Europe. Il faut des voies de fuite s&ucirc;res.<br>En premier lieu, la Suisse devrait reprendre le plus rapidement possible le programme de r&eacute;installation suspendu par la conseill&egrave;re f&eacute;d&eacute;rale Karin Keller-Suter avant No&euml;l 2022. Dans le cadre de ce programme, la Suisse accueille directement en Suisse des r&eacute;fugi&eacute;s reconnus par le HCR, par exemple en provenance des camps du Proche-Orient. La voie de fuite dangereuse est ainsi supprim&eacute;e.<br>La Suisse s'est engag&eacute;e &agrave; accueillir au total 1600 personnes particuli&egrave;rement vuln&eacute;rables d'ici fin 2023 (par exemple : des femmes, des enfants et des MNA qui sont victimes de torture, de violences sexuelles, de la traite des &ecirc;tres humains et de l'esclavage ou qui ont v&eacute;cu sous la menace de tels actes de violence). Aujourd'hui encore, 800 personnes attendent avec impatience de pouvoir sortir des<br>&ecirc;tre admises directement en Suisse dans des conditions pr&eacute;caires.<br>Le Conseil f&eacute;d&eacute;ral souhaite &agrave; pr&eacute;sent permettre &agrave; nouveau ces entr&eacute;es. Mais pour cela, il a besoin du soutien des cantons.<br>Nous demandons au Conseil d'Etat du canton de Berne : envoyez un signal positif au Conseil f&eacute;d&eacute;ral et assurez la disponibilit&eacute; du canton &agrave; accueillir les personnes qui seraient attribu&eacute;es au canton de Berne, avec tout ce que cela implique.<br>De nombreux b&eacute;n&eacute;voles dans les ONG, les &eacute;glises et d'autres organisations sont pr&ecirc;ts &agrave; s'engager.</p>","CustomSections_id":1}	317	\N
359	392	directus_files	3e1f3db6-0a84-433e-957c-972ce8a1d278	{"title":"Ok Bnn Mf R5788","filename_download":"OK_BNN_MFR5788.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5788","filename_download":"OK_BNN_MFR5788.jpg","type":"image/jpeg","storage":"local"}	\N	\N
360	393	directus_files	c55467d4-8338-437b-a177-c0710f9a535d	{"title":"Cde C O2 N Mf R2853","filename_download":"CDE_CO2N_MFR2853.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R2853","filename_download":"CDE_CO2N_MFR2853.jpg","type":"image/jpeg","storage":"local"}	\N	\N
324	357	directus_fields	83	{"id":83,"collection":"city","field":"customSections","special":["o2m"],"interface":"list-o2m","options":{"template":"{{translations.title}}"},"display":"related-values","display_options":{"template":"{{translations.title}}"},"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"city","field":"customSections","special":["o2m"],"interface":"list-o2m","options":{"template":"{{translations.title}}"},"display":"related-values","display_options":{"template":"{{translations.title}}"},"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
328	361	directus_files	cdd76a04-84f2-426d-b3e6-a4d48ec8a7aa	{"title":"Bern Lesen Schreiben 06","filename_download":"bern_lesen-schreiben-06.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 06","filename_download":"bern_lesen-schreiben-06.jpg","type":"image/jpeg","storage":"local"}	\N	\N
330	362	directus_files	4aece6fc-c22f-4751-8f2e-cb8453ec98ae	{"title":"Bern Lesen Schreiben 01","filename_download":"bern_lesen-schreiben-01.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 01","filename_download":"bern_lesen-schreiben-01.jpg","type":"image/jpeg","storage":"local"}	\N	\N
332	365	directus_files	f80b438b-97d2-4fb9-8645-fd2b334f628c	{"title":"Ok Bnn Mf R5701","filename_download":"OK_BNN_MFR5701.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5701","filename_download":"OK_BNN_MFR5701.jpg","type":"image/jpeg","storage":"local"}	\N	\N
334	366	directus_files	981dd0e3-e926-47d4-8794-c7a307017c08	{"title":"Cde C O2 N Mf R8782","filename_download":"CDE_CO2N_MFR8782.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R8782","filename_download":"CDE_CO2N_MFR8782.jpg","type":"image/jpeg","storage":"local"}	\N	\N
335	368	directus_files	56e68cfa-5ac6-4c83-ac3e-f8ac6652fd80	{"title":"Ok Bnn Mf R5703","filename_download":"OK_BNN_MFR5703.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5703","filename_download":"OK_BNN_MFR5703.jpg","type":"image/jpeg","storage":"local"}	\N	\N
337	370	directus_files	9130e67e-5565-4a66-bc25-c478cf7e70e8	{"title":"Ok Bnn Mf R5735","filename_download":"OK_BNN_MFR5735.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5735","filename_download":"OK_BNN_MFR5735.jpg","type":"image/jpeg","storage":"local"}	\N	\N
292	325	event	4	{"translations":{"create":[{"name":"Kreis der Stille","languages_code":{"code":"de"},"description":"<p>&nbsp;</p>\\n<table cellspacing=\\"0\\" cellpadding=\\"3\\">\\n<tbody>\\n<tr>\\n<td colspan=\\"35\\" align=\\"left\\" valign=\\"bottom\\">&lt;p class=\\"font_8\\"&gt;Wir, Gefl&uuml;chtete und Nicht-Gefl&uuml;chtete gemeinsam, wollen in diesem Kreis ein Zeichen der Solidarit&auml;t setzen und auf die sehr schwierige Situation von abgelehnten Asylsuchenden und Menschen ohne Papiere in der Schweiz aufmerksam machen und derer gedenken, die auf der Flucht ihr Leben verloren haben.&lt;/p&gt;</td>\\n</tr>\\n</tbody>\\n</table>","location":"Bahnhofplatz Bern, neben Heiliggeistkirche","customDates":"2023-06-17"},{"name":"Cercle de Silence","languages_code":{"code":"fr"},"description":"<p>&lt;p class=\\"font_8\\"&gt;Nous, r&eacute;fugi&eacute;s et non-r&eacute;fugi&eacute;s ensemble, voulons dans ce cercle donner un signe de solidarit&eacute; et attirer l'attention sur la situation tr&egrave;s difficile des requ&eacute;rants d'asile d&eacute;bout&eacute;s et des personnes sans papiers en Suisse, et rendre hommage &agrave; ceux qui ont perdu la vie en fuyant.&lt;/p&gt;</p>","location":"Place de la gare de Berne, à côté de l'église du Saint-Esprit","customDates":"2023-06-17"}],"update":[],"delete":[]},"city":2,"teaser":"5556b0ea-7025-40a9-aaaf-b55713639b87","link":"https://www.kathbern.ch/fasa/sozialpolitisches-engagement/cercle-de-silence"}	{"translations":{"create":[{"name":"Kreis der Stille","languages_code":{"code":"de"},"description":"<p>&nbsp;</p>\\n<table cellspacing=\\"0\\" cellpadding=\\"3\\">\\n<tbody>\\n<tr>\\n<td colspan=\\"35\\" align=\\"left\\" valign=\\"bottom\\">&lt;p class=\\"font_8\\"&gt;Wir, Gefl&uuml;chtete und Nicht-Gefl&uuml;chtete gemeinsam, wollen in diesem Kreis ein Zeichen der Solidarit&auml;t setzen und auf die sehr schwierige Situation von abgelehnten Asylsuchenden und Menschen ohne Papiere in der Schweiz aufmerksam machen und derer gedenken, die auf der Flucht ihr Leben verloren haben.&lt;/p&gt;</td>\\n</tr>\\n</tbody>\\n</table>","location":"Bahnhofplatz Bern, neben Heiliggeistkirche","customDates":"2023-06-17"},{"name":"Cercle de Silence","languages_code":{"code":"fr"},"description":"<p>&lt;p class=\\"font_8\\"&gt;Nous, r&eacute;fugi&eacute;s et non-r&eacute;fugi&eacute;s ensemble, voulons dans ce cercle donner un signe de solidarit&eacute; et attirer l'attention sur la situation tr&egrave;s difficile des requ&eacute;rants d'asile d&eacute;bout&eacute;s et des personnes sans papiers en Suisse, et rendre hommage &agrave; ceux qui ont perdu la vie en fuyant.&lt;/p&gt;</p>","location":"Place de la gare de Berne, à côté de l'église du Saint-Esprit","customDates":"2023-06-17"}],"update":[],"delete":[]},"city":2,"teaser":"5556b0ea-7025-40a9-aaaf-b55713639b87","link":"https://www.kathbern.ch/fasa/sozialpolitisches-engagement/cercle-de-silence"}	\N	\N
290	323	event_translations	5	{"name":"Kreis der Stille","languages_code":{"code":"de"},"description":"<p>&nbsp;</p>\\n<table cellspacing=\\"0\\" cellpadding=\\"3\\">\\n<tbody>\\n<tr>\\n<td colspan=\\"35\\" align=\\"left\\" valign=\\"bottom\\">&lt;p class=\\"font_8\\"&gt;Wir, Gefl&uuml;chtete und Nicht-Gefl&uuml;chtete gemeinsam, wollen in diesem Kreis ein Zeichen der Solidarit&auml;t setzen und auf die sehr schwierige Situation von abgelehnten Asylsuchenden und Menschen ohne Papiere in der Schweiz aufmerksam machen und derer gedenken, die auf der Flucht ihr Leben verloren haben.&lt;/p&gt;</td>\\n</tr>\\n</tbody>\\n</table>","location":"Bahnhofplatz Bern, neben Heiliggeistkirche","customDates":"2023-06-17","event_id":4}	{"name":"Kreis der Stille","languages_code":{"code":"de"},"description":"<p>&nbsp;</p>\\n<table cellspacing=\\"0\\" cellpadding=\\"3\\">\\n<tbody>\\n<tr>\\n<td colspan=\\"35\\" align=\\"left\\" valign=\\"bottom\\">&lt;p class=\\"font_8\\"&gt;Wir, Gefl&uuml;chtete und Nicht-Gefl&uuml;chtete gemeinsam, wollen in diesem Kreis ein Zeichen der Solidarit&auml;t setzen und auf die sehr schwierige Situation von abgelehnten Asylsuchenden und Menschen ohne Papiere in der Schweiz aufmerksam machen und derer gedenken, die auf der Flucht ihr Leben verloren haben.&lt;/p&gt;</td>\\n</tr>\\n</tbody>\\n</table>","location":"Bahnhofplatz Bern, neben Heiliggeistkirche","customDates":"2023-06-17","event_id":4}	292	\N
291	324	event_translations	6	{"name":"Cercle de Silence","languages_code":{"code":"fr"},"description":"<p>&lt;p class=\\"font_8\\"&gt;Nous, r&eacute;fugi&eacute;s et non-r&eacute;fugi&eacute;s ensemble, voulons dans ce cercle donner un signe de solidarit&eacute; et attirer l'attention sur la situation tr&egrave;s difficile des requ&eacute;rants d'asile d&eacute;bout&eacute;s et des personnes sans papiers en Suisse, et rendre hommage &agrave; ceux qui ont perdu la vie en fuyant.&lt;/p&gt;</p>","location":"Place de la gare de Berne, à côté de l'église du Saint-Esprit","customDates":"2023-06-17","event_id":4}	{"name":"Cercle de Silence","languages_code":{"code":"fr"},"description":"<p>&lt;p class=\\"font_8\\"&gt;Nous, r&eacute;fugi&eacute;s et non-r&eacute;fugi&eacute;s ensemble, voulons dans ce cercle donner un signe de solidarit&eacute; et attirer l'attention sur la situation tr&egrave;s difficile des requ&eacute;rants d'asile d&eacute;bout&eacute;s et des personnes sans papiers en Suisse, et rendre hommage &agrave; ceux qui ont perdu la vie en fuyant.&lt;/p&gt;</p>","location":"Place de la gare de Berne, à côté de l'église du Saint-Esprit","customDates":"2023-06-17","event_id":4}	292	\N
304	337	directus_fields	75	{"sort":6,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"CustomSections","field":"translations"}	{"sort":6,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"CustomSections","field":"translations"}	\N	\N
308	341	directus_fields	78	{"sort":3,"hidden":true,"collection":"CustomSections_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"CustomSections_translations","field":"languages_code"}	\N	\N
310	343	directus_fields	80	{"sort":5,"interface":"input-rich-text-html","special":null,"collection":"CustomSections_translations","field":"description"}	{"sort":5,"interface":"input-rich-text-html","special":null,"collection":"CustomSections_translations","field":"description"}	\N	\N
703	795	directus_collections	home	{"singleton":true,"collection":"home"}	{"singleton":true,"collection":"home"}	\N	\N
318	351	directus_fields	84	{"sort":6,"interface":"input","special":null,"collection":"CustomSections_translations","field":"linkText"}	{"sort":6,"interface":"input","special":null,"collection":"CustomSections_translations","field":"linkText"}	\N	\N
325	358	directus_permissions	50	{"role":null,"collection":"CustomSections","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"CustomSections","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
326	359	directus_permissions	51	{"role":null,"collection":"CustomSections_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"CustomSections_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
339	372	directus_files	cdbe52e5-a926-44e0-9eab-51e1a6abaeb4	{"title":"Ok Bnn Mf R5724","filename_download":"OK_BNN_MFR5724.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5724","filename_download":"OK_BNN_MFR5724.jpg","type":"image/jpeg","storage":"local"}	\N	\N
341	374	directus_files	a6150896-1236-46da-b6b2-916ac4c336b5	{"title":"Cde C O2 N Mf R2853","filename_download":"CDE_CO2N_MFR2853.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R2853","filename_download":"CDE_CO2N_MFR2853.jpg","type":"image/jpeg","storage":"local"}	\N	\N
344	377	directus_files	255e9876-3511-4338-932d-de553ca6523a	{"title":"Bern Lesen Schreiben 06","filename_download":"bern_lesen-schreiben-06.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 06","filename_download":"bern_lesen-schreiben-06.jpg","type":"image/jpeg","storage":"local"}	\N	\N
346	379	directus_files	8b3b763c-9d84-4797-ba28-6e52eab82a73	{"title":"Bern Lesen Schreiben 10","filename_download":"bern_lesen-schreiben-10.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 10","filename_download":"bern_lesen-schreiben-10.jpg","type":"image/jpeg","storage":"local"}	\N	\N
348	381	directus_files	7b5011a5-e238-459c-b133-9cb10c0f49b5	{"title":"Cde C O2 N Mf R8686","filename_download":"CDE_CO2N_MFR8686.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R8686","filename_download":"CDE_CO2N_MFR8686.jpg","type":"image/jpeg","storage":"local"}	\N	\N
350	383	directus_files	5c60c983-c656-4bb7-bd46-0a107e5bde4c	{"title":"Cde C O2 N Mf R8794","filename_download":"CDE_CO2N_MFR8794.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R8794","filename_download":"CDE_CO2N_MFR8794.jpg","type":"image/jpeg","storage":"local"}	\N	\N
321	354	CustomSections	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-02-02T10:24:56.021Z","date_updated":"2024-02-02T10:25:53.900Z","link":"https://www.beimnamennennen.ch/fr/_files/ugd/760542_d48074e289cc44c780c31302e44e150e.pdf","city":2,"translations":[1,2]}	{"date_updated":"2024-02-02T10:25:53.900Z"}	\N	\N
319	352	CustomSections_translations	1	{"id":1,"CustomSections_id":1,"languages_code":"de","title":" Petition im Rahmen der Aktion „Beim Namen nennen“ 2023: Wiederaufnahme des Resettlement-Programms der Schweiz ermöglichen","description":"<p>Im Juni werden in zehn verschiedenen Schweizer St&auml;dten die Namen von &uuml;ber 51&lsquo;000 M&auml;nner, Frauen und Kinder gelesen und aufgeschrieben, die auf der Flucht nach Europa ums Leben gekommen sind. Die europ&auml;ische und schweizerische Migrationspolitik ist mitverantwortlich f&uuml;r dieses entsetzliche Sterben an den Grenzen Europas. Es braucht sichere Fluchtwege.<br>Als erstes sollte die Schweiz so schnell wie m&ouml;glich, das von BR Karin Keller-Suter vor Weihnachten 2022 ausgesetzte Resettlement-Programm wieder aufnehmen. In diesem Programm nimmt die Schweiz vom UNHCR anerkannte Fl&uuml;chtlinge zum Beispiel aus den Lagern im Nahen Osten direkt in die Schweiz auf. Der gef&auml;hrliche Fluchtweg entf&auml;llt.<br>Die Schweiz hat sich verpflichtet bis Ende 2023 insgesamt 1600 besonders verletzliche Personen aufzunehmen (zum Beispiel: Frauen, Kinder und UMA, die Opfer von Folter, sexueller Gewalt, Menschenhandel und Sklaverei sind oder unter der Bedrohung solcher Gewalttaten gelebt haben.) Noch immer warten 800 Menschen sehnlichst darauf, aus den<br>prek&auml;ren Verh&auml;ltnissen direkt in die Schweiz aufgenommen zu werden.<br>Nun m&ouml;chte der Bundesrat die Einreisen wieder erm&ouml;glichen. Er ist dabei aber auf die Unterst&uuml;tzung der Kantone angewiesen.<br>Wir bitten den Regierungsrat des Kantons Bern: Senden Sie ein positives Signal an den Bundesrat und sichern Sie die Bereitschaft des Kantons zu, die Menschen, die dem Kanton Bern zugeteilt w&uuml;rden, aufzunehmen mit allem, was dazu geh&ouml;rt.<br>Viele Freiwillige in NGOs, in den Kirchen und auch die St&auml;dte bieten Hand, um bei der Betreuung, Unterbringung und Integration dieser Menschen zu helfen.</p>","linkText":"Petition unterschreiben"}	{"CustomSections_id":"1","languages_code":"de","linkText":"Petition unterschreiben"}	321	\N
320	353	CustomSections_translations	2	{"id":2,"CustomSections_id":1,"languages_code":"fr","title":"Pétition dans le cadre de l'action \\"Appeler un chat un chat\\" 2023 : Permettre la reprise du programme de réinstallation de la Suisse","description":"<p>En juin, dans dix villes suisses diff&eacute;rentes, les noms de plus de 51'000 hommes, femmes et enfants qui ont perdu la vie en fuyant vers l'Europe seront lus et &eacute;crits. La politique migratoire europ&eacute;enne et suisse est en partie responsable de cette mort horrible aux fronti&egrave;res de l'Europe. Il faut des voies de fuite s&ucirc;res.<br>En premier lieu, la Suisse devrait reprendre le plus rapidement possible le programme de r&eacute;installation suspendu par la conseill&egrave;re f&eacute;d&eacute;rale Karin Keller-Suter avant No&euml;l 2022. Dans le cadre de ce programme, la Suisse accueille directement en Suisse des r&eacute;fugi&eacute;s reconnus par le HCR, par exemple en provenance des camps du Proche-Orient. La voie de fuite dangereuse est ainsi supprim&eacute;e.<br>La Suisse s'est engag&eacute;e &agrave; accueillir au total 1600 personnes particuli&egrave;rement vuln&eacute;rables d'ici fin 2023 (par exemple : des femmes, des enfants et des MNA qui sont victimes de torture, de violences sexuelles, de la traite des &ecirc;tres humains et de l'esclavage ou qui ont v&eacute;cu sous la menace de tels actes de violence). Aujourd'hui encore, 800 personnes attendent avec impatience de pouvoir sortir des<br>&ecirc;tre admises directement en Suisse dans des conditions pr&eacute;caires.<br>Le Conseil f&eacute;d&eacute;ral souhaite &agrave; pr&eacute;sent permettre &agrave; nouveau ces entr&eacute;es. Mais pour cela, il a besoin du soutien des cantons.<br>Nous demandons au Conseil d'Etat du canton de Berne : envoyez un signal positif au Conseil f&eacute;d&eacute;ral et assurez la disponibilit&eacute; du canton &agrave; accueillir les personnes qui seraient attribu&eacute;es au canton de Berne, avec tout ce que cela implique.<br>De nombreux b&eacute;n&eacute;voles dans les ONG, les &eacute;glises et d'autres organisations sont pr&ecirc;ts &agrave; s'engager.</p>","linkText":"Signer la pétition"}	{"CustomSections_id":"1","languages_code":"fr","linkText":"Signer la pétition"}	321	\N
343	376	directus_files	ec2bd7e0-01a0-4571-8f1b-56b3bac4da7e	{"title":"Bern Lesen Schreiben 02","filename_download":"bern_lesen-schreiben-02.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 02","filename_download":"bern_lesen-schreiben-02.jpg","type":"image/jpeg","storage":"local"}	\N	\N
345	378	directus_files	88ec0a8b-f67a-4449-b7f1-26202cb606ca	{"title":"Bern Lesen Schreiben 01","filename_download":"bern_lesen-schreiben-01.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 01","filename_download":"bern_lesen-schreiben-01.jpg","type":"image/jpeg","storage":"local"}	\N	\N
349	382	directus_files	2ab59289-4609-4754-aa16-a48358f1d5bf	{"title":"Cde C O2 N Mf R2867","filename_download":"CDE_CO2N_MFR2867.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R2867","filename_download":"CDE_CO2N_MFR2867.jpg","type":"image/jpeg","storage":"local"}	\N	\N
358	391	directus_files	7ca7e9cb-0a8e-4c5f-8f1a-32f5f544ff2f	{"title":"Ok Bnn Mf R5724","filename_download":"OK_BNN_MFR5724.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5724","filename_download":"OK_BNN_MFR5724.jpg","type":"image/jpeg","storage":"local"}	\N	\N
347	380	directus_files	f9874dc2-dbd2-4b87-bd32-12ce32a1f526	{"title":"Bern Lesen Schreiben 09","filename_download":"bern_lesen-schreiben-09.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 09","filename_download":"bern_lesen-schreiben-09.jpg","type":"image/jpeg","storage":"local"}	\N	\N
352	385	directus_files	3a2dfe2d-cb94-452c-bdff-dd3ac2396b6f	{"title":"Ok Bnn Mf R5706","filename_download":"OK_BNN_MFR5706.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5706","filename_download":"OK_BNN_MFR5706.jpg","type":"image/jpeg","storage":"local"}	\N	\N
353	386	directus_files	f1585467-0562-4b63-bd7d-bedadf620e8b	{"title":"Ok Bnn Mf R5701","filename_download":"OK_BNN_MFR5701.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5701","filename_download":"OK_BNN_MFR5701.jpg","type":"image/jpeg","storage":"local"}	\N	\N
354	387	directus_files	02735120-e2ae-4389-ac2e-2426d10b7944	{"title":"Ok Bnn Mf R5703","filename_download":"OK_BNN_MFR5703.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5703","filename_download":"OK_BNN_MFR5703.jpg","type":"image/jpeg","storage":"local"}	\N	\N
355	388	directus_files	0174130c-f4f5-44aa-a9c7-35f8b5ead135	{"title":"Ok Bnn Mf R5718","filename_download":"OK_BNN_MFR5718.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5718","filename_download":"OK_BNN_MFR5718.jpg","type":"image/jpeg","storage":"local"}	\N	\N
357	390	directus_files	16ef4a31-4ab0-4cab-898b-618be781d472	{"title":"Ok Bnn Mf R5772","filename_download":"OK_BNN_MFR5772.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5772","filename_download":"OK_BNN_MFR5772.jpg","type":"image/jpeg","storage":"local"}	\N	\N
356	389	directus_files	ca987d87-80ed-42f0-b50e-56340b1f497e	{"title":"Ok Bnn Mf R5735","filename_download":"OK_BNN_MFR5735.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5735","filename_download":"OK_BNN_MFR5735.jpg","type":"image/jpeg","storage":"local"}	\N	\N
380	413	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-02-02T11:28:09.968Z","translations":[3,4],"gallery":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19],"supportlinks":[1,2,3,4,5,6,7,8],"events":[1,4,5],"customSections":[1]}	{"date_updated":"2024-02-02T11:28:09.968Z"}	\N	\N
361	394	city_files	1	{"city_id":"2","directus_files_id":{"id":"dc123d72-8323-45eb-a943-36389dc5bea6"}}	{"city_id":"2","directus_files_id":{"id":"dc123d72-8323-45eb-a943-36389dc5bea6"}}	380	\N
362	395	city_files	2	{"city_id":"2","directus_files_id":{"id":"ec2bd7e0-01a0-4571-8f1b-56b3bac4da7e"}}	{"city_id":"2","directus_files_id":{"id":"ec2bd7e0-01a0-4571-8f1b-56b3bac4da7e"}}	380	\N
363	396	city_files	3	{"city_id":"2","directus_files_id":{"id":"255e9876-3511-4338-932d-de553ca6523a"}}	{"city_id":"2","directus_files_id":{"id":"255e9876-3511-4338-932d-de553ca6523a"}}	380	\N
364	397	city_files	4	{"city_id":"2","directus_files_id":{"id":"88ec0a8b-f67a-4449-b7f1-26202cb606ca"}}	{"city_id":"2","directus_files_id":{"id":"88ec0a8b-f67a-4449-b7f1-26202cb606ca"}}	380	\N
365	398	city_files	5	{"city_id":"2","directus_files_id":{"id":"8b3b763c-9d84-4797-ba28-6e52eab82a73"}}	{"city_id":"2","directus_files_id":{"id":"8b3b763c-9d84-4797-ba28-6e52eab82a73"}}	380	\N
366	399	city_files	6	{"city_id":"2","directus_files_id":{"id":"f9874dc2-dbd2-4b87-bd32-12ce32a1f526"}}	{"city_id":"2","directus_files_id":{"id":"f9874dc2-dbd2-4b87-bd32-12ce32a1f526"}}	380	\N
367	400	city_files	7	{"city_id":"2","directus_files_id":{"id":"5c60c983-c656-4bb7-bd46-0a107e5bde4c"}}	{"city_id":"2","directus_files_id":{"id":"5c60c983-c656-4bb7-bd46-0a107e5bde4c"}}	380	\N
368	401	city_files	8	{"city_id":"2","directus_files_id":{"id":"7b5011a5-e238-459c-b133-9cb10c0f49b5"}}	{"city_id":"2","directus_files_id":{"id":"7b5011a5-e238-459c-b133-9cb10c0f49b5"}}	380	\N
369	402	city_files	9	{"city_id":"2","directus_files_id":{"id":"2ab59289-4609-4754-aa16-a48358f1d5bf"}}	{"city_id":"2","directus_files_id":{"id":"2ab59289-4609-4754-aa16-a48358f1d5bf"}}	380	\N
370	403	city_files	10	{"city_id":"2","directus_files_id":{"id":"0c6462b2-f86e-4fca-a960-23c0222ce597"}}	{"city_id":"2","directus_files_id":{"id":"0c6462b2-f86e-4fca-a960-23c0222ce597"}}	380	\N
371	404	city_files	11	{"city_id":"2","directus_files_id":{"id":"f1585467-0562-4b63-bd7d-bedadf620e8b"}}	{"city_id":"2","directus_files_id":{"id":"f1585467-0562-4b63-bd7d-bedadf620e8b"}}	380	\N
372	405	city_files	12	{"city_id":"2","directus_files_id":{"id":"3a2dfe2d-cb94-452c-bdff-dd3ac2396b6f"}}	{"city_id":"2","directus_files_id":{"id":"3a2dfe2d-cb94-452c-bdff-dd3ac2396b6f"}}	380	\N
373	406	city_files	13	{"city_id":"2","directus_files_id":{"id":"02735120-e2ae-4389-ac2e-2426d10b7944"}}	{"city_id":"2","directus_files_id":{"id":"02735120-e2ae-4389-ac2e-2426d10b7944"}}	380	\N
374	407	city_files	14	{"city_id":"2","directus_files_id":{"id":"0174130c-f4f5-44aa-a9c7-35f8b5ead135"}}	{"city_id":"2","directus_files_id":{"id":"0174130c-f4f5-44aa-a9c7-35f8b5ead135"}}	380	\N
375	408	city_files	15	{"city_id":"2","directus_files_id":{"id":"ca987d87-80ed-42f0-b50e-56340b1f497e"}}	{"city_id":"2","directus_files_id":{"id":"ca987d87-80ed-42f0-b50e-56340b1f497e"}}	380	\N
377	410	city_files	17	{"city_id":"2","directus_files_id":{"id":"7ca7e9cb-0a8e-4c5f-8f1a-32f5f544ff2f"}}	{"city_id":"2","directus_files_id":{"id":"7ca7e9cb-0a8e-4c5f-8f1a-32f5f544ff2f"}}	380	\N
378	411	city_files	18	{"city_id":"2","directus_files_id":{"id":"3e1f3db6-0a84-433e-957c-972ce8a1d278"}}	{"city_id":"2","directus_files_id":{"id":"3e1f3db6-0a84-433e-957c-972ce8a1d278"}}	380	\N
379	412	city_files	19	{"city_id":"2","directus_files_id":{"id":"c55467d4-8338-437b-a177-c0710f9a535d"}}	{"city_id":"2","directus_files_id":{"id":"c55467d4-8338-437b-a177-c0710f9a535d"}}	380	\N
381	414	directus_permissions	52	{"role":null,"collection":"city_files","action":"create","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"city_files","action":"create","fields":["*"],"permissions":{},"validation":{}}	\N	\N
382	416	directus_permissions	53	{"role":null,"collection":"city_files","action":"update","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"city_files","action":"update","fields":["*"],"permissions":{},"validation":{}}	\N	\N
383	415	directus_permissions	49	{"id":49,"role":null,"collection":"city_files","action":"read","permissions":{},"validation":{},"presets":null,"fields":["*"]}	{"permissions":{},"validation":{},"fields":["*"]}	\N	\N
384	417	directus_permissions	54	{"role":null,"collection":"city_files","action":"delete","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"city_files","action":"delete","fields":["*"],"permissions":{},"validation":{}}	\N	\N
385	418	directus_permissions	55	{"role":null,"collection":"city_files","action":"share","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"city_files","action":"share","fields":["*"],"permissions":{},"validation":{}}	\N	\N
386	423	directus_permissions	56	{"role":null,"collection":"directus_files","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"directus_files","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
402	439	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-02-02T14:48:47.979Z","translations":[3,4],"gallery":[16,17,18,19],"supportlinks":[1,2,3,4,5,6,7,8],"events":[1,4,5],"customSections":[1]}	{"date_updated":"2024-02-02T14:48:47.979Z"}	\N	\N
387	424	city_files	1	{"id":1,"city_id":null,"directus_files_id":"dc123d72-8323-45eb-a943-36389dc5bea6"}	{"city_id":null}	402	\N
388	425	city_files	10	{"id":2,"city_id":null,"directus_files_id":"ec2bd7e0-01a0-4571-8f1b-56b3bac4da7e"}	{"city_id":null}	402	\N
389	426	city_files	11	{"id":3,"city_id":null,"directus_files_id":"255e9876-3511-4338-932d-de553ca6523a"}	{"city_id":null}	402	\N
390	427	city_files	12	{"id":4,"city_id":null,"directus_files_id":"88ec0a8b-f67a-4449-b7f1-26202cb606ca"}	{"city_id":null}	402	\N
391	428	city_files	13	{"id":5,"city_id":null,"directus_files_id":"8b3b763c-9d84-4797-ba28-6e52eab82a73"}	{"city_id":null}	402	\N
392	429	city_files	14	{"id":6,"city_id":null,"directus_files_id":"f9874dc2-dbd2-4b87-bd32-12ce32a1f526"}	{"city_id":null}	402	\N
393	430	city_files	15	{"id":7,"city_id":null,"directus_files_id":"5c60c983-c656-4bb7-bd46-0a107e5bde4c"}	{"city_id":null}	402	\N
394	431	city_files	2	{"id":8,"city_id":null,"directus_files_id":"7b5011a5-e238-459c-b133-9cb10c0f49b5"}	{"city_id":null}	402	\N
395	432	city_files	3	{"id":9,"city_id":null,"directus_files_id":"2ab59289-4609-4754-aa16-a48358f1d5bf"}	{"city_id":null}	402	\N
396	433	city_files	4	{"id":10,"city_id":null,"directus_files_id":"0c6462b2-f86e-4fca-a960-23c0222ce597"}	{"city_id":null}	402	\N
397	434	city_files	5	{"id":11,"city_id":null,"directus_files_id":"f1585467-0562-4b63-bd7d-bedadf620e8b"}	{"city_id":null}	402	\N
398	435	city_files	6	{"id":12,"city_id":null,"directus_files_id":"3a2dfe2d-cb94-452c-bdff-dd3ac2396b6f"}	{"city_id":null}	402	\N
399	436	city_files	7	{"id":13,"city_id":null,"directus_files_id":"02735120-e2ae-4389-ac2e-2426d10b7944"}	{"city_id":null}	402	\N
400	437	city_files	8	{"id":14,"city_id":null,"directus_files_id":"0174130c-f4f5-44aa-a9c7-35f8b5ead135"}	{"city_id":null}	402	\N
401	438	city_files	9	{"id":15,"city_id":null,"directus_files_id":"ca987d87-80ed-42f0-b50e-56340b1f497e"}	{"city_id":null}	402	\N
526	600	directus_fields	120	{"sort":9,"interface":"list-m2m","special":["m2m"],"required":true,"collection":"DynamicCityForm","field":"fields"}	{"sort":9,"interface":"list-m2m","special":["m2m"],"required":true,"collection":"DynamicCityForm","field":"fields"}	\N	\N
530	604	directus_fields	123	{"sort":3,"hidden":true,"collection":"DynamicCityForm_CityFormFields_1","field":"CityFormFields_id"}	{"sort":3,"hidden":true,"collection":"DynamicCityForm_CityFormFields_1","field":"CityFormFields_id"}	\N	\N
580	662	EmailForm_translations	2	{"description":"Pour commander vos drapeaux, veuillez indiquer le nombre et le type de drapeaux que vous souhaitez. ","languages_code":{"code":"fr"},"title":"Commander des drapeaux","subject":"nouvelle commande","submitText":"Commande","EmailForm_id":1}	{"description":"Pour commander vos drapeaux, veuillez indiquer le nombre et le type de drapeaux que vous souhaitez. ","languages_code":{"code":"fr"},"title":"Commander des drapeaux","subject":"nouvelle commande","submitText":"Commande","EmailForm_id":1}	581	\N
620	702	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
619	701	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"mail","position_x":19,"position_y":1,"options":{"to":"{{trigger.payload.body.emailTo}}","subject":"{{trigger.payload.body.subject}}","data":{"url":"example.com"},"body":"{{trigger.payload.body.values}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"mail","options":{"to":"{{trigger.payload.body.emailTo}}","subject":"{{trigger.payload.body.subject}}","data":{"url":"example.com"},"body":"{{trigger.payload.body.values}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	620	\N
677	761	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger.message}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger.message}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	678	\N
407	444	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-02-02T14:48:54.034Z","translations":[3,4],"gallery":[],"supportlinks":[1,2,3,4,5,6,7,8],"events":[1,4,5],"customSections":[1]}	{"date_updated":"2024-02-02T14:48:54.034Z"}	\N	\N
403	440	city_files	16	{"id":16,"city_id":null,"directus_files_id":"16ef4a31-4ab0-4cab-898b-618be781d472"}	{"city_id":null}	407	\N
404	441	city_files	17	{"id":17,"city_id":null,"directus_files_id":"7ca7e9cb-0a8e-4c5f-8f1a-32f5f544ff2f"}	{"city_id":null}	407	\N
405	442	city_files	18	{"id":18,"city_id":null,"directus_files_id":"3e1f3db6-0a84-433e-957c-972ce8a1d278"}	{"city_id":null}	407	\N
406	443	city_files	19	{"id":19,"city_id":null,"directus_files_id":"c55467d4-8338-437b-a177-c0710f9a535d"}	{"city_id":null}	407	\N
527	601	directus_fields	121	{"sort":1,"hidden":true,"field":"id","collection":"DynamicCityForm_CityFormFields_1"}	{"sort":1,"hidden":true,"field":"id","collection":"DynamicCityForm_CityFormFields_1"}	\N	\N
528	602	directus_collections	DynamicCityForm_CityFormFields_1	{"hidden":true,"icon":"import_export","collection":"DynamicCityForm_CityFormFields_1"}	{"hidden":true,"icon":"import_export","collection":"DynamicCityForm_CityFormFields_1"}	\N	\N
529	603	directus_fields	122	{"sort":2,"hidden":true,"collection":"DynamicCityForm_CityFormFields_1","field":"DynamicCityForm_id"}	{"sort":2,"hidden":true,"collection":"DynamicCityForm_CityFormFields_1","field":"DynamicCityForm_id"}	\N	\N
582	664	directus_fields	141	{"id":141,"collection":"EmailForm","field":"fields","special":["m2m"],"interface":"list-m2m","options":{"junctionFieldLocation":"top","allowDuplicates":true,"template":"{{translations.label}}{{FormFields_id.type}}"},"display":"related-values","display_options":{"template":"{{translations.label}}"},"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"EmailForm","field":"fields","special":["m2m"],"interface":"list-m2m","options":{"junctionFieldLocation":"top","allowDuplicates":true,"template":"{{translations.label}}{{FormFields_id.type}}"},"display":"related-values","display_options":{"template":"{{translations.label}}"},"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
621	703	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
652	736	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
678	762	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
408	481	directus_fields	85	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"dddd"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"dddd"}	\N	\N
409	482	directus_collections	dddd	{"singleton":false,"collection":"dddd"}	{"singleton":false,"collection":"dddd"}	\N	\N
533	607	directus_fields	124	{"sort":4,"interface":"input","special":null,"collection":"DynamicCityForm_CityFormFields_1","field":"label"}	{"sort":4,"interface":"input","special":null,"collection":"DynamicCityForm_CityFormFields_1","field":"label"}	\N	\N
583	665	directus_fields	141	{"id":141,"collection":"EmailForm","field":"fields","special":["m2m"],"interface":"list-m2m","options":{"junctionFieldLocation":"top","allowDuplicates":true,"template":"{{translations.label}}"},"display":"related-values","display_options":{"template":"{{translations.label}}"},"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"EmailForm","field":"fields","special":["m2m"],"interface":"list-m2m","options":{"junctionFieldLocation":"top","allowDuplicates":true,"template":"{{translations.label}}"},"display":"related-values","display_options":{"template":"{{translations.label}}"},"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
623	705	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
622	704	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"mail","position_x":19,"position_y":1,"options":{"to":"{{$trigger.payload.body.emailTo}}","subject":"{{$trigger.payload.body.subject}}","data":{"url":"example.com"},"body":"{{$trigger.payload.body.values}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"mail","options":{"to":"{{$trigger.payload.body.emailTo}}","subject":"{{$trigger.payload.body.subject}}","data":{"url":"example.com"},"body":"{{$trigger.payload.body.values}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	623	\N
653	737	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
662	746	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
663	747	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
410	484	directus_collections	city_files	{"collection":"city_files","icon":"import_export","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"hidden":false}	\N	\N
443	517	directus_files	b8438249-863c-449a-8fe5-568f4e47b67b	{"title":"Bern Lesen Schreiben 03","filename_download":"bern_lesen-schreiben-03.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 03","filename_download":"bern_lesen-schreiben-03.jpg","type":"image/jpeg","storage":"local"}	\N	\N
447	521	directus_files	a395308d-6b1a-4db4-8b3c-c39009964fbf	{"title":"Bern Lesen Schreiben 09","filename_download":"bern_lesen-schreiben-09.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 09","filename_download":"bern_lesen-schreiben-09.jpg","type":"image/jpeg","storage":"local"}	\N	\N
448	522	directus_files	57f3e7e0-db45-42fc-ab87-af4daa0bb144	{"title":"Bern Lesen Schreiben 10","filename_download":"bern_lesen-schreiben-10.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 10","filename_download":"bern_lesen-schreiben-10.jpg","type":"image/jpeg","storage":"local"}	\N	\N
452	526	directus_files	a6d8e567-36f1-421a-ac23-5e549a84d564	{"title":"Cde C O2 N Mf R8782","filename_download":"CDE_CO2N_MFR8782.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R8782","filename_download":"CDE_CO2N_MFR8782.jpg","type":"image/jpeg","storage":"local"}	\N	\N
454	528	directus_files	9624d4fa-f777-4d8c-a25a-0c44d4f3335d	{"title":"Ok Bnn Mf R5706","filename_download":"OK_BNN_MFR5706.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5706","filename_download":"OK_BNN_MFR5706.jpg","type":"image/jpeg","storage":"local"}	\N	\N
481	555	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-02-02T14:56:14.221Z","translations":[3,4],"gallery":[20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38],"supportlinks":[1,2,3,4,5,6,7,8],"events":[1,4,5],"customSections":[1]}	{"date_updated":"2024-02-02T14:56:14.221Z"}	\N	\N
462	536	city_files	20	{"city_id":"2","directus_files_id":{"id":"b8438249-863c-449a-8fe5-568f4e47b67b"}}	{"city_id":"2","directus_files_id":{"id":"b8438249-863c-449a-8fe5-568f4e47b67b"}}	481	\N
463	537	city_files	21	{"city_id":"2","directus_files_id":{"id":"4ddcfe09-9d8c-4faf-875b-f4badd641872"}}	{"city_id":"2","directus_files_id":{"id":"4ddcfe09-9d8c-4faf-875b-f4badd641872"}}	481	\N
464	538	city_files	22	{"city_id":"2","directus_files_id":{"id":"3fe2f5dd-65dd-4441-b0d6-fe6b00e20b7e"}}	{"city_id":"2","directus_files_id":{"id":"3fe2f5dd-65dd-4441-b0d6-fe6b00e20b7e"}}	481	\N
465	539	city_files	23	{"city_id":"2","directus_files_id":{"id":"8690b83f-d3a7-4c50-a73d-ca1457c60576"}}	{"city_id":"2","directus_files_id":{"id":"8690b83f-d3a7-4c50-a73d-ca1457c60576"}}	481	\N
466	540	city_files	24	{"city_id":"2","directus_files_id":{"id":"a395308d-6b1a-4db4-8b3c-c39009964fbf"}}	{"city_id":"2","directus_files_id":{"id":"a395308d-6b1a-4db4-8b3c-c39009964fbf"}}	481	\N
467	541	city_files	25	{"city_id":"2","directus_files_id":{"id":"57f3e7e0-db45-42fc-ab87-af4daa0bb144"}}	{"city_id":"2","directus_files_id":{"id":"57f3e7e0-db45-42fc-ab87-af4daa0bb144"}}	481	\N
444	518	directus_files	3fe2f5dd-65dd-4441-b0d6-fe6b00e20b7e	{"title":"Bern Lesen Schreiben 06","filename_download":"bern_lesen-schreiben-06.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 06","filename_download":"bern_lesen-schreiben-06.jpg","type":"image/jpeg","storage":"local"}	\N	\N
449	523	directus_files	3785366c-a15c-4648-9398-be2b068af3ac	{"title":"Cde C O2 N Mf R8794","filename_download":"CDE_CO2N_MFR8794.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R8794","filename_download":"CDE_CO2N_MFR8794.jpg","type":"image/jpeg","storage":"local"}	\N	\N
453	527	directus_files	f3e9f151-89f9-4521-8682-719049e2066d	{"title":"Ok Bnn Mf R5701","filename_download":"OK_BNN_MFR5701.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5701","filename_download":"OK_BNN_MFR5701.jpg","type":"image/jpeg","storage":"local"}	\N	\N
456	530	directus_files	a1140a22-23f1-4cdd-b36e-a892b4ff7e48	{"title":"Ok Bnn Mf R5718","filename_download":"OK_BNN_MFR5718.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5718","filename_download":"OK_BNN_MFR5718.jpg","type":"image/jpeg","storage":"local"}	\N	\N
460	534	directus_files	5e740af8-492d-4540-b959-ae89e0576ce3	{"title":"Ok Bnn Mf R5788","filename_download":"OK_BNN_MFR5788.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5788","filename_download":"OK_BNN_MFR5788.jpg","type":"image/jpeg","storage":"local"}	\N	\N
468	542	city_files	26	{"city_id":"2","directus_files_id":{"id":"3785366c-a15c-4648-9398-be2b068af3ac"}}	{"city_id":"2","directus_files_id":{"id":"3785366c-a15c-4648-9398-be2b068af3ac"}}	481	\N
469	543	city_files	27	{"city_id":"2","directus_files_id":{"id":"92930338-0f26-4953-9074-a7bbad626063"}}	{"city_id":"2","directus_files_id":{"id":"92930338-0f26-4953-9074-a7bbad626063"}}	481	\N
470	544	city_files	28	{"city_id":"2","directus_files_id":{"id":"f97ece40-8c83-445f-84aa-296470d9156c"}}	{"city_id":"2","directus_files_id":{"id":"f97ece40-8c83-445f-84aa-296470d9156c"}}	481	\N
471	545	city_files	29	{"city_id":"2","directus_files_id":{"id":"a6d8e567-36f1-421a-ac23-5e549a84d564"}}	{"city_id":"2","directus_files_id":{"id":"a6d8e567-36f1-421a-ac23-5e549a84d564"}}	481	\N
472	546	city_files	30	{"city_id":"2","directus_files_id":{"id":"f3e9f151-89f9-4521-8682-719049e2066d"}}	{"city_id":"2","directus_files_id":{"id":"f3e9f151-89f9-4521-8682-719049e2066d"}}	481	\N
473	547	city_files	31	{"city_id":"2","directus_files_id":{"id":"9624d4fa-f777-4d8c-a25a-0c44d4f3335d"}}	{"city_id":"2","directus_files_id":{"id":"9624d4fa-f777-4d8c-a25a-0c44d4f3335d"}}	481	\N
474	548	city_files	32	{"city_id":"2","directus_files_id":{"id":"be7798e7-4a82-476d-9337-efb46d483803"}}	{"city_id":"2","directus_files_id":{"id":"be7798e7-4a82-476d-9337-efb46d483803"}}	481	\N
475	549	city_files	33	{"city_id":"2","directus_files_id":{"id":"a1140a22-23f1-4cdd-b36e-a892b4ff7e48"}}	{"city_id":"2","directus_files_id":{"id":"a1140a22-23f1-4cdd-b36e-a892b4ff7e48"}}	481	\N
476	550	city_files	34	{"city_id":"2","directus_files_id":{"id":"c0ca15c3-237b-4903-8bdb-bb26785bb930"}}	{"city_id":"2","directus_files_id":{"id":"c0ca15c3-237b-4903-8bdb-bb26785bb930"}}	481	\N
477	551	city_files	35	{"city_id":"2","directus_files_id":{"id":"248abf34-2e4e-43f1-9257-c6ec55cb1e83"}}	{"city_id":"2","directus_files_id":{"id":"248abf34-2e4e-43f1-9257-c6ec55cb1e83"}}	481	\N
478	552	city_files	36	{"city_id":"2","directus_files_id":{"id":"979419ac-8085-42df-a425-af8c952f7840"}}	{"city_id":"2","directus_files_id":{"id":"979419ac-8085-42df-a425-af8c952f7840"}}	481	\N
479	553	city_files	37	{"city_id":"2","directus_files_id":{"id":"5e740af8-492d-4540-b959-ae89e0576ce3"}}	{"city_id":"2","directus_files_id":{"id":"5e740af8-492d-4540-b959-ae89e0576ce3"}}	481	\N
480	554	city_files	38	{"city_id":"2","directus_files_id":{"id":"c64a680d-6535-47c6-a527-0808229d2fcf"}}	{"city_id":"2","directus_files_id":{"id":"c64a680d-6535-47c6-a527-0808229d2fcf"}}	481	\N
624	706	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
655	739	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
584	666	directus_fields	145	{"id":145,"collection":"EmailForm_FormFields","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de","userLanguage":true},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"EmailForm_FormFields","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de","userLanguage":true},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
445	519	directus_files	4ddcfe09-9d8c-4faf-875b-f4badd641872	{"title":"Bern Lesen Schreiben 02","filename_download":"bern_lesen-schreiben-02.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 02","filename_download":"bern_lesen-schreiben-02.jpg","type":"image/jpeg","storage":"local"}	\N	\N
451	525	directus_files	f97ece40-8c83-445f-84aa-296470d9156c	{"title":"Cde C O2 N Mf R2867","filename_download":"CDE_CO2N_MFR2867.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R2867","filename_download":"CDE_CO2N_MFR2867.jpg","type":"image/jpeg","storage":"local"}	\N	\N
455	529	directus_files	be7798e7-4a82-476d-9337-efb46d483803	{"title":"Ok Bnn Mf R5703","filename_download":"OK_BNN_MFR5703.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5703","filename_download":"OK_BNN_MFR5703.jpg","type":"image/jpeg","storage":"local"}	\N	\N
459	533	directus_files	979419ac-8085-42df-a425-af8c952f7840	{"title":"Ok Bnn Mf R5724","filename_download":"OK_BNN_MFR5724.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5724","filename_download":"OK_BNN_MFR5724.jpg","type":"image/jpeg","storage":"local"}	\N	\N
482	556	directus_fields	86	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"DynamicCityForm"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"DynamicCityForm"}	\N	\N
704	796	directus_fields	156	{"sort":2,"interface":"translations","special":["translations"],"collection":"home","field":"translations"}	{"sort":2,"interface":"translations","special":["translations"],"collection":"home","field":"translations"}	\N	\N
483	557	directus_fields	87	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"DynamicCityForm"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"DynamicCityForm"}	\N	\N
484	558	directus_fields	88	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"DynamicCityForm"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"DynamicCityForm"}	\N	\N
485	559	directus_fields	89	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"DynamicCityForm"}	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"DynamicCityForm"}	\N	\N
486	560	directus_fields	90	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"DynamicCityForm"}	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"DynamicCityForm"}	\N	\N
487	561	directus_collections	DynamicCityForm	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"DynamicCityForm"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"DynamicCityForm"}	\N	\N
539	621	directus_fields	125	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"EmailForm"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"EmailForm"}	\N	\N
540	622	directus_fields	126	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"EmailForm"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"EmailForm"}	\N	\N
541	623	directus_fields	127	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"EmailForm"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"EmailForm"}	\N	\N
542	624	directus_fields	128	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"EmailForm"}	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"EmailForm"}	\N	\N
543	625	directus_fields	129	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"EmailForm"}	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"EmailForm"}	\N	\N
544	626	directus_collections	EmailForm	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"EmailForm"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"EmailForm"}	\N	\N
654	738	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	655	\N
446	520	directus_files	8690b83f-d3a7-4c50-a73d-ca1457c60576	{"title":"Bern Lesen Schreiben 01","filename_download":"bern_lesen-schreiben-01.jpg","type":"image/jpeg","storage":"local"}	{"title":"Bern Lesen Schreiben 01","filename_download":"bern_lesen-schreiben-01.jpg","type":"image/jpeg","storage":"local"}	\N	\N
450	524	directus_files	92930338-0f26-4953-9074-a7bbad626063	{"title":"Cde C O2 N Mf R8686","filename_download":"CDE_CO2N_MFR8686.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R8686","filename_download":"CDE_CO2N_MFR8686.jpg","type":"image/jpeg","storage":"local"}	\N	\N
458	532	directus_files	248abf34-2e4e-43f1-9257-c6ec55cb1e83	{"title":"Ok Bnn Mf R5772","filename_download":"OK_BNN_MFR5772.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5772","filename_download":"OK_BNN_MFR5772.jpg","type":"image/jpeg","storage":"local"}	\N	\N
488	562	directus_collections	DynamicCityForm	{"collection":"DynamicCityForm","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"archive_field":null,"sort_field":null}	\N	\N
496	570	directus_fields	97	{"sort":7,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"CityFormFields","field":"translations"}	{"sort":7,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"CityFormFields","field":"translations"}	\N	\N
500	574	directus_fields	100	{"sort":3,"hidden":true,"collection":"CityFormFields_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"CityFormFields_translations","field":"languages_code"}	\N	\N
545	627	directus_fields	130	{"sort":6,"interface":"input","special":null,"collection":"EmailForm","field":"emailTo"}	{"sort":6,"interface":"input","special":null,"collection":"EmailForm","field":"emailTo"}	\N	\N
547	629	directus_fields	132	{"sort":1,"hidden":true,"field":"id","collection":"EmailForm_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"EmailForm_translations"}	\N	\N
548	630	directus_collections	EmailForm_translations	{"hidden":true,"icon":"import_export","collection":"EmailForm_translations"}	{"hidden":true,"icon":"import_export","collection":"EmailForm_translations"}	\N	\N
549	631	directus_fields	133	{"sort":2,"hidden":true,"collection":"EmailForm_translations","field":"EmailForm_id"}	{"sort":2,"hidden":true,"collection":"EmailForm_translations","field":"EmailForm_id"}	\N	\N
551	633	directus_fields	135	{"sort":4,"interface":"input","special":null,"collection":"EmailForm_translations","field":"subject"}	{"sort":4,"interface":"input","special":null,"collection":"EmailForm_translations","field":"subject"}	\N	\N
553	635	directus_fields	137	{"sort":6,"interface":"input-multiline","special":null,"collection":"EmailForm_translations","field":"description"}	{"sort":6,"interface":"input-multiline","special":null,"collection":"EmailForm_translations","field":"description"}	\N	\N
554	636	directus_fields	138	{"sort":7,"interface":"input","special":null,"collection":"EmailForm_translations","field":"submitText"}	{"sort":7,"interface":"input","special":null,"collection":"EmailForm_translations","field":"submitText"}	\N	\N
585	667	directus_fields	145	{"id":145,"collection":"EmailForm_FormFields","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de","userLanguage":true},"display":"translations","display_options":{"userLanguage":true,"defaultLanguage":"de"},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"EmailForm_FormFields","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de","userLanguage":true},"display":"translations","display_options":{"userLanguage":true,"defaultLanguage":"de"},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
625	707	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
656	740	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
457	531	directus_files	c0ca15c3-237b-4903-8bdb-bb26785bb930	{"title":"Ok Bnn Mf R5735","filename_download":"OK_BNN_MFR5735.jpg","type":"image/jpeg","storage":"local"}	{"title":"Ok Bnn Mf R5735","filename_download":"OK_BNN_MFR5735.jpg","type":"image/jpeg","storage":"local"}	\N	\N
461	535	directus_files	c64a680d-6535-47c6-a527-0808229d2fcf	{"title":"Cde C O2 N Mf R2853","filename_download":"CDE_CO2N_MFR2853.jpg","type":"image/jpeg","storage":"local"}	{"title":"Cde C O2 N Mf R2853","filename_download":"CDE_CO2N_MFR2853.jpg","type":"image/jpeg","storage":"local"}	\N	\N
489	563	directus_fields	91	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"CityFormFields"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"CityFormFields"}	\N	\N
682	766	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger.body}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger.body}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	683	\N
705	797	directus_fields	157	{"sort":1,"hidden":true,"field":"id","collection":"home_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"home_translations"}	\N	\N
706	798	directus_collections	home_translations	{"hidden":true,"icon":"import_export","collection":"home_translations"}	{"hidden":true,"icon":"import_export","collection":"home_translations"}	\N	\N
707	799	directus_fields	158	{"sort":2,"hidden":true,"collection":"home_translations","field":"home_id"}	{"sort":2,"hidden":true,"collection":"home_translations","field":"home_id"}	\N	\N
490	564	directus_fields	92	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"CityFormFields"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published"},{"text":"$t:draft","value":"draft"},{"text":"$t:archived","value":"archived"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","foreground":"#FFFFFF","background":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","foreground":"#18222F","background":"#D3DAE4"},{"text":"$t:archived","value":"archived","foreground":"#FFFFFF","background":"var(--theme--warning)"}]},"field":"status","collection":"CityFormFields"}	\N	\N
491	565	directus_fields	93	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"CityFormFields"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"CityFormFields"}	\N	\N
492	566	directus_fields	94	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"CityFormFields"}	{"sort":4,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"CityFormFields"}	\N	\N
493	567	directus_fields	95	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"CityFormFields"}	{"sort":5,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"CityFormFields"}	\N	\N
494	568	directus_collections	CityFormFields	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"CityFormFields"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"CityFormFields"}	\N	\N
546	628	directus_fields	131	{"sort":7,"interface":"translations","special":["translations"],"options":{"defaultLanguage":"de","languageField":"code"},"collection":"EmailForm","field":"translations"}	{"sort":7,"interface":"translations","special":["translations"],"options":{"defaultLanguage":"de","languageField":"code"},"collection":"EmailForm","field":"translations"}	\N	\N
550	632	directus_fields	134	{"sort":3,"hidden":true,"collection":"EmailForm_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"EmailForm_translations","field":"languages_code"}	\N	\N
552	634	directus_fields	136	{"sort":5,"interface":"input","special":null,"collection":"EmailForm_translations","field":"title"}	{"sort":5,"interface":"input","special":null,"collection":"EmailForm_translations","field":"title"}	\N	\N
586	668	directus_fields	145	{"id":145,"collection":"EmailForm_FormFields","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de","userLanguage":true},"display":"translations","display_options":{"userLanguage":true,"defaultLanguage":"de","template":"{{label}}","languageField":"code"},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"EmailForm_FormFields","field":"translations","special":["translations"],"interface":"translations","options":{"languageField":"code","defaultLanguage":"de","userLanguage":true},"display":"translations","display_options":{"userLanguage":true,"defaultLanguage":"de","template":"{{label}}","languageField":"code"},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
626	708	directus_permissions	62	{"role":null,"collection":"directus_webhooks","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"directus_webhooks","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
627	709	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
495	569	directus_fields	96	{"sort":6,"interface":"input","special":null,"required":true,"collection":"CityFormFields","field":"type"}	{"sort":6,"interface":"input","special":null,"required":true,"collection":"CityFormFields","field":"type"}	\N	\N
497	571	directus_fields	98	{"sort":1,"hidden":true,"field":"id","collection":"CityFormFields_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"CityFormFields_translations"}	\N	\N
498	572	directus_collections	CityFormFields_translations	{"hidden":true,"icon":"import_export","collection":"CityFormFields_translations"}	{"hidden":true,"icon":"import_export","collection":"CityFormFields_translations"}	\N	\N
499	573	directus_fields	99	{"sort":2,"hidden":true,"collection":"CityFormFields_translations","field":"CityFormFields_id"}	{"sort":2,"hidden":true,"collection":"CityFormFields_translations","field":"CityFormFields_id"}	\N	\N
503	577	directus_fields	103	{"sort":1,"hidden":true,"field":"id","collection":"DynamicCityForm_CityFormFields"}	{"sort":1,"hidden":true,"field":"id","collection":"DynamicCityForm_CityFormFields"}	\N	\N
504	578	directus_collections	DynamicCityForm_CityFormFields	{"hidden":true,"icon":"import_export","collection":"DynamicCityForm_CityFormFields"}	{"hidden":true,"icon":"import_export","collection":"DynamicCityForm_CityFormFields"}	\N	\N
505	579	directus_fields	104	{"sort":2,"hidden":true,"collection":"DynamicCityForm_CityFormFields","field":"DynamicCityForm_id"}	{"sort":2,"hidden":true,"collection":"DynamicCityForm_CityFormFields","field":"DynamicCityForm_id"}	\N	\N
508	582	directus_fields	107	{"sort":1,"hidden":true,"field":"id","collection":"DynamicCityForm_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"DynamicCityForm_translations"}	\N	\N
509	583	directus_collections	DynamicCityForm_translations	{"hidden":true,"icon":"import_export","collection":"DynamicCityForm_translations"}	{"hidden":true,"icon":"import_export","collection":"DynamicCityForm_translations"}	\N	\N
510	584	directus_fields	108	{"sort":2,"hidden":true,"collection":"DynamicCityForm_translations","field":"DynamicCityForm_id"}	{"sort":2,"hidden":true,"collection":"DynamicCityForm_translations","field":"DynamicCityForm_id"}	\N	\N
512	586	directus_fields	110	{"sort":4,"interface":"input","special":null,"required":true,"collection":"DynamicCityForm_translations","field":"title"}	{"sort":4,"interface":"input","special":null,"required":true,"collection":"DynamicCityForm_translations","field":"title"}	\N	\N
514	588	directus_fields	112	{"sort":6,"interface":"input-multiline","special":null,"collection":"DynamicCityForm_translations","field":"description"}	{"sort":6,"interface":"input-multiline","special":null,"collection":"DynamicCityForm_translations","field":"description"}	\N	\N
555	637	directus_collections	EmailForm	{"collection":"EmailForm","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"archive_field":null,"sort_field":null}	\N	\N
587	669	EmailForm	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-02-03T14:57:39.131Z","date_updated":"2024-02-03T15:06:44.618Z","emailTo":"gannonline90@gmail.com","translations":[1,2],"fields":[1,2]}	{"date_updated":"2024-02-03T15:06:44.618Z"}	\N	\N
588	670	directus_fields	131	{"id":131,"collection":"EmailForm","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de","languageField":"code"},"display":"translations","display_options":{"defaultLanguage":"de","languageField":"code","userLanguage":true,"template":"{{title}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"EmailForm","field":"translations","special":["translations"],"interface":"translations","options":{"defaultLanguage":"de","languageField":"code"},"display":"translations","display_options":{"defaultLanguage":"de","languageField":"code","userLanguage":true,"template":"{{title}}"},"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
628	710	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
629	711	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
501	575	directus_fields	101	{"sort":4,"interface":"input","special":null,"required":true,"collection":"CityFormFields_translations","field":"label"}	{"sort":4,"interface":"input","special":null,"required":true,"collection":"CityFormFields_translations","field":"label"}	\N	\N
556	638	directus_fields	139	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"FormFields"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"FormFields"}	\N	\N
557	639	directus_collections	FormFields	{"singleton":false,"collection":"FormFields"}	{"singleton":false,"collection":"FormFields"}	\N	\N
589	671	directus_fields	150	{"sort":9,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{translations.title}}"},"collection":"EmailForm","field":"emailForm"}	{"sort":9,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{translations.title}}"},"collection":"EmailForm","field":"emailForm"}	\N	\N
708	800	directus_fields	159	{"sort":3,"hidden":true,"collection":"home_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"home_translations","field":"languages_code"}	\N	\N
590	672	directus_fields	151	{"sort":9,"interface":"select-dropdown-m2o","special":["m2o"],"required":true,"options":{"template":"{{translations.name}}"},"collection":"EmailForm","field":"city"}	{"sort":9,"interface":"select-dropdown-m2o","special":["m2o"],"required":true,"options":{"template":"{{translations.name}}"},"collection":"EmailForm","field":"city"}	\N	\N
599	681	directus_permissions	57	{"role":null,"collection":"EmailForm","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"EmailForm","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
600	682	directus_permissions	58	{"role":null,"collection":"EmailForm_FormFields","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"EmailForm_FormFields","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
601	683	directus_permissions	59	{"role":null,"collection":"EmailForm_FormFields_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"EmailForm_FormFields_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
602	684	directus_permissions	60	{"role":null,"collection":"EmailForm_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"EmailForm_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
603	685	directus_permissions	61	{"role":null,"collection":"FormFields","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"FormFields","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
630	712	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
631	713	directus_permissions	63	{"role":null,"collection":"directus_webhooks","action":"update","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"directus_webhooks","action":"update","fields":["*"],"permissions":{},"validation":{}}	\N	\N
632	714	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
633	715	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
502	576	directus_fields	102	{"sort":6,"interface":"list-m2m","special":["m2m"],"required":true,"collection":"DynamicCityForm","field":"fields"}	{"sort":6,"interface":"list-m2m","special":["m2m"],"required":true,"collection":"DynamicCityForm","field":"fields"}	\N	\N
506	580	directus_fields	105	{"sort":3,"hidden":true,"collection":"DynamicCityForm_CityFormFields","field":"CityFormFields_id"}	{"sort":3,"hidden":true,"collection":"DynamicCityForm_CityFormFields","field":"CityFormFields_id"}	\N	\N
558	640	directus_fields	140	{"sort":2,"interface":"select-dropdown","special":null,"options":{"choices":[{"text":"number","value":"number"},{"text":"text","value":"text"}]},"collection":"FormFields","field":"type"}	{"sort":2,"interface":"select-dropdown","special":null,"options":{"choices":[{"text":"number","value":"number"},{"text":"text","value":"text"}]},"collection":"FormFields","field":"type"}	\N	\N
591	673	EmailForm	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-02-03T14:57:39.131Z","date_updated":"2024-02-03T15:11:22.395Z","emailTo":"gannonline90@gmail.com","city":2,"fields":[1,2],"translations":[1,2]}	{"city":2,"date_updated":"2024-02-03T15:11:22.395Z"}	\N	\N
604	686	directus_fields	140	{"id":140,"collection":"FormFields","field":"type","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"number","value":"number"},{"text":"text","value":"text"},{"text":"checkbox","value":"checkbox"}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"FormFields","field":"type","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"number","value":"number"},{"text":"text","value":"text"},{"text":"checkbox","value":"checkbox"}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
606	688	FormFields	4	{"type":"checkbox"}	{"type":"checkbox"}	608	\N
607	689	EmailForm_FormFields_translations	5	{"label":"Next Day Delivery?","languages_code":{"code":"de"},"EmailForm_FormFields_id":3}	{"label":"Next Day Delivery?","languages_code":{"code":"de"},"EmailForm_FormFields_id":3}	608	\N
609	691	EmailForm	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-02-03T14:57:39.131Z","date_updated":"2024-02-03T17:17:56.972Z","emailTo":"gannonline90@gmail.com","city":2,"fields":[1,2,3],"translations":[1,2]}	{"date_updated":"2024-02-03T17:17:56.972Z"}	\N	\N
608	690	EmailForm_FormFields	3	{"translations":{"create":[{"label":"Next Day Delivery?","languages_code":{"code":"de"}}],"update":[],"delete":[]},"FormFields_id":{"type":"checkbox"},"EmailForm_id":"1"}	{"translations":{"create":[{"label":"Next Day Delivery?","languages_code":{"code":"de"}}],"update":[],"delete":[]},"FormFields_id":{"type":"checkbox"},"EmailForm_id":"1"}	609	\N
634	716	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
635	719	directus_permissions	64	{"role":null,"collection":"directus_flows","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"directus_flows","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
636	720	directus_permissions	65	{"role":null,"collection":"directus_webhooks","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"directus_webhooks","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
637	721	directus_permissions	66	{"role":null,"collection":"directus_webhooks","action":"update","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"directus_webhooks","action":"update","fields":["*"],"permissions":{},"validation":{}}	\N	\N
638	722	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
665	749	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
507	581	directus_fields	106	{"sort":7,"interface":"translations","special":["translations"],"collection":"DynamicCityForm","field":"translations"}	{"sort":7,"interface":"translations","special":["translations"],"collection":"DynamicCityForm","field":"translations"}	\N	\N
511	585	directus_fields	109	{"sort":3,"hidden":true,"collection":"DynamicCityForm_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"DynamicCityForm_translations","field":"languages_code"}	\N	\N
513	587	directus_fields	111	{"sort":5,"interface":"input","special":null,"required":true,"collection":"DynamicCityForm_translations","field":"subject"}	{"sort":5,"interface":"input","special":null,"required":true,"collection":"DynamicCityForm_translations","field":"subject"}	\N	\N
515	589	directus_fields	113	{"sort":7,"interface":"input","special":null,"collection":"DynamicCityForm_translations","field":"submitLabel"}	{"sort":7,"interface":"input","special":null,"collection":"DynamicCityForm_translations","field":"submitLabel"}	\N	\N
559	641	directus_fields	141	{"sort":8,"special":["m2m"],"required":true,"interface":"list-m2m","options":{"junctionFieldLocation":"top","allowDuplicates":true},"display":"related-values","collection":"EmailForm","field":"fields"}	{"sort":8,"special":["m2m"],"required":true,"interface":"list-m2m","options":{"junctionFieldLocation":"top","allowDuplicates":true},"display":"related-values","collection":"EmailForm","field":"fields"}	\N	\N
563	645	directus_fields	144	{"sort":3,"hidden":true,"collection":"EmailForm_FormFields","field":"FormFields_id"}	{"sort":3,"hidden":true,"collection":"EmailForm_FormFields","field":"FormFields_id"}	\N	\N
592	674	directus_fields	152	{"sort":12,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{translations.title}}"},"collection":"city","field":"emailForm"}	{"sort":12,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{translations.title}}"},"collection":"city","field":"emailForm"}	\N	\N
605	687	FormFields	3	{"type":"checkbox"}	{"type":"checkbox"}	\N	\N
639	723	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
642	726	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
646	730	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
657	741	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
516	590	directus_fields	114	{"sort":8,"interface":"input","special":null,"required":true,"collection":"DynamicCityForm","field":"emailTo"}	{"sort":8,"interface":"input","special":null,"required":true,"collection":"DynamicCityForm","field":"emailTo"}	\N	\N
560	642	directus_fields	142	{"sort":1,"hidden":true,"field":"id","collection":"EmailForm_FormFields"}	{"sort":1,"hidden":true,"field":"id","collection":"EmailForm_FormFields"}	\N	\N
561	643	directus_collections	EmailForm_FormFields	{"hidden":true,"icon":"import_export","collection":"EmailForm_FormFields"}	{"hidden":true,"icon":"import_export","collection":"EmailForm_FormFields"}	\N	\N
562	644	directus_fields	143	{"sort":2,"hidden":true,"collection":"EmailForm_FormFields","field":"EmailForm_id"}	{"sort":2,"hidden":true,"collection":"EmailForm_FormFields","field":"EmailForm_id"}	\N	\N
593	675	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-02-03T15:14:19.428Z","emailForm":1,"translations":[3,4],"gallery":[20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38],"supportlinks":[1,2,3,4,5,6,7,8],"events":[1,4,5],"customSections":[1]}	{"emailForm":1,"date_updated":"2024-02-03T15:14:19.428Z"}	\N	\N
610	692	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","accountability":"all","trigger":"webhook","options":{"method":"POST"}}	{"name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","accountability":"all","trigger":"webhook","options":{"method":"POST"}}	\N	\N
640	724	directus_permissions	67	{"role":null,"collection":"directus_flows","action":"update","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"directus_flows","action":"update","fields":["*"],"permissions":{},"validation":{}}	\N	\N
643	727	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
645	729	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
644	728	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger.payload}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger.payload}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	645	\N
658	742	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
659	743	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
661	745	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
517	591	directus_collections	CityFormFields	{"collection":"CityFormFields","icon":null,"note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":"archived","unarchive_value":"draft","sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"archive_field":null,"sort_field":null}	\N	\N
564	646	directus_fields	145	{"sort":4,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"EmailForm_FormFields","field":"translations"}	{"sort":4,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"EmailForm_FormFields","field":"translations"}	\N	\N
568	650	directus_fields	148	{"sort":3,"hidden":true,"collection":"EmailForm_FormFields_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"EmailForm_FormFields_translations","field":"languages_code"}	\N	\N
594	676	directus_fields	153	{"sort":9,"interface":"select-dropdown-m2o","special":["m2o"],"required":true,"collection":"EmailForm","field":"city"}	{"sort":9,"interface":"select-dropdown-m2o","special":["m2o"],"required":true,"collection":"EmailForm","field":"city"}	\N	\N
595	677	directus_fields	154	{"sort":12,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"emailForm"}	{"sort":12,"interface":"list-o2m","special":["o2m"],"collection":"city","field":"emailForm"}	\N	\N
709	801	directus_fields	160	{"sort":4,"interface":"input","special":null,"collection":"home_translations","field":"titel"}	{"sort":4,"interface":"input","special":null,"collection":"home_translations","field":"titel"}	\N	\N
596	678	directus_fields	154	{"id":154,"collection":"city","field":"emailForm","special":["o2m"],"interface":"list-o2m","options":null,"display":"related-values","display_options":{"template":"{{translations.title}}"},"readonly":false,"hidden":false,"sort":12,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"city","field":"emailForm","special":["o2m"],"interface":"list-o2m","options":null,"display":"related-values","display_options":{"template":"{{translations.title}}"},"readonly":false,"hidden":false,"sort":12,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
611	693	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":null,"date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":[]}	{"name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"}}	\N	\N
613	695	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
612	694	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","position_x":19,"position_y":1,"name":"Send Email","key":"mail_vy7n5","type":"mail","options":{"to":"{{trigger.payload.emailTo}}","subject":"{{trigger.payload.subject}}","data":{"url":"example.com"},"body":"{{trigger.payload.values}}"}}	{"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","position_x":19,"position_y":1,"name":"Send Email","key":"mail_vy7n5","type":"mail","options":{"to":"{{trigger.payload.emailTo}}","subject":"{{trigger.payload.subject}}","data":{"url":"example.com"},"body":"{{trigger.payload.values}}"}}	613	\N
641	725	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
648	732	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
647	731	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger.payload.body.subject}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger.payload.body.subject}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	648	\N
660	744	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger.payload}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger.payload}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	661	\N
518	592	directus_fields	115	{"sort":4,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"DynamicCityForm_CityFormFields","field":"translations"}	{"sort":4,"interface":"translations","special":["translations"],"options":{"languageField":"code","defaultLanguage":"de"},"collection":"DynamicCityForm_CityFormFields","field":"translations"}	\N	\N
522	596	directus_fields	118	{"sort":3,"hidden":true,"collection":"DynamicCityForm_CityFormFields_translations","field":"languages_code"}	{"sort":3,"hidden":true,"collection":"DynamicCityForm_CityFormFields_translations","field":"languages_code"}	\N	\N
565	647	directus_fields	146	{"sort":1,"hidden":true,"field":"id","collection":"EmailForm_FormFields_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"EmailForm_FormFields_translations"}	\N	\N
566	648	directus_collections	EmailForm_FormFields_translations	{"hidden":true,"icon":"import_export","collection":"EmailForm_FormFields_translations"}	{"hidden":true,"icon":"import_export","collection":"EmailForm_FormFields_translations"}	\N	\N
567	649	directus_fields	147	{"sort":2,"hidden":true,"collection":"EmailForm_FormFields_translations","field":"EmailForm_FormFields_id"}	{"sort":2,"hidden":true,"collection":"EmailForm_FormFields_translations","field":"EmailForm_FormFields_id"}	\N	\N
569	651	directus_fields	149	{"sort":4,"interface":"input","special":null,"required":true,"collection":"EmailForm_FormFields_translations","field":"label"}	{"sort":4,"interface":"input","special":null,"required":true,"collection":"EmailForm_FormFields_translations","field":"label"}	\N	\N
710	802	directus_fields	161	{"sort":5,"interface":"input-multiline","special":null,"collection":"home_translations","field":"description"}	{"sort":5,"interface":"input-multiline","special":null,"collection":"home_translations","field":"description"}	\N	\N
598	680	city	2	{"id":2,"status":"draft","sort":null,"date_updated":"2024-02-03T15:28:22.208Z","translations":[3,4],"gallery":[20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38],"supportlinks":[1,2,3,4,5,6,7,8],"events":[1,4,5],"customSections":[1],"emailForm":[1]}	{"date_updated":"2024-02-03T15:28:22.208Z"}	\N	\N
597	679	EmailForm	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-02-03T14:57:39.131Z","date_updated":"2024-02-03T15:28:22.215Z","emailTo":"gannonline90@gmail.com","city":2,"fields":[1,2],"translations":[1,2]}	{"city":"2","date_updated":"2024-02-03T15:28:22.215Z"}	598	\N
614	696	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
649	733	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
650	734	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
664	748	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger.payload}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger.payload}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	665	\N
687	771	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
519	593	directus_fields	116	{"sort":1,"hidden":true,"field":"id","collection":"DynamicCityForm_CityFormFields_translations"}	{"sort":1,"hidden":true,"field":"id","collection":"DynamicCityForm_CityFormFields_translations"}	\N	\N
520	594	directus_collections	DynamicCityForm_CityFormFields_translations	{"hidden":true,"icon":"import_export","collection":"DynamicCityForm_CityFormFields_translations"}	{"hidden":true,"icon":"import_export","collection":"DynamicCityForm_CityFormFields_translations"}	\N	\N
521	595	directus_fields	117	{"sort":2,"hidden":true,"collection":"DynamicCityForm_CityFormFields_translations","field":"DynamicCityForm_CityFormFields_id"}	{"sort":2,"hidden":true,"collection":"DynamicCityForm_CityFormFields_translations","field":"DynamicCityForm_CityFormFields_id"}	\N	\N
523	597	directus_fields	119	{"sort":4,"interface":"input","special":null,"collection":"DynamicCityForm_CityFormFields_translations","field":"label"}	{"sort":4,"interface":"input","special":null,"collection":"DynamicCityForm_CityFormFields_translations","field":"label"}	\N	\N
570	652	directus_fields	141	{"id":141,"collection":"EmailForm","field":"fields","special":["m2m"],"interface":"list-m2m","options":{"junctionFieldLocation":"top","allowDuplicates":true,"template":"{{translations.label}}{{FormFields_id.type}}"},"display":"related-values","display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"EmailForm","field":"fields","special":["m2m"],"interface":"list-m2m","options":{"junctionFieldLocation":"top","allowDuplicates":true,"template":"{{translations.label}}{{FormFields_id.type}}"},"display":"related-values","display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	\N	\N
615	697	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
617	699	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
616	698	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"mail","position_x":19,"position_y":1,"options":{"to":"{{trigger.payload.emailTo}}","subject":"{{trigger.body.subject}}","data":{"url":"example.com"},"body":"{{trigger.body.values}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"mail","options":{"to":"{{trigger.payload.emailTo}}","subject":"{{trigger.body.subject}}","data":{"url":"example.com"},"body":"{{trigger.body.values}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	617	\N
618	700	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"to":"undefined","subject":"undefined","data":{"url":"example.com"},"body":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
651	735	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
571	653	FormFields	1	{"type":"text"}	{"type":"text"}	574	\N
572	654	EmailForm_FormFields_translations	1	{"label":"Flaggentyp","languages_code":{"code":"de"},"EmailForm_FormFields_id":1}	{"label":"Flaggentyp","languages_code":{"code":"de"},"EmailForm_FormFields_id":1}	574	\N
573	655	EmailForm_FormFields_translations	2	{"label":"Type de drapeau","languages_code":{"code":"fr"},"EmailForm_FormFields_id":1}	{"label":"Type de drapeau","languages_code":{"code":"fr"},"EmailForm_FormFields_id":1}	574	\N
575	657	FormFields	2	{"type":"number"}	{"type":"number"}	578	\N
576	658	EmailForm_FormFields_translations	3	{"label":"Betrag","languages_code":{"code":"de"},"EmailForm_FormFields_id":2}	{"label":"Betrag","languages_code":{"code":"de"},"EmailForm_FormFields_id":2}	578	\N
577	659	EmailForm_FormFields_translations	4	{"label":"Montant","languages_code":{"code":"fr"},"EmailForm_FormFields_id":2}	{"label":"Montant","languages_code":{"code":"fr"},"EmailForm_FormFields_id":2}	578	\N
581	663	EmailForm	1	{"emailTo":"gannonline90@gmail.com","translations":{"create":[{"title":"Flaggen bestellen","languages_code":{"code":"de"},"subject":"neue Bestellung","description":"Um Ihre Fahnen zu bestellen, geben Sie bitte die Anzahl und die Art der Fahnen an, die Sie wünschen. ","submitText":"Bestellung"},{"description":"Pour commander vos drapeaux, veuillez indiquer le nombre et le type de drapeaux que vous souhaitez. ","languages_code":{"code":"fr"},"title":"Commander des drapeaux","subject":"nouvelle commande","submitText":"Commande"}],"update":[],"delete":[]},"fields":{"create":[{"translations":{"create":[{"label":"Flaggentyp","languages_code":{"code":"de"}},{"label":"Type de drapeau","languages_code":{"code":"fr"}}],"update":[],"delete":[]},"FormFields_id":{"type":"text"}},{"translations":{"create":[{"label":"Betrag","languages_code":{"code":"de"}},{"label":"Montant","languages_code":{"code":"fr"}}],"update":[],"delete":[]},"FormFields_id":{"type":"number"}}],"update":[],"delete":[]}}	{"emailTo":"gannonline90@gmail.com","translations":{"create":[{"title":"Flaggen bestellen","languages_code":{"code":"de"},"subject":"neue Bestellung","description":"Um Ihre Fahnen zu bestellen, geben Sie bitte die Anzahl und die Art der Fahnen an, die Sie wünschen. ","submitText":"Bestellung"},{"description":"Pour commander vos drapeaux, veuillez indiquer le nombre et le type de drapeaux que vous souhaitez. ","languages_code":{"code":"fr"},"title":"Commander des drapeaux","subject":"nouvelle commande","submitText":"Commande"}],"update":[],"delete":[]},"fields":{"create":[{"translations":{"create":[{"label":"Flaggentyp","languages_code":{"code":"de"}},{"label":"Type de drapeau","languages_code":{"code":"fr"}}],"update":[],"delete":[]},"FormFields_id":{"type":"text"}},{"translations":{"create":[{"label":"Betrag","languages_code":{"code":"de"}},{"label":"Montant","languages_code":{"code":"fr"}}],"update":[],"delete":[]},"FormFields_id":{"type":"number"}}],"update":[],"delete":[]}}	\N	\N
574	656	EmailForm_FormFields	1	{"translations":{"create":[{"label":"Flaggentyp","languages_code":{"code":"de"}},{"label":"Type de drapeau","languages_code":{"code":"fr"}}],"update":[],"delete":[]},"FormFields_id":{"type":"text"},"EmailForm_id":1}	{"translations":{"create":[{"label":"Flaggentyp","languages_code":{"code":"de"}},{"label":"Type de drapeau","languages_code":{"code":"fr"}}],"update":[],"delete":[]},"FormFields_id":{"type":"text"},"EmailForm_id":1}	581	\N
578	660	EmailForm_FormFields	2	{"translations":{"create":[{"label":"Betrag","languages_code":{"code":"de"}},{"label":"Montant","languages_code":{"code":"fr"}}],"update":[],"delete":[]},"FormFields_id":{"type":"number"},"EmailForm_id":1}	{"translations":{"create":[{"label":"Betrag","languages_code":{"code":"de"}},{"label":"Montant","languages_code":{"code":"fr"}}],"update":[],"delete":[]},"FormFields_id":{"type":"number"},"EmailForm_id":1}	581	\N
579	661	EmailForm_translations	1	{"title":"Flaggen bestellen","languages_code":{"code":"de"},"subject":"neue Bestellung","description":"Um Ihre Fahnen zu bestellen, geben Sie bitte die Anzahl und die Art der Fahnen an, die Sie wünschen. ","submitText":"Bestellung","EmailForm_id":1}	{"title":"Flaggen bestellen","languages_code":{"code":"de"},"subject":"neue Bestellung","description":"Um Ihre Fahnen zu bestellen, geben Sie bitte die Anzahl und die Art der Fahnen an, die Sie wünschen. ","submitText":"Bestellung","EmailForm_id":1}	581	\N
666	750	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
668	752	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
667	751	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	668	\N
669	753	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
670	754	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
671	755	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
673	757	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
672	756	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"log","position_x":19,"position_y":1,"options":{"message":"{{$trigger.message}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"log","options":{"message":"{{$trigger.message}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	673	\N
686	770	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"mail","position_x":19,"position_y":1,"options":{"subject":"{{$trigger.body.subject}}","body":"{{$trigger.body.values}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"mail","options":{"subject":"{{$trigger.body.subject}}","body":"{{$trigger.body.values}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	687	\N
674	758	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
675	759	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
676	760	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
683	767	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
679	763	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
680	764	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
681	765	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
684	768	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
685	769	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"message":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
696	786	EmailForm	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-02-03T14:57:39.131Z","date_updated":"2024-02-03T18:34:37.786Z","emailTo":"mirjam.thomet@gmail.com","city":2,"fields":[1,2,3],"translations":[1,2]}	{"emailTo":"mirjam.thomet@gmail.com","date_updated":"2024-02-03T18:34:37.786Z"}	\N	\N
700	791	EmailForm	1	{"id":1,"status":"draft","sort":null,"date_created":"2024-02-03T14:57:39.131Z","date_updated":"2024-02-03T18:44:41.352Z","emailTo":"gannonline90@gmail.com","city":2,"fields":[1,2,3],"translations":[1,2]}	{"emailTo":"gannonline90@gmail.com","date_updated":"2024-02-03T18:44:41.352Z"}	\N	\N
688	772	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"}}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
690	774	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"id":"fdcaf62f-a842-492d-9e73-c719f558a149","name":"Send Email","icon":"alternate_email","color":null,"description":"Sends an email","status":"active","trigger":"webhook","accountability":"all","options":{"method":"POST"},"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","date_created":"2024-02-03T17:30:42.718Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13","operations":["4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"]}	{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1"}	\N	\N
689	773	directus_operations	4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1	{"id":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","name":"Send Email","key":"mail_vy7n5","type":"mail","position_x":19,"position_y":1,"options":{"subject":"{{$trigger.body.subject}}","body":"{{$trigger.body.values}}","to":"{{$trigger.body.emailTo}}"},"resolve":null,"reject":null,"flow":"fdcaf62f-a842-492d-9e73-c719f558a149","date_created":"2024-02-03T17:38:40.394Z","user_created":"db513aee-cd3a-47a9-95e5-a98f1cc92d13"}	{"name":"Send Email","key":"mail_vy7n5","type":"mail","options":{"subject":"{{$trigger.body.subject}}","body":"{{$trigger.body.values}}","to":"{{$trigger.body.emailTo}}"},"flow":"fdcaf62f-a842-492d-9e73-c719f558a149"}	690	\N
691	775	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"to":"gannonline90@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
692	776	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"to":"gannonline90@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
693	777	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"to":"gannonline90@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
694	783	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"to":"gannonline90@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"write EPIPE"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"write EPIPE"}}}	\N	\N	\N
695	785	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"to":"gannonline90@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"awdawd","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"136","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
697	787	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"I wonder if you get this, if you do, this is the prototype of the email sending feature","Betrag":"2","Next Day Delivery?":"on"},"to":"gannonline90@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"I wonder if you get this, if you do, this is the prototype of the email sending feature","Betrag":"2","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"217","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
698	788	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"reject","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"Hey look! An email from our app. This is john btw","Betrag":"9001","Next Day Delivery?":"on"},"to":"mirjam.thomet@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"Hey look! An email from our app. This is john btw","Betrag":"9001","Next Day Delivery?":"on"},"emailTo":"mirjam.thomet@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"183","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":{"name":"Error","message":"Forbidden"},"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":{"name":"Error","message":"Forbidden"}}}	\N	\N	\N
699	790	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"Hey look! An email from our app. This is john btw","Betrag":"9001","Next Day Delivery?":"on"},"to":"mirjam.thomet@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"Hey look! An email from our app. This is john btw","Betrag":"9001","Next Day Delivery?":"on"},"emailTo":"mirjam.thomet@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"183","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
701	792	directus_flows	fdcaf62f-a842-492d-9e73-c719f558a149	{"steps":[{"operation":"4a75c41a-1b24-48bc-b4d9-9f4f39bfa9e1","key":"mail_vy7n5","status":"resolve","options":{"subject":"neue Bestellung","body":{"Flaggentyp":"adawdawd","Betrag":"5","Next Day Delivery?":"on"},"to":"gannonline90@gmail.com"}}],"data":{"$trigger":{"path":"/trigger/fdcaf62f-a842-492d-9e73-c719f558a149","query":{},"body":{"values":{"Flaggentyp":"adawdawd","Betrag":"5","Next Day Delivery?":"on"},"emailTo":"gannonline90@gmail.com","subject":"neue Bestellung"},"method":"POST","headers":{"host":"localhost:8055","connection":"keep-alive","content-length":"138","pragma":"no-cache","cache-control":"no-cache","sec-ch-ua":"\\"Not A(Brand\\";v=\\"99\\", \\"Google Chrome\\";v=\\"121\\", \\"Chromium\\";v=\\"121\\"","sec-ch-ua-platform":"\\"Linux\\"","sec-ch-ua-mobile":"?0","user-agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","content-type":"application/json","accept":"*/*","origin":"http://localhost:1234","sec-fetch-site":"same-site","sec-fetch-mode":"cors","sec-fetch-dest":"empty","referer":"http://localhost:1234/","accept-encoding":"gzip, deflate, br","accept-language":""}},"$last":null,"$accountability":{"user":null,"role":null,"admin":false,"app":false,"ip":"172.21.0.1","userAgent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36","origin":"http://localhost:1234"},"$env":{},"mail_vy7n5":null}}	\N	\N	\N
711	803	directus_fields	162	{"sort":6,"interface":"list","special":["cast-json"],"options":{"fields":[{"field":"title","name":"title","type":"string","meta":{"field":"title","type":"string","interface":"input"}},{"field":"description","name":"description","type":"text","meta":{"field":"description","type":"text","interface":"input-rich-text-html"}}]},"collection":"home_translations","field":"contentbox"}	{"sort":6,"interface":"list","special":["cast-json"],"options":{"fields":[{"field":"title","name":"title","type":"string","meta":{"field":"title","type":"string","interface":"input"}},{"field":"description","name":"description","type":"text","meta":{"field":"description","type":"text","interface":"input-rich-text-html"}}]},"collection":"home_translations","field":"contentbox"}	\N	\N
712	804	directus_permissions	68	{"role":null,"collection":"home","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"home","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
713	805	directus_permissions	69	{"role":null,"collection":"home_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	{"role":null,"collection":"home_translations","action":"read","fields":["*"],"permissions":{},"validation":{}}	\N	\N
715	807	home	1	{"translations":{"create":[{"titel":"Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europas","languages_code":{"code":"de"},"description":"Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und schafft es nur gelegentlich in die Medien. Seit 1993 sind über 51 000 Kinder, Frauen und Männer gestorben. Oder müssen wir die Frage stellen, ob sie getötet wurden? Von einer immer härteren Politik der Länder Europas, die verhindert, dass diese Menschen legal in Europa einreisen können, um hier ein Asylgesuch zu stellen.\\n\\nSie müssen vor lebensgefährlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in unwürdigen Flüchtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann und wie es weiter geht. Darüber sind wir entsetzt und fordern sichere Fluchtwege! Mit verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren öffentlich gegen die unhaltbare Situation.","contentbox":[{"title":"Veranstaltungsorte","description":"<p>Die Aktion &laquo;Beim Namen nennen&raquo; findet statt in&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/basel\\" target=\\"_self\\">Basel</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/berlin\\" target=\\"_self\\">Berlin</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/bern\\" target=\\"_self\\">Bern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/braunschweig\\" target=\\"_self\\">Braunschweig</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/chur\\" target=\\"_self\\">Chur</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/dortmund\\" target=\\"_self\\">Dortmund</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/essen\\" target=\\"_self\\">Essen</a></span>, Frankfurt,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/gen%C3%A8ve\\" target=\\"_self\\">Genf</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/kehl\\" target=\\"_self\\">Kehl</a></span>, Lausanne,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/luzern\\" target=\\"_self\\">Luzern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/neuch%C3%A2tel\\" target=\\"_self\\">Neuch&acirc;tel</a></span>, Offenburg,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/st.-gallen\\" target=\\"_self\\">St.Gallen</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/thun\\" target=\\"_self\\">Thun</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/z%C3%BCrich\\" target=\\"_self\\">Z&uuml;rich&nbsp;</a></span>in<br class=\\"wixui-rich-text__text\\">Kooperation mit UNITED for Intercultural Action http://unitedagainstrefugeedeaths.eu</p>"},{"title":"Gedenk-Aktionen","description":"<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">In den verschiedenen St&auml;dten fanden &ouml;ffentliche Lesungen der &laquo;List of Deaths&raquo; statt. Dazu wurden die Angaben jeder verstorbenen Person auf ein St&uuml;ck Stoff geschrieben und an einer Installation befestigt.</span></p>\\n<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">So bauten wir gemeinsam im Gedenken an die Verstorbenen &ouml;ffentliche Mahnmale.</span></p>"},{"title":" Schirmherrschaft von „Beim Namen nennen“ in Deutschland","description":"<p class=\\"font_8 wixui-rich-text__text\\">Ratsvorsitzende der Ev. Kirche Deutschland und Präses der Ev. Kirche von Westfalen, Annette Kurschus</p>\\n<p class=\\"font_8 wixui-rich-text__text\\">Namen sind nicht Schall und Rauch. &bdquo;Teuflisch ist es, dass abertausende Menschen, die bei ihrer Flucht umkommen, namenlos bleiben. Sie werden an Grenzz&auml;unen get&ouml;tet und ertrinken im Mittelmeer. &hellip; Jeder Name, der gelesen wird, ist ein Protest gegen ihren bitteren Tod.&ldquo; &ndash; hei&szlig;t es im Gru&szlig;wort der Schirmherrin zur Aktion &bdquo;Beim Namen nennen&ldquo;: &nbsp; &nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.sanktreinoldi.de/fileadmin/Medienablage_Reinoldi/02_Allgemein/WFT/Grusswort_Beim_Namen_nennen.pdf\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">weiter zum Gru&szlig;wort</a></span></p>"}]}],"update":[],"delete":[]}}	{"translations":{"create":[{"titel":"Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europas","languages_code":{"code":"de"},"description":"Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und schafft es nur gelegentlich in die Medien. Seit 1993 sind über 51 000 Kinder, Frauen und Männer gestorben. Oder müssen wir die Frage stellen, ob sie getötet wurden? Von einer immer härteren Politik der Länder Europas, die verhindert, dass diese Menschen legal in Europa einreisen können, um hier ein Asylgesuch zu stellen.\\n\\nSie müssen vor lebensgefährlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in unwürdigen Flüchtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann und wie es weiter geht. Darüber sind wir entsetzt und fordern sichere Fluchtwege! Mit verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren öffentlich gegen die unhaltbare Situation.","contentbox":[{"title":"Veranstaltungsorte","description":"<p>Die Aktion &laquo;Beim Namen nennen&raquo; findet statt in&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/basel\\" target=\\"_self\\">Basel</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/berlin\\" target=\\"_self\\">Berlin</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/bern\\" target=\\"_self\\">Bern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/braunschweig\\" target=\\"_self\\">Braunschweig</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/chur\\" target=\\"_self\\">Chur</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/dortmund\\" target=\\"_self\\">Dortmund</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/essen\\" target=\\"_self\\">Essen</a></span>, Frankfurt,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/gen%C3%A8ve\\" target=\\"_self\\">Genf</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/kehl\\" target=\\"_self\\">Kehl</a></span>, Lausanne,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/luzern\\" target=\\"_self\\">Luzern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/neuch%C3%A2tel\\" target=\\"_self\\">Neuch&acirc;tel</a></span>, Offenburg,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/st.-gallen\\" target=\\"_self\\">St.Gallen</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/thun\\" target=\\"_self\\">Thun</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/z%C3%BCrich\\" target=\\"_self\\">Z&uuml;rich&nbsp;</a></span>in<br class=\\"wixui-rich-text__text\\">Kooperation mit UNITED for Intercultural Action http://unitedagainstrefugeedeaths.eu</p>"},{"title":"Gedenk-Aktionen","description":"<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">In den verschiedenen St&auml;dten fanden &ouml;ffentliche Lesungen der &laquo;List of Deaths&raquo; statt. Dazu wurden die Angaben jeder verstorbenen Person auf ein St&uuml;ck Stoff geschrieben und an einer Installation befestigt.</span></p>\\n<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">So bauten wir gemeinsam im Gedenken an die Verstorbenen &ouml;ffentliche Mahnmale.</span></p>"},{"title":" Schirmherrschaft von „Beim Namen nennen“ in Deutschland","description":"<p class=\\"font_8 wixui-rich-text__text\\">Ratsvorsitzende der Ev. Kirche Deutschland und Präses der Ev. Kirche von Westfalen, Annette Kurschus</p>\\n<p class=\\"font_8 wixui-rich-text__text\\">Namen sind nicht Schall und Rauch. &bdquo;Teuflisch ist es, dass abertausende Menschen, die bei ihrer Flucht umkommen, namenlos bleiben. Sie werden an Grenzz&auml;unen get&ouml;tet und ertrinken im Mittelmeer. &hellip; Jeder Name, der gelesen wird, ist ein Protest gegen ihren bitteren Tod.&ldquo; &ndash; hei&szlig;t es im Gru&szlig;wort der Schirmherrin zur Aktion &bdquo;Beim Namen nennen&ldquo;: &nbsp; &nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.sanktreinoldi.de/fileadmin/Medienablage_Reinoldi/02_Allgemein/WFT/Grusswort_Beim_Namen_nennen.pdf\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">weiter zum Gru&szlig;wort</a></span></p>"}]}],"update":[],"delete":[]}}	\N	\N
714	806	home_translations	1	{"titel":"Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europas","languages_code":{"code":"de"},"description":"Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und schafft es nur gelegentlich in die Medien. Seit 1993 sind über 51 000 Kinder, Frauen und Männer gestorben. Oder müssen wir die Frage stellen, ob sie getötet wurden? Von einer immer härteren Politik der Länder Europas, die verhindert, dass diese Menschen legal in Europa einreisen können, um hier ein Asylgesuch zu stellen.\\n\\nSie müssen vor lebensgefährlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in unwürdigen Flüchtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann und wie es weiter geht. Darüber sind wir entsetzt und fordern sichere Fluchtwege! Mit verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren öffentlich gegen die unhaltbare Situation.","contentbox":[{"title":"Veranstaltungsorte","description":"<p>Die Aktion &laquo;Beim Namen nennen&raquo; findet statt in&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/basel\\" target=\\"_self\\">Basel</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/berlin\\" target=\\"_self\\">Berlin</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/bern\\" target=\\"_self\\">Bern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/braunschweig\\" target=\\"_self\\">Braunschweig</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/chur\\" target=\\"_self\\">Chur</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/dortmund\\" target=\\"_self\\">Dortmund</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/essen\\" target=\\"_self\\">Essen</a></span>, Frankfurt,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/gen%C3%A8ve\\" target=\\"_self\\">Genf</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/kehl\\" target=\\"_self\\">Kehl</a></span>, Lausanne,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/luzern\\" target=\\"_self\\">Luzern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/neuch%C3%A2tel\\" target=\\"_self\\">Neuch&acirc;tel</a></span>, Offenburg,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/st.-gallen\\" target=\\"_self\\">St.Gallen</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/thun\\" target=\\"_self\\">Thun</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/z%C3%BCrich\\" target=\\"_self\\">Z&uuml;rich&nbsp;</a></span>in<br class=\\"wixui-rich-text__text\\">Kooperation mit UNITED for Intercultural Action http://unitedagainstrefugeedeaths.eu</p>"},{"title":"Gedenk-Aktionen","description":"<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">In den verschiedenen St&auml;dten fanden &ouml;ffentliche Lesungen der &laquo;List of Deaths&raquo; statt. Dazu wurden die Angaben jeder verstorbenen Person auf ein St&uuml;ck Stoff geschrieben und an einer Installation befestigt.</span></p>\\n<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">So bauten wir gemeinsam im Gedenken an die Verstorbenen &ouml;ffentliche Mahnmale.</span></p>"},{"title":" Schirmherrschaft von „Beim Namen nennen“ in Deutschland","description":"<p class=\\"font_8 wixui-rich-text__text\\">Ratsvorsitzende der Ev. Kirche Deutschland und Präses der Ev. Kirche von Westfalen, Annette Kurschus</p>\\n<p class=\\"font_8 wixui-rich-text__text\\">Namen sind nicht Schall und Rauch. &bdquo;Teuflisch ist es, dass abertausende Menschen, die bei ihrer Flucht umkommen, namenlos bleiben. Sie werden an Grenzz&auml;unen get&ouml;tet und ertrinken im Mittelmeer. &hellip; Jeder Name, der gelesen wird, ist ein Protest gegen ihren bitteren Tod.&ldquo; &ndash; hei&szlig;t es im Gru&szlig;wort der Schirmherrin zur Aktion &bdquo;Beim Namen nennen&ldquo;: &nbsp; &nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.sanktreinoldi.de/fileadmin/Medienablage_Reinoldi/02_Allgemein/WFT/Grusswort_Beim_Namen_nennen.pdf\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">weiter zum Gru&szlig;wort</a></span></p>"}],"home_id":1}	{"titel":"Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europas","languages_code":{"code":"de"},"description":"Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und schafft es nur gelegentlich in die Medien. Seit 1993 sind über 51 000 Kinder, Frauen und Männer gestorben. Oder müssen wir die Frage stellen, ob sie getötet wurden? Von einer immer härteren Politik der Länder Europas, die verhindert, dass diese Menschen legal in Europa einreisen können, um hier ein Asylgesuch zu stellen.\\n\\nSie müssen vor lebensgefährlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in unwürdigen Flüchtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann und wie es weiter geht. Darüber sind wir entsetzt und fordern sichere Fluchtwege! Mit verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren öffentlich gegen die unhaltbare Situation.","contentbox":[{"title":"Veranstaltungsorte","description":"<p>Die Aktion &laquo;Beim Namen nennen&raquo; findet statt in&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/basel\\" target=\\"_self\\">Basel</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/berlin\\" target=\\"_self\\">Berlin</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/bern\\" target=\\"_self\\">Bern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/braunschweig\\" target=\\"_self\\">Braunschweig</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/chur\\" target=\\"_self\\">Chur</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/dortmund\\" target=\\"_self\\">Dortmund</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/essen\\" target=\\"_self\\">Essen</a></span>, Frankfurt,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/gen%C3%A8ve\\" target=\\"_self\\">Genf</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/kehl\\" target=\\"_self\\">Kehl</a></span>, Lausanne,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/luzern\\" target=\\"_self\\">Luzern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/neuch%C3%A2tel\\" target=\\"_self\\">Neuch&acirc;tel</a></span>, Offenburg,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/st.-gallen\\" target=\\"_self\\">St.Gallen</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/thun\\" target=\\"_self\\">Thun</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/z%C3%BCrich\\" target=\\"_self\\">Z&uuml;rich&nbsp;</a></span>in<br class=\\"wixui-rich-text__text\\">Kooperation mit UNITED for Intercultural Action http://unitedagainstrefugeedeaths.eu</p>"},{"title":"Gedenk-Aktionen","description":"<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">In den verschiedenen St&auml;dten fanden &ouml;ffentliche Lesungen der &laquo;List of Deaths&raquo; statt. Dazu wurden die Angaben jeder verstorbenen Person auf ein St&uuml;ck Stoff geschrieben und an einer Installation befestigt.</span></p>\\n<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">So bauten wir gemeinsam im Gedenken an die Verstorbenen &ouml;ffentliche Mahnmale.</span></p>"},{"title":" Schirmherrschaft von „Beim Namen nennen“ in Deutschland","description":"<p class=\\"font_8 wixui-rich-text__text\\">Ratsvorsitzende der Ev. Kirche Deutschland und Präses der Ev. Kirche von Westfalen, Annette Kurschus</p>\\n<p class=\\"font_8 wixui-rich-text__text\\">Namen sind nicht Schall und Rauch. &bdquo;Teuflisch ist es, dass abertausende Menschen, die bei ihrer Flucht umkommen, namenlos bleiben. Sie werden an Grenzz&auml;unen get&ouml;tet und ertrinken im Mittelmeer. &hellip; Jeder Name, der gelesen wird, ist ein Protest gegen ihren bitteren Tod.&ldquo; &ndash; hei&szlig;t es im Gru&szlig;wort der Schirmherrin zur Aktion &bdquo;Beim Namen nennen&ldquo;: &nbsp; &nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.sanktreinoldi.de/fileadmin/Medienablage_Reinoldi/02_Allgemein/WFT/Grusswort_Beim_Namen_nennen.pdf\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">weiter zum Gru&szlig;wort</a></span></p>"}],"home_id":1}	715	\N
716	809	directus_fields	162	{"id":162,"collection":"home_translations","field":"contentbox","special":["cast-json"],"interface":"list","options":{"fields":[{"field":"title","name":"title","type":"string","meta":{"field":"title","type":"string","interface":"input"}},{"field":"description","name":"description","type":"text","meta":{"field":"description","type":"text","interface":"input-rich-text-html"}},{"field":"width","name":"width","type":"integer","meta":{"field":"width","type":"integer","interface":"select-dropdown","options":{"choices":[{"text":"Full width","value":"1"},{"text":"Half width","value":"0.5"}]}}}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"home_translations","field":"contentbox","special":["cast-json"],"interface":"list","options":{"fields":[{"field":"title","name":"title","type":"string","meta":{"field":"title","type":"string","interface":"input"}},{"field":"description","name":"description","type":"text","meta":{"field":"description","type":"text","interface":"input-rich-text-html"}},{"field":"width","name":"width","type":"integer","meta":{"field":"width","type":"integer","interface":"select-dropdown","options":{"choices":[{"text":"Full width","value":"1"},{"text":"Half width","value":"0.5"}]}}}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	\N	\N
717	810	home_translations	1	{"id":1,"home_id":1,"languages_code":"de","titel":"Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europas","description":"Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und schafft es nur gelegentlich in die Medien. Seit 1993 sind über 51 000 Kinder, Frauen und Männer gestorben. Oder müssen wir die Frage stellen, ob sie getötet wurden? Von einer immer härteren Politik der Länder Europas, die verhindert, dass diese Menschen legal in Europa einreisen können, um hier ein Asylgesuch zu stellen.\\n\\nSie müssen vor lebensgefährlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in unwürdigen Flüchtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann und wie es weiter geht. Darüber sind wir entsetzt und fordern sichere Fluchtwege! Mit verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren öffentlich gegen die unhaltbare Situation.","contentbox":[{"title":"Veranstaltungsorte","description":"<p>Die Aktion &laquo;Beim Namen nennen&raquo; findet statt in&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/basel\\" target=\\"_self\\">Basel</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/berlin\\" target=\\"_self\\">Berlin</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/bern\\" target=\\"_self\\">Bern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/braunschweig\\" target=\\"_self\\">Braunschweig</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/chur\\" target=\\"_self\\">Chur</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/dortmund\\" target=\\"_self\\">Dortmund</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/essen\\" target=\\"_self\\">Essen</a></span>, Frankfurt,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/gen%C3%A8ve\\" target=\\"_self\\">Genf</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/kehl\\" target=\\"_self\\">Kehl</a></span>, Lausanne,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/luzern\\" target=\\"_self\\">Luzern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/neuch%C3%A2tel\\" target=\\"_self\\">Neuch&acirc;tel</a></span>, Offenburg,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/st.-gallen\\" target=\\"_self\\">St.Gallen</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/thun\\" target=\\"_self\\">Thun</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/z%C3%BCrich\\" target=\\"_self\\">Z&uuml;rich&nbsp;</a></span>in<br class=\\"wixui-rich-text__text\\">Kooperation mit UNITED for Intercultural Action http://unitedagainstrefugeedeaths.eu</p>","width":"0.5"},{"title":"Gedenk-Aktionen","description":"<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">In den verschiedenen St&auml;dten fanden &ouml;ffentliche Lesungen der &laquo;List of Deaths&raquo; statt. Dazu wurden die Angaben jeder verstorbenen Person auf ein St&uuml;ck Stoff geschrieben und an einer Installation befestigt.</span></p>\\n<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">So bauten wir gemeinsam im Gedenken an die Verstorbenen &ouml;ffentliche Mahnmale.</span></p>","width":"0.5"},{"title":" Schirmherrschaft von „Beim Namen nennen“ in Deutschland","description":"<p class=\\"font_8 wixui-rich-text__text\\">Ratsvorsitzende der Ev. Kirche Deutschland und Präses der Ev. Kirche von Westfalen, Annette Kurschus</p>\\n<p class=\\"font_8 wixui-rich-text__text\\">Namen sind nicht Schall und Rauch. &bdquo;Teuflisch ist es, dass abertausende Menschen, die bei ihrer Flucht umkommen, namenlos bleiben. Sie werden an Grenzz&auml;unen get&ouml;tet und ertrinken im Mittelmeer. &hellip; Jeder Name, der gelesen wird, ist ein Protest gegen ihren bitteren Tod.&ldquo; &ndash; hei&szlig;t es im Gru&szlig;wort der Schirmherrin zur Aktion &bdquo;Beim Namen nennen&ldquo;: &nbsp; &nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.sanktreinoldi.de/fileadmin/Medienablage_Reinoldi/02_Allgemein/WFT/Grusswort_Beim_Namen_nennen.pdf\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">weiter zum Gru&szlig;wort</a></span></p>","width":"1"}]}	{"home_id":1,"languages_code":"de","contentbox":[{"title":"Veranstaltungsorte","description":"<p>Die Aktion &laquo;Beim Namen nennen&raquo; findet statt in&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/basel\\" target=\\"_self\\">Basel</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/berlin\\" target=\\"_self\\">Berlin</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/bern\\" target=\\"_self\\">Bern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/braunschweig\\" target=\\"_self\\">Braunschweig</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/chur\\" target=\\"_self\\">Chur</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/dortmund\\" target=\\"_self\\">Dortmund</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/essen\\" target=\\"_self\\">Essen</a></span>, Frankfurt,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/gen%C3%A8ve\\" target=\\"_self\\">Genf</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/kehl\\" target=\\"_self\\">Kehl</a></span>, Lausanne,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/luzern\\" target=\\"_self\\">Luzern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/neuch%C3%A2tel\\" target=\\"_self\\">Neuch&acirc;tel</a></span>, Offenburg,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/st.-gallen\\" target=\\"_self\\">St.Gallen</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/thun\\" target=\\"_self\\">Thun</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/z%C3%BCrich\\" target=\\"_self\\">Z&uuml;rich&nbsp;</a></span>in<br class=\\"wixui-rich-text__text\\">Kooperation mit UNITED for Intercultural Action http://unitedagainstrefugeedeaths.eu</p>","width":"0.5"},{"title":"Gedenk-Aktionen","description":"<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">In den verschiedenen St&auml;dten fanden &ouml;ffentliche Lesungen der &laquo;List of Deaths&raquo; statt. Dazu wurden die Angaben jeder verstorbenen Person auf ein St&uuml;ck Stoff geschrieben und an einer Installation befestigt.</span></p>\\n<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">So bauten wir gemeinsam im Gedenken an die Verstorbenen &ouml;ffentliche Mahnmale.</span></p>","width":"0.5"},{"title":" Schirmherrschaft von „Beim Namen nennen“ in Deutschland","description":"<p class=\\"font_8 wixui-rich-text__text\\">Ratsvorsitzende der Ev. Kirche Deutschland und Präses der Ev. Kirche von Westfalen, Annette Kurschus</p>\\n<p class=\\"font_8 wixui-rich-text__text\\">Namen sind nicht Schall und Rauch. &bdquo;Teuflisch ist es, dass abertausende Menschen, die bei ihrer Flucht umkommen, namenlos bleiben. Sie werden an Grenzz&auml;unen get&ouml;tet und ertrinken im Mittelmeer. &hellip; Jeder Name, der gelesen wird, ist ein Protest gegen ihren bitteren Tod.&ldquo; &ndash; hei&szlig;t es im Gru&szlig;wort der Schirmherrin zur Aktion &bdquo;Beim Namen nennen&ldquo;: &nbsp; &nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.sanktreinoldi.de/fileadmin/Medienablage_Reinoldi/02_Allgemein/WFT/Grusswort_Beim_Namen_nennen.pdf\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">weiter zum Gru&szlig;wort</a></span></p>","width":"1"}]}	\N	\N
\.


--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_roles (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
878f0264-16f3-4a54-a79e-82c27313bacc	Administrator	verified	$t:admin_description	\N	f	t	t
68c58399-f145-49aa-9db1-ee94c793b427	Basel City Admin	supervised_user_circle	\N	\N	f	f	t
\.


--
-- Data for Name: directus_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin) FROM stdin;
ugw2EDUkeYttedp8bDszYAaj8XwH_nz5FwytoBhyP99UtFzVvQeweDEb89JVZcHL	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-09 13:00:09.421+00	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36	\N	http://localhost:8055
FbuVyV-JVnT1ajgQBjed8FOSkkv225-W75nhLpuZEOOCxEVFfxpRztVzSvIzrryV	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-12 18:19:26.915+00	172.21.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36	\N	http://localhost:8055
lHELSXiKVBJOC-4jYxUerXRXIL4dNeptBdamZYqrrXms5yKT8LI6UAxD5W6TLKcr	db513aee-cd3a-47a9-95e5-a98f1cc92d13	2024-02-17 06:59:56.214+00	172.18.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36	\N	http://localhost:8055
\.


--
-- Data for Name: directus_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides) FROM stdin;
\.


--
-- Data for Name: directus_shares; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
\.


--
-- Data for Name: directus_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_translations (id, language, key, value) FROM stdin;
\.


--
-- Data for Name: directus_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides) FROM stdin;
507e3800-1c28-454b-bcd2-766cda54a162	Basel	Admin	mirjamthomet@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$rEXyXmboQoJtEolz1V+VwQ$0mpZ0yfRnbyl8LchcvwSg1zkRSH516jNbFYv2TCGJ0s	\N	\N	\N	\N	\N	\N	\N	active	68c58399-f145-49aa-9db1-ee94c793b427	\N	2024-01-20 14:42:17.91+00	/content/city	default	\N	\N	t	\N	\N	\N	\N	\N
db513aee-cd3a-47a9-95e5-a98f1cc92d13	Admin	User	gannonline90@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$8mOx4/9GjUaVmWJRCxhc1Q$O2PmAQbgGlqxaNAnsgyyJRQxPl+9HeBKZ5z7JMZjqbo	\N	\N	\N	\N	\N	\N	\N	active	878f0264-16f3-4a54-a79e-82c27313bacc	\N	2024-02-10 06:59:56.227+00	/content/home	default	\N	\N	t	\N	\N	\N	\N	\N
\.


--
-- Data for Name: directus_versions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated) FROM stdin;
\.


--
-- Data for Name: directus_webhooks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.directus_webhooks (id, name, method, url, status, data, actions, collections, headers) FROM stdin;
\.


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.event (id, status, sort, date_updated, teaser, city, link) FROM stdin;
1	draft	\N	2024-01-20 15:03:36.217+00	\N	2	\N
2	draft	\N	2024-01-20 15:04:35.777+00	\N	1	\N
5	draft	\N	\N	\N	2	\N
4	draft	\N	\N	\N	2	https://www.kathbern.ch/fasa/sozialpolitisches-engagement/cercle-de-silence
\.


--
-- Data for Name: event_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.event_translations (id, event_id, languages_code, name, description, location, "customDates") FROM stdin;
1	1	de	Berner Bierlauf	<p>Berner Bierlauf Berner Bierlauf</p>	\N	\N
2	1	fr	Course de bière à Berne	<p>Course de bi&egrave;re &agrave; Berne Course de bi&egrave;re &agrave; Berne</p>	\N	\N
3	2	de	Tanz im Wald in Basel	<p>Tanz im Wald in Basel Tanz im Wald in Basel</p>	\N	\N
4	2	fr	Danse dans les bois à Bâle	<p>Danse dans les bois &agrave; B&acirc;le Danse dans les bois &agrave; B&acirc;le</p>	\N	\N
5	4	de	Kreis der Stille	<p>&nbsp;</p>\n<table cellspacing="0" cellpadding="3">\n<tbody>\n<tr>\n<td colspan="35" align="left" valign="bottom">&lt;p class="font_8"&gt;Wir, Gefl&uuml;chtete und Nicht-Gefl&uuml;chtete gemeinsam, wollen in diesem Kreis ein Zeichen der Solidarit&auml;t setzen und auf die sehr schwierige Situation von abgelehnten Asylsuchenden und Menschen ohne Papiere in der Schweiz aufmerksam machen und derer gedenken, die auf der Flucht ihr Leben verloren haben.&lt;/p&gt;</td>\n</tr>\n</tbody>\n</table>	Bahnhofplatz Bern, neben Heiliggeistkirche	2023-06-17
6	4	fr	Cercle de Silence	<p>&lt;p class="font_8"&gt;Nous, r&eacute;fugi&eacute;s et non-r&eacute;fugi&eacute;s ensemble, voulons dans ce cercle donner un signe de solidarit&eacute; et attirer l'attention sur la situation tr&egrave;s difficile des requ&eacute;rants d'asile d&eacute;bout&eacute;s et des personnes sans papiers en Suisse, et rendre hommage &agrave; ceux qui ont perdu la vie en fuyant.&lt;/p&gt;</p>	Place de la gare de Berne, à côté de l'église du Saint-Esprit	2023-06-17
7	5	de	Gottesdienste und Gedenkaktionen auf Italienisch in der Missione Cattolica di Lingua Italiana	<p>&lt;p class="font_8"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>	Bovetstrasse 1, 3007 Bern	2023-06-17
8	5	fr	Services religieux et actions commémoratives en italien à la Missione Cattolica di Lingua Italiana	<p>&lt;p class="font_8"&gt;Sabato, 17 giugno 2023 Ore 18.30 Santa Messa Ore 19.30 - 22.00 lettura dei nomi e adorazione Domenica 18 giugno 2023 Ore 9.30 - 10.45 lettura dei nomi e adorazione Ore 11.00 Santa Messa Affissione dei nomi dal 17-26 giugno 2023&lt;/p&gt;</p>	Bovetstrasse 1, 3007 Bern	2023-06-17
\.


--
-- Data for Name: home; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home (id) FROM stdin;
1
\.


--
-- Data for Name: home_translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home_translations (id, home_id, languages_code, titel, description, contentbox) FROM stdin;
1	1	de	Flüchtlingstag 2023 Beim Namen nennen – über 51 000 Opfer der Festung Europas	Ein stilles Drama geht seit Jahren auf den Meeren und an den Grenzen Europas vor sich und schafft es nur gelegentlich in die Medien. Seit 1993 sind über 51 000 Kinder, Frauen und Männer gestorben. Oder müssen wir die Frage stellen, ob sie getötet wurden? Von einer immer härteren Politik der Länder Europas, die verhindert, dass diese Menschen legal in Europa einreisen können, um hier ein Asylgesuch zu stellen.\n\nSie müssen vor lebensgefährlichen Situationen fliehen und setzen ihr Leben aufs Spiel. Sie verharren in unwürdigen Flüchtlingslagern ohne angemessene Versorgung oder das Wissen, ob, wann und wie es weiter geht. Darüber sind wir entsetzt und fordern sichere Fluchtwege! Mit verschiedenen Aktionen und einem Mahnmal gedenken wir der Opfer und protestieren öffentlich gegen die unhaltbare Situation.	[{"title":"Veranstaltungsorte","description":"<p>Die Aktion &laquo;Beim Namen nennen&raquo; findet statt in&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/basel\\" target=\\"_self\\">Basel</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/berlin\\" target=\\"_self\\">Berlin</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/bern\\" target=\\"_self\\">Bern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/braunschweig\\" target=\\"_self\\">Braunschweig</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/chur\\" target=\\"_self\\">Chur</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/dortmund\\" target=\\"_self\\">Dortmund</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/essen\\" target=\\"_self\\">Essen</a></span>, Frankfurt,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/gen%C3%A8ve\\" target=\\"_self\\">Genf</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/kehl\\" target=\\"_self\\">Kehl</a></span>, Lausanne,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/luzern\\" target=\\"_self\\">Luzern</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/neuch%C3%A2tel\\" target=\\"_self\\">Neuch&acirc;tel</a></span>, Offenburg,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/st.-gallen\\" target=\\"_self\\">St.Gallen</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/thun\\" target=\\"_self\\">Thun</a></span>,&nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.beimnamennennen.ch/cities/z%C3%BCrich\\" target=\\"_self\\">Z&uuml;rich&nbsp;</a></span>in<br class=\\"wixui-rich-text__text\\">Kooperation mit UNITED for Intercultural Action http://unitedagainstrefugeedeaths.eu</p>","width":"0.5"},{"title":"Gedenk-Aktionen","description":"<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">In den verschiedenen St&auml;dten fanden &ouml;ffentliche Lesungen der &laquo;List of Deaths&raquo; statt. Dazu wurden die Angaben jeder verstorbenen Person auf ein St&uuml;ck Stoff geschrieben und an einer Installation befestigt.</span></p>\\n<p class=\\"font_8 wixui-rich-text__text\\"><span class=\\"wixui-rich-text__text\\">So bauten wir gemeinsam im Gedenken an die Verstorbenen &ouml;ffentliche Mahnmale.</span></p>","width":"0.5"},{"title":" Schirmherrschaft von „Beim Namen nennen“ in Deutschland","description":"<p class=\\"font_8 wixui-rich-text__text\\">Ratsvorsitzende der Ev. Kirche Deutschland und Präses der Ev. Kirche von Westfalen, Annette Kurschus</p>\\n<p class=\\"font_8 wixui-rich-text__text\\">Namen sind nicht Schall und Rauch. &bdquo;Teuflisch ist es, dass abertausende Menschen, die bei ihrer Flucht umkommen, namenlos bleiben. Sie werden an Grenzz&auml;unen get&ouml;tet und ertrinken im Mittelmeer. &hellip; Jeder Name, der gelesen wird, ist ein Protest gegen ihren bitteren Tod.&ldquo; &ndash; hei&szlig;t es im Gru&szlig;wort der Schirmherrin zur Aktion &bdquo;Beim Namen nennen&ldquo;: &nbsp; &nbsp;<span class=\\"wixui-rich-text__text\\"><a class=\\"wixui-rich-text__text\\" href=\\"https://www.sanktreinoldi.de/fileadmin/Medienablage_Reinoldi/02_Allgemein/WFT/Grusswort_Beim_Namen_nennen.pdf\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">weiter zum Gru&szlig;wort</a></span></p>","width":"1"}]
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.languages (code, name) FROM stdin;
de	German
fr	French
\.


--
-- Name: CustomSections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."CustomSections_id_seq"', 1, true);


--
-- Name: CustomSections_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."CustomSections_translations_id_seq"', 2, true);


--
-- Name: EmailForm_FormFields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EmailForm_FormFields_id_seq"', 3, true);


--
-- Name: EmailForm_FormFields_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EmailForm_FormFields_translations_id_seq"', 5, true);


--
-- Name: EmailForm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EmailForm_id_seq"', 1, true);


--
-- Name: EmailForm_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EmailForm_translations_id_seq"', 2, true);


--
-- Name: FormFields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."FormFields_id_seq"', 4, true);


--
-- Name: SupportLinks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."SupportLinks_id_seq"', 8, true);


--
-- Name: SupportLinks_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."SupportLinks_translations_id_seq"', 10, true);


--
-- Name: city_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.city_files_id_seq', 38, true);


--
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.city_id_seq', 2, true);


--
-- Name: city_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.city_translations_id_seq', 4, true);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, true);


--
-- Name: countries_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.countries_translations_id_seq', 2, true);


--
-- Name: directus_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_activity_id_seq', 811, true);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 162, true);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 69, true);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 6, true);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 40, true);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_revisions_id_seq', 717, true);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, false);


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.event_id_seq', 5, true);


--
-- Name: event_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.event_translations_id_seq', 8, true);


--
-- Name: home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_id_seq', 1, true);


--
-- Name: home_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_translations_id_seq', 1, true);


--
-- Name: CustomSections CustomSections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CustomSections"
    ADD CONSTRAINT "CustomSections_pkey" PRIMARY KEY (id);


--
-- Name: CustomSections_translations CustomSections_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CustomSections_translations"
    ADD CONSTRAINT "CustomSections_translations_pkey" PRIMARY KEY (id);


--
-- Name: EmailForm_FormFields EmailForm_FormFields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_FormFields"
    ADD CONSTRAINT "EmailForm_FormFields_pkey" PRIMARY KEY (id);


--
-- Name: EmailForm_FormFields_translations EmailForm_FormFields_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_FormFields_translations"
    ADD CONSTRAINT "EmailForm_FormFields_translations_pkey" PRIMARY KEY (id);


--
-- Name: EmailForm EmailForm_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm"
    ADD CONSTRAINT "EmailForm_pkey" PRIMARY KEY (id);


--
-- Name: EmailForm_translations EmailForm_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_translations"
    ADD CONSTRAINT "EmailForm_translations_pkey" PRIMARY KEY (id);


--
-- Name: FormFields FormFields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FormFields"
    ADD CONSTRAINT "FormFields_pkey" PRIMARY KEY (id);


--
-- Name: SupportLinks SupportLinks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SupportLinks"
    ADD CONSTRAINT "SupportLinks_pkey" PRIMARY KEY (id);


--
-- Name: SupportLinks_translations SupportLinks_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SupportLinks_translations"
    ADD CONSTRAINT "SupportLinks_translations_pkey" PRIMARY KEY (id);


--
-- Name: city_files city_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city_files
    ADD CONSTRAINT city_files_pkey PRIMARY KEY (id);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- Name: city_translations city_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city_translations
    ADD CONSTRAINT city_translations_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: countries_translations countries_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries_translations
    ADD CONSTRAINT countries_translations_pkey PRIMARY KEY (id);


--
-- Name: directus_activity directus_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);


--
-- Name: directus_collections directus_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);


--
-- Name: directus_dashboards directus_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);


--
-- Name: directus_extensions directus_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (name);


--
-- Name: directus_fields directus_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);


--
-- Name: directus_files directus_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);


--
-- Name: directus_flows directus_flows_operation_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);


--
-- Name: directus_flows directus_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);


--
-- Name: directus_folders directus_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);


--
-- Name: directus_migrations directus_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);


--
-- Name: directus_notifications directus_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_reject_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);


--
-- Name: directus_operations directus_operations_resolve_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);


--
-- Name: directus_panels directus_panels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);


--
-- Name: directus_permissions directus_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);


--
-- Name: directus_presets directus_presets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);


--
-- Name: directus_relations directus_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);


--
-- Name: directus_revisions directus_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);


--
-- Name: directus_roles directus_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);


--
-- Name: directus_sessions directus_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);


--
-- Name: directus_settings directus_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);


--
-- Name: directus_shares directus_shares_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);


--
-- Name: directus_translations directus_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);


--
-- Name: directus_users directus_users_external_identifier_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);


--
-- Name: directus_users directus_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_token_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);


--
-- Name: directus_versions directus_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);


--
-- Name: directus_webhooks directus_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: event_translations event_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_pkey PRIMARY KEY (id);


--
-- Name: home home_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_pkey PRIMARY KEY (id);


--
-- Name: home_translations home_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_translations
    ADD CONSTRAINT home_translations_pkey PRIMARY KEY (id);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (code);


--
-- Name: city_files city_files_city_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city_files
    ADD CONSTRAINT city_files_city_id_foreign FOREIGN KEY (city_id) REFERENCES public.city(id) ON DELETE CASCADE;


--
-- Name: city_files city_files_directus_files_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city_files
    ADD CONSTRAINT city_files_directus_files_id_foreign FOREIGN KEY (directus_files_id) REFERENCES public.directus_files(id) ON DELETE CASCADE;


--
-- Name: city_translations city_translations_city_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city_translations
    ADD CONSTRAINT city_translations_city_id_foreign FOREIGN KEY (city_id) REFERENCES public.city(id) ON DELETE SET NULL;


--
-- Name: city_translations city_translations_languages_code_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.city_translations
    ADD CONSTRAINT city_translations_languages_code_foreign FOREIGN KEY (languages_code) REFERENCES public.languages(code) ON DELETE SET NULL;


--
-- Name: countries countries_cities_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_cities_foreign FOREIGN KEY (cities) REFERENCES public.city(id) ON DELETE SET NULL;


--
-- Name: countries_translations countries_translations_countries_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries_translations
    ADD CONSTRAINT countries_translations_countries_id_foreign FOREIGN KEY (countries_id) REFERENCES public.countries(id) ON DELETE SET NULL;


--
-- Name: countries_translations countries_translations_languages_code_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries_translations
    ADD CONSTRAINT countries_translations_languages_code_foreign FOREIGN KEY (languages_code) REFERENCES public.languages(code) ON DELETE SET NULL;


--
-- Name: CustomSections customsections_city_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CustomSections"
    ADD CONSTRAINT customsections_city_foreign FOREIGN KEY (city) REFERENCES public.city(id) ON DELETE SET NULL;


--
-- Name: CustomSections_translations customsections_translations_customsections_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CustomSections_translations"
    ADD CONSTRAINT customsections_translations_customsections_id_foreign FOREIGN KEY ("CustomSections_id") REFERENCES public."CustomSections"(id) ON DELETE SET NULL;


--
-- Name: CustomSections_translations customsections_translations_languages_code_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CustomSections_translations"
    ADD CONSTRAINT customsections_translations_languages_code_foreign FOREIGN KEY (languages_code) REFERENCES public.languages(code) ON DELETE SET NULL;


--
-- Name: directus_collections directus_collections_group_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);


--
-- Name: directus_dashboards directus_dashboards_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_modified_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);


--
-- Name: directus_files directus_files_uploaded_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);


--
-- Name: directus_flows directus_flows_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_folders directus_folders_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);


--
-- Name: directus_notifications directus_notifications_recipient_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_notifications directus_notifications_sender_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);


--
-- Name: directus_operations directus_operations_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;


--
-- Name: directus_operations directus_operations_reject_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_resolve_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_panels directus_panels_dashboard_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;


--
-- Name: directus_panels directus_panels_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_permissions directus_permissions_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_activity_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);


--
-- Name: directus_revisions directus_revisions_version_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_share_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_settings directus_settings_project_logo_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_background_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_favicon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_foreground_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_storage_default_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_shares directus_shares_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_versions directus_versions_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: EmailForm emailform_city_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm"
    ADD CONSTRAINT emailform_city_foreign FOREIGN KEY (city) REFERENCES public.city(id) ON DELETE SET NULL;


--
-- Name: EmailForm_FormFields emailform_formfields_emailform_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_FormFields"
    ADD CONSTRAINT emailform_formfields_emailform_id_foreign FOREIGN KEY ("EmailForm_id") REFERENCES public."EmailForm"(id) ON DELETE SET NULL;


--
-- Name: EmailForm_FormFields emailform_formfields_formfields_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_FormFields"
    ADD CONSTRAINT emailform_formfields_formfields_id_foreign FOREIGN KEY ("FormFields_id") REFERENCES public."FormFields"(id) ON DELETE SET NULL;


--
-- Name: EmailForm_FormFields_translations emailform_formfields_translations_emailfor__7e82bea7_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_FormFields_translations"
    ADD CONSTRAINT emailform_formfields_translations_emailfor__7e82bea7_foreign FOREIGN KEY ("EmailForm_FormFields_id") REFERENCES public."EmailForm_FormFields"(id) ON DELETE SET NULL;


--
-- Name: EmailForm_FormFields_translations emailform_formfields_translations_languages_code_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_FormFields_translations"
    ADD CONSTRAINT emailform_formfields_translations_languages_code_foreign FOREIGN KEY (languages_code) REFERENCES public.languages(code) ON DELETE SET NULL;


--
-- Name: EmailForm_translations emailform_translations_emailform_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_translations"
    ADD CONSTRAINT emailform_translations_emailform_id_foreign FOREIGN KEY ("EmailForm_id") REFERENCES public."EmailForm"(id) ON DELETE SET NULL;


--
-- Name: EmailForm_translations emailform_translations_languages_code_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailForm_translations"
    ADD CONSTRAINT emailform_translations_languages_code_foreign FOREIGN KEY (languages_code) REFERENCES public.languages(code) ON DELETE SET NULL;


--
-- Name: event event_city_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_city_foreign FOREIGN KEY (city) REFERENCES public.city(id) ON DELETE SET NULL;


--
-- Name: event event_teaser_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_teaser_foreign FOREIGN KEY (teaser) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: event_translations event_translations_event_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.event(id) ON DELETE SET NULL;


--
-- Name: event_translations event_translations_languages_code_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.event_translations
    ADD CONSTRAINT event_translations_languages_code_foreign FOREIGN KEY (languages_code) REFERENCES public.languages(code) ON DELETE SET NULL;


--
-- Name: home_translations home_translations_home_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_translations
    ADD CONSTRAINT home_translations_home_id_foreign FOREIGN KEY (home_id) REFERENCES public.home(id) ON DELETE SET NULL;


--
-- Name: home_translations home_translations_languages_code_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home_translations
    ADD CONSTRAINT home_translations_languages_code_foreign FOREIGN KEY (languages_code) REFERENCES public.languages(code) ON DELETE SET NULL;


--
-- Name: SupportLinks supportlinks_city_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SupportLinks"
    ADD CONSTRAINT supportlinks_city_foreign FOREIGN KEY (city) REFERENCES public.city(id) ON DELETE SET NULL;


--
-- Name: SupportLinks_translations supportlinks_translations_languages_code_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SupportLinks_translations"
    ADD CONSTRAINT supportlinks_translations_languages_code_foreign FOREIGN KEY (languages_code) REFERENCES public.languages(code) ON DELETE SET NULL;


--
-- Name: SupportLinks_translations supportlinks_translations_supportlinks_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SupportLinks_translations"
    ADD CONSTRAINT supportlinks_translations_supportlinks_id_foreign FOREIGN KEY ("SupportLinks_id") REFERENCES public."SupportLinks"(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

