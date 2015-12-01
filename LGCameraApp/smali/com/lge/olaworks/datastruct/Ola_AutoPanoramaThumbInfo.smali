.class public Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;
.super Ljava/lang/Object;
.source "Ola_AutoPanoramaThumbInfo.java"


# instance fields
.field public dH:I

.field public dW:I

.field public height:I

.field public tHeight:I

.field public tWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->clear()V

    .line 41
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->width:I

    .line 45
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->height:I

    .line 46
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->dW:I

    .line 47
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->dH:I

    .line 48
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->tWidth:I

    .line 49
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->tHeight:I

    .line 50
    return-void
.end method
