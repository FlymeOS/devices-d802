.class final Lcom/lge/loader/RuntimeLibraryLoader$2;
.super Landroid/util/Singleton;
.source "RuntimeLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/loader/RuntimeLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/lge/loader/InstanceCreator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/lge/loader/InstanceCreator;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;

    invoke-direct {v0}, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lge/loader/RuntimeLibraryLoader$2;->create()Lcom/lge/loader/InstanceCreator;

    move-result-object v0

    return-object v0
.end method
