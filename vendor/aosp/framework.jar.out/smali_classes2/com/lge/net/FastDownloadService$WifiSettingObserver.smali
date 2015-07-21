.class Lcom/lge/net/FastDownloadService$WifiSettingObserver;
.super Landroid/database/ContentObserver;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSettingObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/lge/net/FastDownloadService;


# direct methods
.method public constructor <init>(Lcom/lge/net/FastDownloadService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$WifiSettingObserver;->this$0:Lcom/lge/net/FastDownloadService;

    .line 316
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 317
    iput-object p2, p0, Lcom/lge/net/FastDownloadService$WifiSettingObserver;->mHandler:Landroid/os/Handler;

    .line 318
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/lge/net/FastDownloadService;->mResolver:Landroid/content/ContentResolver;

    .line 319
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$WifiSettingObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/net/FastDownloadService$WifiSettingObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$WifiSettingObserver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v0, v0, Lcom/lge/net/FastDownloadService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$WifiSettingObserver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v0, v0, Lcom/lge/net/FastDownloadService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 328
    return-void
.end method
