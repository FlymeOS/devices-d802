.class public Lcom/lge/wapservice/prov/oma/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# instance fields
.field public final MAX_PHYSICAL_PROXY_ID_LEN:I

.field public final MAX_PORTNBR_LEN:I

.field public final MAX_PROXY_ID_LEN:I

.field public final MAX_PXADDRTYPE_LEN:I

.field public final MAX_PXADDR_FQDN_LEN:I

.field public final MAX_PXADDR_LEN:I

.field public final MAX_PXAUTH_ID_LEN:I

.field public final MAX_PXAUTH_PW_LEN:I

.field public final MAX_PXLOGICAL_NAME_LEN:I

.field public final MAX_SERVICE_LEN:I

.field public final MAX_STARTPAGE_LEN:I

.field public final MAX_TO_NAPID_LEN:I

.field public address:Ljava/lang/String;

.field public addressType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public proxy_id:Ljava/lang/String;

.field public startPage:Ljava/lang/String;

.field public to_napid:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    const/16 v0, 0x32

    const/16 v2, 0x20

    const/16 v1, 0x10

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PROXY_ID_LEN:I

    .line 43
    iput v2, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PXLOGICAL_NAME_LEN:I

    .line 44
    iput v0, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PHYSICAL_PROXY_ID_LEN:I

    .line 45
    const/16 v0, 0x28

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PXADDR_LEN:I

    .line 46
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PXADDRTYPE_LEN:I

    .line 47
    iput v2, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_TO_NAPID_LEN:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PORTNBR_LEN:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_SERVICE_LEN:I

    .line 50
    iput v3, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_STARTPAGE_LEN:I

    .line 51
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PXAUTH_ID_LEN:I

    .line 52
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PXAUTH_PW_LEN:I

    .line 53
    iput v3, p0, Lcom/lge/wapservice/prov/oma/Proxy;->MAX_PXADDR_FQDN_LEN:I

    return-void
.end method
