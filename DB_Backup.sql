PGDMP     5    :    
            {         	   busreserv    15.2    15.2 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16493 	   busreserv    DATABASE     |   CREATE DATABASE busreserv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE busreserv;
                postgres    false            �            1259    16499    booking    TABLE     t   CREATE TABLE public.booking (
    passenger_name character varying(30),
    bus_no integer,
    travel_date date
);
    DROP TABLE public.booking;
       public         heap    postgres    false            �            1259    16494    bus    TABLE     [   CREATE TABLE public.bus (
    id integer NOT NULL,
    ac boolean,
    capacity integer
);
    DROP TABLE public.bus;
       public         heap    postgres    false            �          0    16499    booking 
   TABLE DATA           F   COPY public.booking (passenger_name, bus_no, travel_date) FROM stdin;
    public          postgres    false    215   �       �          0    16494    bus 
   TABLE DATA           /   COPY public.bus (id, ac, capacity) FROM stdin;
    public          postgres    false    214   3       i           2606    16498    bus bus_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.bus
    ADD CONSTRAINT bus_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.bus DROP CONSTRAINT bus_pkey;
       public            postgres    false    214            �   ?   x�s�H�+J��4�4200�5��54�r/��N�����KsP�\����r��qqq ��P      �      x�3�,�4�2�&\Ɯi�F�\1z\\\ 5��     