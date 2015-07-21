.class Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;
.super Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;
.source "LGBluetoothAPIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/LGBluetoothAPIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    invoke-direct {p0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 6

    .prologue
    .line 128
    const-string v3, "LGBluetoothAPIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBluetoothServiceDown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$100()Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v3, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$000(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    move-result-object v4

    monitor-enter v4

    .line 131
    const/4 v3, 0x0

    :try_start_0
    # setter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$102(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    .line 132
    iget-object v3, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$200(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .local v0, "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    if-eqz v0, :cond_0

    .line 135
    :try_start_1
    invoke-interface {v0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "LGBluetoothAPIAdapter"

    const-string v5, ""

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 137
    .restart local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    const-string v3, "LGBluetoothAPIAdapter"

    const-string v5, "onBluetoothServiceDown: cb is null!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 143
    .end local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    return-void
.end method

.method public onBluetoothServiceUp(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V
    .locals 6
    .param p1, "bluetoothService"    # Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    .prologue
    .line 108
    const-string v3, "LGBluetoothAPIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBluetoothServiceUp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mManagerCallback:Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$000(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    move-result-object v4

    monitor-enter v4

    .line 111
    :try_start_0
    # setter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mService:Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    invoke-static {p1}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$102(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    .line 112
    iget-object v3, p0, Lcom/lge/bluetooth/LGBluetoothAPIAdapter$1;->this$0:Lcom/lge/bluetooth/LGBluetoothAPIAdapter;

    # getter for: Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothAPIAdapter;->access$200(Lcom/lge/bluetooth/LGBluetoothAPIAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .local v0, "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    if-eqz v0, :cond_0

    .line 115
    :try_start_1
    invoke-interface {v0, p1}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;->onBluetoothServiceUp(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "LGBluetoothAPIAdapter"

    const-string v5, "[BTUI] RemoteException"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    .end local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 117
    .restart local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    const-string v3, "LGBluetoothAPIAdapter"

    const-string v5, "onBluetoothServiceUp: cb is null!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "cb":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    return-void
.end method
