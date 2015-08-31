.class public Lcom/lge/wapservice/prov/oma/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"


# instance fields
.field public final MAX_APN_AUTHNAME_LEN:I

.field public final MAX_APN_AUTHSECRET_LEN:I

.field public final MAX_APN_AUTHTYPE_LEN:I

.field public final MAX_APN_DNSIP_LEN:I

.field public final MAX_BEARER_LEN:I

.field public final MAX_CALLTYPE_LEN:I

.field public final MAX_NAME_LEN:I

.field public final MAX_NAPID_LEN:I

.field public final MAX_NAP_ADDRESS_LEN:I

.field public final MAX_NAP_ADDRESS_TYPE_LEN:I

.field public address:Ljava/lang/String;

.field public authType:Ljava/lang/String;

.field public bearer:Ljava/lang/String;

.field public calltype:Ljava/lang/String;

.field public internet:Ljava/lang/String;

.field public linger:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public napId:Ljava/lang/String;

.field public nap_address:Ljava/lang/String;

.field public nap_addresstype:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public user:Ljava/lang/String;

.field public wifilist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/WiFi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    const/16 v1, 0x32

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x20

    iput v0, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_NAPID_LEN:I

    .line 54
    iput v1, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_BEARER_LEN:I

    .line 55
    iput v2, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_NAME_LEN:I

    .line 56
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_NAP_ADDRESS_LEN:I

    .line 57
    iput v2, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_APN_AUTHNAME_LEN:I

    .line 58
    iput v2, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_APN_AUTHSECRET_LEN:I

    .line 59
    iput v1, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_APN_AUTHTYPE_LEN:I

    .line 60
    iput v1, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_APN_DNSIP_LEN:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_NAP_ADDRESS_TYPE_LEN:I

    .line 62
    const/16 v0, 0x23

    iput v0, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->MAX_CALLTYPE_LEN:I

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .prologue
    .line 66
    const-string v0, "GSM-GPRS"

    iget-object v1, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->bearer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GSM-UMTS"

    iget-object v1, p0, Lcom/lge/wapservice/prov/oma/AccessPoint;->bearer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
