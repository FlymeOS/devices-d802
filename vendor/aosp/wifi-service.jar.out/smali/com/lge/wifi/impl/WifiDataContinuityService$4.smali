.class Lcom/lge/wifi/impl/WifiDataContinuityService$4;
.super Ljava/lang/Object;
.source "WifiDataContinuityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiDataContinuityService;->showCaptivePortalNetworkPopup()Z
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
    .line 420
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$4;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$4;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$4;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    return-void
.end method
