.class final Lcom/lge/loader/RuntimeLibraryLoader$4;
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
    .line 103
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/lge/loader/InstanceCreator;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/lge/loader/interaction/InteractionManagerCreator;

    invoke-direct {v0}, Lcom/lge/loader/interaction/InteractionManagerCreator;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/lge/loader/RuntimeLibraryLoader$4;->create()Lcom/lge/loader/InstanceCreator;

    move-result-object v0

    return-object v0
.end method
