.class Lcom/lge/wifi/impl/WifiServerServiceExt$7;
.super Landroid/database/ContentObserver;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;->registerForDualbandSettingChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 5584
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$7;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 5587
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$7;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->sendWifiDualbandAPConnection()V

    .line 5588
    return-void
.end method
