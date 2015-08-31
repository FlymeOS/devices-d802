.class public interface abstract Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;
.super Ljava/lang/Object;
.source "WbxmlTokenTable.java"


# static fields
.field public static final ATTRIBUTE_START_TABLE_CODEPAGE_0:[Ljava/lang/String;

.field public static final ATTRIBUTE_START_TABLE_CODEPAGE_1:[Ljava/lang/String;

.field public static final ATTRIBUTE_VALUE_TABLE_CODEPAGE_0:[Ljava/lang/String;

.field public static final ATTRIBUTE_VALUE_TABLE_CODEPAGE_1:[Ljava/lang/String;

.field public static final TAG_TABLE_CODEPAGE_0:[Ljava/lang/String;

.field public static final TAG_TABLE_CODEPAGE_1:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 20
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "wap-provisioningdoc"

    aput-object v1, v0, v4

    const-string v1, "characteristic"

    aput-object v1, v0, v5

    const-string v1, "parm"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->TAG_TABLE_CODEPAGE_0:[Ljava/lang/String;

    .line 21
    new-array v0, v7, [Ljava/lang/String;

    aput-object v3, v0, v4

    const-string v1, "characteristic"

    aput-object v1, v0, v5

    const-string v1, "parm"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->TAG_TABLE_CODEPAGE_1:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x57

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "value"

    aput-object v1, v0, v5

    const-string v1, "name=NAME"

    aput-object v1, v0, v6

    const-string v1, "name=NAP-ADDRESS"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "name=NAP-ADDRTYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name=CALLTYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name=VALIDUNTIL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name=AUTHTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name=AUTHNAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "name=AUTHSECRET"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "name=LINGER"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "name=BEARER"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "name=NAPID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "name=COUNTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "name=NETWORK"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "name=INTERNET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "name=PROXY-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "name=PROXY-PROVIDER-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "name=DOMAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "name=PROVURL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "name=PXAUTH-TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "name=PXAUTH-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "name=PXAUTH-PW"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "name=STARTPAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "name=BASAUTH-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "name=BASAUTH-PW"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "name=PUSHENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "name=PXADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "name=PXADDRTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "name=TO-NAPID"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "name=PORTNBR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "name=SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "name=LINKSPEED"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "name=DNLINKSPEED"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "name=LOCAL-ADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "name=LOCAL-ADDRTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "name=CONTEXT-ALLOW"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "name=TRUST"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "name=MASTER"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "name=SID"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "name=SOC"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "name=WSP-VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "name=PHYSICAL-PROXY-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "name=CLIENT-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "name=DELIVERY-ERR-SDU"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "name=DELIVERY-ORDER"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "name=TRAFFIC-CLASS"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "name=MAX-SDU-SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "name=MAX-BITRATE-UPLINK"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "name=MAX-BITRATE-DNLINK"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "name=RESIDUAL-BER"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "name=SDU-ERROR-RATIO"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "name=TRAFFIC-HANDL-PRIO"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "name=TRANSFER-DELAY"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "name=GUARANTEED-BITRATE-UPLINK"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "name=GUARANTEED-BITRATE-DNLINK"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "name=PXADDR-FQDN"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "name=PROXY-PW"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "name=PPGAUTH-TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    const/16 v1, 0x40

    const-string v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "version=1.0"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "name=PULLENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "name=DNS-ADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "name=MAX-NUM-RETRY"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "name=FIRST-RETRY-TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "name=REREG-THRESHOLD"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "name=T-BIT"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    aput-object v3, v0, v1

    const/16 v1, 0x49

    const-string v2, "name=AUTH-ENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "name=SPI"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "type=PXLOGICAL"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "type=PXPHYSICAL"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "type=PORT"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "type=VALIDITY"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "type=NAPDEF"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "type=BOOTSTRAP"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "type=VENDORCONFIG"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "type=CLIENTIDENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "type=PXAUTHINFO"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "type=NAPAUTHINFO"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "type=ACCESS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->ATTRIBUTE_START_TABLE_CODEPAGE_0:[Ljava/lang/String;

    .line 112
    const/16 v0, 0x6f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "value"

    aput-object v1, v0, v5

    const-string v1, "name=NAME"

    aput-object v1, v0, v6

    aput-object v3, v0, v7

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v2, "name=INTERNET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v2, "name=STARTPAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string v2, "name=TO-NAPID"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "name=PORTNBR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "name=SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    aput-object v3, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    const-string v2, "name=AACCEPT"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "name=AAUTHDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "name=AAUTHLEVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "name=AAUTHNAME"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "name=AAUTHSECRET"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "name=AAUTHTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "name=ADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "name=ADDRTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "name=APPID"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "name=APROTOCOL"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "name=PROVIDER-ID"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "name=TO-PROXY"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "name=URI"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "name=RULE"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-string v2, "name=PRI-SSID"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "name=PRI-U-SSID"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "name=PRI-H-SSID"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "name=NETMODE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "name=SECMODE"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    aput-object v3, v0, v1

    const/16 v1, 0x41

    aput-object v3, v0, v1

    const/16 v1, 0x42

    aput-object v3, v0, v1

    const/16 v1, 0x43

    aput-object v3, v0, v1

    const/16 v1, 0x44

    aput-object v3, v0, v1

    const/16 v1, 0x45

    aput-object v3, v0, v1

    const/16 v1, 0x46

    aput-object v3, v0, v1

    const/16 v1, 0x47

    aput-object v3, v0, v1

    const/16 v1, 0x48

    aput-object v3, v0, v1

    const/16 v1, 0x49

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    aput-object v3, v0, v1

    const/16 v1, 0x4b

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    aput-object v3, v0, v1

    const/16 v1, 0x4d

    aput-object v3, v0, v1

    const/16 v1, 0x4e

    const-string v2, "type=PORT"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    aput-object v3, v0, v1

    const/16 v1, 0x50

    const-string v2, "type=APPLICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "type=APPADDR"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "type=APPAUTH"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "type=CLIENTIDENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "type=RESOURCE"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "type=WLAN"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    aput-object v3, v0, v1

    const/16 v1, 0x57

    aput-object v3, v0, v1

    const/16 v1, 0x58

    aput-object v3, v0, v1

    const/16 v1, 0x59

    const-string v2, "type=WEPKEY"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    aput-object v3, v0, v1

    const/16 v1, 0x5b

    aput-object v3, v0, v1

    const/16 v1, 0x5c

    aput-object v3, v0, v1

    const/16 v1, 0x5d

    aput-object v3, v0, v1

    const/16 v1, 0x5e

    aput-object v3, v0, v1

    const/16 v1, 0x5f

    aput-object v3, v0, v1

    const/16 v1, 0x60

    aput-object v3, v0, v1

    const/16 v1, 0x61

    aput-object v3, v0, v1

    const/16 v1, 0x62

    aput-object v3, v0, v1

    const/16 v1, 0x63

    aput-object v3, v0, v1

    const/16 v1, 0x64

    const-string v2, "name=WPA_PRES_KEY_ASC"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "name=WPA_PRES_KEY_HEX"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "name=WEPKEYIND"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "name=WEPAUTHMODE"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "name=LENGTH"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "name=INDEX"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "name=DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    aput-object v3, v0, v1

    const/16 v1, 0x6c

    aput-object v3, v0, v1

    const/16 v1, 0x6d

    aput-object v3, v0, v1

    const/16 v1, 0x6e

    aput-object v3, v0, v1

    sput-object v0, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->ATTRIBUTE_START_TABLE_CODEPAGE_1:[Ljava/lang/String;

    .line 227
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IPV4"

    aput-object v1, v0, v4

    const-string v1, "IPV6"

    aput-object v1, v0, v5

    const-string v1, "E164"

    aput-object v1, v0, v6

    const-string v1, "ALPHA"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "APN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SCODE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TETRA-ITSI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MAN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, "ANALOG-MODEM"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "V.120"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "V.110"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "X.31"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BIT-TRANSPARENT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DIRECT-ASYNCHRONOUS-DATA-SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string v2, "PAP"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CHAP"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "HTTP-BASIC"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "HTTP-DIGEST"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "WTLS-SS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "MD5"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string v2, "GSM-USSD"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "GSM-SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ANSI-136-GUTS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "IS-95-CDMA-SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "IS-95-CDMA-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "IS-95-CDMA-PACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ANSI-136-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ANSI-136-GPRS"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "GSM-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "GSM-GPRS"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "AMPS-CDPD"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "PDC-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "PDC-PACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "IDEN-SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "IDEN-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "IDEN-PACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "FLEX/REFLEX"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "PHS-SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "PHS-CSD"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "TETRA-SDS"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "TETRA-PACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "ANSI-136-GHOST"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "MOBITEX-MPAK"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "CDMA2000-1X-SIMPLE-IP"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "CDMA2000-1X-MOBILE-IP"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    const/16 v1, 0x40

    const-string v2, "AUTOBAUDING"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    aput-object v3, v0, v1

    const/16 v1, 0x42

    aput-object v3, v0, v1

    const/16 v1, 0x43

    aput-object v3, v0, v1

    const/16 v1, 0x44

    aput-object v3, v0, v1

    const/16 v1, 0x45

    const-string v2, "CL-WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "CO-WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "CL-SEC-WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "CO-SEC-WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "CL-SEC-WTA"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "CO-SEC-WTA"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "OTA-HTTP-TO"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "OTA-HTTP-TLS-TO"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "OTA-HTTP-PO"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "OTA-HTTP-TLS-PO"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    aput-object v3, v0, v1

    const/16 v1, 0x50

    aput-object v3, v0, v1

    const/16 v1, 0x51

    aput-object v3, v0, v1

    const/16 v1, 0x52

    aput-object v3, v0, v1

    const/16 v1, 0x53

    aput-object v3, v0, v1

    const/16 v1, 0x54

    aput-object v3, v0, v1

    const/16 v1, 0x55

    aput-object v3, v0, v1

    const/16 v1, 0x56

    aput-object v3, v0, v1

    const/16 v1, 0x57

    aput-object v3, v0, v1

    const/16 v1, 0x58

    aput-object v3, v0, v1

    const/16 v1, 0x59

    aput-object v3, v0, v1

    const/16 v1, 0x5a

    aput-object v3, v0, v1

    const/16 v1, 0x5b

    const-string v2, "AAA"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "HA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->ATTRIBUTE_VALUE_TABLE_CODEPAGE_0:[Ljava/lang/String;

    .line 322
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v4

    const-string v1, "IPV6"

    aput-object v1, v0, v5

    const-string v1, "E164"

    aput-object v1, v0, v6

    const-string v1, "ALPHA"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, "APPSRV"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "OBEX"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HTTP-"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "BASIC"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DIGEST"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->ATTRIBUTE_VALUE_TABLE_CODEPAGE_1:[Ljava/lang/String;

    return-void
.end method
