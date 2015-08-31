.class public Lcom/lge/wapservice/prov/oma/Bootstrap;
.super Ljava/lang/Object;
.source "Bootstrap.java"


# instance fields
.field public final MAX_BOOTSTRAP_CONTEXT_ALLOW:I

.field public final MAX_BOOTSTRAP_NAME:I

.field public final MAX_BOOTSTRAP_PROVURL:I

.field public final MAX_BOOTSTRAP_PROXY_ID:I

.field public name:Ljava/lang/String;

.field public provurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Bootstrap;->MAX_BOOTSTRAP_NAME:I

    .line 30
    const/16 v0, 0x80

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Bootstrap;->MAX_BOOTSTRAP_PROVURL:I

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/wapservice/prov/oma/Bootstrap;->MAX_BOOTSTRAP_CONTEXT_ALLOW:I

    .line 32
    iput v1, p0, Lcom/lge/wapservice/prov/oma/Bootstrap;->MAX_BOOTSTRAP_PROXY_ID:I

    return-void
.end method
