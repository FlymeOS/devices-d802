.class Lcom/lge/wifi/impl/WifiDataContinuityService$8;
.super Ljava/lang/Object;
.source "WifiDataContinuityService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiDataContinuityService;->showMultipleNetworkConnectionPopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$8;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 553
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$8;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$300(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_multiple_connection_popup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$8;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$300(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_multiple_connection_popup"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
