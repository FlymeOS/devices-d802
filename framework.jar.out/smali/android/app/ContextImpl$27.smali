.class final Landroid/app/ContextImpl$27;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 552
    const-string v1, "VZW_LOCATION_SERVICE"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 553
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/vzw/location/VzwLocationManager;

    invoke-static {v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/vzw/location/VzwLocationManager;-><init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V

    return-object v1
.end method
