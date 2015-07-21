.class Lcom/lge/wifi/impl/LgWifiInternetCheck$4;
.super Ljava/lang/Object;
.source "LgWifiInternetCheck.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/LgWifiInternetCheck;->showVZWNoWifiInternetConnectionPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/LgWifiInternetCheck;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$4;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 432
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 433
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$4;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    const/4 v2, 0x0

    # setter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->mVZWNoWifiInternetConnectionPopup:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$1202(Lcom/lge/wifi/impl/LgWifiInternetCheck;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 434
    iget-object v1, p0, Lcom/lge/wifi/impl/LgWifiInternetCheck$4;->this$0:Lcom/lge/wifi/impl/LgWifiInternetCheck;

    # getter for: Lcom/lge/wifi/impl/LgWifiInternetCheck;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/LgWifiInternetCheck;->access$1300(Lcom/lge/wifi/impl/LgWifiInternetCheck;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_isshowvzwwifiinternetconnectionpopup"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 435
    .local v0, "result":Z
    return-void
.end method
