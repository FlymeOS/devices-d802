.class public Lcom/android/nfc/lgsharing/LSharingManager;
.super Ljava/lang/Object;
.source "LSharingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/lgsharing/LSharingManager$SendTask;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LG_SHARING_TYPE_PREFIX:Ljava/lang/String; = "lge.com:Sharingpackage-"

.field private static final TAG:Ljava/lang/String; = "LSharingManager"


# instance fields
.field mContext:Landroid/content/Context;

.field mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

.field mSharingCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/nfcaddon/ILGSharingMessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSharingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public makeSendMessage()Landroid/nfc/NdefMessage;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-boolean v2, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v3, "LSharingManager"

    const-string v4, "makeSendMessage"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v1

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 65
    .local v0, "mapCollections":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/nfc/NdefRecord;>;"
    if-eqz v0, :cond_0

    .line 68
    new-instance v2, Landroid/nfc/NdefMessage;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/nfc/NdefRecord;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/nfc/NdefRecord;

    invoke-direct {v2, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public onLlcpActivated()V
    .locals 14

    .prologue
    .line 124
    iget-object v11, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 153
    :cond_0
    return-void

    .line 128
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    .line 129
    iget-object v11, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 131
    .local v5, "keyList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 133
    .local v6, "keys":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v4, v0, v3

    .line 135
    .local v4, "key":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 133
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_3
    iget-object v11, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcaddon/ILGSharingMessageCallback;

    .line 140
    .local v1, "callback":Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    if-eqz v1, :cond_2

    .line 144
    invoke-interface {v1}, Lcom/lge/nfcaddon/ILGSharingMessageCallback;->createPayload()[B

    move-result-object v8

    .line 145
    .local v8, "payload":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lge.com:Sharingpackage-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "recordType":Ljava/lang/String;
    new-instance v9, Landroid/nfc/NdefRecord;

    const/4 v11, 0x4

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [B

    invoke-direct {v9, v11, v12, v13, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 147
    .local v9, "record":Landroid/nfc/NdefRecord;
    iget-object v11, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v11, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    .end local v1    # "callback":Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    .end local v8    # "payload":[B
    .end local v9    # "record":Landroid/nfc/NdefRecord;
    .end local v10    # "recordType":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onLlcpDeactivated()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    .line 157
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    .line 158
    return-void
.end method

.method public receiveMessage(Landroid/nfc/NdefMessage;)Z
    .locals 12
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x0

    .line 73
    sget-boolean v8, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v9, "LSharingManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receiveMessage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v7

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 79
    .local v6, "records":[Landroid/nfc/NdefRecord;
    if-eqz v6, :cond_0

    array-length v8, v6

    if-eqz v8, :cond_0

    .line 83
    move-object v0, v6

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v5, v0, v1

    .line 84
    .local v5, "record":Landroid/nfc/NdefRecord;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    if-nez v7, :cond_3

    .line 83
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 93
    .local v4, "packageName":Ljava/lang/String;
    const-string v7, "lge.com:Sharingpackage-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 94
    sget-boolean v7, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v8, "LSharingManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalidPreFix : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_4
    const-string v7, "lge.com:Sharingpackage-"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    sget-boolean v7, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v8, "LSharingManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendBroadcast : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.lge.nfc.action.lg_sharing"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "nfc/lgsharing"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v7, "com.lge.nfc.extra.payload"

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 103
    iget-object v7, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const-string v9, "android.permission.NFC"

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    :cond_5
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public sendSharingServices(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    monitor-enter p1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    if-eqz v0, :cond_2

    .line 116
    const-string v0, "LSharingManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_2
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;-><init>(Lcom/android/nfc/lgsharing/LSharingManager;)V

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    .line 119
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMode(Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lge/nfcaddon/ILGSharingMessageCallback;

    .prologue
    const/4 v0, 0x1

    .line 41
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 54
    :cond_1
    :goto_0
    return v0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_3
    if-eqz p2, :cond_1

    .line 53
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
