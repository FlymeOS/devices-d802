.class public Lcom/lge/wapservice/prov/oma/WiFi;
.super Ljava/lang/Object;
.source "WiFi.java"


# instance fields
.field public final MAX_WIFI_NETMODE_LEN:I

.field public final MAX_WIFI_PRI_SSID_LEN:I

.field public final MAX_WIFI_SECMODE_LEN:I

.field public final MAX_WIFI_WEPAUTHMODE_LEN:I

.field public final MAX_WIFI_WEPKEYIND_LEN:I

.field public final MAX_WIFI_WEPKEY_LEN:I

.field public final MAX_WIFI_WPA_PRES_KEY_ASC_LEN:I

.field public h_ssid:Ljava/lang/String;

.field public netMode:Ljava/lang/String;

.field public pri_ssid:Ljava/lang/String;

.field public secMode:Ljava/lang/String;

.field public u_ssid:Ljava/lang/String;

.field public wepauthmode:Ljava/lang/String;

.field public wepkey:Ljava/lang/String;

.field public wepkey_data:Ljava/lang/String;

.field public wepkey_index:Ljava/lang/String;

.field public wepkey_length:Ljava/lang/String;

.field public wepkeyind:Ljava/lang/String;

.field public wpa_pres_key_asc:Ljava/lang/String;

.field public wpa_pres_key_hex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    const/16 v0, 0x40

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WiFi;->MAX_WIFI_PRI_SSID_LEN:I

    .line 37
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WiFi;->MAX_WIFI_NETMODE_LEN:I

    .line 38
    iput v0, p0, Lcom/lge/wapservice/prov/oma/WiFi;->MAX_WIFI_SECMODE_LEN:I

    .line 39
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WiFi;->MAX_WIFI_WPA_PRES_KEY_ASC_LEN:I

    .line 40
    iput v0, p0, Lcom/lge/wapservice/prov/oma/WiFi;->MAX_WIFI_WEPKEYIND_LEN:I

    .line 41
    iput v0, p0, Lcom/lge/wapservice/prov/oma/WiFi;->MAX_WIFI_WEPAUTHMODE_LEN:I

    .line 42
    iput v0, p0, Lcom/lge/wapservice/prov/oma/WiFi;->MAX_WIFI_WEPKEY_LEN:I

    return-void
.end method
