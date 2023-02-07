require "via"

kbd = Keyboard.new

# This should happen before `kbd.init_pins`
kbd.via = true
kbd.via_layer_count = 3
kbd.split = true

kbd.uart_pin = 1

row0 = 28
row1 = 29
row2 = 6
row3 = 7
row4 = 0

col0 = 26
col1 = 2
col2 = 4
col3 = 3

kbd.init_matrix_pins(
  [
    [ [row0, col0], [col0, row0], [row0, col1], [col1, row0], [row0, col2], [col2, row0], [row0, col3], [col3, row0] ],
    [ [row1, col0], [col0, row1], [row1, col1], [col1, row1], [row1, col2], [col2, row1], [row1, col3], [col3, row1] ],
    [ [row2, col0], [col0, row2], [row2, col1], [col1, row2], [row2, col2], [col2, row2], [row2, col3], [col3, row2] ],
    [ [row3, col0], [col0, row3], [row3, col1], [col1, row3], [row3, col2], [col2, row3], [row3, col3], [col3, row3] ],
    [ [row4, col0], [col0, row4], [row4, col1], [col1, row4], [row4, col2], [col2, row4], [row4, col3], [col3, row4] ]
  ]
)






kbd.add_layer :default, %i(
  KC_ESC  KC_1    KC_2    KC_3    KC_4    KC_5    KC_NO   KC_NO        KC_NO    KC_6           KC_7          KC_8           KC_9           KC_0     KC_BSPC KC_DEL
  KC_TAB  KC_Q    KC_W    KC_E    KC_R    KC_T    KC_NO   KC_NO        KC_NO    KC_Y           KC_U          KC_I           KC_O           KC_P     KC_MINS KC_INS
  KC_1    KC_2    KC_A    KC_S    KC_D    KC_F    KC_G    KC_NO        KC_H     KC_J           KC_K          KC_L           KC_SCLN        KC_NO    KC_ENT  KC_HOME
  KC_LSFT KC_NO   KC_Z    KC_X    KC_C    KC_V    KC_B    KC_NO        KC_B     KC_N           KC_M          KC_DOT         KC_COMMA       KC_SLSH  KC_UP   KC_END
  KC_LCTL KC_LGUI KC_LALT L1      KC_NO   KC_SPC  KC_NO   KC_NO        SPC_L2   KC_MHEN        L2            KC_RCTL        KC_NO          KC_LEFT  KC_DOWN KC_RGHT
)
kbd.add_layer :L1, %i(
  KC_GRV  KC_F1   KC_F2   KC_F3   KC_F4   KC_F5   KC_NO   KC_NO       KC_NO    KC_F7           KC_F8         KP_F9          KC_F9          KC_F10   KC_F11  KC_F12
  KC_TAB  KC_EXLM KC_AT   KC_HASH KC_DLR  KC_PERC KC_CIRC KC_NO       KC_ASTER KC_LPRN         KC_RPRN       KC_MINS        KC_8           KC_9     KC_0    KC_PSCREEN
  KC_TAB  KC_LABK KC_LCBR KC_LBRC KC_LPRN KC_QUOT KC_LEFT KC_NO       KC_UP    KC_RIGHT        KC_UNDS       KC_PIPE        KC_8           KC_NO    KC_0    KC_SCEOLLLOCK
  KC_LSFT KC_RABK KC_RCBR KC_RBRC KC_RPRN KC_DQUO KC_TILD KC_NO       KC_COMMA KC_DOT          KC_SLSH       KC_RSFT        KC_8           KC_9     KC_0    KC_NO
  KC_LCTL KC_BSPC KC_DEL  L1      KC_NO   KC_ENT  KC_NO  KC_NO        KC_LEFT  KC_DOWN         KC_UP         KC_RIGHT       KC_NO          KC_9     KC_0    L3
)
kbd.add_layer :L2, %i(
  KC_GRV  KC_F1   KC_F2   KC_F3   KC_F4   KC_F5   KC_NO   KC_NO       KC_NO    KC_KP_EQUAL     KC_KP_SLASH   KC_KP_ASTERISK KC_BSPC        KC_F10   KC_F11  KC_F12
  KC_TAB  KC_EXLM KC_AT   KC_HASH KC_DLR  KC_PERC KC_CIRC KC_NO       KC_ESC   KC_KP_7         KC_KP_8       KC_KP_9        KC_KP_MINUS    KC_9     KC_0    KC_BSPC
  KC_TAB  KC_LABK KC_LCBR KC_LBRC KC_LPRN KC_QUOT KC_LEFT KC_NO       KC_DEL   KC_KP_4         KC_KP_5       KC_KP_6        KC_KP_PLUS     KC_NO    KC_ENT  KC_BSPC
  KC_LSFT KC_RABK KC_RCBR KC_RBRC KC_RPRN KC_DQUO KC_TILD KC_NO       KC_KP_0  KC_KP_1         KC_KP_2       KC_KP_3        KC_KP_ENTER    KC_HOME  KC_UP   KC_END
  KC_LSFT KC_LCTL KC_LALT KC_LGUI KC_NO   KC_SPC  KC_NO   KC_NO       SPC_L2   KC_KP_DOT       KC_KP_COMMA   KC_TAB         KC_NO          KC_LEFT  KC_DOWN KC_RGHT
)
kbd.add_layer :L3, %i(
  BOOTSEL KC_F1   KC_F2   KC_F3   KC_F4   KC_F5   KC_NO   KC_NO       KC_NO    KC_F6           KC_F7         KC_F8          KC_F9          KC_F10   KC_F11  KC_F12
  KC_TAB  KC_EXLM KC_AT   KC_HASH KC_DLR  KC_PERC KC_CIRC KC_NO       KC_ASTER KC_LPRN         KC_RPRN       KC_MINS        KC_8           KC_9     KC_0    KC_BSPC
  KC_TAB  KC_LABK KC_LCBR KC_LBRC KC_LPRN KC_QUOT KC_LEFT KC_NO       KC_UP    KC_RIGHT        KC_UNDS       KC_PIPE        KC_8           KC_NO    KC_0    KC_BSPC
  KC_LSFT KC_RABK KC_RCBR KC_RBRC KC_RPRN KC_DQUO KC_TILD KC_NO       KC_COMMA KC_DOT          KC_SLSH       KC_RSFT        KC_8           KC_9     KC_0    KC_BSPC
  KC_LSFT KC_LCTL KC_LALT L1      KC_NO   KC_SPC  KC_NO   KC_NO       KC_LEFT  KC_DOWN         KC_UP         KC_RIGHT       KC_NO          KC_9     KC_0    L3
)

kbd.define_mode_key :L1,        [ nil,                      :L1,  nil, nil ]
kbd.define_mode_key :L2,        [ nil,                      :L2,  nil, nil ]
kbd.define_mode_key :L3,        [ nil,                      :L3,  nil, nil ]
kbd.define_mode_key :SPC_L2,    [ :KC_SPACE,                :L2,  200, 200 ]
kbd.define_mode_key :BOOTSEL,   [ Proc.new { kbd.bootsel! }, nil, 200, nil ]





rgb = RGB.new(
  27,    # pin number
  0,    # size of underglow pixel
  6,   # size of backlight pixel
  false # 32bit data will be sent to a pixel if true while 24bit if false
)
rgb.effect     = :breath
rgb.speed      = 31  # 1-31  / default: 22
rgb.hue        = 10  # 0-100 / default: 0
rgb.saturation = 100 # 0-100 / default: 100
rgb.value      = 10  # 1-31  / default: 13

kbd.append rgb # `kbd` is an instance of Keyboard class that should be newed in advance


kbd.start!