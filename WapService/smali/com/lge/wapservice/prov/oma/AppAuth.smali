.class public Lcom/lge/wapservice/prov/oma/AppAuth;
.super Ljava/lang/Object;
.source "AppAuth.java"


# instance fields
.field public final MAX_APP_AAUTHDATA_LEN:I

.field public final MAX_APP_AAUTHLEVEL_LEN:I

.field public final MAX_APP_AAUTHNAME_LEN:I

.field public final MAX_APP_AAUTHSECRET_LEN:I

.field public final MAX_APP_AAUTHTYPE_LEN:I

.field public authdata:Ljava/lang/String;

.field public authlevel:Ljava/lang/String;

.field public authname:Ljava/lang/String;

.field public authsercret:Ljava/lang/String;

.field public authtype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    const/16 v0, 0x20

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/lge/wapservice/prov/oma/AppAuth;->MAX_APP_AAUTHLEVEL_LEN:I

    .line 29
    iput v0, p0, Lcom/lge/wapservice/prov/oma/AppAuth;->MAX_APP_AAUTHTYPE_LEN:I

    .line 30
    iput v1, p0, Lcom/lge/wapservice/prov/oma/AppAuth;->MAX_APP_AAUTHNAME_LEN:I

    .line 31
    iput v0, p0, Lcom/lge/wapservice/prov/oma/AppAuth;->MAX_APP_AAUTHSECRET_LEN:I

    .line 32
    iput v1, p0, Lcom/lge/wapservice/prov/oma/AppAuth;->MAX_APP_AAUTHDATA_LEN:I

    return-void
.end method
