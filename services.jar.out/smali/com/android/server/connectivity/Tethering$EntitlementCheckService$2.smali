.class Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1704
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    # invokes: Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->performServiceLayerEntitlementCheck()I
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->access$600(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)I

    move-result v0

    .line 1706
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 1707
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 1, ENTITLEMENT_CHECK_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->setAlarm_Entitle()V

    .line 1709
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    .line 1719
    :goto_0
    return-void

    .line 1710
    :cond_0
    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 1711
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 2, TETHER_AUTHENTICATION_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 1713
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    goto :goto_0

    .line 1715
    :cond_1
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] Case 3, TETHER_AUTHENTICATION_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 1717
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    goto :goto_0
.end method
