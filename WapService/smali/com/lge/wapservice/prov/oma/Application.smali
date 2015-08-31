.class public Lcom/lge/wapservice/prov/oma/Application;
.super Ljava/lang/Object;
.source "Application.java"


# instance fields
.field public final MAX_APP_ADDRTYPE_LEN:I

.field public final MAX_APP_ADDR_LEN:I

.field public final MAX_APP_APPID_LEN:I

.field public final MAX_APP_NAME_LEN:I

.field public final MAX_APP_TONAPID_LEN:I

.field public final MAX_APP_TOPROXY_LEN:I

.field public final MAX_PORTNBR_LEN:I

.field public final MAX_PROVIDERID_LEN:I

.field public addr:Ljava/lang/String;

.field public app_res:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/Resource;",
            ">;"
        }
    .end annotation
.end field

.field public appauth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/AppAuth;",
            ">;"
        }
    .end annotation
.end field

.field public appid:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public provider_id:Ljava/lang/String;

.field public to_napid:Ljava/lang/String;

.field public to_proxy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x10

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Application;->MAX_APP_APPID_LEN:I

    .line 68
    const/16 v0, 0x40

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Application;->MAX_APP_NAME_LEN:I

    .line 69
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Application;->MAX_APP_TONAPID_LEN:I

    .line 70
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Application;->MAX_APP_TOPROXY_LEN:I

    .line 71
    const/16 v0, 0x46

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Application;->MAX_APP_ADDR_LEN:I

    .line 72
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Application;->MAX_APP_ADDRTYPE_LEN:I

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Application;->MAX_PORTNBR_LEN:I

    .line 75
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Application;->MAX_PROVIDERID_LEN:I

    return-void
.end method
