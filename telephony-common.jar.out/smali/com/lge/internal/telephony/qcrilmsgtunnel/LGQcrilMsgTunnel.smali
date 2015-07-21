.class public Lcom/lge/internal/telephony/qcrilmsgtunnel/LGQcrilMsgTunnel;
.super Ljava/lang/Object;
.source "LGQcrilMsgTunnel.java"


# static fields
.field private static final AOCR_DBSUBTYPE:I = 0x1

.field private static final AOCR_MCC:I = 0x153

.field private static final IMS_LTE_BARRING_SSAC:I = 0x12

.field private static final QCRILHOOK_BASE:I = 0x80000

.field private static final QCRILHOOK_KDDI_BASE:I = 0x92000

.field private static final QCRILHOOK_UNSOL_CDMA_LOCK_MODE:I = 0x92001

.field private static final QCRILHOOK_UNSOL_EXTENDED_DBM_INTL:I = 0x803e8

.field private static final QCRILHOOK_UNSOL_LTE_TDD_INFO:I = 0x92003

.field private static final QCRILHOOK_UNSOL_VOLTE_SSAC_INFO:I = 0x9100e

.field private static final QCRILHOOK_UNSOL_VOLTE_SSAC_INFO_KDDI_LEGACY:I = 0x92002

.field private static final QCRILOEM_BASE:I = 0x91000

.field private static final TAG:Ljava/lang/String; = "LGQcrilMsgTunnel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcastCDMALockModeIntent(Landroid/content/Context;[B)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 140
    .local v2, "lockMode":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 142
    .local v3, "lockReason":I
    const-string v4, "LGQcrilMsgTunnel"

    const-string v5, "Broadcasting intent CDMA_LOCK_MODE_KDDI "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.intent.action.CDMA_LOCK_MODE_KDDI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "lockMode"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v4, "lockReason"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private static broadcastExtendedDbmIntlIntent(Landroid/content/Context;[B)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 95
    .local v2, "in":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 104
    .local v4, "mcc":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 105
    .local v1, "db_subtype":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 106
    .local v0, "chg_ind":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 107
    .local v5, "sub_unit":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 110
    .local v6, "unit":I
    const/16 v7, 0x153

    if-ne v4, v7, :cond_0

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 114
    const-string v7, "LGQcrilMsgTunnel"

    const-string v8, "Broadcasting intent AOCR_RECEIVED_KDDI "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.lge.intent.action.AOCR_RECEIVED_KDDI"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, "intent":Landroid/content/Intent;
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private static broadcastLteTddInfoIntent(Landroid/content/Context;[B)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B

    .prologue
    .line 186
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 193
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 196
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 202
    .local v2, "tdd_info":I
    const-string v3, "LGQcrilMsgTunnel"

    const-string v4, "Broadcasting intent LTE_TDD_INFO_KDDI "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.LTE_TDD_INFO_KDDI"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "tdd_info"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static broadcastVolteSsacInfoIntent(Landroid/content/Context;[B)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 160
    .local v4, "in":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 163
    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 168
    .local v1, "barring_factor_voice":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 169
    .local v3, "barring_time_voice":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 170
    .local v0, "barring_factor_video":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 172
    .local v2, "barring_time_video":I
    const-string v6, "LGQcrilMsgTunnel"

    const-string v7, "Broadcasting intent LTE_CONNECTION_STATUS "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.lge.ims.action.LTE_CONNECTION_STATUS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "status"

    const/16 v7, 0x12

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v6, "barring_factor_voice"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v6, "barring_time_voice"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v6, "barring_factor_video"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v6, "barring_time_video"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static broadcastVolteSsacInfoIntent(Landroid/content/Context;[I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [I

    .prologue
    .line 213
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v1, "LGQcrilMsgTunnel"

    const-string v2, "Broadcasting intent LTE_CONNECTION_STATUS "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.ims.action.LTE_CONNECTION_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "status"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v1, "barring_factor_voice"

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string v1, "barring_time_voice"

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v1, "barring_factor_video"

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v1, "barring_time_video"

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static processUnsolOemhookResponse(Landroid/content/Context;I[B)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "response_id"    # I
    .param p2, "response_data"    # [B

    .prologue
    .line 50
    const/4 v0, 0x1

    .line 52
    .local v0, "ret":Z
    sparse-switch p1, :sswitch_data_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 55
    :sswitch_0
    invoke-static {p0, p2}, Lcom/lge/internal/telephony/qcrilmsgtunnel/LGQcrilMsgTunnel;->broadcastExtendedDbmIntlIntent(Landroid/content/Context;[B)V

    goto :goto_0

    .line 61
    :sswitch_1
    invoke-static {p0, p2}, Lcom/lge/internal/telephony/qcrilmsgtunnel/LGQcrilMsgTunnel;->broadcastCDMALockModeIntent(Landroid/content/Context;[B)V

    goto :goto_0

    .line 67
    :sswitch_2
    invoke-static {p0, p2}, Lcom/lge/internal/telephony/qcrilmsgtunnel/LGQcrilMsgTunnel;->broadcastVolteSsacInfoIntent(Landroid/content/Context;[B)V

    goto :goto_0

    .line 73
    :sswitch_3
    invoke-static {p0, p2}, Lcom/lge/internal/telephony/qcrilmsgtunnel/LGQcrilMsgTunnel;->broadcastLteTddInfoIntent(Landroid/content/Context;[B)V

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x803e8 -> :sswitch_0
        0x9100e -> :sswitch_2
        0x92001 -> :sswitch_1
        0x92002 -> :sswitch_2
        0x92003 -> :sswitch_3
    .end sparse-switch
.end method
