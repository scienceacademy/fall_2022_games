GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      &�y���ڞu;>��.p   res://GameoverScreen.tscn   �            �h|�;��)I㸼��   res://GoalArea.gd.remap �)      #       ny�q�9���Y:DV7�   res://GoalArea.gdc  �      �      ��8�ss��7/��"   res://GoalArea.tscn �      1      4Koa^��'���O|   res://Main.gd.remap �)             �(@Er�#��K�F�[   res://Main.gdc  �	            Dk�̌Dl�[�saR9�   res://Main.tscn       �      �ϸ�T�6���f2��   res://PlayerDemo.gd.remap    *      %       f똦ǐ|����IE�   res://PlayerDemo.gdc�      �      5�� ,1���뙹)   res://PlayerDemo.tscn   �            �1��ן��|���.Kb;   res://StaticBody2D.tscn �      {      ���yk�:��l�x�xR�   res://default_env.tres         �       um�`�N��<*ỳ�8   res://icon.png  `*      �      G1?��z�c��vN��   res://icon.png.import   �!      �      ��fe��6�B��^ U�   res://platform.gd.remap 0*      #       4����H���邧��   res://platform.gdc  `$      �      8m�)�Ͼ �7�C�i��   res://platform.tscn  '      �      l��[&c����M%   res://project.binaryP7      �      F�$�*����k��            [gd_scene format=2]

[node name="Node2D" type="Node2D"]

[node name="Label" type="Label" parent="."]
margin_left = 8.0
margin_top = 68.0
margin_right = 462.0
margin_bottom = 494.0
rect_scale = Vector2( 5, 5 )
text = "This is the game over screen. You died I guess.
"
     GDSC            3      ���ׄ�   �����϶�   �������ׄ�������������Ҷ   ���϶���   ���Ӷ���   �������Ӷ���   �����������Ӷ���   
   PlayerDemo     !   res://path/to/GameoverScreen.tscn                                                    	   	   
   
                                                                (      1      3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  P�  QV�  &�  T�  V�  �  PQT�  P�  QY`    [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://GoalArea.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 145, 83.5 )

[node name="Area2D" type="Area2D"]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -1, -0.5 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( -9.53674e-06, 0.5 )
scale = Vector2( 4.28125, 2.17188 )
texture = ExtResource( 1 )
               GDSC                   ���Ӷ���   ���������������۶���   �����϶�                                	      
                     	      
                                                               3YY;�  YYYYYYY0�  PQV�  -YYYYYYYYY`       [gd_scene load_steps=6 format=2]

[ext_resource path="res://Main.gd" type="Script" id=1]
[ext_resource path="res://platform.tscn" type="PackedScene" id=2]
[ext_resource path="res://PlayerDemo.tscn" type="PackedScene" id=3]
[ext_resource path="res://GoalArea.tscn" type="PackedScene" id=4]

[sub_resource type="BitmapFont" id=1]

[node name="Main" type="Node"]
script = ExtResource( 1 )

[node name="PlayerDemo" parent="." instance=ExtResource( 3 )]
position = Vector2( 451, 609 )

[node name="ProgressBar" type="ProgressBar" parent="."]
margin_left = 8.0
margin_top = 9.0
margin_right = 236.0
margin_bottom = 23.0
grow_horizontal = 0
grow_vertical = 0
custom_fonts/font = SubResource( 1 )
step = 1.0
percent_visible = false

[node name="StaticBody2D" parent="." instance=ExtResource( 2 )]
position = Vector2( 450, 724 )

[node name="Area2D" parent="." instance=ExtResource( 4 )]
position = Vector2( 1253, 165 )

[node name="StaticBody2D2" parent="." instance=ExtResource( 2 )]
position = Vector2( 125, 122 )

[connection signal="input_event" from="PlayerDemo" to="PlayerDemo" method="_on_PlayerDemo_input_event"]
[connection signal="body_entered" from="Area2D" to="Area2D" method="_on_Area2D_body_entered"]
         GDSC   "      -   0     ������������τ�   �������϶���   ��������   ����Ҷ��   ���������Ҷ�   ������϶   ���������������Ŷ���   ����׶��   ߶��   �������Ӷ���   �����������������ƶ�   �������ض���   �����޶�   �����Ӷ�   ���������Ҷ�   �������������Ӷ�   �涶   ��������������¶   ��������ض��   ������������������ض   ���ׄ�   �����������Ӷ���   ����¶��   ���������������������Ҷ�   �����Ӷ�   ���������Ӷ�   ����������������������Ҷ   �������Ӷ���   ����Ӷ��   ���������������¶���   ����¶��   ����������������Ҷ��   ���������������۶���   �����������������������ض���   ,     	   platforms      �      ʚ;              �|гY�!@   !   res://path/to/GameoverScreen.tscn      	   ui_select     �������?            /root/Main/ProgressBar     
         Click      
   /root/Main               click     �������?                         
                              $   	   %   
   +      8      H      w      x      y            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &     '     (     )     *     +   %  ,   .  -   3YY;�  �  T�  Y;�  Y;�  Y;�  �  T�  YY0�  P�  QV�  �  �  �  T�  �  )�  �	  PQT�
  P�  QV�  &P�  T�  �  QT�  PQ	�  V�  �  �  T�  P�  P�  T�  �  QT�  PQQP�  PP�  T�  �  QT�  PQR�  Q�  Z�  Q�  �  �  �  �  �  �  �  �  �  �  P�  R�  T�  Q�  �  )�  �  PQV�  ;�  �  P�  Q�  &�  4�  V�  �	  PQT�  P�  Q�  �?  P�  Q�  �  �  �  &�  T�  P�  QV�  �  T�  �	  �  &�  T�  P�  QV�  �  T�  �
  �  �  �  P�  QT�  �  T�  PQ�  YY0�  P�  QV�  &�  T�  P�  Q�  P�  QT�   �  V�  �?  P�  Q�  �  �  P�  T�  PQ�  Q�!  PQT�  PQ�  �  �  �  '�  P�  QT�   �  V�  �  P�  QT�   �  Y`        [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://PlayerDemo.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 29, 30 )

