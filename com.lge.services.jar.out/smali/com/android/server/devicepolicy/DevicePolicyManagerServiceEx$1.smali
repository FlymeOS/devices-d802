.class Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

.field final synthetic val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    monitor-enter v4

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 99
    .local v2, "userHandle":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 100
    .local v1, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    .line 102
    .local v0, "doProxyCleanup":Z
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 105
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    invoke-virtual {v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;->saveSettingsLocked(I)V

    .line 110
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;

    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 113
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceEx$1;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-interface {v3, v5, v2}, Lcom/lge/cappuccino/IMdm;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 118
    :cond_1
    monitor-exit v4

    .line 119
    return-void

    .line 118
    .end local v0    # "doProxyCleanup":Z
    .end local v1    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v2    # "userHandle":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
