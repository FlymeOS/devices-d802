.class public Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewParam"
.end annotation


# instance fields
.field public scale:D

.field public x_rotate:D

.field public y_rotate:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-wide v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;->x_rotate:D

    .line 218
    iput-wide v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;->y_rotate:D

    .line 219
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;->scale:D

    .line 220
    return-void
.end method
