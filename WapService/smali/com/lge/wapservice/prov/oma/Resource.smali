.class public Lcom/lge/wapservice/prov/oma/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field public final MAX_APP_AACCEPT_LEN:I

.field public final MAX_APP_AAUTHDATA_LEN:I

.field public final MAX_APP_AAUTHNAME_LEN:I

.field public final MAX_APP_AAUTHSECRET_LEN:I

.field public final MAX_APP_AAUTHTYPE_LEN:I

.field public final MAX_APP_URI_LEN:I

.field public final MAX_STARTPAGE_LEN:I

.field public accept:Ljava/lang/String;

.field public authname:Ljava/lang/String;

.field public authsercret:Ljava/lang/String;

.field public authtype:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public startpage:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x20

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x80

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Resource;->MAX_APP_URI_LEN:I

    .line 40
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Resource;->MAX_APP_AAUTHTYPE_LEN:I

    .line 41
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Resource;->MAX_APP_AAUTHNAME_LEN:I

    .line 42
    iput v2, p0, Lcom/lge/wapservice/prov/oma/Resource;->MAX_APP_AAUTHSECRET_LEN:I

    .line 43
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Resource;->MAX_APP_AAUTHDATA_LEN:I

    .line 44
    iput v2, p0, Lcom/lge/wapservice/prov/oma/Resource;->MAX_APP_AACCEPT_LEN:I

    .line 45
    const/16 v0, 0x40

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Resource;->MAX_STARTPAGE_LEN:I

    return-void
.end method