[node name="PlayerDemo" type="KinematicBody2D"]
position = Vector2( 233, 120 )
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
           [gd_scene load_steps=3 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 45.0

[node name="StaticBody2D" type="StaticBody2D"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
rotation = 1.5708
texture = ExtResource( 1 )
     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC            Q      ���������τ򶶶�   �����Ӷ�   �����϶�    �������������τ������������¶���   �������¶���   ����¶��   ��������ζ��   ��������������������ض��   �����������ζ���   �����������   ������Ҷ   ���Ӷ���   �����Ӷ�   �������Ӷ���   ���������������۶���             clicked   
   /root/Main                                 	      
                     	      
               !      '      3      :      ?      D      M      O      3YYY;�  YYYY0�  PQV�  -YYY0�  P�  R�  R�  QV�  &�  4�  V�  &�  T�  �	  �  T�
  V�  �?  P�  R�  Q�  �  �  �  PZQ�  �  P�  QT�  �  �  -Y` [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://platform.gd" type="Script" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 66.0076

[node name="StaticBody2D" type="StaticBody2D" groups=["Platforms", "platforms"]]
input_pickable = true
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 1, 1 )
scale = Vector2( 1.64063, 1.48047 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, 1 )
shape = SubResource( 1 )

[connection signal="input_event" from="." to="." method="_on_StaticBody2D_input_event"]
    [remap]

path="res://GoalArea.gdc"
             [remap]

path="res://Main.gdc"
 [remap]

path="res://PlayerDemo.gdc"
           [remap]

path="res://platform.gdc"
             �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      application/config/name         physics example    application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width      `	     display/window/size/height      `	     display/window/size/fullscreen         +   gui/common/drop_mouse_on_gui_input_disabled            input/Click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres     