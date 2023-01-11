PGDMP         ;        
         {            Myweb    15.1    15.1 !               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    Myweb    DATABASE     �   CREATE DATABASE "Myweb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Myweb";
                postgres    false            �            1259    16441    Article    TABLE     �   CREATE TABLE public."Article" (
    id integer NOT NULL,
    title text,
    acontent text,
    thumbnail character varying(255),
    imagelink character varying(255),
    created_on character varying(255),
    tagid integer
);
    DROP TABLE public."Article";
       public         heap    postgres    false            �            1259    16440    Article_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Article_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Article_id_seq";
       public          postgres    false    217                       0    0    Article_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Article_id_seq" OWNED BY public."Article".id;
          public          postgres    false    216            �            1259    16459 	   myarticle    TABLE     e  CREATE TABLE public.myarticle (
    aid integer NOT NULL,
    title text,
    acontent text,
    thumbnail character varying(255),
    imagelink character varying(255),
    created_on character varying(255),
    tagid integer,
    cid int4range,
    cateid integer,
    countview integer,
    created_time timestamp without time zone,
    userid integer
);
    DROP TABLE public.myarticle;
       public         heap    postgres    false            �            1259    16458    MyArticle_aid_seq    SEQUENCE     �   CREATE SEQUENCE public."MyArticle_aid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."MyArticle_aid_seq";
       public          postgres    false    219                       0    0    MyArticle_aid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MyArticle_aid_seq" OWNED BY public.myarticle.aid;
          public          postgres    false    218            �            1259    16407    cate    TABLE     a   CREATE TABLE public.cate (
    cid integer NOT NULL,
    cname character varying(50) NOT NULL
);
    DROP TABLE public.cate;
       public         heap    postgres    false            �            1259    16406    cate_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cate_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cate_user_id_seq;
       public          postgres    false    215                        0    0    cate_user_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cate_user_id_seq OWNED BY public.cate.cid;
          public          postgres    false    214            �            1259    16468    user_web    TABLE     �   CREATE TABLE public.user_web (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    roleid integer
);
    DROP TABLE public.user_web;
       public         heap    postgres    false            �            1259    16467    user_web_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_web_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.user_web_user_id_seq;
       public          postgres    false    221            !           0    0    user_web_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.user_web_user_id_seq OWNED BY public.user_web.user_id;
          public          postgres    false    220            u           2604    16444 
   Article id    DEFAULT     l   ALTER TABLE ONLY public."Article" ALTER COLUMN id SET DEFAULT nextval('public."Article_id_seq"'::regclass);
 ;   ALTER TABLE public."Article" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            t           2604    16410    cate cid    DEFAULT     h   ALTER TABLE ONLY public.cate ALTER COLUMN cid SET DEFAULT nextval('public.cate_user_id_seq'::regclass);
 7   ALTER TABLE public.cate ALTER COLUMN cid DROP DEFAULT;
       public          postgres    false    215    214    215            v           2604    16462    myarticle aid    DEFAULT     p   ALTER TABLE ONLY public.myarticle ALTER COLUMN aid SET DEFAULT nextval('public."MyArticle_aid_seq"'::regclass);
 <   ALTER TABLE public.myarticle ALTER COLUMN aid DROP DEFAULT;
       public          postgres    false    219    218    219            w           2604    16471    user_web user_id    DEFAULT     t   ALTER TABLE ONLY public.user_web ALTER COLUMN user_id SET DEFAULT nextval('public.user_web_user_id_seq'::regclass);
 ?   ALTER TABLE public.user_web ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    221    220    221                      0    16441    Article 
   TABLE DATA           a   COPY public."Article" (id, title, acontent, thumbnail, imagelink, created_on, tagid) FROM stdin;
    public          postgres    false    217   �#                 0    16407    cate 
   TABLE DATA           *   COPY public.cate (cid, cname) FROM stdin;
    public          postgres    false    215   *                 0    16459 	   myarticle 
   TABLE DATA           �   COPY public.myarticle (aid, title, acontent, thumbnail, imagelink, created_on, tagid, cid, cateid, countview, created_time, userid) FROM stdin;
    public          postgres    false    219   :*                 0    16468    user_web 
   TABLE DATA           G   COPY public.user_web (user_id, username, password, roleid) FROM stdin;
    public          postgres    false    221   71       "           0    0    Article_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Article_id_seq"', 10, true);
          public          postgres    false    216            #           0    0    MyArticle_aid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MyArticle_aid_seq"', 6, true);
          public          postgres    false    218            $           0    0    cate_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cate_user_id_seq', 1, false);
          public          postgres    false    214            %           0    0    user_web_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_web_user_id_seq', 5, true);
          public          postgres    false    220            {           2606    16448    Article Article_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Article"
    ADD CONSTRAINT "Article_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Article" DROP CONSTRAINT "Article_pkey";
       public            postgres    false    217            }           2606    16466    myarticle MyArticle_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.myarticle
    ADD CONSTRAINT "MyArticle_pkey" PRIMARY KEY (aid);
 D   ALTER TABLE ONLY public.myarticle DROP CONSTRAINT "MyArticle_pkey";
       public            postgres    false    219            y           2606    16412    cate cate_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.cate
    ADD CONSTRAINT cate_pkey PRIMARY KEY (cid);
 8   ALTER TABLE ONLY public.cate DROP CONSTRAINT cate_pkey;
       public            postgres    false    215                       2606    16473    user_web user_web_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.user_web
    ADD CONSTRAINT user_web_pkey PRIMARY KEY (user_id);
 @   ALTER TABLE ONLY public.user_web DROP CONSTRAINT user_web_pkey;
       public            postgres    false    221            �           2606    16475    user_web user_web_username_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.user_web
    ADD CONSTRAINT user_web_username_key UNIQUE (username);
 H   ALTER TABLE ONLY public.user_web DROP CONSTRAINT user_web_username_key;
       public            postgres    false    221               H  x��Xَ�6|�|?@P<��=�H��p��)/�;C�:�c �}��MI��l� @�a��쮮�nz_}�Bkԃ�b�WOڷ�Q���19Z�Qv
