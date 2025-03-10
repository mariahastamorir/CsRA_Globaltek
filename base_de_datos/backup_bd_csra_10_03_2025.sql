PGDMP              
        }            proyecto_csra_globaltek    17.4    17.4 k    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    proyecto_csra_globaltek    DATABASE     }   CREATE DATABASE proyecto_csra_globaltek WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-MX';
 '   DROP DATABASE proyecto_csra_globaltek;
                     postgres    false            �            1259    16426    activo    TABLE     V  CREATE TABLE public.activo (
    id integer NOT NULL,
    nombre character varying,
    proceso_area character varying,
    tipo character varying,
    descripcion character varying,
    valor integer,
    datos_personales character varying,
    dueno_activo character varying,
    custodio character varying,
    id_estadoxactivo integer
);
    DROP TABLE public.activo;
       public         heap r       postgres    false            �            1259    16425    activo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.activo_id_seq;
       public               postgres    false    226            �           0    0    activo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.activo_id_seq OWNED BY public.activo.id;
          public               postgres    false    225            �            1259    16442    confidencialidad    TABLE     s   CREATE TABLE public.confidencialidad (
    id integer NOT NULL,
    estado character varying,
    valor integer
);
 $   DROP TABLE public.confidencialidad;
       public         heap r       postgres    false            �            1259    16441    confidencialidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.confidencialidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.confidencialidad_id_seq;
       public               postgres    false    230            �           0    0    confidencialidad_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.confidencialidad_id_seq OWNED BY public.confidencialidad.id;
          public               postgres    false    229            �            1259    16469 
   criticidad    TABLE     m   CREATE TABLE public.criticidad (
    id integer NOT NULL,
    estado character varying,
    valor integer
);
    DROP TABLE public.criticidad;
       public         heap r       postgres    false            �            1259    16468    criticidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.criticidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.criticidad_id_seq;
       public               postgres    false    236            �           0    0    criticidad_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.criticidad_id_seq OWNED BY public.criticidad.id;
          public               postgres    false    235            �            1259    16460    disponibilidad    TABLE     q   CREATE TABLE public.disponibilidad (
    id integer NOT NULL,
    estado character varying,
    valor integer
);
 "   DROP TABLE public.disponibilidad;
       public         heap r       postgres    false            �            1259    16459    disponibilidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.disponibilidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.disponibilidad_id_seq;
       public               postgres    false    234            �           0    0    disponibilidad_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.disponibilidad_id_seq OWNED BY public.disponibilidad.id;
          public               postgres    false    233            �            1259    16417    empresa    TABLE     �   CREATE TABLE public.empresa (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    nit character varying NOT NULL
);
    DROP TABLE public.empresa;
       public         heap r       postgres    false            �            1259    16416    empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.empresa_id_seq;
       public               postgres    false    224            �           0    0    empresa_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.empresa_id_seq OWNED BY public.empresa.id;
          public               postgres    false    223            �            1259    16478    estadoxactivo    TABLE     �   CREATE TABLE public.estadoxactivo (
    id integer NOT NULL,
    id_activo integer,
    id_confidencialidad integer,
    id_integridad integer,
    id_disponibilidad integer,
    id_criticidad integer
);
 !   DROP TABLE public.estadoxactivo;
       public         heap r       postgres    false            �            1259    16477    estadoxactivo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estadoxactivo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.estadoxactivo_id_seq;
       public               postgres    false    238            �           0    0    estadoxactivo_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.estadoxactivo_id_seq OWNED BY public.estadoxactivo.id;
          public               postgres    false    237            �            1259    16451 
   integridad    TABLE     m   CREATE TABLE public.integridad (
    id integer NOT NULL,
    estado character varying,
    valor integer
);
    DROP TABLE public.integridad;
       public         heap r       postgres    false            �            1259    16450    integridad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.integridad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.integridad_id_seq;
       public               postgres    false    232            �           0    0    integridad_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.integridad_id_seq OWNED BY public.integridad.id;
          public               postgres    false    231            �            1259    16435    otp_code    TABLE     �   CREATE TABLE public.otp_code (
    id integer NOT NULL,
    id_usuario integer,
    otp_code timestamp with time zone,
    created_at timestamp with time zone
);
    DROP TABLE public.otp_code;
       public         heap r       postgres    false            �            1259    16434    otp_code_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otp_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.otp_code_id_seq;
       public               postgres    false    228            �           0    0    otp_code_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.otp_code_id_seq OWNED BY public.otp_code.id;
          public               postgres    false    227            �            1259    16408    permisos    TABLE     X   CREATE TABLE public.permisos (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.permisos;
       public         heap r       postgres    false            �            1259    16407    permisos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permisos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.permisos_id_seq;
       public               postgres    false    222            �           0    0    permisos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.permisos_id_seq OWNED BY public.permisos.id;
          public               postgres    false    221            �            1259    16485    permisosxroles    TABLE     o   CREATE TABLE public.permisosxroles (
    id integer NOT NULL,
    id_roles integer,
    id_permisos integer
);
 "   DROP TABLE public.permisosxroles;
       public         heap r       postgres    false            �            1259    16484    permisosxroles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permisosxroles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.permisosxroles_id_seq;
       public               postgres    false    240            �           0    0    permisosxroles_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.permisosxroles_id_seq OWNED BY public.permisosxroles.id;
          public               postgres    false    239            �            1259    16399    roles    TABLE     ^   CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.roles;
       public         heap r       postgres    false            �            1259    16398    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public               postgres    false    220            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public               postgres    false    219            �            1259    16492    tipodocumento    TABLE     ]   CREATE TABLE public.tipodocumento (
    id integer NOT NULL,
    nombre character varying
);
 !   DROP TABLE public.tipodocumento;
       public         heap r       postgres    false            �            1259    16491    tipodocumento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipodocumento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tipodocumento_id_seq;
       public               postgres    false    242            �           0    0    tipodocumento_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tipodocumento_id_seq OWNED BY public.tipodocumento.id;
          public               postgres    false    241            �            1259    16390    usuario    TABLE     �  CREATE TABLE public.usuario (
    id integer NOT NULL,
    nombre character varying,
    numero_documento character varying,
    telefono character varying,
    correo character varying NOT NULL,
    contrasena character varying NOT NULL,
    is_active boolean,
    is_staff boolean,
    id_tipodocumento integer,
    id_empresa integer,
    id_permisosxroles integer,
    id_otp_code integer
);
    DROP TABLE public.usuario;
       public         heap r       postgres    false            �            1259    16389    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public               postgres    false    218            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public               postgres    false    217            �           2604    16429 	   activo id    DEFAULT     f   ALTER TABLE ONLY public.activo ALTER COLUMN id SET DEFAULT nextval('public.activo_id_seq'::regclass);
 8   ALTER TABLE public.activo ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    16445    confidencialidad id    DEFAULT     z   ALTER TABLE ONLY public.confidencialidad ALTER COLUMN id SET DEFAULT nextval('public.confidencialidad_id_seq'::regclass);
 B   ALTER TABLE public.confidencialidad ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            �           2604    16472    criticidad id    DEFAULT     n   ALTER TABLE ONLY public.criticidad ALTER COLUMN id SET DEFAULT nextval('public.criticidad_id_seq'::regclass);
 <   ALTER TABLE public.criticidad ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    235    236    236            �           2604    16463    disponibilidad id    DEFAULT     v   ALTER TABLE ONLY public.disponibilidad ALTER COLUMN id SET DEFAULT nextval('public.disponibilidad_id_seq'::regclass);
 @   ALTER TABLE public.disponibilidad ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    234    234            �           2604    16420 
   empresa id    DEFAULT     h   ALTER TABLE ONLY public.empresa ALTER COLUMN id SET DEFAULT nextval('public.empresa_id_seq'::regclass);
 9   ALTER TABLE public.empresa ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    16481    estadoxactivo id    DEFAULT     t   ALTER TABLE ONLY public.estadoxactivo ALTER COLUMN id SET DEFAULT nextval('public.estadoxactivo_id_seq'::regclass);
 ?   ALTER TABLE public.estadoxactivo ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    238    238            �           2604    16454    integridad id    DEFAULT     n   ALTER TABLE ONLY public.integridad ALTER COLUMN id SET DEFAULT nextval('public.integridad_id_seq'::regclass);
 <   ALTER TABLE public.integridad ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    232    232            �           2604    16438    otp_code id    DEFAULT     j   ALTER TABLE ONLY public.otp_code ALTER COLUMN id SET DEFAULT nextval('public.otp_code_id_seq'::regclass);
 :   ALTER TABLE public.otp_code ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    228    228            �           2604    16411    permisos id    DEFAULT     j   ALTER TABLE ONLY public.permisos ALTER COLUMN id SET DEFAULT nextval('public.permisos_id_seq'::regclass);
 :   ALTER TABLE public.permisos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    16488    permisosxroles id    DEFAULT     v   ALTER TABLE ONLY public.permisosxroles ALTER COLUMN id SET DEFAULT nextval('public.permisosxroles_id_seq'::regclass);
 @   ALTER TABLE public.permisosxroles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    240    239    240            �           2604    16402    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16495    tipodocumento id    DEFAULT     t   ALTER TABLE ONLY public.tipodocumento ALTER COLUMN id SET DEFAULT nextval('public.tipodocumento_id_seq'::regclass);
 ?   ALTER TABLE public.tipodocumento ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    241    242    242            �           2604    16393 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    16426    activo 
   TABLE DATA           �   COPY public.activo (id, nombre, proceso_area, tipo, descripcion, valor, datos_personales, dueno_activo, custodio, id_estadoxactivo) FROM stdin;
    public               postgres    false    226   �{       �          0    16442    confidencialidad 
   TABLE DATA           =   COPY public.confidencialidad (id, estado, valor) FROM stdin;
    public               postgres    false    230   �{       �          0    16469 
   criticidad 
   TABLE DATA           7   COPY public.criticidad (id, estado, valor) FROM stdin;
    public               postgres    false    236   �{       �          0    16460    disponibilidad 
   TABLE DATA           ;   COPY public.disponibilidad (id, estado, valor) FROM stdin;
    public               postgres    false    234   �{       �          0    16417    empresa 
   TABLE DATA           2   COPY public.empresa (id, nombre, nit) FROM stdin;
    public               postgres    false    224   �{       �          0    16478    estadoxactivo 
   TABLE DATA           |   COPY public.estadoxactivo (id, id_activo, id_confidencialidad, id_integridad, id_disponibilidad, id_criticidad) FROM stdin;
    public               postgres    false    238   |       �          0    16451 
   integridad 
   TABLE DATA           7   COPY public.integridad (id, estado, valor) FROM stdin;
    public               postgres    false    232   4|       �          0    16435    otp_code 
   TABLE DATA           H   COPY public.otp_code (id, id_usuario, otp_code, created_at) FROM stdin;
    public               postgres    false    228   Q|       �          0    16408    permisos 
   TABLE DATA           .   COPY public.permisos (id, nombre) FROM stdin;
    public               postgres    false    222   n|       �          0    16485    permisosxroles 
   TABLE DATA           C   COPY public.permisosxroles (id, id_roles, id_permisos) FROM stdin;
    public               postgres    false    240   �|       �          0    16399    roles 
   TABLE DATA           +   COPY public.roles (id, nombre) FROM stdin;
    public               postgres    false    220   �|       �          0    16492    tipodocumento 
   TABLE DATA           3   COPY public.tipodocumento (id, nombre) FROM stdin;
    public               postgres    false    242   �|       �          0    16390    usuario 
   TABLE DATA           �   COPY public.usuario (id, nombre, numero_documento, telefono, correo, contrasena, is_active, is_staff, id_tipodocumento, id_empresa, id_permisosxroles, id_otp_code) FROM stdin;
    public               postgres    false    218   Z}       �           0    0    activo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.activo_id_seq', 1, false);
          public               postgres    false    225            �           0    0    confidencialidad_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.confidencialidad_id_seq', 1, false);
          public               postgres    false    229            �           0    0    criticidad_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.criticidad_id_seq', 1, false);
          public               postgres    false    235            �           0    0    disponibilidad_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.disponibilidad_id_seq', 1, false);
          public               postgres    false    233            �           0    0    empresa_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.empresa_id_seq', 1, false);
          public               postgres    false    223            �           0    0    estadoxactivo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.estadoxactivo_id_seq', 1, false);
          public               postgres    false    237            �           0    0    integridad_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.integridad_id_seq', 1, false);
          public               postgres    false    231            �           0    0    otp_code_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.otp_code_id_seq', 1, false);
          public               postgres    false    227            �           0    0    permisos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.permisos_id_seq', 1, false);
          public               postgres    false    221            �           0    0    permisosxroles_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.permisosxroles_id_seq', 1, false);
          public               postgres    false    239            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public               postgres    false    219            �           0    0    tipodocumento_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tipodocumento_id_seq', 7, true);
          public               postgres    false    241            �           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 2, true);
          public               postgres    false    217            �           2606    16433    activo pk_id_activo 
   CONSTRAINT     Q   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT pk_id_activo PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.activo DROP CONSTRAINT pk_id_activo;
       public                 postgres    false    226            �           2606    16449 '   confidencialidad pk_id_confidencialidad 
   CONSTRAINT     e   ALTER TABLE ONLY public.confidencialidad
    ADD CONSTRAINT pk_id_confidencialidad PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.confidencialidad DROP CONSTRAINT pk_id_confidencialidad;
       public                 postgres    false    230            �           2606    16476    criticidad pk_id_criticidad 
   CONSTRAINT     Y   ALTER TABLE ONLY public.criticidad
    ADD CONSTRAINT pk_id_criticidad PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.criticidad DROP CONSTRAINT pk_id_criticidad;
       public                 postgres    false    236            �           2606    16467 #   disponibilidad pk_id_disponibilidad 
   CONSTRAINT     a   ALTER TABLE ONLY public.disponibilidad
    ADD CONSTRAINT pk_id_disponibilidad PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.disponibilidad DROP CONSTRAINT pk_id_disponibilidad;
       public                 postgres    false    234            �           2606    16424    empresa pk_id_empresa 
   CONSTRAINT     S   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT pk_id_empresa PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.empresa DROP CONSTRAINT pk_id_empresa;
       public                 postgres    false    224            �           2606    16483 !   estadoxactivo pk_id_estadoxactivo 
   CONSTRAINT     _   ALTER TABLE ONLY public.estadoxactivo
    ADD CONSTRAINT pk_id_estadoxactivo PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.estadoxactivo DROP CONSTRAINT pk_id_estadoxactivo;
       public                 postgres    false    238            �           2606    16458    integridad pk_id_integridad 
   CONSTRAINT     Y   ALTER TABLE ONLY public.integridad
    ADD CONSTRAINT pk_id_integridad PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.integridad DROP CONSTRAINT pk_id_integridad;
       public                 postgres    false    232            �           2606    16440    otp_code pk_id_otp_code 
   CONSTRAINT     U   ALTER TABLE ONLY public.otp_code
    ADD CONSTRAINT pk_id_otp_code PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.otp_code DROP CONSTRAINT pk_id_otp_code;
       public                 postgres    false    228            �           2606    16415    permisos pk_id_permisos 
   CONSTRAINT     U   ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT pk_id_permisos PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.permisos DROP CONSTRAINT pk_id_permisos;
       public                 postgres    false    222            �           2606    16490 #   permisosxroles pk_id_permisosxroles 
   CONSTRAINT     a   ALTER TABLE ONLY public.permisosxroles
    ADD CONSTRAINT pk_id_permisosxroles PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.permisosxroles DROP CONSTRAINT pk_id_permisosxroles;
       public                 postgres    false    240            �           2606    16406    roles pk_id_rol 
   CONSTRAINT     M   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT pk_id_rol PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.roles DROP CONSTRAINT pk_id_rol;
       public                 postgres    false    220            �           2606    16499 !   tipodocumento pk_id_tipodocumento 
   CONSTRAINT     _   ALTER TABLE ONLY public.tipodocumento
    ADD CONSTRAINT pk_id_tipodocumento PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.tipodocumento DROP CONSTRAINT pk_id_tipodocumento;
       public                 postgres    false    242            �           2606    16397    usuario pk_id_usuario 
   CONSTRAINT     S   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_id_usuario PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.usuario DROP CONSTRAINT pk_id_usuario;
       public                 postgres    false    218            �           2606    16525    estadoxactivo fk_id_activo    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadoxactivo
    ADD CONSTRAINT fk_id_activo FOREIGN KEY (id_activo) REFERENCES public.activo(id) NOT VALID;
 D   ALTER TABLE ONLY public.estadoxactivo DROP CONSTRAINT fk_id_activo;
       public               postgres    false    238    226    4824            �           2606    16530 $   estadoxactivo fk_id_confidencialidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadoxactivo
    ADD CONSTRAINT fk_id_confidencialidad FOREIGN KEY (id_confidencialidad) REFERENCES public.confidencialidad(id) NOT VALID;
 N   ALTER TABLE ONLY public.estadoxactivo DROP CONSTRAINT fk_id_confidencialidad;
       public               postgres    false    230    4828    238            �           2606    16545    estadoxactivo fk_id_criticidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadoxactivo
    ADD CONSTRAINT fk_id_criticidad FOREIGN KEY (id_criticidad) REFERENCES public.criticidad(id) NOT VALID;
 H   ALTER TABLE ONLY public.estadoxactivo DROP CONSTRAINT fk_id_criticidad;
       public               postgres    false    236    4834    238            �           2606    16540 "   estadoxactivo fk_id_disponibilidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadoxactivo
    ADD CONSTRAINT fk_id_disponibilidad FOREIGN KEY (id_disponibilidad) REFERENCES public.disponibilidad(id) NOT VALID;
 L   ALTER TABLE ONLY public.estadoxactivo DROP CONSTRAINT fk_id_disponibilidad;
       public               postgres    false    234    238    4832            �           2606    16505    usuario fk_id_empresa    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_id_empresa FOREIGN KEY (id_empresa) REFERENCES public.empresa(id) NOT VALID;
 ?   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_id_empresa;
       public               postgres    false    4822    218    224            �           2606    16520    activo fk_id_estadoxactivo    FK CONSTRAINT     �   ALTER TABLE ONLY public.activo
    ADD CONSTRAINT fk_id_estadoxactivo FOREIGN KEY (id_estadoxactivo) REFERENCES public.estadoxactivo(id) NOT VALID;
 D   ALTER TABLE ONLY public.activo DROP CONSTRAINT fk_id_estadoxactivo;
       public               postgres    false    226    4836    238            �           2606    16535    estadoxactivo fk_id_integridad    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadoxactivo
    ADD CONSTRAINT fk_id_integridad FOREIGN KEY (id_integridad) REFERENCES public.integridad(id) NOT VALID;
 H   ALTER TABLE ONLY public.estadoxactivo DROP CONSTRAINT fk_id_integridad;
       public               postgres    false    232    238    4830            �           2606    16515    usuario fk_id_otp_code    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_id_otp_code FOREIGN KEY (id_otp_code) REFERENCES public.otp_code(id) NOT VALID;
 @   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_id_otp_code;
       public               postgres    false    218    228    4826            �           2606    16555    permisosxroles fk_id_permisos    FK CONSTRAINT     �   ALTER TABLE ONLY public.permisosxroles
    ADD CONSTRAINT fk_id_permisos FOREIGN KEY (id_permisos) REFERENCES public.permisos(id) NOT VALID;
 G   ALTER TABLE ONLY public.permisosxroles DROP CONSTRAINT fk_id_permisos;
       public               postgres    false    222    4820    240            �           2606    16510    usuario fk_id_permisosxroles    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_id_permisosxroles FOREIGN KEY (id_permisosxroles) REFERENCES public.permisosxroles(id) NOT VALID;
 F   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_id_permisosxroles;
       public               postgres    false    218    4838    240            �           2606    16550    permisosxroles fk_id_roles    FK CONSTRAINT     �   ALTER TABLE ONLY public.permisosxroles
    ADD CONSTRAINT fk_id_roles FOREIGN KEY (id_roles) REFERENCES public.roles(id) NOT VALID;
 D   ALTER TABLE ONLY public.permisosxroles DROP CONSTRAINT fk_id_roles;
       public               postgres    false    4818    220    240            �           2606    16500    usuario fk_id_tipodocumento    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_id_tipodocumento FOREIGN KEY (id_tipodocumento) REFERENCES public.tipodocumento(id) NOT VALID;
 E   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_id_tipodocumento;
       public               postgres    false    4840    242    218            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�M�;�0D��S�H��H��(%͊]����ĕ(8E.�ME9�f���͋'��]����!��H6I���%d-�������$V�)�-�ҍx�A�b~��3�bMѵi������Q�P2^7��D�2�      �      x������ � �     