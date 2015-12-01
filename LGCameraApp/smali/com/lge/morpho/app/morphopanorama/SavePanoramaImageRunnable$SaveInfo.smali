.class public Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;
.super Ljava/lang/Object;
.source "SavePanoramaImageRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveInfo"
.end annotation


# instance fields
.field public mDate:[J

.field public mLocation:Landroid/location/Location;

.field public mOutputType:I

.field public mSaveDir:Ljava/lang/String;

.field public mSaveFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method