x���mPvP:��=�ѷV��F<����޶&�i�x��t��j�u�ڨ�g�s�ݠ�iR��p���P����e�pju�{���'6X��ӠU0�꒕ݔv�c�}��`{5�VE�O�?:�m��L���M/��=��b@���������*بt�4)�F�U�'#t�/��	'4�&3t6	�-�2�zc�eNX�A��G�A�F�0P�A���ߌ%�����-��WVVIAҧ�g�f5#"%��rڴA�k<�;�oo3v(�9�69������0�jC��f0�8�:y}��^��鉙e�Z�F��T�<�j�Q:�@I!R����oe�}D-@k V���FXD8E�oz
�Q�qt�k*�m�W����0��^x�?��M����nw�P[�R�Lg(I��ĤS����-�좽�Q@�Џ?�c�Ǒ��4���jS@�Q l��mX\G���ϓ������Ky�Όב!�\J% ɓ0s��GϬ�G�3E�7ƞبpX��j|�����B�	'Շ4�@Ɂu��u�#�гs
8h��EQ�zG��]gu_!���EU"�3GbA,߱����1�A���x�A~�z�&1�fe��/���	
+���C;r|��(~�6�'`<CA�X1ئ�ڨ�Vf�Y��5h#�A����(ى�4�	YK�[2���!��
��S�f�zk�]=��5/��_�Er׻���UK"U!��s�Kͮ��`�έ�@�f��>������N�����J=�8v����<η$���J�!?���#�\���,ɦ��r��0��?���[����Z��Q`*���s��k�!^"�B�<�eq1�D�Cn+\Tk`��8��Dq�����G�r�dG�.[�xdR4�؋7�"d'@<l:/�#��}R��4�\��2�)ߵR^?��/�/j/�9��]W8�!����e3�	���f���)�ܬ1�0>ڋFc�ZK
yK�*����'<��.ŉHB�:o*8�2I��bϳ�>v��L�&����t��,�i#3ʷ0uѡ��L����07���RպD2*md�+O���沯�B�|(�;7��X����C	��Y!��` í��z��� I�L���2�ȸ�a��L�$\�E�绅Xt�[^��!�8>W�j�6w���]��nv��N�0����;�J	�FN9e�!�V��#|�����a�zٿ��sf��o�-���(��<�).ýB��n�1�)�eݿ2��K�bo�vt�R�����(��.T�Q����h�x҇gi�}eb�r�ʙ�+,�$_�Z?����K���T aA���lκ],jecyTV(Ȕ�/�t67���_�>����`��^A�2���n����g�Ϧ��\��g�L?WW��
�6�l����b��y�܆������6m*z�?����fw_}�7�l�٤�� �Ig�ۿ�~=�M=�z6�|f�9���hv�ݟ<�Ӛ            x�3���2������� zn         �  x��YɎ�6=����QZ���fdAăYN��%Nm�Ҁ�>������8�	 �4�T��W�v���m�ģ2���w�Ծ)��ѷ��;%�hq;�i+t/���܊��Z��v�WN��]++��ze���Q�Z�o��J��$�j[���F���?˶�6۵�N����lء�-v�բ��^
��x�	��^v�P��D�j�T7���h���\��Q],����vCK)P�����IX��&E]�?��򤝃��pċ�������Q���6:��f���B�Q���P',K+�����N�B���D�=���7���Sz���7�b������L���0�sFb��Z�$���srd+���!w(�zҵo%*��-��g��᩶~r��I����ȳn���F��,����Jx�'X�z�U���n@�<��?�x�PT�8��F�*�� �p�!��MGn�j���Zڥ-23������\�x��(�C.�mUe�ٻ�����u��_�Q��w���mVm���<�b��Q�k��o�)Z}Tf��	�gi4����nh��:����A!��Q��whj%��킙w�:�<�F��֍�]�] �2�q�8�T&��a����=����"��a؄�D�B�Z��0XG:�,xO�F�x����- y���t�e�T���6�u�H�B<��.z�h�%�DN��H��@7x��:Ӱ����.�A���p��Ab�z@(MQ1��b�=�b�O�_*M,mR��� ��>����c�v��#r<��(�3�`&�Z�_J�Q/��5��A��ѣ�(ى�4m � K؛#�"v�(�"�"r������9�y�g WF>^>�>��>�6�,���E�C�Sϋ�6�}��V�3n:�qj3�1#��U���wI�G��(ˊ�,IZ��ej��k�I��c�"�p�� �P�Y5q��,�d�z�u��1J_f���'�b��� H&)�^"!C�Tg���F��y>����J?B=�t��Op��-4Z����I~��O���ɱ��$�A&����KI�E�>�7�2NCB#�<a�S�K�����Y�w�W�>��"���e�����D�)��@�F�<�j3-Ĉ�BN��c�>K4lBB0�$��¾A�Sr#
�C��H"Y���,��
��&e�4��A�><�Gj�z�mh���8��3�g�ơ�
�]�"F�b����'O�������tҎ�!��B*�zf�Xn�Ik��$9�s2%!P9� �qv�S�h�jT��3��3����b����������6�/y�^rk�p��o�m�)�k�v��n�Z��O]l��T��q{��/r�9!>�w�Nh��[m���f_�~��"k4}ku�%��؄rC1Y�Q?�����}x��n��o�4��"�֥���X��a�|�̒�H>��Hɳ>�Ny8���h�Ո>��C��������|�+��-P�8	sS�
�-�Y�"fp����w�J�C�Ii��������dI���W�f��W��vį�ն���.{�!��Vv��Zٵ$��sv�/�V1����]w�3�M���[+�Vn}�s^p+���W:����&CԦ_9�rl��'�~��x���y�b;���J��X+�>��F��Xe<v��+����f<��[+�Vn}fӪ�?�?�VI�*3���k��_���K��܊��/o��P]�t�۔�Y��/wE�=�w4�n����od�)�         ;   x�3��M���+�442615�4�2���������BF0!#.���B�)T�!���� �f�     