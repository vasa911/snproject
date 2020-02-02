PGDMP       +    	                 x            FreeFallProject    11.5    12.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    219            �            1259    26158    ChatApp_hike    TABLE       CREATE TABLE public."ChatApp_hike" (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(200000) NOT NULL,
    creator_id integer,
    end_date date NOT NULL,
    start_date date NOT NULL,
    difficulty character varying(200) NOT NULL,
    type_of_hike character varying(200) NOT NULL,
    coordinates character varying(200000) NOT NULL,
    short_description character varying(1000) NOT NULL,
    image character varying(100),
    creation_datetime timestamp with time zone NOT NULL
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
          public          postgres    false    215            �            1259    26301    ChatApp_hike_landmarks    TABLE     �   CREATE TABLE public."ChatApp_hike_landmarks" (
    id integer NOT NULL,
    hike_id integer NOT NULL,
    landmark_id integer NOT NULL
);
 ,   DROP TABLE public."ChatApp_hike_landmarks";
       public            postgres    false            �            1259    26299    ChatApp_hike_landmarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatApp_hike_landmarks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."ChatApp_hike_landmarks_id_seq";
       public          postgres    false    224            �           0    0    ChatApp_hike_landmarks_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."ChatApp_hike_landmarks_id_seq" OWNED BY public."ChatApp_hike_landmarks".id;
          public          postgres    false    223            �            1259    26208    ChatApp_hike_participants    TABLE     �   CREATE TABLE public."ChatApp_hike_participants" (
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
          public          postgres    false    217            �            1259    26290    ChatApp_landmark    TABLE     �   CREATE TABLE public."ChatApp_landmark" (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(200000) NOT NULL
);
 &   DROP TABLE public."ChatApp_landmark";
       public            postgres    false            �            1259    26288    ChatApp_landmark_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatApp_landmark_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ChatApp_landmark_id_seq";
       public          postgres    false    222            �           0    0    ChatApp_landmark_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ChatApp_landmark_id_seq" OWNED BY public."ChatApp_landmark".id;
          public          postgres    false    221            �            1259    34361    ChatApp_photo    TABLE     �   CREATE TABLE public."ChatApp_photo" (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    description character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL
);
 #   DROP TABLE public."ChatApp_photo";
       public            postgres    false            �            1259    34359    ChatApp_photo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatApp_photo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."ChatApp_photo_id_seq";
       public          postgres    false    226            �           0    0    ChatApp_photo_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."ChatApp_photo_id_seq" OWNED BY public."ChatApp_photo".id;
          public          postgres    false    225            �            1259    26004 
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
       public          postgres    false    219    220    220            �
           2604    26161    ChatApp_hike id    DEFAULT     v   ALTER TABLE ONLY public."ChatApp_hike" ALTER COLUMN id SET DEFAULT nextval('public."ChatApp_hike_id_seq"'::regclass);
 @   ALTER TABLE public."ChatApp_hike" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �
           2604    26304    ChatApp_hike_landmarks id    DEFAULT     �   ALTER TABLE ONLY public."ChatApp_hike_landmarks" ALTER COLUMN id SET DEFAULT nextval('public."ChatApp_hike_landmarks_id_seq"'::regclass);
 J   ALTER TABLE public."ChatApp_hike_landmarks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �
           2604    26211    ChatApp_hike_participants id    DEFAULT     �   ALTER TABLE ONLY public."ChatApp_hike_participants" ALTER COLUMN id SET DEFAULT nextval('public."ChatApp_hike_participants_id_seq"'::regclass);
 M   ALTER TABLE public."ChatApp_hike_participants" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �
           2604    26293    ChatApp_landmark id    DEFAULT     ~   ALTER TABLE ONLY public."ChatApp_landmark" ALTER COLUMN id SET DEFAULT nextval('public."ChatApp_landmark_id_seq"'::regclass);
 D   ALTER TABLE public."ChatApp_landmark" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �
           2604    34364    ChatApp_photo id    DEFAULT     x   ALTER TABLE ONLY public."ChatApp_photo" ALTER COLUMN id SET DEFAULT nextval('public."ChatApp_photo_id_seq"'::regclass);
 A   ALTER TABLE public."ChatApp_photo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �
           2604    26007    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    26017    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    25999    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �
           2604    26025    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    26035    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    26043    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    26126    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    25989    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    199    199            �
           2604    25978    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    197    197            �          0    26270    ChatApp_description 
   TABLE DATA           D   COPY public."ChatApp_description" (id, gender, user_id) FROM stdin;
    public          postgres    false    220   ��       �          0    26158    ChatApp_hike 
   TABLE DATA           �   COPY public."ChatApp_hike" (id, name, description, creator_id, end_date, start_date, difficulty, type_of_hike, coordinates, short_description, image, creation_datetime) FROM stdin;
    public          postgres    false    216   /�       �          0    26301    ChatApp_hike_landmarks 
   TABLE DATA           L   COPY public."ChatApp_hike_landmarks" (id, hike_id, landmark_id) FROM stdin;
    public          postgres    false    224   6J      �          0    26208    ChatApp_hike_participants 
   TABLE DATA           K   COPY public."ChatApp_hike_participants" (id, hike_id, user_id) FROM stdin;
    public          postgres    false    218   KJ      �          0    26290    ChatApp_landmark 
   TABLE DATA           C   COPY public."ChatApp_landmark" (id, name, description) FROM stdin;
    public          postgres    false    222   �L      �          0    34361    ChatApp_photo 
   TABLE DATA           M   COPY public."ChatApp_photo" (id, file, description, uploaded_at) FROM stdin;
    public          postgres    false    226   �L      �          0    26004 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    203   �L      �          0    26014    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    205   �L      �          0    25996    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    201   M      �          0    26022 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    207   U      �          0    26032    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   �Y      �          0    26040    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    211   �Y      �          0    26123    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   Z      �          0    25986    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    199   �f      �          0    25975    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    197   �g      �          0    26145    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    214   t      �           0    0    ChatApp_description_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ChatApp_description_id_seq"', 7, true);
          public          postgres    false    219            �           0    0    ChatApp_hike_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ChatApp_hike_id_seq"', 91, true);
          public          postgres    false    215            �           0    0    ChatApp_hike_landmarks_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."ChatApp_hike_landmarks_id_seq"', 1, true);
          public          postgres    false    223            �           0    0     ChatApp_hike_participants_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."ChatApp_hike_participants_id_seq"', 59, true);
          public          postgres    false    217            �           0    0    ChatApp_landmark_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."ChatApp_landmark_id_seq"', 1, true);
          public          postgres    false    221            �           0    0    ChatApp_photo_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."ChatApp_photo_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 22, true);
          public          postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 41, true);
          public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 44, true);
          public          postgres    false    196            $           2606    26275 ,   ChatApp_description ChatApp_description_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."ChatApp_description"
    ADD CONSTRAINT "ChatApp_description_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."ChatApp_description" DROP CONSTRAINT "ChatApp_description_pkey";
       public            postgres    false    220            &           2606    26277 3   ChatApp_description ChatApp_description_user_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public."ChatApp_description"
    ADD CONSTRAINT "ChatApp_description_user_id_key" UNIQUE (user_id);
 a   ALTER TABLE ONLY public."ChatApp_description" DROP CONSTRAINT "ChatApp_description_user_id_key";
       public            postgres    false    220            +           2606    26318 O   ChatApp_hike_landmarks ChatApp_hike_landmarks_hike_id_landmark_id_22ca71f9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_landmarks"
    ADD CONSTRAINT "ChatApp_hike_landmarks_hike_id_landmark_id_22ca71f9_uniq" UNIQUE (hike_id, landmark_id);
 }   ALTER TABLE ONLY public."ChatApp_hike_landmarks" DROP CONSTRAINT "ChatApp_hike_landmarks_hike_id_landmark_id_22ca71f9_uniq";
       public            postgres    false    224    224            .           2606    26306 2   ChatApp_hike_landmarks ChatApp_hike_landmarks_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."ChatApp_hike_landmarks"
    ADD CONSTRAINT "ChatApp_hike_landmarks_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."ChatApp_hike_landmarks" DROP CONSTRAINT "ChatApp_hike_landmarks_pkey";
       public            postgres    false    224                       2606    26225 Q   ChatApp_hike_participants ChatApp_hike_participants_hike_id_user_id_55e8cadb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_participants"
    ADD CONSTRAINT "ChatApp_hike_participants_hike_id_user_id_55e8cadb_uniq" UNIQUE (hike_id, user_id);
    ALTER TABLE ONLY public."ChatApp_hike_participants" DROP CONSTRAINT "ChatApp_hike_participants_hike_id_user_id_55e8cadb_uniq";
       public            postgres    false    218    218            !           2606    26213 8   ChatApp_hike_participants ChatApp_hike_participants_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."ChatApp_hike_participants"
    ADD CONSTRAINT "ChatApp_hike_participants_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."ChatApp_hike_participants" DROP CONSTRAINT "ChatApp_hike_participants_pkey";
       public            postgres    false    218                       2606    26166    ChatApp_hike ChatApp_hike_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ChatApp_hike"
    ADD CONSTRAINT "ChatApp_hike_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ChatApp_hike" DROP CONSTRAINT "ChatApp_hike_pkey";
       public            postgres    false    216            (           2606    26298 &   ChatApp_landmark ChatApp_landmark_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."ChatApp_landmark"
    ADD CONSTRAINT "ChatApp_landmark_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."ChatApp_landmark" DROP CONSTRAINT "ChatApp_landmark_pkey";
       public            postgres    false    222            0           2606    34366     ChatApp_photo ChatApp_photo_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."ChatApp_photo"
    ADD CONSTRAINT "ChatApp_photo_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."ChatApp_photo" DROP CONSTRAINT "ChatApp_photo_pkey";
       public            postgres    false    226            �
           2606    26105    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    203            �
           2606    26066 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    205    205                        2606    26019 2   auth_group_permissions auth_group_permissions_pkey 
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
       public            postgres    false    201                       2606    26037 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209                       2606    26081 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209                       2606    26027    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    207                       2606    26045 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    211                       2606    26095 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    211    211                       2606    26099     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    207                       2606    26132 &   django_admin_log django_admin_log_pkey 
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
       public            postgres    false    197                       2606    26152 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    214                       1259    26183     ChatApp_hike_creator_id_5420d025    INDEX     c   CREATE INDEX "ChatApp_hike_creator_id_5420d025" ON public."ChatApp_hike" USING btree (creator_id);
 6   DROP INDEX public."ChatApp_hike_creator_id_5420d025";
       public            postgres    false    216            )           1259    26319 '   ChatApp_hike_landmarks_hike_id_2899bf4f    INDEX     q   CREATE INDEX "ChatApp_hike_landmarks_hike_id_2899bf4f" ON public."ChatApp_hike_landmarks" USING btree (hike_id);
 =   DROP INDEX public."ChatApp_hike_landmarks_hike_id_2899bf4f";
       public            postgres    false    224            ,           1259    26320 +   ChatApp_hike_landmarks_landmark_id_4ba9aafc    INDEX     y   CREATE INDEX "ChatApp_hike_landmarks_landmark_id_4ba9aafc" ON public."ChatApp_hike_landmarks" USING btree (landmark_id);
 A   DROP INDEX public."ChatApp_hike_landmarks_landmark_id_4ba9aafc";
       public            postgres    false    224                       1259    26226 *   ChatApp_hike_participants_hike_id_1ead7be7    INDEX     w   CREATE INDEX "ChatApp_hike_participants_hike_id_1ead7be7" ON public."ChatApp_hike_participants" USING btree (hike_id);
 @   DROP INDEX public."ChatApp_hike_participants_hike_id_1ead7be7";
       public            postgres    false    218            "           1259    26227 *   ChatApp_hike_participants_user_id_7c9cbc6d    INDEX     w   CREATE INDEX "ChatApp_hike_participants_user_id_7c9cbc6d" ON public."ChatApp_hike_participants" USING btree (user_id);
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
       public            postgres    false    201                       1259    26083 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            	           1259    26082 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209                       1259    26097 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    211                       1259    26096 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    211                       1259    26100     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    207                       1259    26143 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    213                       1259    26144 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    213                       1259    26154 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    214                       1259    26153 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    214            =           2606    26283 H   ChatApp_description ChatApp_description_user_id_ce18049d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_description"
    ADD CONSTRAINT "ChatApp_description_user_id_ce18049d_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."ChatApp_description" DROP CONSTRAINT "ChatApp_description_user_id_ce18049d_fk_auth_user_id";
       public          postgres    false    2818    207    220            :           2606    26278 =   ChatApp_hike ChatApp_hike_creator_id_5420d025_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike"
    ADD CONSTRAINT "ChatApp_hike_creator_id_5420d025_fk_auth_user_id" FOREIGN KEY (creator_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."ChatApp_hike" DROP CONSTRAINT "ChatApp_hike_creator_id_5420d025_fk_auth_user_id";
       public          postgres    false    207    2818    216            >           2606    34348 M   ChatApp_hike_landmarks ChatApp_hike_landmar_landmark_id_4ba9aafc_fk_ChatApp_l    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_landmarks"
    ADD CONSTRAINT "ChatApp_hike_landmar_landmark_id_4ba9aafc_fk_ChatApp_l" FOREIGN KEY (landmark_id) REFERENCES public."ChatApp_landmark"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."ChatApp_hike_landmarks" DROP CONSTRAINT "ChatApp_hike_landmar_landmark_id_4ba9aafc_fk_ChatApp_l";
       public          postgres    false    224    2856    222            ?           2606    34353 Q   ChatApp_hike_landmarks ChatApp_hike_landmarks_hike_id_2899bf4f_fk_ChatApp_hike_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_landmarks"
    ADD CONSTRAINT "ChatApp_hike_landmarks_hike_id_2899bf4f_fk_ChatApp_hike_id" FOREIGN KEY (hike_id) REFERENCES public."ChatApp_hike"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."ChatApp_hike_landmarks" DROP CONSTRAINT "ChatApp_hike_landmarks_hike_id_2899bf4f_fk_ChatApp_hike_id";
       public          postgres    false    216    224    2844            <           2606    26263 W   ChatApp_hike_participants ChatApp_hike_participants_hike_id_1ead7be7_fk_ChatApp_hike_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_participants"
    ADD CONSTRAINT "ChatApp_hike_participants_hike_id_1ead7be7_fk_ChatApp_hike_id" FOREIGN KEY (hike_id) REFERENCES public."ChatApp_hike"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."ChatApp_hike_participants" DROP CONSTRAINT "ChatApp_hike_participants_hike_id_1ead7be7_fk_ChatApp_hike_id";
       public          postgres    false    218    216    2844            ;           2606    26258 T   ChatApp_hike_participants ChatApp_hike_participants_user_id_7c9cbc6d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatApp_hike_participants"
    ADD CONSTRAINT "ChatApp_hike_participants_user_id_7c9cbc6d_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."ChatApp_hike_participants" DROP CONSTRAINT "ChatApp_hike_participants_user_id_7c9cbc6d_fk_auth_user_id";
       public          postgres    false    207    2818    218            3           2606    26060 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    201    205    2805            2           2606    26055 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    203    2810    205            1           2606    26046 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    199    201    2800            5           2606    26075 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    2810    203            4           2606    26070 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2818    209    207            7           2606    26089 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    201    2805    211            6           2606    26084 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2818    211    207            8           2606    26133 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    199    2800    213            9           2606    26138 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2818    213    207            �   
   4	male	19
 
   5	male	20
 
   6	male	21
 
   7	male	22
    \.


      �     90	7687		1	2019-12-24	2019-12-10	none	Пеший	[[0, [3.417206252099362, 46.12649709023225]], [0, [3.423600638389871, 46.1261996566883]], [0, [3.4323553686106436, 46.125247858545066]], [0, [3.440080130580725, 46.12429604395675]], [0, [3.438106024736925, 46.12637811700736]], [0, [3.436174834244383, 46.12542632194763]], [0, [3.435917342181739, 46.124028343138434]], [0, [3.4362177495956416, 46.122779055467106]], [0, [3.437333548548878, 46.120518367661674]], [0, [3.4330421656581507, 46.118108953351935]], [0, [3.430252668290109, 46.11781147451478]], [0, [3.4262615412662285, 46.11920961107651]], [0, [3.423171636484142, 46.12129187635847]], [0, [3.4163910120922196, 46.12325508297775]], [0, [3.4100395411529973, 46.12548591467703]], [0, [3.407979604621687, 46.123820235555826]], [0, [3.409567472363932, 46.12147035258158]], [0, [3.4113699168176197, 46.119953286285266]], [0, [3.4115844935440407, 46.11867415871336]], [0, [3.4080225199690233, 46.1180197098725]]]		hikes/image14_splav.hcjmgxuvxho9_PtFF5as.jpg	2019-12-27 20:10:25.341041+03
 �   81	678		1	2020-01-03	2019-12-24	IV	Спелео		7686789	hikes/Снимок_экрана_12_pd2GYp2.png	2019-12-24 00:09:38.397909+03
 G  78	Выход по Кольскому полуострову		1	2020-02-07	2020-01-20	III	Пеший		Залив Иванова - Залив Крамченко. 17 дней, заброска на Ловозеро. Прохождение перевала Рамзая.	hikes/panoramio-96763891.jpg	2019-12-25 18:04:24.777926+03
 *  91	56784		1	2020-01-29	2020-01-08	V	Пеший	[[0, [3.4236793163040034, 46.125849179005144]], [0, [3.433506930126754, 46.12522455935101]], [0, [3.439987147104773, 46.12346963767354]], [0, [3.439171755565525, 46.12195262642808]], [0, [3.4362964275098307, 46.120822277162574]], [0, [3.4327344539387354, 46.11930519302172]], [0, [3.426655037495266, 46.118714284361516]], [0, [3.4203893972286323, 46.11823832268314]], [0, [3.413093788711336, 46.1182978181171]], [0, [3.409445984452674, 46.11898201099595]], [0, [3.4029228521233392, 46.1204098644254]], [0, [3.3994295430387353, 46.119636448456134]], [0, [3.396897537725579, 46.118417444251094]], [0, [3.3967687916867817, 46.120916189071494]], [0, [3.3974125218509528, 46.123325585686814]], [0, [3.398313744092775, 46.125258975902995]], [0, [3.4011032414608735, 46.12469383808954]], [0, [3.404277378432255, 46.1237130077686]], [0, [3.4057794154720114, 46.12430790010805]], [0, [3.4103630665182436, 46.12561495065546]], [0, [3.4144400242146844, 46.126061105109954]], [0, [3.417658675035568, 46.12632879604513]], [0, [3.422250616872361, 46.12632879604513]], [0, [3.4278296116235083, 46.126150335566194]], [0, [3.4310053470931052, 46.125912387361694]], [0, [3.4351681354920913, 46.12549597552541]], [0, [3.438858855087034, 46.12481186353051]]]	8757		2020-01-06 21:45:44.752276+03
 �  84	Велопоход по Кипру		1	2020-04-25	2020-04-13	I	Вело		Собираю группу на велопоход продолжительностью 10 – 14 дней и протяженностью в 500-600км. Г. Ларнака – г. Лимассол – г. Пафос - парк Акамас– г. Полис – горы - г. Ларнака	hikes/41569_350x280.jpg	2019-12-25 18:20:44.49509+03
 W  18	Походы в Карпатах	<p>This is some sample content.</p>	1	2020-01-03	2019-12-30	none	Пеший	[('', '')]	Виды с Карпатских хребтов и вершин ошеломляют своей красотой и величием. Карпатские хребты напоминают зеленые и синеватые волны. Карпаты прекрасны в любое время года: ярко-зеленые летом; всех оттенков желтого и красного осенью, целиком пропитанные прозрачным и звенящим осенним воздухом; монументальные и строгие, покрытые белоснежными шапками зимой; бело-зеленые весной. Походы по Карпатам помогут вам ближе познакомиться с горами и полностью отдохнуть от городской рутины, иначе, свежим взглядом посмотреть на жизнь.	\N	2019-12-21 19:00:41.499082+03
 �   87	67ш78		20	2020-01-04	2019-12-10	VI	Пеший	[]	78шел	hikes/panoramio-116827455_6rzFzD6.jpg	2019-12-27 20:10:25.341041+03
 �  74	Очень странный поход		1	2020-02-08	2019-12-25	none	Пеший		Если я чешу в затылке - не беда,\r\nВ голове моей опилки да-да-да!\r\nНо хотя там и опилки, но кричалки и вопилки\r\n(а также шумелки, пыхтелки, сопелки)\r\nсочиняю я неплохо иногда, да.		2019-12-23 01:51:35.091354+03
 �	  21	Зимний поход по Карпатам 2020: легендарный Поп Иван (3 дня)	<p>This is some sample content.</p>	1	2019-12-26	2019-12-23	none	Пеший	[[0, [3.41282888698899, 46.12430199320937]], [0, [3.418236220350053, 46.124986111535975]], [0, [3.424416029929148, 46.1248968791887]], [0, [3.436089003556816, 46.12061355675192]], [0, [3.4397368078154784, 46.12685995734677]], [0, [3.431754553797731, 46.126800471158276]], [0, [3.4302096014066876, 46.12433173766067]], [0, [3.4375360568458575, 46.12346935338206]], [0, [3.4179388028572077, 46.12296451941003]], [0, [3.425264538663356, 46.122400995549896]], [0, [3.425640636485838, 46.120921570017174]], [0, [3.4288820719486353, 46.12012480159572]], [0, [3.4296509776180244, 46.12012480159572]], [0, [3.4338676571013877, 46.11935894421424]], [0, [3.4338676571013877, 46.11935894421424]], [0, [3.4383829243736557, 46.11888639411987]], [0, [3.4379069285411674, 46.12080052263923]], [0, [3.4336779056222895, 46.12125733622602]], [1, [3.4187780858669328, 46.121753076262536]], [1, [3.421670463462192, 46.121905513351265]], [1, [3.4217330269850663, 46.12070508674489]], [1, [3.424100405130787, 46.119604554494146]], [1, [3.426898717063523, 46.11916935749463]], [1, [3.457885494620683, 46.12433465017705]], [1, [3.49514282590377, 46.13019623180554]], [1, [3.438228304226868, 46.150044644540515]], [1, [3.3958541453921214, 46.15380491656302]], [1, [3.357198672748183, 46.15380491656302]], [1, [3.3642261138005836, 46.13980974422242]], [1, [3.3826518078242316, 46.11379592365827]], [1, [3.421116319014601, 46.101331126156225]], [1, [3.4905237345260502, 46.104299025707434]], [1, [3.517998853888514, 46.11081470508867]], [1, [3.519404414401947, 46.125477106922716]], [1, [3.515517197214251, 46.135212811055794]], [1, [3.5020040837114834, 46.14182401872958]], [1, [3.474725291153277, 46.14686802636314]], [1, [3.452723361646548, 46.14585827248237]], [1, [3.4294760023669824, 46.14168007898263]], [1, [3.402961021438472, 46.13851585589117]], [1, [3.3671159700182045, 46.140672772159604]], [1, [3.3343869127773758, 46.140528909956174]]]	Поп Иван или Черная гора – это знаменитая и таинственная вершина Черногорского хребта Карпат. Ее еще называют Белый Слон, так как зимой она напоминает это величественное животное.		2019-12-21 20:14:46.214619+03
   20	Поход по Кавказу 2020: восхождение на Эльбрус с юга(10 дней)	<p>This is some sample content.</p>	1	2020-01-02	2019-12-23	none	Пеший	[('', '')]	Главная цель этого похода — восхождение на высочайшую вершину Европы — гору Эльбрус(5642м), Северный Кавказ, Россия. Для успешного восхождения на такую высокую гору необходима хорошая акклиматизация, которая будет достигнута посредством трекинга в районе озера Сылтранкёль и прохождения перевалов в районе долины реки Кыртык, к северу от Эльбруса. Трекинг сам по себе проходит по очень живописным местам и ничем не менее красочен и увлекателен, чем само восхождение на Эльбрус. В программу входит обучение передвижению по снежно-ледовым склонам, работе с ледорубом и хождению в кошках.	\N	2019-12-21 19:00:41.499082+03
 u   22	Тест какой там уже	desc	1	2019-12-07	2019-12-02	none	Пеший			\N	2019-12-21 19:00:41.499082+03
 �   23	Идём на Норвегию	desc	1	2019-12-13	2019-12-02	VI	Горный		Ну, щзхъзщдшлгонероглдщюжннг	\N	2019-12-21 19:00:41.499082+03
 �  75	Очень странный поход		1	2020-02-08	2019-12-25	none	Пеший		Если я чешу в затылке - не беда,\r\nВ голове моей опилки да-да-да!\r\nНо хотя там и опилки, но кричалки и вопилки\r\n(а также шумелки, пыхтелки, сопелки)\r\nсочиняю я неплохо иногда, да.		2019-12-23 01:52:42.395154+03
 �  76	Пещера «Гугерджин — Хосар»		1	2020-06-30	2020-06-17	III	Спелео		Спелео-поход в малодоступную, не оборудованную пещеру Гугерджин-Хосар на плато Чатыр-Даг. Набираю группу 10-15 человек с опытом хождения от 1-го категорированного спелео-похода	hikes/big_370560298208.jpg	2019-12-25 18:30:42.437472+03
 T   88	768		20	2019-12-24	2019-12-10	none	Пеший	[]			2019-12-27 20:10:25.341041+03
 C  82	Оз. Phoksundo - вершина Lawan		1	2020-01-22	2020-01-08	III	Пеший	[]	Всем привет. Собираю группу на Юг Гималаев дней на 14. Хотелось бы пройти озеро Phoksundo и финишировать у Lawan	hikes/DSCN0001.JPG	2019-12-25 17:27:12.775473+03
 �  79	Восхождение на Эльбрус с Севера		1	2020-03-21	2020-03-11	I	Горный		Восхождение на восточную вершину Эльбруса по пути первопроходцев 1829 года. Первый день - акклиматизация. Штурмовой лагерь на 4000м	hikes/8db3be334d2a16fc262db21c287860fd.jpg	2019-12-25 17:50:57.529591+03
 ^   24	56758	desc	1	2019-12-24	2019-12-02	IV	Пеший		6758978	\N	2019-12-21 19:00:41.499082+03
 L"  80	Сплав по реке Снежная (Восточные Саяны)	<figure class="table"><table><tbody><tr><td><strong>Вид препятствия</strong></td><td><strong>Категория трудности</strong></td><td><strong>Длина препятствия</strong></td><td><strong>Характеристика препятствия (характер, высота, новизна, наименование и т.п.)</strong></td><td><strong>Путь прохождения (для локальных препятствий)</strong></td></tr><tr><td>Порог №13</td><td>4А</td><td>Общая длина 200- 250 м, общий перепад более 2 м.</td><td>Слаломный порог, много камней и бочек. Слив через все русло, прижим к стенке левого берега. Разведка желательна.</td><td>По основной струе с уходом от «бочек» вправо.</td></tr><tr><td>Порог № 29 «Калибр»</td><td>4С</td><td>Общая длина &gt; 200 м, общий перепад более 2.5&nbsp;<strong>м. Порог опасен!</strong></td><td>Слив с перепадом высот явно больше 1.5 метров, пульсирующие отбойные валы. В конце прижим к стенке левого берега и огромная «бочка» через всю реку. Разведка обязательна.</td><td>По основной струе с уходом от «бочек» влево.</td></tr><tr><td>Шивера № 35 «Неваляшка»</td><td>4А</td><td>Общая длина шиверы 100 м.</td><td>На прямом участке реки валы более метра. В струе две мощнейшие «бочки», плохо заметные с наплыва.</td><td>По основной струе, с&nbsp;S-&nbsp;образным маневром влево, затем вправо.</td></tr><tr><td>Порог № 58 «Извилистый»</td><td>4В</td><td>Общая длина более 350 м. Общий перепад не менее 2.5 м</td><td>Первая ступень&nbsp;S&nbsp;образный слив через все русло, высотой более метра. За сливом дорожка валов более 1.5 м высотой. Во второй ступени несколько локальных сливов, в центре русла большой и опасный котел, куда несет основная струя. Третья ступень - короткая выходная шивера. Просмотр - по левому берегу, обязателен.</td><td>Проход через слив, потом по валам с уходом под левый берег, обходя котел, траверс к месту чалки.</td></tr><tr><td>Порог № 59 «Мунгул- гольский»</td><td>5С</td><td>Общая длина более 450 м. Общий перепад не менее 5&nbsp;<strong>м.Порог опасен!</strong></td><td>Лестница из нескольких мощных сливов. Сливы неправильной формы, многие - с видимыми под поверхностью воды камнями. После каждого слива мощные «бочки», перекрывающие все русло. Высокая скорость течения, крученая струя, винтообразные валы. Просмотр по правому берегу.</td><td>Первая ступень проходится по выбору ближе к левому или правому берегу. Вход во вторую ступень лучше слева, дальше&nbsp;S&nbsp;образный слалом.</td></tr><tr><td>Порог № 65 «Пиноккио»</td><td>4А</td><td>Общая длина около 150 м, перепад высот около 2 м.</td><td>В русле несколько плит, образующих две изломаные ступеньки через все русло. Сливы косые, после каждого мощный пенный котел. Валы более метра высотой. Расстояние между котлами не превышает 25 м. Третий котел расположен в сужении русла на выходе из порога, после слива.</td><td>По основной струе через бочки.</td></tr><tr><td>Порог № 76 «Пируэт»</td><td>4А</td><td>Общая длинна около 100 м, перепад около 1,5м</td><td><p>Сужение реки, справа скала, на прямом участке</p><p>3 бочки. Последняя самая серьёзная. Просмотр и страховка - правый берег.</p></td><td>По основной струе через бочки или в обход их.</td></tr><tr><td>Порог № 84 «Кит-Китский»</td><td>4А</td><td>Общая длина около 100 м, перепад высот более 1 м.</td><td>В центре русла фигурный слив, валы и несколько мощных «бочек». Наиболее чистый проход в нашу воду был между правым берегом и большой белесой скалой в русле.</td><td>По основной струе</td></tr><tr><td>Порог № 87 «Хармын- Дулю»</td><td>6С</td><td>Длина около 40 м, угол падения воды более 60 градусов.&nbsp;<strong>Порог опасен!</strong></td><td>Двенадцатиметровый водопад. Три желоба в скале, перегородившей русло в сужении каньонообразного ущелья.</td><td>Обнесён</td></tr><tr><td>Порог № 88 «Жаба»</td><td>5В</td><td>Длина около 100 м, перепад не менее 3&nbsp;<strong>м.Порог опасен!</strong></td><td>Две скалы делят русло на три кривые протоки. В протоках основные сливы. Валы и «бочки» Заход осложнен массой камней в русле.</td><td>По основной струе</td></tr><tr><td>Порог № 89 «Снежинка»</td><td>6А</td><td>Длина около 70 м, перепад высот не менее 4 м.&nbsp;<strong>Порог опасен!</strong></td><td>Порог расположен в скальном сужении русла и представляет собой классическую ступеньку- слив через все русло. Высота слива не менее 3-х метров, Под сливом - «бочка». На входе - камни.</td><td>По основной струе</td></tr><tr><td>Порог № 112 «Серая ямка»</td><td>4С</td><td>Длина около 400 м, перепад более 2.5 м.</td><td>Русло делится длинным островом на две протоки. В левой сильная шивера, затем бой в скалу левого берега, на выходе мощный слив с «бочкой». В правой на входе и выходе скальные обломки в русле с крутыми, извилистыми сливами между ними. Много камней, на которые сильные навалы. Высокая скорость течения. После слияния проток мощный пенный котел почти через все русло.</td><td>Прошли по правой протоке, по основной струе, с уходом от камней.</td></tr></tbody></table></figure><p>&nbsp;</p>	1	2020-01-18	2020-01-08	IV	Водный	[[0, [3.425789320945057, 46.123629764139764]], [0, [3.428020918836495, 46.12377848805025]], [0, [3.432398283961902, 46.12589032427658]], [0, [3.4317974691339828, 46.12832924565069]], [0, [3.4292225484772985, 46.129043055866475]], [0, [3.4264330511092282, 46.129013313959064]], [0, [3.4239010458037455, 46.12838873018822]], [0, [3.4218840246236937, 46.12728825583491]], [0, [3.419394934654605, 46.12731799867379]]]	Недельный сплав 3-й категории на катамаранах. Максимальная сложность препятствий 6С. 10 дней.	hikes/image14_splav.hcjmgxuvxho9.jpg	2019-12-25 17:42:39.475993+03
 T   89	768		20	2019-12-24	2019-12-10	none	Пеший	[]			2019-12-27 20:10:25.341041+03
 
  77	Лыжный поход в Альпы		1	2020-03-17	2020-03-01	IV	Пеший	[]	Кросс-поход на прогулочных лыжах с бэккантрийным креплением, около 250км. 	hikes/1411-004.jpg	2019-12-25 18:15:47.246838+03
 �   83	789	                            \r\n                    	1	2019-12-21	2019-12-02	IV	Спелео	[]	987967	hikes/Снимок_экрана_20.png	2019-12-24 02:46:01.062576+03
 �  86	876		1	2020-01-05	2019-12-16	none	Пеший	[[0, [3.4281925802266073, 46.12408932009379]], [0, [3.4343294744394086, 46.12242359874517]], [0, [3.4425263051985837, 46.12135275128287]], [0, [3.440165961268235, 46.125546784962125]], [0, [3.437548125260264, 46.12578473475102]], [0, [3.4339861516892256, 46.12608217053531]], [0, [3.4318403844852696, 46.12614165749949]], [0, [3.428664649000723, 46.12596319641435]], [0, [3.425489653223252, 46.12554678496514]], [0, [3.4235584627307105, 46.12480318526113]], [0, [3.4218847643008985, 46.124208298264875]], [0, [3.4206831346600666, 46.12349442539701]], [0, [3.419395674331753, 46.122215380035186]], [0, [3.41952442037055, 46.12120402082181]], [0, [3.423000563254078, 46.12278054327882]], [0, [3.428236235255042, 46.12435702061876]], [0, [3.4264767061376347, 46.123643149672915]], [0, [3.4299957643497123, 46.123583250300044]], [0, [3.4315407167407272, 46.122631406951285]], [0, [3.432828177069098, 46.12150107161713]], [0, [3.4348451982491497, 46.12031121989162]], [0, [3.437463034257121, 46.119686537452424]], [0, [3.4413683305784275, 46.119121342475665]], [0, [3.443042029008325, 46.119121342475665]], [0, [3.4446298967355915, 46.12102513401143]], [0, [3.4457886110400864, 46.122363698049355]], [0, [3.443557013133642, 46.12411865495619]], [0, [3.4420549760789356, 46.12527868053178]], [0, [3.4407675157655717, 46.12584381234552]], [0, [3.440252531625248, 46.12563560655906]]]	98780-		2019-12-27 18:31:26.204316+03
 �  25	Долина Чинади Хола - пик Яла	<p>desc</p>	1	2020-01-05	2019-12-31	V	Пеший		Пик Яла расположен в регионе Лангтанг, , на северо-восток от Кьянжин Гомпы, недалеко от границы с Тибетом.\r\n\r\nОбычно восхождение на пик Яла от Кьянжин Гомпы занимает два дня. Высотный лагерь устанавливают в Як Харке (Yala Kharka) на высоте 4900 м. При хорошей акклиматизации и раннем выходе можно уложиться в 1 день.\r\nЯла один из самых простых треккинг пиков. Часто на него ходят перед восхождением на Ганжа-ла Чули.	hikes/panoramio-116827455.jpg	2019-12-25 17:13:52.960909+03
 
  26	Гора Белуха - Талдуринский ледник	<p>Достаточно серьёзный поход с элементами альпинизма</p><figure class="table"><table><tbody><tr><td>Перевалы</td><td>сложность</td></tr><tr><td>Софиевский</td><td>3А</td></tr><tr><td>Кварцевый</td><td>2Б</td></tr></tbody></table></figure>	1	2019-12-27	2019-12-16	III	Горный		Около 200 км, в основном по хребту	\N	2019-12-21 19:00:41.499082+03
 ^  19	Походы 768	<p>&gt;&gt;&gt; from datetime import datetime, date, time &gt;&gt;&gt; # Using datetime.combine() &gt;&gt;&gt; d = date(2005, 7, 14) &gt;&gt;&gt; t = time(12, 30) &gt;&gt;&gt; datetime.combine(d, t) datetime.datetime(2005, 7, 14, 12, 30) &gt;&gt;&gt; # Using datetime.now() or datetime.utcnow() &gt;&gt;&gt; datetime.now() datetime.datetime(2007, 12, 6, 16, 29, 43, 79043) &nbsp; # GMT +1 &gt;&gt;&gt; datetime.utcnow() datetime.datetime(2007, 12, 6, 15, 29, 43, 79060) &gt;&gt;&gt; # Using datetime.strptime() &gt;&gt;&gt; dt = datetime.strptime("21/11/06 16:30", "%d/%m/%y %H:%M") &gt;&gt;&gt; dt datetime.datetime(2006, 11, 21, 16, 30) &gt;&gt;&gt; # Using datetime.timetuple() to get tuple of all attributes &gt;&gt;&gt; tt = dt.timetuple()</p>	1	2020-01-02	2019-12-16	III	Горный	[('', '')]	Турция… Все знают эту страну, все знают о хороших отелях и морских пляжах. Но много ли людей задумывались, что в Турции десятки горных хребтов и массивов с высотами от 2 до 5 тысяч метров? Большая часть страны покрыта горами с уникальной природой: лесами, каньонами и скалами. С точки зрения истории, Турция — уникальнейшая страна Евразии. Ее территория расположена там, где некогда была Византия, Ликия, Троя и другие легендарные государства. Поэтому здесь можно встретить множество хорошо сохранившихся памятников древности, которым больше 2000 лет. Поход по Турции — это отличная возможность погреться на солнышке, увидеть красивые горы, покупается в море и окунутся в античность. Другая Турция ждет Вас!	\N	2019-12-21 19:00:41.499082+03
 j   27	укер	desc	1	2020-01-02	2019-12-30	VI	Спелео		шггшнгл	\N	2019-12-21 19:00:41.499082+03
 `   34	98		1	2020-01-02	2019-12-23	none	Пеший		                		2019-12-21 19:00:41.499082+03
 j   28	укер	desc	1	2020-01-02	2019-12-30	VI	Спелео		шггшнгл	\N	2019-12-21 19:00:41.499082+03
 j   29	укер	desc	1	2020-01-02	2019-12-30	VI	Спелео		шггшнгл	\N	2019-12-21 19:00:41.499082+03
 W   35	1778		1	2019-12-26	2019-12-23	V	Водный		980890		2019-12-21 19:00:41.499082+03
 t   36	1778		1	2019-12-26	2019-12-23	V	Водный		980890	hikes/9r32g0pa22c_wagecEZ.jpg	2019-12-21 19:00:41.499082+03
 x   37	657		1	2019-12-20	2019-12-16	II	Пеший		567	hikes/Снимок_экрана_13.png	2019-12-21 19:00:41.499082+03
 n   30	111	<p>desc</p>	1	2019-12-21	2019-12-11	I	Пеший		                111	\N	2019-12-21 19:00:41.499082+03
 �   31	666	<p>desc</p>	1	2019-12-12	2019-12-03	V	Пеший	[('567',), ('56',), ('678',), ('678',), ('678',), ('56896',), ('5789',), ('879790',)]	                666	\N	2019-12-21 19:00:41.499082+03
 �   38	капупирененто		1	2019-12-19	2019-12-16	IV	Пеший		                енготьнгьлн	hikes/Снимок_экрана_45.png	2019-12-21 19:00:41.499082+03
   32	768	<p>desc</p>	1	2019-12-28	2019-12-23	III	Пеший	[('57.547546', '567567867'), ('45.4574', '54.5647'), ('57.547546', '567567867'), ('57.547546', '567567867'), ('57.547546', '567567867'), ('57.547546', '567567867')]	                6789	\N	2019-12-21 19:00:41.499082+03
 �   39	567		1	2019-12-19	2019-12-11	none	Пеший		7777775684578856	hikes/Снимок_экрана_65.png	2019-12-21 19:00:41.499082+03
   33	768	<p>desc</p>	1	2019-12-28	2019-12-23	III	Пеший	[('57.547546', '567567867'), ('57.547546', '567567867'), ('57.547546', '567567867'), ('57.547546', '567567867'), ('57.547546', '567567867'), ('57.547546', '567567867')]	6789	hikes/ро_rHAQTzY.png	2019-12-21 19:00:41.499082+03
 |   40	435		21	2019-12-23	0007-06-22	III	Горный		546	hikes/Снимок_экрана_19.png	2019-12-21 19:00:41.499082+03
 |   41	435		21	2019-12-23	0007-06-22	III	Горный		546	hikes/Снимок_экрана_18.png	2019-12-21 19:00:41.499082+03
 V   42	435		21	2019-12-23	0007-06-22	III	Горный		546		2019-12-21 19:00:41.499082+03
 �   43	5656756846786786		21	2019-12-25	2019-12-23	V	Пеший		676	hikes/Снимок_экрана_4.png	2019-12-21 19:00:41.499082+03
 V   44	598899		21	2020-01-04	2020-01-01	none	Пеший		8		2019-12-21 19:00:41.499082+03
 Z   45	598899	--	21	2020-01-04	2020-01-01	none	Пеший	[]	8		2019-12-21 19:47:14.010044+03
 R   46	765		1	2020-01-04	2019-12-09	none	Пеший		76		2019-12-22 00:11:44.74165+03
 S   47	765		1	2020-01-04	2019-12-09	none	Пеший		76		2019-12-22 00:12:33.256233+03
 S   48	765		1	2020-01-04	2019-12-09	none	Пеший		76		2019-12-22 00:12:57.248609+03
 y   49	765		1	2020-01-04	2019-12-09	none	Пеший		76	hikes/Снимок_экрана_23.png	2019-12-22 00:13:14.981822+03
 y   50	765		1	2020-01-04	2019-12-09	none	Пеший		76	hikes/Снимок_экрана_12.png	2019-12-22 00:15:42.380096+03
 �   51	765		1	2020-01-04	2019-12-09	none	Пеший		76	hikes/Снимок_экрана_18_UstESSM.png	2019-12-22 00:26:38.776407+03
 �   52	765		1	2020-01-04	2019-12-09	none	Пеший		76	hikes/Снимок_экрана_18_YlNp4AR.png	2019-12-22 00:41:27.206241+03
 T   53	7656		1	2020-01-04	2019-12-09	none	Пеший		76		2019-12-22 00:43:24.616762+03
 O   54	65		1	2019-12-17	2019-12-03	III	Пеший				2019-12-22 00:48:13.109225+03
 X   55	09		1	2019-12-27	2019-12-23	none	Пеший		0998-780		2019-12-22 01:06:07.012743+03
 X   56	09		1	2019-12-27	2019-12-23	none	Пеший		0998-780		2019-12-22 01:08:49.303091+03
 S   57	57		1	2020-01-03	2019-12-30	none	Пеший		567		2019-12-22 01:19:34.540063+03
 v   58	65		1	2019-12-17	2020-01-03	none	Пеший			hikes/Снимок_экрана_15.png	2019-12-22 01:28:12.595035+03
 X   61	09		1	2019-12-27	2019-12-23	none	Пеший		0998-780		2019-12-22 01:34:56.892148+03
 ~   59	65		1	2019-12-17	2020-01-03	none	Пеший			hikes/Снимок_экрана_15_Ab2qOdM.png	2019-12-22 01:36:11.144955+03
 �   60	7656		1	2020-01-04	2019-12-27	none	Пеший		76	hikes/Снимок_экрана_13_yGtTKZL.png	2019-12-22 01:36:11.145965+03
 X   62	09		1	2019-12-27	2019-12-23	none	Пеший		0998-780		2019-12-22 01:43:42.501468+03
 R   63	78		1	2019-12-23	2019-12-04	none	Пеший		78		2019-12-22 02:21:54.626684+03
 R   64	78		1	2019-12-23	2019-12-04	none	Пеший		78		2019-12-22 02:22:54.633409+03
 x   65	78		1	2019-12-23	2019-12-04	none	Пеший		78	hikes/Снимок_экрана_14.png	2019-12-22 02:23:20.552467+03
 `   66	678578786789768967		1	2020-01-01	2019-12-23	II	Пеший		67		2019-12-22 18:43:02.643967+03
 `   67	678578786789768967		1	2020-01-01	2019-12-23	II	Пеший		67		2019-12-22 18:43:49.123375+03
 b   68	6785798		1	2020-01-01	2019-12-23	none	Пеший		5798678906809		2019-12-22 18:44:09.010304+03
 b   69	6785798		1	2020-01-01	2019-12-23	none	Пеший		5798678906809		2019-12-22 18:44:29.588207+03
 a   70	6785798		1	2020-01-01	2019-12-23	none	Пеший		5798678906809		2019-12-22 18:44:47.16874+03
 b   71	6785798		1	2020-01-01	2019-12-23	none	Пеший		5798678906809		2019-12-22 18:45:16.161222+03
 b   72	6785798		1	2020-01-01	2019-12-23	none	Пеший		5798678906809		2019-12-22 18:46:28.907515+03
 Z   73	5674785		1	2020-01-02	0001-02-01	V	Пеший	[]	678096		2019-12-23 01:43:46.277296+03
    85	87		21	2019-12-28	2019-12-09	none	Пеший			hikes/Снимок_экрана_18_VplfUlC.png	2019-12-27 18:28:58.328272+03
    \.


      �      \.


      �   	   14	22	20
    15	22	1
    16	23	1
 	   19	19	19
    21	24	1
 	   22	19	20
    23	19	2
    24	19	1
    25	26	8
 	   26	26	19
    27	27	1
    28	28	1
    29	29	1
    30	30	1
 	   31	73	20
    32	73	1
    33	73	8
    34	77	1
 	   35	77	21
 	   36	77	20
    37	78	1
 	   38	78	20
 	   39	78	21
    40	79	1
    41	80	1
 	   42	79	20
 	   43	80	20
 	   44	79	21
 	   45	80	21
    46	82	1
    47	82	8
 	   48	82	21
 	   49	82	19
 	   50	82	20
    51	83	1
    52	83	8
 	   53	83	20
    54	88	1
    55	88	8
    56	89	1
    57	89	8
    58	90	1
    59	90	8
    \.


      �      1	vbn	desc
    \.


      �      \.


      �      \.


      �      \.


      �   #   1	Can add log entry	1	add_logentry
 )   2	Can change log entry	1	change_logentry
 )   3	Can delete log entry	1	delete_logentry
 %   4	Can view log entry	1	view_logentry
 &   5	Can add permission	2	add_permission
 ,   6	Can change permission	2	change_permission
 ,   7	Can delete permission	2	delete_permission
 (   8	Can view permission	2	view_permission
    9	Can add group	3	add_group
 #   10	Can change group	3	change_group
 #   11	Can delete group	3	delete_group
    12	Can view group	3	view_group
    13	Can add user	4	add_user
 !   14	Can change user	4	change_user
 !   15	Can delete user	4	delete_user
    16	Can view user	4	view_user
 *   17	Can add content type	5	add_contenttype
 0   18	Can change content type	5	change_contenttype
 0   19	Can delete content type	5	delete_contenttype
 ,   20	Can view content type	5	view_contenttype
 !   21	Can add session	6	add_session
 '   22	Can change session	6	change_session
 '   23	Can delete session	6	delete_session
 #   24	Can view session	6	view_session
 #   25	Can add user	7	add_standartuser
 )   26	Can change user	7	change_standartuser
 )   27	Can delete user	7	delete_standartuser
 %   28	Can view user	7	view_standartuser
    29	Can add hike	8	add_hike
 !   30	Can change hike	8	change_hike
 !   31	Can delete hike	8	delete_hike
    32	Can view hike	8	view_hike
 )   33	Can add description	9	add_description
 /   34	Can change description	9	change_description
 /   35	Can delete description	9	delete_description
 +   36	Can view description	9	view_description
 $   37	Can add landmark	10	add_landmark
 *   38	Can change landmark	10	change_landmark
 *   39	Can delete landmark	10	delete_landmark
 &   40	Can view landmark	10	view_landmark
    41	Can add photo	11	add_photo
 $   42	Can change photo	11	change_photo
 $   43	Can delete photo	11	delete_photo
     44	Can view photo	11	view_photo
 "   45	Can add profile	12	add_profile
 (   46	Can change profile	12	change_profile
 (   47	Can delete profile	12	delete_profile
 $   48	Can view profile	12	view_profile
    \.


      �   �   2	pbkdf2_sha256$150000$I6LYh0RjrP0w$h7ysA+DlYlN2Ta3d5jD3zIWDYmVmk2kEpMMtBDcx/Pw=	2019-11-12 02:43:48.660434+03	f	TestNickname	TestName	TestSurname	test@mail.com	f	t	2019-11-12 02:25:52.207568+03
 �   21	pbkdf2_sha256$150000$0kslRVxdUEFa$pGB6zGx4/I7a/X3jTsbVarDzbWhAH5YyBvZ4SnbtHLM=	2019-12-27 16:28:22.773514+03	f	111				f	t	2019-12-10 01:41:57.533733+03
 �   20	pbkdf2_sha256$150000$qv6EiVQoxv3O$xaN6nfFOuoIDaD6TI7u56fKvDgiqnMChr7N1eJom940=	2019-12-27 16:44:50.43377+03	f	Casy7	Ярослав	Касьянов		f	t	2019-11-26 00:22:21.419714+03
 �   22	pbkdf2_sha256$150000$Hl0fqHv5AsaB$jkTNXBzGaz6zh8S1iTLy2d2I/SzSbMte8Ovm6TaxrCE=	2020-01-08 03:17:52.490762+03	f	ivan.sokolov	Иван	Соколов	sokolov@gmail.com	f	t	2020-01-06 16:29:01.373479+03
 �   1	pbkdf2_sha256$150000$7uuEhQDdcaIT$CH+kygDDxm0XzROPwSbTMuboqv7f4fyA5nZnzAdo6b4=	2020-01-08 16:02:28.037764+03	t	admin				t	t	2019-11-12 02:18:40.714371+03
 �   19	pbkdf2_sha256$150000$sY6ttH1goP4g$VSu32DxRsJAt1t7HGa2j0qizfXYquG7+pfmmcLGT/xs=	\N	f	Casy11				f	t	2019-11-26 00:20:37.916745+03
 �   8	pbkdf2_sha256$150000$0avkXOhhQeDP$xG4Z6Fv7qHG7q7h06JrREGttc/5DGtXhOoVTCJ5Yndg=	2019-12-10 01:34:47.33503+03	f	67				f	t	2019-11-16 20:20:36.176253+03
    \.


      �      \.


      �      \.


      �   H   1	2019-11-19 00:16:24.406552+03	1	Hike object (1)	1	[{"added": {}}]	8	1
 m   2	2019-11-25 19:50:56.724576+03	6	Hike object (6)	2	[{"changed": {"fields": ["participants", "image"]}}]	8	1
 h   3	2019-11-25 20:05:14.914227+03	7	Hike object (7)	2	[{"changed": {"fields": ["image", "creator"]}}]	8	1
 /   4	2019-11-26 00:07:31.853315+03	18	zxcv	3		4	1
 1   5	2019-11-26 00:07:39.51508+03	15	tyutyut	3		4	1
 ?   6	2019-11-26 00:07:39.520565+03	16	tyytyuyuuuuyuyuyyuyu	3		4	1
 9   7	2019-11-26 00:08:00.132061+03	7	TestNickname296	3		4	1
 7   8	2019-11-26 00:08:08.33751+03	5	TestNickname29	3		4	1
 0   9	2019-11-26 00:08:18.18033+03	17	Casy12	3		4	1
 8   10	2019-11-26 00:08:26.310379+03	3	TestNickname2	3		4	1
 -   11	2019-11-26 00:08:42.775797+03	9	76	3		4	1
 2   12	2019-11-26 00:08:42.780241+03	10	Casy11	3		4	1
 >   13	2019-12-04 23:08:44.504665+03	1	vbn	1	[{"added": {}}]	10	1
 �   14	2019-12-04 23:08:55.302939+03	16	Hike object (16)	2	[{"changed": {"fields": ["name", "short_description", "landmarks", "image"]}}]	8	1
 g   15	2019-12-09 23:00:52.088494+03	19	Hike object (19)	2	[{"changed": {"fields": ["participants"]}}]	8	1
 u   16	2019-12-09 23:53:32.006391+03	19	Hike object (19)	2	[{"changed": {"fields": ["difficulty", "type_of_hike"]}}]	8	1
 g   17	2019-12-10 00:22:20.406045+03	19	Hike object (19)	2	[{"changed": {"fields": ["participants"]}}]	8	1
 u   18	2019-12-15 16:55:38.957098+03	33	Hike object (33)	2	[{"changed": {"fields": ["short_description", "image"]}}]	8	1
 ^   19	2019-12-15 16:57:48.606691+03	33	Hike object (33)	2	[{"changed": {"fields": ["436"]}}]	8	1
 d   20	2019-12-15 17:16:21.538433+03	1	Hike object (1)	2	[{"changed": {"fields": ["coordinates"]}}]	8	1
 m   21	2019-12-15 17:21:31.330724+03	2	Hike object (2)	2	[{"changed": {"fields": ["coordinates", "image"]}}]	8	1
 l   22	2019-12-15 17:21:54.23507+03	3	Hike object (3)	2	[{"changed": {"fields": ["coordinates", "image"]}}]	8	1
 ^   23	2019-12-15 17:23:19.231167+03	1	Hike object (1)	2	[{"changed": {"fields": ["image"]}}]	8	1
 <   24	2019-12-20 21:36:07.259088+03	17	Hike object (17)	3		8	1
 <   25	2019-12-20 21:36:07.273044+03	16	Hike object (16)	3		8	1
 <   26	2019-12-20 21:36:07.276039+03	15	Hike object (15)	3		8	1
 <   27	2019-12-20 21:36:07.279032+03	14	Hike object (14)	3		8	1
 <   28	2019-12-20 21:36:07.284027+03	13	Hike object (13)	3		8	1
 <   29	2019-12-20 21:36:07.287007+03	12	Hike object (12)	3		8	1
 <   30	2019-12-20 21:36:07.288004+03	11	Hike object (11)	3		8	1
 <   31	2019-12-20 21:36:07.289002+03	10	Hike object (10)	3		8	1
 :   32	2019-12-20 21:36:07.290996+03	9	Hike object (9)	3		8	1
 :   33	2019-12-20 21:36:07.291994+03	8	Hike object (8)	3		8	1
 :   34	2019-12-20 21:36:07.294988+03	7	Hike object (7)	3		8	1
 :   35	2019-12-20 21:36:07.295984+03	6	Hike object (6)	3		8	1
 :   36	2019-12-20 21:36:07.297977+03	5	Hike object (5)	3		8	1
 :   37	2019-12-20 21:36:07.299977+03	4	Hike object (4)	3		8	1
 :   38	2019-12-20 21:36:07.301967+03	3	Hike object (3)	3		8	1
 :   39	2019-12-20 21:36:07.303962+03	2	Hike object (2)	3		8	1
 :   40	2019-12-20 21:36:07.306958+03	1	Hike object (1)	3		8	1
 u   41	2019-12-21 19:47:14.018991+03	45	Hike object (45)	2	[{"changed": {"fields": ["description", "coordinates"]}}]	8	1
    \.


      �      1	admin	logentry
    2	auth	permission
    3	auth	group
    4	auth	user
    5	contenttypes	contenttype
    6	sessions	session
    7	ChatApp	standartuser
    8	ChatApp	hike
    9	ChatApp	description
    10	ChatApp	landmark
    11	ChatApp	photo
    12	ChatApp	profile
    \.


      �   :   1	contenttypes	0001_initial	2019-11-12 02:17:41.750203+03
 K   2	contenttypes	0002_remove_content_type_name	2019-11-12 02:17:41.794087+03
 2   3	auth	0001_initial	2019-11-12 02:17:42.304629+03
 K   4	auth	0002_alter_permission_name_max_length	2019-11-12 02:17:42.982641+03
 F   5	auth	0003_alter_user_email_max_length	2019-11-12 02:17:43.018415+03
 C   6	auth	0004_alter_user_username_opts	2019-11-12 02:17:43.029414+03
 E   7	auth	0005_alter_user_last_login_null	2019-11-12 02:17:43.040387+03
 D   8	auth	0006_require_contenttypes_0002	2019-11-12 02:17:43.044398+03
 M   9	auth	0007_alter_validators_add_error_messages	2019-11-12 02:17:43.05435+03
 J   10	auth	0008_alter_user_username_max_length	2019-11-12 02:17:43.299327+03
 K   11	auth	0009_alter_user_last_name_max_length	2019-11-12 02:17:43.310298+03
 G   12	auth	0010_alter_group_name_max_length	2019-11-12 02:17:43.321268+03
 D   13	auth	0011_update_proxy_permissions	2019-11-12 02:17:43.327254+03
 6   14	ChatApp	0001_initial	2019-11-12 02:17:43.488904+03
 A   15	ChatApp	0002_auto_20191111_0213	2019-11-12 02:17:43.535776+03
 4   16	admin	0001_initial	2019-11-12 02:17:43.689474+03
 E   17	admin	0002_logentry_remove_auto_add	2019-11-12 02:17:43.785794+03
 M   18	admin	0003_logentry_add_action_flag_choices	2019-11-12 02:17:43.815676+03
 7   19	sessions	0001_initial	2019-11-12 02:17:43.945553+03
 3   20	ChatApp	0003_hike	2019-11-16 20:05:29.848506+03
 A   21	ChatApp	0004_auto_20191118_2022	2019-11-18 21:22:26.884607+03
 B   22	ChatApp	0005_remove_hike_members	2019-11-20 00:22:46.065672+03
 A   23	ChatApp	0006_auto_20191119_2322	2019-11-20 00:22:46.246228+03
 A   24	ChatApp	0007_auto_20191119_2326	2019-11-20 00:26:51.644874+03
 ?   25	ChatApp	0008_hike_coordinates	2019-11-25 19:31:06.827537+03
 @   26	ChatApp	0009_hike_participants	2019-11-25 19:31:07.187883+03
 A   27	ChatApp	0010_auto_20191125_1833	2019-11-25 19:33:32.750486+03
 A   28	ChatApp	0011_auto_20191125_1837	2019-11-25 19:37:05.594054+03
 A   29	ChatApp	0012_auto_20191125_1839	2019-11-25 19:39:39.118177+03
 A   30	ChatApp	0013_auto_20191125_1848	2019-11-25 19:48:13.578666+03
 A   31	ChatApp	0014_auto_20191125_1850	2019-11-25 19:50:32.055487+03
 ?   32	ChatApp	0015_auto_20191125_1901	2019-11-25 20:01:08.0371+03
 A   33	ChatApp	0016_auto_20191125_2359	2019-11-26 00:59:15.371367+03
 E   34	ChatApp	0017_hike_short_description	2019-11-29 20:58:13.491204+03
 A   35	ChatApp	0018_auto_20191209_2200	2019-12-09 23:00:42.815362+03
 A   36	ChatApp	0019_auto_20191210_1816	2019-12-15 16:57:24.867929+03
 A   37	ChatApp	0020_auto_20191215_1557	2019-12-15 16:57:25.156867+03
 A   38	ChatApp	0021_auto_20191215_1603	2019-12-15 17:03:57.540652+03
 A   39	ChatApp	0022_auto_20191215_1624	2019-12-15 17:24:50.877024+03
 A   40	ChatApp	0023_auto_20191217_0925	2019-12-21 19:00:41.485147+03
 F   41	ChatApp	0024_hike_creattion_datetime	2019-12-21 19:00:41.634927+03
 4   42	ChatApp	0025_photo	2019-12-22 18:16:50.515428+03
 A   43	ChatApp	0026_auto_20191224_0129	2019-12-24 02:29:43.850651+03
 A   44	ChatApp	0002_auto_20200108_0221	2020-01-08 03:21:59.811376+03
    \.


      �   <  205zkiyz36lqz57vptull8tojja2jiz8	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-29 16:55:03.408618+03
 <  8tq4f383gzkr5znsmg1nrkif34qganca	YWI0NGUzNjUwMjdiOGM2YzAwMDZhMWEyN2JjODljZjE3NTQzNmFlYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjBhYWIxZjFjZWI5ZWEzNWM0ODhjZDRhNDNiMmJiNDExY2MwMjBjIn0=	2019-11-26 02:43:48.665443+03
 <  fz23zzb27k3bfc4evnoeomdrk0ch0q7z	N2VmZjkzYTNmMjE5NmY5ZTJhZTk3NTllY2Y1MjhlNGJmYjkyNjI0NDp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzAzZDMzYThjMGVkZmU3NTQ0YTMyZDJlOWYwNTFlMWQxYTk0MzlhNCJ9	2020-01-01 21:08:27.332879+03
 <  rcevtvmqllnut2dxob7iiupu6n62kgw1	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2020-01-03 21:35:46.056837+03
 <  x11n2j82ymrh86oon1ye2249hmmvja5a	Y2VmZGY3MGI5YTYzMTg2NDJkMDMyM2Q5NTYyN2ViYWU4YmMxMjk0Yzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MDk3MDNiMzU2NjI5NDY0ZDI5MTRhN2I5OTQ0ZDQ5MWM2ZGNiNzk0In0=	2019-11-30 22:27:49.079773+03
 <  pxxzi50blc0xf3vt264urqhjs460urd4	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2020-01-04 18:55:29.387644+03
 <  qia0fq3dkjyl8edrcsidbrca47xy75gt	Y2VmZGY3MGI5YTYzMTg2NDJkMDMyM2Q5NTYyN2ViYWU4YmMxMjk0Yzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MDk3MDNiMzU2NjI5NDY0ZDI5MTRhN2I5OTQ0ZDQ5MWM2ZGNiNzk0In0=	2019-11-30 23:49:26.273426+03
 <  hvhn34mwsyv0339lfbxfkt6qoqjjjoot	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2020-01-08 19:38:03.997163+03
 <  5g66et64ri2swgvyf6lw6g7ko5k8xqpb	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-17 22:19:13.854721+03
 <  yh1iboriez0h1hflr2y968qs9wzf41d1	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-02 22:36:10.999323+03
 <  j4z00zzsw18ek44axizmyfpjzapknrxp	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-03 20:18:38.953048+03
 <  82732or8fu6pmjmif23ov2p0kqsb1ora	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-17 22:34:24.563353+03
 <  mapjt5r6kdz76upxo7lfxqtlkrqov3dx	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-04 02:29:05.581057+03
 ;  a3mst7hfhx2s81pi5yon1v7t7178x2zz	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-05 00:18:18.30822+03
 <  c3tjnmw9adljbiblqe62jsq4f5oi5gpi	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-06 20:10:55.620461+03
 <  7uzbortn49hlagmantm3ajx7gpqj3vco	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-18 02:29:24.777599+03
 <  9p7yjsdi5nnlspvad7thq9rvihhyw11x	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-18 23:05:12.427516+03
 <  z1l0uszbudoxd03i1rzhu0lfzbx1dlz9	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-20 22:02:11.717699+03
 <  nt3ziu7ghohvq25coojbpqhneke9csw5	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-20 23:21:46.666142+03
 <  68viacqfdkt1qfs9yscgh6pw3tdxlrqt	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-23 23:21:41.295607+03
 <  w16d59ynset12m5p52oc00ulbezl84jp	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-10 01:12:06.284998+03
 <  3lurayafunyidcb30nqo4bb6takbvz3o	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2019-12-14 23:16:22.098967+03
 <  9hay6ii3uulq7mtu9reoyfv9238h00ty	N2VmZjkzYTNmMjE5NmY5ZTJhZTk3NTllY2Y1MjhlNGJmYjkyNjI0NDp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzAzZDMzYThjMGVkZmU3NTQ0YTMyZDJlOWYwNTFlMWQxYTk0MzlhNCJ9	2019-12-24 18:23:26.925481+03
 <  rkp2ocfp6xxdds7721h4twbhtmiuu0rf	N2VmZjkzYTNmMjE5NmY5ZTJhZTk3NTllY2Y1MjhlNGJmYjkyNjI0NDp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzAzZDMzYThjMGVkZmU3NTQ0YTMyZDJlOWYwNTFlMWQxYTk0MzlhNCJ9	2020-01-10 16:28:22.779503+03
 ;  ptjsao78anbrblw7lxvdrf6edk1eh8u5	ODBkZDRjM2ExM2I5NmMxMjFiY2JjZjY0OTA1YWE4YzkzYTU0ZWE4NDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhlY2NmYTE2OTNkMjc4OWJhOTRiMDNmNDY0NDA1Y2U1YzBjYzE0MCJ9	2020-01-10 16:44:50.43976+03
 <  9y3gz97nsac7rm7ust951x2xodhrvdaa	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2020-01-16 02:59:46.404717+03
 <  0zmgel1d8ukp4jg7rmgo0ng7jg1b3p1q	NDEyNzQxM2JlZWU0NTg5NTE4ODZhNzgzYmExYTcwMDIwMThkYTdmYzp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmMwZDc4MzM4YTJhMzhiYzhjY2IxZDljOGU0YjA1ZWFmM2NiYjUxZiJ9	2020-01-20 16:29:39.085314+03
 <  lucx4pqr31rob41391cgjhm9po61kb0t	NGVjOWNlY2E2MjY1ZThhY2QzZDczZThkNDRhY2I0N2Q3ZmYzOTA5OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWYyZDAwOGM0MDk3MTMwNWQ4N2MyMGVmMmZlYWUyNjBmYmM0NzhlIn0=	2020-01-22 16:02:28.047731+03
    \.


     