.class public Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/SKTRejectCause;
.source "InfineonSKTRejectCause.java"


# static fields
.field static final DBG:Z = true

.field private static final DELAYED_10SEC_TIMEOUT:I = 0x2710

.field private static final ISTESTSIMALLOWED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "InfineonSKTRejectCause"

.field private static final MSG_ID_10SEC_DELAYED_TIMEOUT:I = 0x2


# instance fields
.field m10SECDelayedTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 44
    new-instance v0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->checkManagedRoamingDialog()V

    return-void
.end method

.method private checkManagedRoamingDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 59
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    .line 60
    .local v4, "ss":Landroid/telephony/ServiceState;
    const/4 v2, 0x0

    .line 61
    .local v2, "isRoaming":Z
    const/4 v1, 0x0

    .line 62
    .local v1, "isNoservice":Z
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "airplaneMode":I
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isUsimRoaming()Z

    move-result v3

    .line 65
    .local v3, "isUsimRoaming":Z
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eq v5, v8, :cond_1

    :cond_0
    if-ne v3, v8, :cond_6

    .line 66
    :cond_1
    const/4 v2, 0x1

    .line 71
    :goto_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    if-eq v5, v8, :cond_2

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->checkGsmServiceStatus()I

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    :cond_3
    const/4 v1, 0x1

    .line 76
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkManagedRoamingDialog Noservice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , airplane: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", roaming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 78
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 79
    const-string v5, "createManagedRoamingDialog"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->createManagedRoamingDialog()V

    .line 82
    :cond_5
    return-void

    .line 68
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processGprsNotAllowed(IZZZ)V
    .locals 6
    .param p1, "statusId"    # I
    .param p2, "isSktCard"    # Z
    .param p3, "isRoaming"    # Z
    .param p4, "canShowAlert"    # Z

    .prologue
    const/4 v3, 0x1

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 298
    :goto_0
    return-void

    .line 250
    :sswitch_0
    if-eqz p2, :cond_1

    .line 251
    if-eqz p3, :cond_0

    .line 252
    const-string v1, "SKT_NRC_07_INTER_GPRS_NOT_ALLOWED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_1
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 254
    :cond_0
    const-string v1, "SKT_NRC_07_GPRS_NOT_ALLOWED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 257
    :cond_1
    const-string v1, "sp_SKT_NRC_07_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 266
    :sswitch_1
    if-nez p2, :cond_3

    .line 276
    :cond_2
    :goto_2
    const-string v1, "SKT_NRC_14_GPRS_NOT_ALLOWED_IN_THIS_PLMN"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 267
    :cond_3
    if-eqz p3, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->radio_tech:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject cause #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "receivce and roaming with skt sim card"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 283
    :sswitch_2
    if-eqz p2, :cond_5

    .line 284
    if-eqz p3, :cond_4

    .line 285
    const-string v1, "SKT_NRC_08_INTER_GPRS_AND_NON_GPRS_NOT_ALLOWED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_3
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 287
    :cond_4
    const-string v1, "SKT_NRC_08_GPRS_AND_NON_GPRS_NOT_ALLOWED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 290
    :cond_5
    const-string v1, "sp_SKT_NRC_08_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_2
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method private processIllegalIdentity(IZZZ)V
    .locals 4
    .param p1, "statusId"    # I
    .param p2, "isSktCard"    # Z
    .param p3, "isRoaming"    # Z
    .param p4, "canShowAlert"    # Z

    .prologue
    const/4 v3, 0x1

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 186
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkRejection : case 2 : srv_status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 193
    const-string v1, "gsm.rc_2_rs_3_5.exist"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-eqz p2, :cond_1

    .line 196
    if-eqz p3, :cond_0

    .line 197
    const-string v1, "SKT_NRC_02_INTER_IMSI_UNKNOWN_IN_HLR"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkRejection : case 2 :show dialog : msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 199
    :cond_0
    const-string v1, "SKT_NRC_02_IMSI_UNKNOWN_IN_HLR"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 202
    :cond_1
    const-string v1, "sp_SKT_NRC_02_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 213
    :pswitch_2
    if-eqz p2, :cond_3

    .line 214
    if-eqz p3, :cond_2

    .line 215
    const-string v1, "SKT_NRC_03_INTER_ILLEGAL_MS"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_2
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 217
    :cond_2
    const-string v1, "SKT_NRC_03_ILLEGAL_MS"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 220
    :cond_3
    const-string v1, "sp_SKT_NRC_03_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 226
    :pswitch_3
    if-eqz p2, :cond_5

    .line 227
    if-eqz p3, :cond_4

    .line 228
    const-string v1, "SKT_NRC_06_INTER_ILLEGAL_ME"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_3
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 230
    :cond_4
    const-string v1, "SKT_NRC_06_ILLEGAL_ME"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 233
    :cond_5
    const-string v1, "sp_SKT_NRC_06_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processPlmnNotAllowed(IZZZ)V
    .locals 6
    .param p1, "statusId"    # I
    .param p2, "isSktCard"    # Z
    .param p3, "isRoaming"    # Z
    .param p4, "canShowAlert"    # Z

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 304
    .local v0, "delay10sec":Z
    packed-switch p1, :pswitch_data_0

    .line 334
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    if-nez p2, :cond_4

    .line 342
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 343
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p4, v2}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    .line 345
    :cond_1
    return-void

    .line 306
    :pswitch_1
    const/4 v0, 0x1

    .line 307
    const-string v2, "SKT_NRC_11_PLMN_NOT_ALLOWED"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    goto :goto_0

    .line 310
    :pswitch_2
    const/4 v0, 0x1

    .line 311
    const-string v2, "SKT_NRC_12_LOCATION_AREA_NOT_ALLOWED"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    goto :goto_0

    .line 314
    :pswitch_3
    const/4 v0, 0x1

    .line 315
    const-string v2, "SKT_NRC_13_ROAMING_NOT_ALLOWED_IN_THIS_LOCATION_AREA"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    goto :goto_0

    .line 319
    :pswitch_4
    if-eqz p2, :cond_3

    .line 320
    if-eqz p3, :cond_2

    .line 321
    const-string v2, "SKT_NRC_15_INTER_NO_SUITABLE_CELLS_IN_LOCATION_AREA"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 323
    :cond_2
    const-string v2, "SKT_NRC_15_NO_SUITABLE_CELLS_IN_LOCATION_AREA"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 326
    :cond_3
    const-string v2, "sp_SKT_NRC_15_NO_NUM_NORMAL"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    goto :goto_0

    .line 335
    :cond_4
    if-eqz p3, :cond_0

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->radio_tech:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reject cause #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "receivce and roaming with skt sim card"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private processTempReject(IZZZ)V
    .locals 3
    .param p1, "statusId"    # I
    .param p2, "isSktCard"    # Z
    .param p3, "isRoaming"    # Z
    .param p4, "canShowAlert"    # Z

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 351
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 375
    :goto_1
    if-eqz v0, :cond_0

    .line 376
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p4, v1}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 360
    :sswitch_0
    const-string v1, "SKT_NRC_16_MSC_TEMPORARILY_NOT_REACHABLE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    goto :goto_1

    .line 364
    :sswitch_1
    const-string v1, "SKT_NRC_17_NETWORK_FAILURE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    goto :goto_1

    .line 368
    :sswitch_2
    const-string v1, "SKT_NRC_22_CONGESTION"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    goto :goto_1

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "InfineonSKTRejectCause"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method protected processIntentBroadcast()V
    .locals 7

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "bOtaIsRunning":Z
    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 96
    const-string v5, "ril.card_operator"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "card_operator":Ljava/lang/String;
    const-string v5, "ril.card_provisioned"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "card_provisioned":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v5, "SKT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    :cond_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->srv_status:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 105
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "IntentOtaInService":Landroid/content/Intent;
    const-string v5, "send intent OTA_IN_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 107
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 115
    .end local v0    # "IntentOtaInService":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 110
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_NO_SERVICE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "IntentOtaNoService":Landroid/content/Intent;
    const-string v5, "send intent OTA_NO_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 112
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method protected processStatuId(I)V
    .locals 13
    .param p1, "statusId"    # I

    .prologue
    const/4 v12, 0x1

    .line 122
    const/4 v6, 0x0

    .line 123
    .local v6, "isRoaming":Z
    sget-object v10, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 124
    .local v9, "ss":Landroid/telephony/ServiceState;
    const/4 v1, 0x1

    .line 126
    .local v1, "canShowAlert":Z
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isUsimRoaming()Z

    move-result v8

    .line 128
    .local v8, "isUsimRoaming":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : statusId :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "radio_tech : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->radio_tech:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 130
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eq v10, v12, :cond_1

    :cond_0
    if-ne v8, v12, :cond_6

    .line 131
    :cond_1
    const/4 v6, 0x1

    .line 136
    :goto_0
    const-string v10, "ril.card_operator"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "card_operator":Ljava/lang/String;
    const-string v10, "ril.card_provisioned"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "card_provisioned":Ljava/lang/String;
    const-string v10, "SKT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 139
    .local v7, "isSktCard":Z
    const-string v10, "no"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 143
    .local v5, "isNotProvisioned":Z
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 144
    const/4 v1, 0x0

    .line 149
    :cond_2
    sget-object v10, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 150
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 153
    .local v4, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v9, :cond_3

    .line 154
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ss.getState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 158
    :cond_3
    if-eqz v4, :cond_4

    const-string v11, "com.lge.ota.SKTUsimDownloadActivity"

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    const-string v10, "gsm.lge.ota_is_running"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "pref.skt_ota_usim_download"

    const-string v11, "0"

    invoke-static {v10, v11}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 164
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleNetworkRejection : ignore Rejection code for SKT :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->log(Ljava/lang/String;)V

    .line 173
    :goto_1
    return-void

    .line 133
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "card_operator":Ljava/lang/String;
    .end local v3    # "card_provisioned":Ljava/lang/String;
    .end local v4    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "isNotProvisioned":Z
    .end local v7    # "isSktCard":Z
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 169
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v2    # "card_operator":Ljava/lang/String;
    .restart local v3    # "card_provisioned":Ljava/lang/String;
    .restart local v4    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "isNotProvisioned":Z
    .restart local v7    # "isSktCard":Z
    :cond_7
    invoke-direct {p0, p1, v7, v6, v1}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->processIllegalIdentity(IZZZ)V

    .line 170
    invoke-direct {p0, p1, v7, v6, v1}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->processGprsNotAllowed(IZZZ)V

    .line 171
    invoke-direct {p0, p1, v7, v6, v1}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->processPlmnNotAllowed(IZZZ)V

    .line 172
    invoke-direct {p0, p1, v7, v6, v1}, Lcom/lge/telephony/KrRejectCause/InfineonSKTRejectCause;->processTempReject(IZZZ)V

    goto :goto_1
.end method
