.class public Lcom/android/nfc/handover/HandoverTransfer;
.super Ljava/lang/Object;
.source "HandoverTransfer.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverTransfer$Callback;
    }
.end annotation


# static fields
.field static final ALIVE_CHECK_MS:I = 0x4e20

.field static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final DBG:Ljava/lang/Boolean;

.field static final DEVICE_TYPE_BLUETOOTH:I = 0x1

.field public static final DEVICE_TYPE_WIFI:I = 0x2

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_CANCELLING:I = 0x7

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "HandoverTransfer"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0xfa0


# instance fields
.field mBluetoothTransferId:I

.field final mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field mDeviceType:I

.field final mHandler:Landroid/os/Handler;

.field final mIncoming:Z

.field mLastUpdate:Ljava/lang/Long;

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mOutgoingUris:[Landroid/net/Uri;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:F

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field final mRemoteMac:Ljava/lang/String;

.field final mStartTime:Ljava/lang/Long;

.field mState:I

.field mSuccessCount:I

.field mTotalCount:I

.field final mTransferId:I

.field mTransferMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUrisScanned:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/handover/HandoverTransfer$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    .line 138
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 139
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteMacAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteMac:Ljava/lang/String;

    .line 140
    iget-boolean v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    .line 141
    iget v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    .line 143
    iget v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mDeviceType:I

    .line 145
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mLastUpdate:Ljava/lang/Long;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 148
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    .line 154
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->buildCancelIntent(Z)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    .line 155
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 156
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    .line 157
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    .line 158
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mOutgoingUris:[Landroid/net/Uri;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    .line 160
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mStartTime:Ljava/lang/Long;

    .line 165
    return-void

    :cond_0
    move v0, v1

    .line 145
    goto :goto_0
.end method

.method private sendBluetoothCancelIntentAndUpdateState()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v1, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 268
    return-void
.end method


# virtual methods
.method buildCancelIntent(Z)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "incoming"    # Z

    .prologue
    const/4 v3, 0x1

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mDeviceType:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v4, "com.android.nfc.handover.extra.INCOMING"

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 512
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 505
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteMac:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v2, v3

    .line 507
    goto :goto_1
.end method

.method buildViewIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 486
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 500
    :goto_0
    return-object v3

    .line 488
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v3, "viewIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    .local v0, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 496
    .local v1, "mediaUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 497
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/HandoverTransfer;->getFileMimeType(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 496
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->parseFilePath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method cancel()V
    .locals 5

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 249
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 253
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 255
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransfer;->sendBluetoothCancelIntentAndUpdateState()V

    goto :goto_0

    .line 257
    :cond_3
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method checkMediaStorage(Ljava/io/File;)Z
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not dir or not mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return v0

    .line 478
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    const-string v1, "HandoverTransfer"

    const-string v2, "External storage not mounted, can\'t store file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 200
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    .line 201
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 202
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    .line 203
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HandoverTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer success, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 205
    if-nez p3, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/nfc/handover/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 208
    :cond_2
    if-eqz p3, :cond_4

    .line 209
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-ne v0, v1, :cond_8

    .line 220
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v0, :cond_6

    .line 221
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->processFiles()V

    goto :goto_0

    .line 212
    :cond_4
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HandoverTransfer"

    const-string v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    :cond_5
    const-string v0, "HandoverTransfer"

    const-string v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    :cond_6
    const-string v0, "HandoverTransfer"

    const-string v1, "Updating state!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_2

    .line 227
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0
.end method

.method generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 538
    const-string v1, "yyyy-MM-dd"

    .line 539
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 540
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 543
    .local v0, "count":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    return-object v2
.end method

.method generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 517
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 518
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 519
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_0

    .line 520
    const-string v3, ""

    .line 521
    move-object v4, p2

    .line 526
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 528
    .local v0, "count":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    new-instance v2, Ljava/io/File;

    .end local v2    # "dstFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 524
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 533
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "srcFile"    # Ljava/io/File;

    .prologue
    .line 572
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/handover/HandoverTransfer;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getBeamDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const-string v0, "beam"

    return-object v0
.end method

.method protected getFileMimeType(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTransferId()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 444
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_2

    .line 446
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v2, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->processFiles()V

    :goto_0
    move v0, v1

    .line 457
    :goto_1
    return v0

    .line 449
    :cond_0
    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    if-lez v2, :cond_1

    const/4 v0, 0x5

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0

    .line 452
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_4

    .line 454
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer timed out for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 457
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected isRequireMediaScannerMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 554
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 233
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_0
    return v0
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HandoverTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    if-eqz p2, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_1
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 466
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 468
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :cond_2
    monitor-exit p0

    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected parseFilePath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method processFiles()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    .line 358
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "extRoot":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->getBeamDir()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "beamPath":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->checkMediaStorage(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 365
    :cond_0
    const-string v8, "HandoverTransfer"

    const-string v9, "Media storage not valid or no uris received."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0, v11}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 431
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->getBeamDir()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverTransfer;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_2

    .line 376
    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to create multiple path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0, v11}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0

    .line 382
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 383
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 384
    .local v7, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 386
    .local v5, "mimeType":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v6, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v6}, Lcom/android/nfc/handover/HandoverTransfer;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 393
    .local v2, "dstFile":Ljava/io/File;
    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Renaming from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v6, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 397
    sget-object v8, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to rename from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 401
    :cond_4
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v8, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Did successful rename from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 412
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "srcFile":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_6
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 414
    .restart local v5    # "mimeType":Ljava/lang/String;
    if-nez v5, :cond_7

    .line 415
    invoke-virtual {p0, v12}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0

    .line 422
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverTransfer;->isRequireMediaScannerMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 424
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [Ljava/lang/String;

    .line 425
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 426
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0

    .line 429
    .end local v0    # "arrayPaths":[Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, v12}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 189
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 190
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    .line 191
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransfer;->sendBluetoothCancelIntentAndUpdateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setObjectCount(I)V
    .locals 0
    .param p1, "objectCount"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    .line 242
    return-void
.end method

.method public updateFileProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 183
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 185
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method updateNotification()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const v7, 0x1080089

    const v6, 0x1080082

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 271
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    .local v2, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 274
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 275
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 277
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_4

    .line 278
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f080003

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "beamString":Ljava/lang/String;
    :goto_0
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v8, v11, :cond_0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 284
    :cond_0
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 285
    iget-boolean v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v6, :cond_5

    const v6, 0x1080081

    :goto_1
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 287
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 288
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 289
    const v6, 0x7f020002

    iget-object v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v8, 0x7f080008

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v7, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 291
    const/4 v3, 0x0

    .line 292
    .local v3, "progress":F
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-lez v6, :cond_1

    .line 293
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 294
    .local v4, "progressUnit":F
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    mul-float/2addr v7, v4

    add-float v3, v6, v7

    .line 296
    .end local v4    # "progressUnit":F
    :cond_1
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-lez v6, :cond_6

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_6

    .line 297
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v2, v12, v6, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 332
    .end local v3    # "progress":F
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 333
    :cond_3
    return-void

    .line 280
    .end local v0    # "beamString":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f080004

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "beamString":Ljava/lang/String;
    goto :goto_0

    .line 285
    :cond_5
    const v6, 0x1080088

    goto :goto_1

    .line 299
    .restart local v3    # "progress":F
    :cond_6
    invoke-virtual {v2, v12, v10, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 301
    .end local v3    # "progress":F
    :cond_7
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    .line 302
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 303
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_8

    :goto_3
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 305
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f080005

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 306
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f080005

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 308
    iget-boolean v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v6, :cond_2

    .line 309
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f080009

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 310
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->buildViewIntent()Landroid/content/Intent;

    move-result-object v5

    .line 311
    .local v5, "viewIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v10, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 314
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_2

    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "viewIntent":Landroid/content/Intent;
    :cond_8
    move v6, v7

    .line 303
    goto :goto_3

    .line 316
    :cond_9
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_b

    .line 317
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 318
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_a

    :goto_4
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 320
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f080006

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 321
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f080006

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_a
    move v6, v7

    .line 318
    goto :goto_4

    .line 322
    :cond_b
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_c

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_3

    .line 323
    :cond_c
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 324
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_d

    :goto_5
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 326
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 327
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_d
    move v6, v7

    .line 324
    goto :goto_5
.end method

.method updateStateAndNotification(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 336
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mLastUpdate:Ljava/lang/Long;

    .line 339
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    .line 347
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    if-nez v1, :cond_2

    .line 349
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    .line 351
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-ne v2, v4, :cond_3

    :goto_0
    invoke-interface {v1, p0, v0}, Lcom/android/nfc/handover/HandoverTransfer$Callback;->onTransferComplete(Lcom/android/nfc/handover/HandoverTransfer;Z)V

    .line 353
    :cond_2
    return-void

    .line 351
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 168
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for BT OPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 172
    return-void
.end method
