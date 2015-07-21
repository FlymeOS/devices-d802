.class Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;
.super Landroid/database/ContentObserver;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataSettingObserver"
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
    .line 219
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;->this$0:Lcom/lge/net/FastDownloadService;

    .line 220
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 221
    iput-object p2, p0, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;->mHandler:Landroid/os/Handler;

    .line 222
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/lge/net/FastDownloadService;->mResolver:Landroid/content/ContentResolver;

    .line 223
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v0, v0, Lcom/lge/net/FastDownloadService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v0, v0, Lcom/lge/net/FastDownloadService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    return-void
.end method
