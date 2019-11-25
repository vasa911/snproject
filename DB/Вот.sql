PGDMP                     
    w            FreeFallProject    11.5    12.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25972    FreeFallProject    DATABASE     �   CREATE DATABASE "FreeFallProject" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
 !   DROP DATABASE "FreeFallProject";
                postgres    false            �            1259    26270    ChatApp_description    TABLE     �   CREATE TABLE public."ChatApp_description" (
    id integer NOT NULL,
    gender character varying(20) NOT NULL,
    user_id integer NOT NULL
);
 )   DROP TABLE public."ChatApp_description";
       public            postgres    false            �            1259    26268    ChatApp_description_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatApp_description_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."ChatApp_description_id_seq";
       public          postgres    false    220            �           0    0    ChatApp_description_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."ChatApp_description_id_seq" OWNED BY public."ChatApp_description".id;
          public          postgres    false    219            �            1259    26158    ChatApp_hike    TABLE     �  CREATE TABLE public."ChatApp_hike" (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(200000) NOT NULL,
    creator_id integer,
    end_date date NOT NULL,
    image character varying(100),
    start_date date NOT NULL,
    difficulty character varying(200) NOT NULL,
    type_of_hike character varying(200) NOT NULL,
    coordinates character varying(200000) NOT NULL
);
 "   DROP TABLE public."ChatApp_hike";
       public            postgres    false            �            1259    26156    ChatApp_hike_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatApp_hike_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ChatApp_hike_id_seq";
       public          postgres    false    216            �           0    0    ChatApp_hike_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ChatApp_hike_id_seq" OWNED BY public."ChatApp_hike".id;
          public          postgres    false    215            �            1259    26208    ChatApp_hike_participants    TABLE     �   CREATE TABLE public."ChatApp_hike_participants" (
    id integer NOT NULL,
    hike_id integer NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public."ChatApp_hike_participants";
       public            postgres    false            �            1259    26206     ChatApp_hike_participants_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatApp_hike_participants_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."ChatApp_hike_participants_id_seq";
       public          postgres    false    218            �           0    0     ChatApp_hike_participants_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."ChatApp_hike_participants_id_seq" OWNED BY public."ChatApp_hike_participants".id;
          public          postgres    false    217            �            1259    26004 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            postgres    false            �            1259    26002    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    202            �            1259    26014    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            postgres    false            �            1259    26012    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    204            �            1259    25996    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            postgres    false            �            1259    25994    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    200            �            1259    26022 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            postgres    false            �            1259    26032    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            postgres    false            �            1259    26030    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    208            �            1259    26020    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    206            �            1259    26040    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            postgres    false            �            1259    26038 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    210            �            1259    26123    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public            postgres    false            �            1259    26121    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    212            �            1259    25986    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            postgres    false            �            1259    25984    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    198            �            1259    25975    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            postgres    false            �            1259    25973    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    196            �            1259    26145    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            postgres    false            �
           2604    26273    ChatApp_description id    DEFAULT     �   ALTER TABLE ONLY public."ChatApp_description" ALTER COLUMN id SET DEFAULT nextval('public."ChatApp_description_id_seq"'::regclass);
 G   ALTER TABLE public."ChatApp_description" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �
           2604    26161    ChatApp_hike id    DEFAULT     v   ALTER TABLE ONLY public."ChatApp_hike" ALTER COLUMN id SET DEFAULT nextval('public."ChatApp_hike_id_seq"'::regclass);
 @   ALTER TABLE public."ChatApp_hike" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �
           2604    26211    ChatApp_hike_participants id    DEFAULT     �   ALTER TABLE ONLY public."ChatApp_hike_participants" ALTER COLUMN id SET DEFAULT nextval('public."ChatApp_hike_participants_id_seq"'::regclass);
 M   ALTER TABLE public."ChatApp_hike_participants" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �
           2604    26007    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    26017    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    25999    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �
           2604    26025    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    26035    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    26043    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    26126    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    25989    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    199    198    199            �
           2604    25978    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    197    197            �          0    26270    ChatApp_description 
   TABLE DATA           D   COPY public."ChatApp_description" (id, gender, user_id) FROM stdin;
    public          postgres    false    220   �       �          0    26158    ChatApp_hike 
   TABLE DATA           �   COPY public."ChatApp_hike" (id, name, description, creator_id, end_date, image, start_date, difficulty, type_of_hike, coordinates) FROM stdin;
    public          postgres    false    216   2�       �          0    26208    ChatApp_hike_participants 
   TABLE DATA           K   COPY public."ChatApp_hike_participants" (id, hike_id, user_id) FROM stdin;
    public          postgres    false    218   w�       �          0    26004 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    203   ��       �          0    26014    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    205   ��       �          0    25996    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    201   ݱ       �          0    26022 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    207   ]�       �          0    26032    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   �       �          0    26040    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    211   ��       �          0    26123    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   �       �          0    25986    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    199   �       �          0    25975    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    197   h�       �          0    26145    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    214   ?�       �           0    0    ChatApp_description_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."ChatApp_description_id_seq"', 1, false);
          public          postgres    false    219            �           0    0    ChatApp_hike_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ChatApp_hike_id_seq"', 7, true);
          public          postgres    false    215            �           0    0     ChatApp_hike_participants_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."ChatApp_hike_participants_id_seq"', 3, true);
          public          postgres    false    217            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);
          public          postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);
          public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);
          public          postgres    false    196                       2606    26275 ,   ChatApp_description ChatApp_description_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."ChatApp_description"
    ADD CONSTRAINT "ChatApp_description_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."ChatApp_description" DROP CONSTRAINT "ChatApp_description_pkey";
       public            postgres    false    220                       2606    26277 3   ChatApp_description ChatApp_description_user_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public."ChatApp_description"
    ADD CONSTRAINT "ChatApp_description_user_id_key" UNIQUE (user_id);
 a   ALTER TABLE ONLY public."ChatApp_description" DROP CONSTRAINT "ChatApp_description_user_id_key";
       public            postgres    false    220            	           2606    26225 Q   ChatApp_hike_participants ChatApp_hike_participants_hike_id_user_id_55e8cadb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_participants"
    ADD CONSTRAINT "ChatApp_hike_participants_hike_id_user_id_55e8cadb_uniq" UNIQUE (hike_id, user_id);
    ALTER TABLE ONLY public."ChatApp_hike_participants" DROP CONSTRAINT "ChatApp_hike_participants_hike_id_user_id_55e8cadb_uniq";
       public            postgres    false    218    218                       2606    26213 8   ChatApp_hike_participants ChatApp_hike_participants_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ChatApp_hike_participants"
    ADD CONSTRAINT "ChatApp_hike_participants_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."ChatApp_hike_participants" DROP CONSTRAINT "ChatApp_hike_participants_pkey";
       public            postgres    false    218                       2606    26166    ChatApp_hike ChatApp_hike_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ChatApp_hike"
    ADD CONSTRAINT "ChatApp_hike_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ChatApp_hike" DROP CONSTRAINT "ChatApp_hike_pkey";
       public            postgres    false    216            �
           2606    26105    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    203            �
           2606    26066 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    205    205            �
           2606    26019 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    205            �
           2606    26009    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    203            �
           2606    26052 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    201    201            �
           2606    26001 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    201            �
           2606    26037 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            �
           2606    26081 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            �
           2606    26027    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    207            �
           2606    26045 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    211            �
           2606    26095 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    211    211            �
           2606    26099     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    207            �
           2606    26132 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    213            �
           2606    25993 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    199    199            �
           2606    25991 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    199            �
           2606    25983 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    197                       2606    26152 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    214                       1259    26183     ChatApp_hike_creator_id_5420d025    INDEX     c   CREATE INDEX "ChatApp_hike_creator_id_5420d025" ON public."ChatApp_hike" USING btree (creator_id);
 6   DROP INDEX public."ChatApp_hike_creator_id_5420d025";
       public            postgres    false    216                       1259    26226 *   ChatApp_hike_participants_hike_id_1ead7be7    INDEX     w   CREATE INDEX "ChatApp_hike_participants_hike_id_1ead7be7" ON public."ChatApp_hike_participants" USING btree (hike_id);
 @   DROP INDEX public."ChatApp_hike_participants_hike_id_1ead7be7";
       public            postgres    false    218                       1259    26227 *   ChatApp_hike_participants_user_id_7c9cbc6d    INDEX     w   CREATE INDEX "ChatApp_hike_participants_user_id_7c9cbc6d" ON public."ChatApp_hike_participants" USING btree (user_id);
 @   DROP INDEX public."ChatApp_hike_participants_user_id_7c9cbc6d";
       public            postgres    false    218            �
           1259    26106    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    203            �
           1259    26067 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    205            �
           1259    26068 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    205            �
           1259    26053 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    201            �
           1259    26083 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            �
           1259    26082 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            �
           1259    26097 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    211            �
           1259    26096 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    211            �
           1259    26100     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    207            �
           1259    26143 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    213            �
           1259    26144 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    213                        1259    26154 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    214                       1259    26153 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    214                       2606    26283 H   ChatApp_description ChatApp_description_user_id_ce18049d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_description"
    ADD CONSTRAINT "ChatApp_description_user_id_ce18049d_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."ChatApp_description" DROP CONSTRAINT "ChatApp_description_user_id_ce18049d_fk_auth_user_id";
       public          postgres    false    220    207    2796                       2606    26278 =   ChatApp_hike ChatApp_hike_creator_id_5420d025_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike"
    ADD CONSTRAINT "ChatApp_hike_creator_id_5420d025_fk_auth_user_id" FOREIGN KEY (creator_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."ChatApp_hike" DROP CONSTRAINT "ChatApp_hike_creator_id_5420d025_fk_auth_user_id";
       public          postgres    false    216    207    2796                       2606    26263 W   ChatApp_hike_participants ChatApp_hike_participants_hike_id_1ead7be7_fk_ChatApp_hike_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_participants"
    ADD CONSTRAINT "ChatApp_hike_participants_hike_id_1ead7be7_fk_ChatApp_hike_id" FOREIGN KEY (hike_id) REFERENCES public."ChatApp_hike"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."ChatApp_hike_participants" DROP CONSTRAINT "ChatApp_hike_participants_hike_id_1ead7be7_fk_ChatApp_hike_id";
       public          postgres    false    218    216    2822                       2606    26258 T   ChatApp_hike_participants ChatApp_hike_participants_user_id_7c9cbc6d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_participants"
    ADD CONSTRAINT "ChatApp_hike_participants_user_id_7c9cbc6d_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."ChatApp_hike_participants" DROP CONSTRAINT "ChatApp_hike_participants_user_id_7c9cbc6d_fk_auth_user_id";
       public          postgres    false    218    207    2796                       2606    26060 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2783    201    205                       2606    26055 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    203    205    2788                       2606    26046 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    201    199    2778                       2606    26075 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2788    203    209                       2606    26070 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    209    2796    207                       2606    26089 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2783    201    211                       2606    26084 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2796    211    207                       2606    26133 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    213    2778    199                       2606    26138 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    207    2796            �      x������ � �      �   5  x��UM�G=�~��êS��U]CNF9��$���^��ov��a&��`����$f�����F���7��ϙ��ޫz���v�x��;8\4�/V��7�"͈g��q݄���^[/M��������$6���Ư��Y[�wg��xS�����������5.�T_�us��֗�V-���E��������?^>X,����j"(�̘g15�w����K������ԝ�������i��w��Ӟ�M�3D������[�~���Q[���u�h�|0\|2��g��ɛ�����sQ��V�	/4[.��#������0�_�K�i&���6�Eo~����G�OE�@�sdۛ�S3!J)h�̑�7��-ҵ(��E���Z���d2l�!c���\$I�����{*S�P�%Q�!I�PH�Ȁ4f��%�%R�� !f�l��,b1-�F�Cz)��_,�{&�s�Β��ZB�2I:�I�-���s�$��<���P=�@d����NFi�ژMQ��h��L�4XFAFCM��%h��0-(�X�X΢)B|B���"��J����Ԕ��8k�8 �s
�H��EҔ�JP*�qhf��,����+v��da�S���>��)��Qd/�2&��lc�B�L��WD3ݢ����zXP�4�GJ����7k��M"j�F�l{�~{{�������K�7f�����d��\(� �C0A�W]s�KB�X�)�(U�����M������ɗ������;���=����ۺ�I�~N1.(pi�b!!�DW�
銘�!���z���0�L�d��      �      x�3�4�4�2��\�@Ҕ+F��� "��      �      x������ � �      �      x������ � �      �   p  x�e��n�0E�����
����I*Q���tS�~Ź�m��G�Q|�y�Ƣ���{�a���8�?5��$�|��KPTj1X؇�5�Z	�¶Cu6���3��0��$5n�F�)v���O�lˊ�$G����e�n��H�����s/ N:=� )Y�	��U6��a1G؞��~L�>�� ���n�iu���<��q�"��`j2@k�X�J�!ş�׎����k�h�U���kHWmH�-Uޙ�g�T��^�D�"�����>��n�%�W���%}R����J
lw���R��:|Ӓ�����6�0J�J6 �$@�c2HCNu��2�q��	���T�5���kr
��0�J���Z�/~�!      �   t  x���[��0���W�wf��R�I�T�A<�*f���"x<��ř͜��nӋ~M��y�~-��fQ�@?���(� Ő�F�el��A$u'��J`>i͋��[f���æ��{W�	��f����A��<w+��3?�ݕ%^<G���j�^�Ӣ@�co���m\�J+@��o��"�R!s�(�5����5[in`����O�����x�|�s�=�������2��p�\w��,83�X�;��D+����
��1D��py9����l�B�+Փ�gæy�<�������6]���e�#I�S2J҇�����30�b�B 3J9z	�����`}聓�˱Q�7t��9��xG(2v��>����;��#X%�� �r_̼9�h���_{���]��,�rf}c�s'�����F{[4KhGc��^0l��uy����Y=|�C�R�O���B%BV��&���/�&v��zO:�Ȕ5s�o�����=F+M�:�[�$��#G{�n,?��� Pq��B���e\@-&f2�ї���`<ˌ���g:�֮E����c0���i8s�l���|A�M�ɵQ|3���*,�`�`HA��V� ^%7����J@�`ol�r�Z�_A�      �      x������ � �      �      x������ � �      �   �   x�}�K�0��qYEӑD!��>�+pȠB�� �{B|0qvr�9$@	�܀2(b�����{������{��pzҁ٢p3tǌ�頤�ɍT�F!��;j�Q!���_mU.%v��Qt�LYc��羱U߱e�iKǲ7��Ő.�8��gL�1�[ⓒ���u�uNq/�mJd      �   x   x�M�;�@k�0H���k�XY+kAv-�[���DDtoF��J�xׁK؄��mw����6��
���}-��bR�����/��wU��b9�n:ˋ�ab�M4��s��3��9�      �   �  x����n�0������P��ξ�-�a>�v���'ɩ�$�� 0��H��i�fߵS�N�{_� @�[?yWoм � �JT%�B	 `߀m�!��P5�ke/l|b[�T�(�A��bw�NϒS��K21�/d]=U�������6e��{�u��[k(�Ir�(���uåj���Oa��("E.�S�%���Ӹ� ÑG�Z"G�n�l�}h�\�	 �,�^ 2L����8Ҝl��gFG�Y�Rȫ���M�0Zw8�j��6�8�c�I[��$�Bӫ�<���a�ZC\H�A����S�H(��8t��kB�3f1.�=�A���C����q]���4u�'7}��g�g���%�穳1����� �	�d��>O*��jN��1-L5�,}*!�c��� �
aWH���Oq}��h����?�F!/]��X]d~ڈ�B����z̞���%w%��L���2�!�Fpn([*�#,�J���\Brox!��b�Iͯj�6K��.��YJ��M	��J�����J7VS� y���Br�gЍ��\��놃o����Mɰ� )�f	dn������޵�Z�*P+�籩,>.�~5c� V2�G��u�G���`�B��j^V29���E����˝��������*-ej��>D� p5 !���}��` s@܄0] S��Yl���#      �     x���͎�8 �s�S�}��.�����=�Q�؈MH��@�CH��k"�j�0י�D�d�WU.{ݙ�#S��/���m%Bχ�˞�8Bb�e���q��ŌCb�n<LKOs�k��)����NT�F�_��ӆ�M��Y�����|�|V�FԻڗI,�4fU�N2�5�V���Z\���!���f��o��u���-|���L���z)����`=l�,wp��S�^�8�T}�4�XO��9Z��J��R�Br=�"��	p绊���'@����%�&��(% ��c|�����sN�#� �/����Y;X�t�>�X�J_@��|�db�X����&��\U(1?������"��c�@���0Ai1��n��ji����ҙ��T�v� �ԟ �w���,3T�I^����y���|��2�������;[t~ �\B���%��S+���,�����f
�s�$fk��E���Jp�*�y�&w�~W��|��aIR����͞�v�����>M�4|�����+~�
����5�ims?��m��0e�;xEp�;�M|�'0֝�!c.7��+J�^=�2YS۾y؍v�P���x�D����ձ֩r�:?����E��=��$�v���
��&�È�w���K�E���Íd�W�s���`��n�c/h�;�M� �t;ҩ���Y^������b�-�$١����[�M@���u�L��s���kr�n�i�x��}�(������c�����1������o�v�     