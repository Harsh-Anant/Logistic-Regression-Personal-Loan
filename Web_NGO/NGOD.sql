PGDMP     6                    x            NGOData1    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16776    NGOData1    DATABASE     �   CREATE DATABASE "NGOData1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NGOData1";
                postgres    false            �            1259    17277 
   Data_cloth    TABLE     ~  CREATE TABLE public."Data_cloth" (
    id integer NOT NULL,
    u_name_id character varying(10) NOT NULL,
    c_name text NOT NULL,
    c_quantity text NOT NULL,
    category text NOT NULL,
    size text NOT NULL,
    ph_no character varying(10) NOT NULL,
    address text NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    status text NOT NULL
);
     DROP TABLE public."Data_cloth";
       public         heap    postgres    false            �            1259    17275    Data_cloth_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Data_cloth_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Data_cloth_id_seq";
       public          postgres    false    205            �           0    0    Data_cloth_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Data_cloth_id_seq" OWNED BY public."Data_cloth".id;
          public          postgres    false    204            �            1259    17288 	   Data_food    TABLE     �  CREATE TABLE public."Data_food" (
    id integer NOT NULL,
    u_name_id character varying(10) NOT NULL,
    item_name text NOT NULL,
    item_quamntity text NOT NULL,
    perishable text NOT NULL,
    expiry_date date NOT NULL,
    typ character varying(8) NOT NULL,
    ph_no character varying(10) NOT NULL,
    address text NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    status text NOT NULL
);
    DROP TABLE public."Data_food";
       public         heap    postgres    false            �            1259    17286    Data_food_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Data_food_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Data_food_id_seq";
       public          postgres    false    207            �           0    0    Data_food_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Data_food_id_seq" OWNED BY public."Data_food".id;
          public          postgres    false    206            �            1259    17299 	   Data_home    TABLE     �  CREATE TABLE public."Data_home" (
    id integer NOT NULL,
    u_name_id character varying(10) NOT NULL,
    house_location text NOT NULL,
    size text NOT NULL,
    description text NOT NULL,
    rent integer NOT NULL,
    ph_no character varying(10) NOT NULL,
    address text NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    status text NOT NULL
);
    DROP TABLE public."Data_home";
       public         heap    postgres    false            �            1259    17297    Data_home_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Data_home_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Data_home_id_seq";
       public          postgres    false    209            �           0    0    Data_home_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Data_home_id_seq" OWNED BY public."Data_home".id;
          public          postgres    false    208            �            1259    17310    Data_other_item    TABLE     U  CREATE TABLE public."Data_other_item" (
    id integer NOT NULL,
    u_name_id character varying(10) NOT NULL,
    item_name text NOT NULL,
    item_quantity text NOT NULL,
    ph_no character varying(10) NOT NULL,
    address text NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    status text NOT NULL
);
 %   DROP TABLE public."Data_other_item";
       public         heap    postgres    false            �            1259    17308    Data_other_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Data_other_item_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Data_other_item_id_seq";
       public          postgres    false    211            �           0    0    Data_other_item_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Data_other_item_id_seq" OWNED BY public."Data_other_item".id;
          public          postgres    false    210            �            1259    17321    Data_ppe    TABLE     N  CREATE TABLE public."Data_ppe" (
    id integer NOT NULL,
    u_name_id character varying(10) NOT NULL,
    kiit_name text NOT NULL,
    kiit_quantity text NOT NULL,
    ph_no character varying(10) NOT NULL,
    address text NOT NULL,
    created_on date NOT NULL,
    updated_on timestamp with time zone,
    status text NOT NULL
);
    DROP TABLE public."Data_ppe";
       public         heap    postgres    false            �            1259    17319    Data_ppe_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Data_ppe_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Data_ppe_id_seq";
       public          postgres    false    213            �           0    0    Data_ppe_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Data_ppe_id_seq" OWNED BY public."Data_ppe".id;
          public          postgres    false    212            �            1259    17330    Data_profile    TABLE     �   CREATE TABLE public."Data_profile" (
    u_name character varying(10) NOT NULL,
    mobile character varying(10) NOT NULL,
    address text NOT NULL
);
 "   DROP TABLE public."Data_profile";
       public         heap    postgres    false            �            1259    17362 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17360    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    220            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    219            �            1259    17372    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17370    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    222            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    221            �            1259    17354    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17352    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    218            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    217            �            1259    17380 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    17390    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17388    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    226            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    225            �            1259    17378    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    224            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    223            �            1259    17398    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17396 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    228            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    227            �            1259    17458    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    17456    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    230            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    229            �            1259    17344    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17342    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    215            �            1259    17266    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17264    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    17489    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �
           2604    17280    Data_cloth id    DEFAULT     r   ALTER TABLE ONLY public."Data_cloth" ALTER COLUMN id SET DEFAULT nextval('public."Data_cloth_id_seq"'::regclass);
 >   ALTER TABLE public."Data_cloth" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    17291    Data_food id    DEFAULT     p   ALTER TABLE ONLY public."Data_food" ALTER COLUMN id SET DEFAULT nextval('public."Data_food_id_seq"'::regclass);
 =   ALTER TABLE public."Data_food" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    17302    Data_home id    DEFAULT     p   ALTER TABLE ONLY public."Data_home" ALTER COLUMN id SET DEFAULT nextval('public."Data_home_id_seq"'::regclass);
 =   ALTER TABLE public."Data_home" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    17313    Data_other_item id    DEFAULT     |   ALTER TABLE ONLY public."Data_other_item" ALTER COLUMN id SET DEFAULT nextval('public."Data_other_item_id_seq"'::regclass);
 C   ALTER TABLE public."Data_other_item" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    17324    Data_ppe id    DEFAULT     n   ALTER TABLE ONLY public."Data_ppe" ALTER COLUMN id SET DEFAULT nextval('public."Data_ppe_id_seq"'::regclass);
 <   ALTER TABLE public."Data_ppe" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    17365    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �
           2604    17375    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �
           2604    17357    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �
           2604    17383    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �
           2604    17393    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �
           2604    17401    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �
           2604    17461    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �
           2604    17347    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �
           2604    17269    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �          0    17277 
   Data_cloth 
   TABLE DATA           �   COPY public."Data_cloth" (id, u_name_id, c_name, c_quantity, category, size, ph_no, address, created_on, updated_on, status) FROM stdin;
    public          postgres    false    205   J�       �          0    17288 	   Data_food 
   TABLE DATA           �   COPY public."Data_food" (id, u_name_id, item_name, item_quamntity, perishable, expiry_date, typ, ph_no, address, created_on, updated_on, status) FROM stdin;
    public          postgres    false    207   ��       �          0    17299 	   Data_home 
   TABLE DATA           �   COPY public."Data_home" (id, u_name_id, house_location, size, description, rent, ph_no, address, created_on, updated_on, status) FROM stdin;
    public          postgres    false    209   �       �          0    17310    Data_other_item 
   TABLE DATA           �   COPY public."Data_other_item" (id, u_name_id, item_name, item_quantity, ph_no, address, created_on, updated_on, status) FROM stdin;
    public          postgres    false    211   ��       �          0    17321    Data_ppe 
   TABLE DATA           }   COPY public."Data_ppe" (id, u_name_id, kiit_name, kiit_quantity, ph_no, address, created_on, updated_on, status) FROM stdin;
    public          postgres    false    213   �       �          0    17330    Data_profile 
   TABLE DATA           A   COPY public."Data_profile" (u_name, mobile, address) FROM stdin;
    public          postgres    false    214   ��       �          0    17362 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    220   V�       �          0    17372    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    222   s�       �          0    17354    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    218   ��       �          0    17380 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    224   r�       �          0    17390    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    226   y�       �          0    17398    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    228   ��       �          0    17458    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    230   ��       �          0    17344    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    216   ��       �          0    17266    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   s�       �          0    17489    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    231   W�       �           0    0    Data_cloth_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Data_cloth_id_seq"', 5, true);
          public          postgres    false    204            �           0    0    Data_food_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Data_food_id_seq"', 11, true);
          public          postgres    false    206            �           0    0    Data_home_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Data_home_id_seq"', 6, true);
          public          postgres    false    208            �           0    0    Data_other_item_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Data_other_item_id_seq"', 11, true);
          public          postgres    false    210            �           0    0    Data_ppe_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Data_ppe_id_seq"', 6, true);
          public          postgres    false    212            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    219            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    217            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    225            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 13, true);
          public          postgres    false    223            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 11, true);
          public          postgres    false    229            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    215            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 33, true);
          public          postgres    false    202            �
           2606    17285    Data_cloth Data_cloth_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Data_cloth"
    ADD CONSTRAINT "Data_cloth_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Data_cloth" DROP CONSTRAINT "Data_cloth_pkey";
       public            postgres    false    205            �
           2606    17296    Data_food Data_food_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Data_food"
    ADD CONSTRAINT "Data_food_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Data_food" DROP CONSTRAINT "Data_food_pkey";
       public            postgres    false    207            �
           2606    17307    Data_home Data_home_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Data_home"
    ADD CONSTRAINT "Data_home_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Data_home" DROP CONSTRAINT "Data_home_pkey";
       public            postgres    false    209            �
           2606    17318 $   Data_other_item Data_other_item_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Data_other_item"
    ADD CONSTRAINT "Data_other_item_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Data_other_item" DROP CONSTRAINT "Data_other_item_pkey";
       public            postgres    false    211                       2606    17329    Data_ppe Data_ppe_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Data_ppe"
    ADD CONSTRAINT "Data_ppe_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Data_ppe" DROP CONSTRAINT "Data_ppe_pkey";
       public            postgres    false    213                       2606    17337    Data_profile Data_profile_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Data_profile"
    ADD CONSTRAINT "Data_profile_pkey" PRIMARY KEY (u_name);
 L   ALTER TABLE ONLY public."Data_profile" DROP CONSTRAINT "Data_profile_pkey";
       public            postgres    false    214                       2606    17487    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    220                       2606    17414 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    222    222                       2606    17377 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    222                       2606    17367    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    220                       2606    17405 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    218    218                       2606    17359 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    218            "           2606    17395 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    226            %           2606    17429 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    226    226                       2606    17385    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    224            (           2606    17403 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    228            +           2606    17443 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    228    228                       2606    17481     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    224            .           2606    17467 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    230                       2606    17351 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    216    216            
           2606    17349 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    216            �
           2606    17274 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            2           2606    17496 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    231            �
           1259    17515    Data_cloth_u_name_id_79982279    INDEX     ]   CREATE INDEX "Data_cloth_u_name_id_79982279" ON public."Data_cloth" USING btree (u_name_id);
 3   DROP INDEX public."Data_cloth_u_name_id_79982279";
       public            postgres    false    205            �
           1259    17521 "   Data_cloth_u_name_id_79982279_like    INDEX     v   CREATE INDEX "Data_cloth_u_name_id_79982279_like" ON public."Data_cloth" USING btree (u_name_id varchar_pattern_ops);
 8   DROP INDEX public."Data_cloth_u_name_id_79982279_like";
       public            postgres    false    205            �
           1259    17522    Data_food_u_name_id_6b43229e    INDEX     [   CREATE INDEX "Data_food_u_name_id_6b43229e" ON public."Data_food" USING btree (u_name_id);
 2   DROP INDEX public."Data_food_u_name_id_6b43229e";
       public            postgres    false    207            �
           1259    17528 !   Data_food_u_name_id_6b43229e_like    INDEX     t   CREATE INDEX "Data_food_u_name_id_6b43229e_like" ON public."Data_food" USING btree (u_name_id varchar_pattern_ops);
 7   DROP INDEX public."Data_food_u_name_id_6b43229e_like";
       public            postgres    false    207            �
           1259    17529    Data_home_u_name_id_8107246b    INDEX     [   CREATE INDEX "Data_home_u_name_id_8107246b" ON public."Data_home" USING btree (u_name_id);
 2   DROP INDEX public."Data_home_u_name_id_8107246b";
       public            postgres    false    209            �
           1259    17535 !   Data_home_u_name_id_8107246b_like    INDEX     t   CREATE INDEX "Data_home_u_name_id_8107246b_like" ON public."Data_home" USING btree (u_name_id varchar_pattern_ops);
 7   DROP INDEX public."Data_home_u_name_id_8107246b_like";
       public            postgres    false    209            �
           1259    17536 "   Data_other_item_u_name_id_12ea80ae    INDEX     g   CREATE INDEX "Data_other_item_u_name_id_12ea80ae" ON public."Data_other_item" USING btree (u_name_id);
 8   DROP INDEX public."Data_other_item_u_name_id_12ea80ae";
       public            postgres    false    211            �
           1259    17542 '   Data_other_item_u_name_id_12ea80ae_like    INDEX     �   CREATE INDEX "Data_other_item_u_name_id_12ea80ae_like" ON public."Data_other_item" USING btree (u_name_id varchar_pattern_ops);
 =   DROP INDEX public."Data_other_item_u_name_id_12ea80ae_like";
       public            postgres    false    211                       1259    17543    Data_ppe_u_name_id_c2c1c72e    INDEX     Y   CREATE INDEX "Data_ppe_u_name_id_c2c1c72e" ON public."Data_ppe" USING btree (u_name_id);
 1   DROP INDEX public."Data_ppe_u_name_id_c2c1c72e";
       public            postgres    false    213                       1259    17549     Data_ppe_u_name_id_c2c1c72e_like    INDEX     r   CREATE INDEX "Data_ppe_u_name_id_c2c1c72e_like" ON public."Data_ppe" USING btree (u_name_id varchar_pattern_ops);
 6   DROP INDEX public."Data_ppe_u_name_id_c2c1c72e_like";
       public            postgres    false    213                       1259    17340 !   Data_profile_u_name_aa3a66b5_like    INDEX     t   CREATE INDEX "Data_profile_u_name_aa3a66b5_like" ON public."Data_profile" USING btree (u_name varchar_pattern_ops);
 7   DROP INDEX public."Data_profile_u_name_aa3a66b5_like";
       public            postgres    false    214                       1259    17488    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    220                       1259    17425 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    222                       1259    17426 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    222                       1259    17411 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    218                        1259    17441 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    226            #           1259    17440 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    226            &           1259    17455 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    228            )           1259    17454 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    228                       1259    17482     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    224            ,           1259    17478 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    230            /           1259    17479 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    230            0           1259    17498 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    231            3           1259    17497 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    231            4           2606    17516 ?   Data_cloth Data_cloth_u_name_id_79982279_fk_Data_profile_u_name    FK CONSTRAINT     �   ALTER TABLE ONLY public."Data_cloth"
    ADD CONSTRAINT "Data_cloth_u_name_id_79982279_fk_Data_profile_u_name" FOREIGN KEY (u_name_id) REFERENCES public."Data_profile"(u_name) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public."Data_cloth" DROP CONSTRAINT "Data_cloth_u_name_id_79982279_fk_Data_profile_u_name";
       public          postgres    false    214    205    2821            5           2606    17523 =   Data_food Data_food_u_name_id_6b43229e_fk_Data_profile_u_name    FK CONSTRAINT     �   ALTER TABLE ONLY public."Data_food"
    ADD CONSTRAINT "Data_food_u_name_id_6b43229e_fk_Data_profile_u_name" FOREIGN KEY (u_name_id) REFERENCES public."Data_profile"(u_name) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."Data_food" DROP CONSTRAINT "Data_food_u_name_id_6b43229e_fk_Data_profile_u_name";
       public          postgres    false    2821    214    207            6           2606    17530 =   Data_home Data_home_u_name_id_8107246b_fk_Data_profile_u_name    FK CONSTRAINT     �   ALTER TABLE ONLY public."Data_home"
    ADD CONSTRAINT "Data_home_u_name_id_8107246b_fk_Data_profile_u_name" FOREIGN KEY (u_name_id) REFERENCES public."Data_profile"(u_name) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."Data_home" DROP CONSTRAINT "Data_home_u_name_id_8107246b_fk_Data_profile_u_name";
       public          postgres    false    2821    209    214            7           2606    17537 I   Data_other_item Data_other_item_u_name_id_12ea80ae_fk_Data_profile_u_name    FK CONSTRAINT     �   ALTER TABLE ONLY public."Data_other_item"
    ADD CONSTRAINT "Data_other_item_u_name_id_12ea80ae_fk_Data_profile_u_name" FOREIGN KEY (u_name_id) REFERENCES public."Data_profile"(u_name) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public."Data_other_item" DROP CONSTRAINT "Data_other_item_u_name_id_12ea80ae_fk_Data_profile_u_name";
       public          postgres    false    214    2821    211            8           2606    17544 ;   Data_ppe Data_ppe_u_name_id_c2c1c72e_fk_Data_profile_u_name    FK CONSTRAINT     �   ALTER TABLE ONLY public."Data_ppe"
    ADD CONSTRAINT "Data_ppe_u_name_id_c2c1c72e_fk_Data_profile_u_name" FOREIGN KEY (u_name_id) REFERENCES public."Data_profile"(u_name) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public."Data_ppe" DROP CONSTRAINT "Data_ppe_u_name_id_c2c1c72e_fk_Data_profile_u_name";
       public          postgres    false    214    213    2821            ;           2606    17420 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    222    2831    218            :           2606    17415 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2836    220    222            9           2606    17406 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2826    218    216            =           2606    17435 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    220    2836    226            <           2606    17430 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2844    226    224            ?           2606    17449 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    218    228    2831            >           2606    17444 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2844    228    224            @           2606    17468 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    216    230    2826            A           2606    17473 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2844    230    224            �   �   x�e��
�@E�ٯ�����ҥHbc �D\	��h�r�S\�!��4w�O1���)6�4�P�W��(o��
��
�hs��f��A����H:��p^8���P���x� �P�%�)��ĝǦK���Q4���
c׭�k<!��3�      �     x���Mk�0��+|5������`��0�hKh�B;����svX)�Bu������w}�C�k]����ݱR��/A�o��w:$x�ObY���#�,�y˝Xn^�q'������%�.�S6j�'nZ�h��Bє��3��&�q�<�3n�s
6m��c4i�H���O3՝So!� �Ac����IWk:"I��6��֚�sil
�g�ȭ��-���>�qw�ˇ�$��ع�&��o�m�)�wS��+n��#��+qU��$z<��w�e�/F:�      �   �   x���=�0����Wt7�˅�Б8;��R�G�J���L<ӻ���������: �� ~���S�~r��n��uK������'3�	l���U�Qj!J����B����R�.�ǒ�eʙ���O�,	����C����x��-P�R�$��\K��YIZ      �   #  x����j�0���Sx/&�Mn=m)����^R��5Ye���U��ݥs�!�}����`O�`ǂ'۟�8�Zq��;�X(p��ŪM�4H&+��RSq7�>���W'��w]�A\a�U��6�r��%f6�kSMo�w ��M]�a��Bh���x�����],	�9!$#EBn$�e���A�
�5m��E����֕>��Z���F�	�3��o7�q�đ}t��MȕeC���E����f�D�=�-��pSBb�P��D���b������j��pU�,I��h�      �   �   x�uͱ�0��<�������1���rU���Oo!FL�g:����p��x��w�Pvç+��$��̀y�p,P��dI��!�Չ�(��JjKR�v��2Тp�ib���}J1���r�sx�+�:�+�T!��%���Ңb�J���ݫ�Ԣ�OW�����A�A�J�      �   �   x����
�0���O�'(�b4��T(B���)%C4��%
]�|�}�q=�� D�het�+%���c��7��Av��R��c������ヲM�����݉0?Ā�p�]h�t��k�L��x]�h�&      �      x������ � �      �      x������ � �      �   �  x�]�K��0D��)8�(�[�5F�Pp$�����qwgg����w3M��>-ܺ��ڗ�]�p�Y�-m��"n������_ַ���~K�u%�oK��$�5�G�L:�~_R��sv}�gt�nKvږT�E h_��R�Ic�켾}�.���9��)IY4�׉L�4|�t��<���"�+N:j
�N�2���r'�(�1HA�t����;_�:
�N
�)S��0"��ӽ��2��2�{����TcKH�XMR2!Uw5ᄒ�qzv�ܥ�����L���`�n��)X5ݠx�
��ߧ��B��W��S4BL��@��^3 1H�6��8��7�lk_�B�L�0�f����U�Y{T���4,��+��Z�@�϶#_ۑ�A����	�� Ob���8f�0G��g4m}m�� ʚ9�~�Q�̩�+
�1����+;      �   �  x���[o�L�����wMaN�0$_����|�N� �AD��~c�=��u5�Lf=�]kށ�d�r\��[H�T@B��8ǌw�_i��4�����B�˳��禄�y-��u:c&����v�-VZ�gYo�R9��m��<-��?��
Bю���m	}��0*"�2f��*w�:�5�ۑ<��8���Y�U���!{+e���=e��E�\b��D
��N_j�A�<�
z��*�E(��̆��)�m���Vz�a!ѽ	=��~b,-�;��	4Vc%p��Ƙ�������K�8�Y��
�o�F�*��"�2>����g=�:AXuZ;���s�����r��
5�cD��1�%���ll6��3Y?�_�ۯME��TB	<z/>F�����c��^j��O�eh8&�:�����^�>a�a+otuJ��SSO��:� 2�8���]���y�2խ�YB=I�B�m}��<L���� S���z&)��n�ft���&�*!bQ��̦\gk�
fS?Mk�P%{�7�rڙ��R��UMr�q��c�/,��i��5\i��eW��-F*QDY��,���u�����yg��-�[�~����[�J���5rL��6��vuiɔ�����צ��". �b�����x��-�2-����CZT(�ɽi9�zM-�fdj���ϥ��W��� �+���HQ�B"r��o)O�oQ`��j͏s�p�����.�� ��r�饈�����1[���|i��ec�s���ͅ�{XDm��A�9��c/�.E(� ��"%P!	c��kؖ*���J�R4N+1�,۵�?� ؊�-Qq��{U\�%�B�r�]�)-Gz�ɟ��M��*u��<�̊���(�}93����ɀU6Z��[�*���SR�"� ��?p^�����=��!�߇���u�8����{�!͇��Y�<��l�񖇜gfsj����n66�N�ug� ��B|�L����o��wY� qUVN���_����O�;�      �      x������ � �      �      x������ � �      �     x����j�0E��W�Z����6���i(n��)��w!�^���*ĸ���stg�(���Wʳ�Yb�$�'�`��������!k߿¶��_oN S�!�+K;B Y�ۮ���XC=����A��?�-Aht
h6D������	P�.A& �|[��g�r���]�W��q�?o�����<���2�����
��:=ٳ��Օⷭ&V�g����WCم*k�+��5�'d'i� .2�a�Z1�� o�+C�� ��� ���X��׫H��n��k      �   �   x�M��
� ��;Sj��c�$�(�+�����޾o�CO��� �0tYDf�:;��s��e�����̸~����Fv�>Q����w�Me.���%�ѓ�H�0�n�r�14I�}�[��/0U���u �v>�      �   �  x����n�@E��Wd?
�G?Y�g��B6� a�%?�C��M�l��=TݾU����Xm  SslƦj7/�^���� �u�����-�h��c}ǏS=<`�,�Mu_�|A�Yd6����B�8�Ye�*Jm������ׇ�NRE���n�ѻH3�]1|ň4U۱��o[����k�������;�(�4�Hӛt��:̀��MJU;�}:���������{j��^�Z�y���F��L;�U�>9�0;��$�$M�KU�i��*omv
Q)vIi�a�����z(kM���x����j���d�:'z�>s���sAoU�쪱�K"���t����F�l4J�F=p���ǇVa�ίѢ%R�]�!̴}ߝO?"M�j�W��I�ө��?a]�ʐA2&l�z���"��N0F]s�9��R#�}`F�d2t��9�v����R��D,�D�`Bՙ����0-�4T�"��2��-�����1x�hb���{�g�|F.��
Ѓ��-��/K�)	K�E��uf�* �p�hN��NoÍކ�� ��y��g���@<$k� �P��!�gr|)( � d��x _<�%K��xT���`�|H~�S�V��)k�D� �IS�@晠d�ȥ��|M��A�hs���9�$�$Iy�X���@�|�ڔ��:#][� �����'��)�N�M�C�?�����-o      �     x���M��0�s�+�^md%�UT%r���%��q>vK��5R��z���i�ϼe����*�
�es�];��)��hOb�&��Y!a3K㗁�kEbZK�Dm�+��[�B��0k���[_w���]~��US4YO���5a�G�N.� 3���RX��ʴ�w��Cz�������HK�/���c�5�f�ƾ�t�Ѷj����k��Q�)�Re�Y�j�<�)�Z؍Oynd\W}�.n�)y4A �g<��	��=EЗ�����/��6�0�a���?�'���Io �%��
����=Cʉ�jj�vd#(ׂU�H�����+�F�Ж�3 &��/c����i�m�rq0K�`n�4i"�l���g�� �0��,���?|�ꪼ��eh���ME0�Ot�t[E��^O� x��VY����o\�����S�|���V�+D�|���	K���Ź!��̞P[C�
���[j5(��!,�����OЛ;1�fG_�_���t�|7�     