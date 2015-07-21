.class Lcom/lge/wifi/impl/WifiDataContinuityService$7;
.super Ljava/lang/Object;
.source "WifiDataContinuityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 523
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$7;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$7;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # invokes: Lcom/lge/wifi/impl/WifiDataContinuityService;->showMultipleNetworkConnectionToastPopup()V
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$100(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    .line 526
    return-void
.end method
