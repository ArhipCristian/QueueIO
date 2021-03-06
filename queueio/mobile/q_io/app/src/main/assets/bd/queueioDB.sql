PGDMP                      
    x         	   queueioDB    12.4    13.1 B    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    24849 	   queueioDB    DATABASE     g   CREATE DATABASE "queueioDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE "queueioDB";
                postgres    false            ?            1259    24863    commerce    TABLE     ?   CREATE TABLE public.commerce (
    id bigint NOT NULL,
    nom character varying,
    adresse character varying,
    courriel character varying,
    mot_passe character varying,
    id_commerce_config bigint
);
    DROP TABLE public.commerce;
       public         heap    postgres    false            ?            1259    24852    commerce_config    TABLE       CREATE TABLE public.commerce_config (
    id bigint NOT NULL,
    filtre_id bigint,
    statistique_id bigint,
    logo character varying,
    couleur_id bigint,
    horaire_id bigint,
    nb_minutes_retard bigint,
    nb_clients_max bigint,
    temps_moyen_clients bigint
);
 #   DROP TABLE public.commerce_config;
       public         heap    postgres    false            ?            1259    24850    commerce_config_id_seq    SEQUENCE        CREATE SEQUENCE public.commerce_config_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.commerce_config_id_seq;
       public          postgres    false    203            a           0    0    commerce_config_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.commerce_config_id_seq OWNED BY public.commerce_config.id;
          public          postgres    false    202            ?            1259    24861    commerce_id_seq    SEQUENCE     x   CREATE SEQUENCE public.commerce_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.commerce_id_seq;
       public          postgres    false    205            b           0    0    commerce_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.commerce_id_seq OWNED BY public.commerce.id;
          public          postgres    false    204            ?            1259    24926    couleur    TABLE     w   CREATE TABLE public.couleur (
    id bigint NOT NULL,
    nom_couleur character varying,
    code character varying
);
    DROP TABLE public.couleur;
       public         heap    postgres    false            ?            1259    24924    couleur_id_seq    SEQUENCE     w   CREATE SEQUENCE public.couleur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.couleur_id_seq;
       public          postgres    false    209            c           0    0    couleur_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.couleur_id_seq OWNED BY public.couleur.id;
          public          postgres    false    208            ?            1259    24879    employee    TABLE     ?   CREATE TABLE public.employee (
    id bigint NOT NULL,
    nom character varying,
    courriel character varying,
    mot_passe character varying,
    id_commerce bigint
);
    DROP TABLE public.employee;
       public         heap    postgres    false            ?            1259    24877    employee_id_seq    SEQUENCE     x   CREATE SEQUENCE public.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.employee_id_seq;
       public          postgres    false    207            d           0    0    employee_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;
          public          postgres    false    206            ?            1259    24965    filtre    TABLE     Y   CREATE TABLE public.filtre (
    id bigint NOT NULL,
    nom_filtre character varying
);
    DROP TABLE public.filtre;
       public         heap    postgres    false            ?            1259    24963    filtre_id_seq    SEQUENCE     v   CREATE SEQUENCE public.filtre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.filtre_id_seq;
       public          postgres    false    217            e           0    0    filtre_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.filtre_id_seq OWNED BY public.filtre.id;
          public          postgres    false    216            ?            1259    24937    horaire    TABLE     ?   CREATE TABLE public.horaire (
    id bigint NOT NULL,
    ouverture_semaine integer,
    fermeture_semaine integer,
    ouverture_weekend integer,
    fermeture_weekend integer
);
    DROP TABLE public.horaire;
       public         heap    postgres    false            ?            1259    24935    horaire_id_seq    SEQUENCE     w   CREATE SEQUENCE public.horaire_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.horaire_id_seq;
       public          postgres    false    211            f           0    0    horaire_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.horaire_id_seq OWNED BY public.horaire.id;
          public          postgres    false    210            ?            1259    24953    services    TABLE        CREATE TABLE public.services (
    id bigint NOT NULL,
    nom_service character varying,
    duree_aprox character varying
);
    DROP TABLE public.services;
       public         heap    postgres    false            ?            1259    24951    services_id_seq    SEQUENCE     x   CREATE SEQUENCE public.services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.services_id_seq;
       public          postgres    false    215            g           0    0    services_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;
          public          postgres    false    214            ?            1259    24945    statistique    TABLE     ?   CREATE TABLE public.statistique (
    id bigint NOT NULL,
    nb_client_jour bigint,
    nb_client_mois bigint,
    nb_client_annee bigint,
    temp_moyen_attendre bigint,
    temp_moyen_client_commerce bigint
);
    DROP TABLE public.statistique;
       public         heap    postgres    false            ?            1259    24943    statistique_id_seq    SEQUENCE     {   CREATE SEQUENCE public.statistique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.statistique_id_seq;
       public          postgres    false    213            h           0    0    statistique_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.statistique_id_seq OWNED BY public.statistique.id;
          public          postgres    false    212            ?
           2604    24866    commerce id    DEFAULT     j   ALTER TABLE ONLY public.commerce ALTER COLUMN id SET DEFAULT nextval('public.commerce_id_seq'::regclass);
 :   ALTER TABLE public.commerce ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            ?
           2604    24855    commerce_config id    DEFAULT     x   ALTER TABLE ONLY public.commerce_config ALTER COLUMN id SET DEFAULT nextval('public.commerce_config_id_seq'::regclass);
 A   ALTER TABLE public.commerce_config ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?
           2604    24929 
   couleur id    DEFAULT     h   ALTER TABLE ONLY public.couleur ALTER COLUMN id SET DEFAULT nextval('public.couleur_id_seq'::regclass);
 9   ALTER TABLE public.couleur ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ?
           2604    24882    employee id    DEFAULT     j   ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);
 :   ALTER TABLE public.employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            ?
           2604    24968 	   filtre id    DEFAULT     f   ALTER TABLE ONLY public.filtre ALTER COLUMN id SET DEFAULT nextval('public.filtre_id_seq'::regclass);
 8   ALTER TABLE public.filtre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            ?
           2604    24940 
   horaire id    DEFAULT     h   ALTER TABLE ONLY public.horaire ALTER COLUMN id SET DEFAULT nextval('public.horaire_id_seq'::regclass);
 9   ALTER TABLE public.horaire ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ?
           2604    24956    services id    DEFAULT     j   ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);
 :   ALTER TABLE public.services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?
           2604    24948    statistique id    DEFAULT     p   ALTER TABLE ONLY public.statistique ALTER COLUMN id SET DEFAULT nextval('public.statistique_id_seq'::regclass);
 =   ALTER TABLE public.statistique ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            N          0    24863    commerce 
   TABLE DATA           ]   COPY public.commerce (id, nom, adresse, courriel, mot_passe, id_commerce_config) FROM stdin;
    public          postgres    false    205   ?H       L          0    24852    commerce_config 
   TABLE DATA           ?   COPY public.commerce_config (id, filtre_id, statistique_id, logo, couleur_id, horaire_id, nb_minutes_retard, nb_clients_max, temps_moyen_clients) FROM stdin;
    public          postgres    false    203   WI       R          0    24926    couleur 
   TABLE DATA           8   COPY public.couleur (id, nom_couleur, code) FROM stdin;
    public          postgres    false    209   ?I       P          0    24879    employee 
   TABLE DATA           M   COPY public.employee (id, nom, courriel, mot_passe, id_commerce) FROM stdin;
    public          postgres    false    207   ?I       Z          0    24965    filtre 
   TABLE DATA           0   COPY public.filtre (id, nom_filtre) FROM stdin;
    public          postgres    false    217   J       T          0    24937    horaire 
   TABLE DATA           q   COPY public.horaire (id, ouverture_semaine, fermeture_semaine, ouverture_weekend, fermeture_weekend) FROM stdin;
    public          postgres    false    211   HJ       X          0    24953    services 
   TABLE DATA           @   COPY public.services (id, nom_service, duree_aprox) FROM stdin;
    public          postgres    false    215   qJ       V          0    24945    statistique 
   TABLE DATA           ?   COPY public.statistique (id, nb_client_jour, nb_client_mois, nb_client_annee, temp_moyen_attendre, temp_moyen_client_commerce) FROM stdin;
    public          postgres    false    213   ?J       i           0    0    commerce_config_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.commerce_config_id_seq', 1, true);
          public          postgres    false    202            j           0    0    commerce_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.commerce_id_seq', 2, true);
          public          postgres    false    204            k           0    0    couleur_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.couleur_id_seq', 2, true);
          public          postgres    false    208            l           0    0    employee_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.employee_id_seq', 2, true);
          public          postgres    false    206            m           0    0    filtre_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.filtre_id_seq', 3, true);
          public          postgres    false    216            n           0    0    horaire_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.horaire_id_seq', 1, true);
          public          postgres    false    210            o           0    0    services_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.services_id_seq', 1, true);
          public          postgres    false    214            p           0    0    statistique_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.statistique_id_seq', 1, true);
          public          postgres    false    212            ?
           2606    24860 $   commerce_config commerce_config_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.commerce_config
    ADD CONSTRAINT commerce_config_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.commerce_config DROP CONSTRAINT commerce_config_pkey;
       public            postgres    false    203            ?
           2606    24871    commerce commerce_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.commerce
    ADD CONSTRAINT commerce_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.commerce DROP CONSTRAINT commerce_pkey;
       public            postgres    false    205            ?
           2606    24934    couleur couleur_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.couleur
    ADD CONSTRAINT couleur_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.couleur DROP CONSTRAINT couleur_pkey;
       public            postgres    false    209            ?
           2606    24887    employee employee_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    207            ?
           2606    24973    filtre filtre_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.filtre
    ADD CONSTRAINT filtre_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.filtre DROP CONSTRAINT filtre_pkey;
       public            postgres    false    217            ?
           2606    24942    horaire horaire_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.horaire
    ADD CONSTRAINT horaire_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.horaire DROP CONSTRAINT horaire_pkey;
       public            postgres    false    211            ?
           2606    24961    services services_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
       public            postgres    false    215            ?
           2606    24950    statistique statistique_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.statistique
    ADD CONSTRAINT statistique_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.statistique DROP CONSTRAINT statistique_pkey;
       public            postgres    false    213            ?
           2606    24984    commerce_config couleur_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.commerce_config
    ADD CONSTRAINT couleur_id FOREIGN KEY (couleur_id) REFERENCES public.couleur(id) NOT VALID;
 D   ALTER TABLE ONLY public.commerce_config DROP CONSTRAINT couleur_id;
       public          postgres    false    209    203    2750            ?
           2606    24974    commerce_config filtre_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.commerce_config
    ADD CONSTRAINT filtre_id FOREIGN KEY (filtre_id) REFERENCES public.filtre(id) NOT VALID;
 C   ALTER TABLE ONLY public.commerce_config DROP CONSTRAINT filtre_id;
       public          postgres    false    217    203    2758            ?
           2606    24989    commerce_config horaire_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.commerce_config
    ADD CONSTRAINT horaire_id FOREIGN KEY (horaire_id) REFERENCES public.horaire(id) NOT VALID;
 D   ALTER TABLE ONLY public.commerce_config DROP CONSTRAINT horaire_id;
       public          postgres    false    2752    211    203            ?
           2606    24919    employee id_commerce    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT id_commerce FOREIGN KEY (id_commerce) REFERENCES public.commerce(id) NOT VALID;
 >   ALTER TABLE ONLY public.employee DROP CONSTRAINT id_commerce;
       public          postgres    false    207    205    2746            ?
           2606    24900    commerce id_commerce_config    FK CONSTRAINT     ?   ALTER TABLE ONLY public.commerce
    ADD CONSTRAINT id_commerce_config FOREIGN KEY (id_commerce_config) REFERENCES public.commerce_config(id);
 E   ALTER TABLE ONLY public.commerce DROP CONSTRAINT id_commerce_config;
       public          postgres    false    2744    203    205            ?
           2606    24979    commerce_config statistique_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.commerce_config
    ADD CONSTRAINT statistique_id FOREIGN KEY (statistique_id) REFERENCES public.statistique(id) NOT VALID;
 H   ALTER TABLE ONLY public.commerce_config DROP CONSTRAINT statistique_id;
       public          postgres    false    2754    213    203            N   [   x?3??tw?4552Up>??$U!813?D??4Y!(EG?7???(51GG!?45)5Y??8B??ٌ33=?!713G/9???????ԌӐ+F??? ?t      L   #   x?3?4BOwG???t0?Ȁ?Ҁ?؀+F??? _lZ      R   ,   x?3?,?/MO?Tv6700??2?,K-*?T64s4?0?????? ?n?      P   0   x?3?,??,,M?L?-?ɯLu?M???K???4153???4?????? rd      Z   2   x?3?,.-H-?M,J?H?2?,?Hr?3S??9?R?KK??J?b???? O(
      T      x?3???42???42?????? nB      X      x?3?,??,,M?42?????? *??      V       x?3?440?46 f?`??W? I??     