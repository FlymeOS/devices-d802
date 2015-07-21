.class final Landroid/app/ContextImpl$48;
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
    .line 713
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 715
    const-string v2, "ktuca"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 716
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/ktuca/IKtUcaIF$Stub;->asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;

    move-result-object v1

    .line 717
    .local v1, "service":Landroid/ktuca/IKtUcaIF;
    new-instance v2, Landroid/ktuca/KtUcaManager;

    invoke-direct {v2, v1}, Landroid/ktuca/KtUcaManager;-><init>(Landroid/ktuca/IKtUcaIF;)V

    return-object v2
.end method
