.class public Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/core/MorphoPanoramaGP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSize"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;->width:I

    .line 109
    iput p2, p0, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;->height:I

    .line 110
    return-void
.end method
