PGDMP     (                    z           Music_Tour_API    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16883    Music_Tour_API    DATABASE     t   CREATE DATABASE "Music_Tour_API" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
     DROP DATABASE "Music_Tour_API";
                postgres    false            �            1259    16977    bands    TABLE     F   CREATE TABLE public.bands (
    band_id character varying NOT NULL
);
    DROP TABLE public.bands;
       public         heap    postgres    false            �            1259    16970    events    TABLE     H   CREATE TABLE public.events (
    event_id character varying NOT NULL
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    16991    meet_greets    TABLE     y   CREATE TABLE public.meet_greets (
    meet_greet_id character varying NOT NULL
)
INHERITS (public.events, public.bands);
    DROP TABLE public.meet_greets;
       public         heap    postgres    false    210    209            �            1259    16984    stages    TABLE     H   CREATE TABLE public.stages (
    stage_id character varying NOT NULL
);
    DROP TABLE public.stages;
       public         heap    postgres    false            �            1259    16999 	   set_times    TABLE     l   CREATE TABLE public.set_times (
    set_time_id integer NOT NULL
)
INHERITS (public.events, public.stages);
    DROP TABLE public.set_times;
       public         heap    postgres    false    209    211            �            1259    16998    set_times_set_time_id_seq    SEQUENCE     �   CREATE SEQUENCE public.set_times_set_time_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.set_times_set_time_id_seq;
       public          postgres    false    214                       0    0    set_times_set_time_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.set_times_set_time_id_seq OWNED BY public.set_times.set_time_id;
          public          postgres    false    213            �            1259    17014    stages_events    TABLE     }   CREATE TABLE public.stages_events (
    stage_event_id character varying NOT NULL
)
INHERITS (public.stages, public.events);
 !   DROP TABLE public.stages_events;
       public         heap    postgres    false    209    211            p           2604    17021    set_times set_time_id    DEFAULT     ~   ALTER TABLE ONLY public.set_times ALTER COLUMN set_time_id SET DEFAULT nextval('public.set_times_set_time_id_seq'::regclass);
 D   ALTER TABLE public.set_times ALTER COLUMN set_time_id DROP DEFAULT;
       public          postgres    false    213    214    214            	          0    16977    bands 
   TABLE DATA           (   COPY public.bands (band_id) FROM stdin;
    public          postgres    false    210   '                 0    16970    events 
   TABLE DATA           *   COPY public.events (event_id) FROM stdin;
    public          postgres    false    209   l                 0    16991    meet_greets 
   TABLE DATA           G   COPY public.meet_greets (event_id, band_id, meet_greet_id) FROM stdin;
    public          postgres    false    212   �                 0    16999 	   set_times 
   TABLE DATA           D   COPY public.set_times (event_id, stage_id, set_time_id) FROM stdin;
    public          postgres    false    214   �       
          0    16984    stages 
   TABLE DATA           *   COPY public.stages (stage_id) FROM stdin;
    public          postgres    false    211   
                 0    17014    stages_events 
   TABLE DATA           K   COPY public.stages_events (stage_id, event_id, stage_event_id) FROM stdin;
    public          postgres    false    215   1                  0    0    set_times_set_time_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.set_times_set_time_id_seq', 1, false);
          public          postgres    false    213            t           2606    16983    bands bands_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.bands
    ADD CONSTRAINT bands_pkey PRIMARY KEY (band_id);
 :   ALTER TABLE ONLY public.bands DROP CONSTRAINT bands_pkey;
       public            postgres    false    210            r           2606    16976    events events_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (event_id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    209            x           2606    16997    meet_greets meet_greets_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.meet_greets
    ADD CONSTRAINT meet_greets_pkey PRIMARY KEY (meet_greet_id);
 F   ALTER TABLE ONLY public.meet_greets DROP CONSTRAINT meet_greets_pkey;
       public            postgres    false    212            z           2606    17006    set_times set_times_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.set_times
    ADD CONSTRAINT set_times_pkey PRIMARY KEY (set_time_id);
 B   ALTER TABLE ONLY public.set_times DROP CONSTRAINT set_times_pkey;
       public            postgres    false    214            |           2606    17020     stages_events stages_events_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.stages_events
    ADD CONSTRAINT stages_events_pkey PRIMARY KEY (stage_event_id);
 J   ALTER TABLE ONLY public.stages_events DROP CONSTRAINT stages_events_pkey;
       public            postgres    false    215            v           2606    16990    stages stages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.stages
    ADD CONSTRAINT stages_pkey PRIMARY KEY (stage_id);
 <   ALTER TABLE ONLY public.stages DROP CONSTRAINT stages_pkey;
       public            postgres    false    211            	   5   x�s�,KUp��KO-RpIM,�P(�K��
�HU�(��MMOtI-������� \I�            x�vT�/-����� Hf         K   x�vT�/-�t�,KUp��KO-RpIM,�P(�K����M-� �s��d�*x�r:��d U�x�dc���� �            x������ � �      
      x��sVp,J�K����� !��            x������ � �     