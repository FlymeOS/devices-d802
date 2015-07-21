.class public Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/SKTRejectCause;
.source "QcrilSKTRejectCause.java"


# static fields
.field static final DBG:Z = true

.field private static final DELAYED_10SEC_TIMEOUT:I = 0x2710

.field private static final ISTESTSIMALLOWED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "QcrilSKTRejectCause"

.field private static final MSG_ID_10SEC_DELAYED_TIMEOUT:I = 0x2


# instance fields
.field m10SECDelayedTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 43
    new-instance v0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->checkManagedRoamingDialog()V

    return-void
.end method

.method private checkManagedRoamingDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 58
    sget-object v5, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    .line 59
    .local v4, "ss":Landroid/telephony/ServiceState;
    const/4 v3, 0x0

    .line 60
    .local v3, "isRoaming":Z
    const/4 v0, 0x0

    .line 61
    .local v0, "IsNoservice":Z
    sget-object v5, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 62
    .local v2, "airplaneMode":I
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isUsimRoaming()Z

    move-result v1

    .line 64
    .local v1, "IsUsimRoaming":Z
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eq v5, v8, :cond_1

    :cond_0
    if-ne v1, v8, :cond_5

    .line 65
    :cond_1
    const/4 v3, 0x1

    .line 70
    :goto_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->checkGsmServiceStatus()I

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    :cond_2
    const/4 v0, 0x1

    .line 73
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkManagedRoamingDialog Noservice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , airplane: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", roaming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 74
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 75
    const-string v5, "createManagedRoamingDialog"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->createManagedRoamingDialog()V

    .line 78
    :cond_4
    return-void

    .line 67
    :cond_5
    const/4 v3, 0x0

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

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 249
    :sswitch_0
    if-eqz p2, :cond_1

    .line 250
    if-eqz p3, :cond_0

    .line 251
    const-string v1, "SKT_NRC_07_INTER_GPRS_NOT_ALLOWED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_1
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 253
    :cond_0
    const-string v1, "SKT_NRC_07_GPRS_NOT_ALLOWED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 256
    :cond_1
    const-string v1, "sp_SKT_NRC_07_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 265
    :sswitch_1
    if-nez p2, :cond_3

    .line 274
    :cond_2
    :goto_2
    const-string v1, "SKT_NRC_14_GPRS_NOT_ALLOWED_IN_THIS_PLMN"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 266
    :cond_3
    if-eqz p3, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->radio_tech:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 267
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

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 281
    :sswitch_2
    if-eqz p2, :cond_5

    .line 282
    if-eqz p3, :cond_4

    .line 283
    const-string v1, "SKT_NRC_08_INTER_GPRS_AND_NON_GPRS_NOT_ALLOWED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_3
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 285
    :cond_4
    const-string v1, "SKT_NRC_08_GPRS_AND_NON_GPRS_NOT_ALLOWED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 288
    :cond_5
    const-string v1, "sp_SKT_NRC_08_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 244
    nop

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

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    :pswitch_0
    return-void

    .line 184
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkRejection : case 2 : srv_status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 191
    const-string v1, "gsm.rc_2_rs_3_5.exist"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz p2, :cond_1

    .line 194
    if-eqz p3, :cond_0

    .line 195
    const-string v1, "SKT_NRC_02_INTER_IMSI_UNKNOWN_IN_HLR"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
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

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 197
    :cond_0
    const-string v1, "SKT_NRC_02_IMSI_UNKNOWN_IN_HLR"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_1
    const-string v1, "sp_SKT_NRC_02_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 211
    :pswitch_2
    if-eqz p2, :cond_3

    .line 212
    if-eqz p3, :cond_2

    .line 213
    const-string v1, "SKT_NRC_03_INTER_ILLEGAL_MS"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_2
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v1, "SKT_NRC_03_ILLEGAL_MS"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 218
    :cond_3
    const-string v1, "sp_SKT_NRC_03_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 224
    :pswitch_3
    if-eqz p2, :cond_5

    .line 225
    if-eqz p3, :cond_4

    .line 226
    const-string v1, "SKT_NRC_06_INTER_ILLEGAL_ME"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_3
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 228
    :cond_4
    const-string v1, "SKT_NRC_06_ILLEGAL_ME"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 231
    :cond_5
    const-string v1, "sp_SKT_NRC_06_NO_NUM_NORMAL"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 176
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
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "msg":Ljava/lang/String;
    const/4 v0, 0x1

    .line 302
    .local v0, "delay":Z
    packed-switch p1, :pswitch_data_0

    .line 333
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 335
    if-eqz v0, :cond_0

    if-nez p2, :cond_4

    .line 342
    :cond_0
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p4, v2}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    .line 344
    :cond_1
    return-void

    .line 304
    :pswitch_1
    const-string v2, "SKT_NRC_11_PLMN_NOT_ALLOWED"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    goto :goto_0

    .line 308
    :pswitch_2
    const-string v2, "SKT_NRC_12_LOCATION_AREA_NOT_ALLOWED"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    goto :goto_0

    .line 312
    :pswitch_3
    const-string v2, "SKT_NRC_13_ROAMING_NOT_ALLOWED_IN_THIS_LOCATION_AREA"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    goto :goto_0

    .line 317
    :pswitch_4
    if-eqz p2, :cond_3

    .line 318
    if-eqz p3, :cond_2

    .line 319
    const-string v2, "SKT_NRC_15_INTER_NO_SUITABLE_CELLS_IN_LOCATION_AREA"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    :goto_2
    const/4 v0, 0x0

    .line 327
    goto :goto_0

    .line 321
    :cond_2
    const-string v2, "SKT_NRC_15_NO_SUITABLE_CELLS_IN_LOCATION_AREA"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 324
    :cond_3
    const-string v2, "sp_SKT_NRC_15_NO_NUM_NORMAL"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 336
    :cond_4
    if-eqz p3, :cond_0

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->radio_tech:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 337
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

    invoke-virtual {p0, v2}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->m10SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 302
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
    .locals 4
    .param p1, "statusId"    # I
    .param p2, "isSktCard"    # Z
    .param p3, "isRoaming"    # Z
    .param p4, "canShowAlert"    # Z

    .prologue
    const/4 v3, 0x1

    .line 347
    const/4 v0, 0x0

    .line 351
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 356
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 358
    :sswitch_0
    const-string v1, "SKT_NRC_16_MSC_TEMPORARILY_NOT_REACHABLE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 363
    :sswitch_1
    const-string v1, "SKT_NRC_17_NETWORK_FAILURE"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 368
    :sswitch_2
    const-string v1, "SKT_NRC_22_CONGESTION"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0, p4, v3}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->showDialog(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 356
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
    .line 82
    const-string v0, "QcrilSKTRejectCause"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method protected processIntentBroadcast()V
    .locals 7

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "bOtaIsRunning":Z
    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 91
    const-string v5, "ril.card_operator"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "card_operator":Ljava/lang/String;
    const-string v5, "ril.card_provisioned"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "card_provisioned":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v5, "SKT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    :cond_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "IntentOtaInService":Landroid/content/Intent;
    const-string v5, "send intent OTA_IN_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 101
    sget-object v5, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 114
    .end local v0    # "IntentOtaInService":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->srv_status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 109
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_NO_SERVICE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "IntentOtaNoService":Landroid/content/Intent;
    const-string v5, "send intent OTA_NO_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 111
    sget-object v5, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

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

    .line 121
    const/4 v7, 0x0

    .line 122
    .local v7, "isRoaming":Z
    sget-object v10, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 123
    .local v9, "ss":Landroid/telephony/ServiceState;
    const/4 v2, 0x1

    .line 124
    .local v2, "canShowAlert":Z
    invoke-super {p0}, Lcom/lge/telephony/KrRejectCause/SKTRejectCause;->isUsimRoaming()Z

    move-result v0

    .line 126
    .local v0, "IsUsimRoaming":Z
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

    iget v11, p0, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->radio_tech:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 128
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eq v10, v12, :cond_1

    :cond_0
    if-ne v0, v12, :cond_6

    .line 129
    :cond_1
    const/4 v7, 0x1

    .line 134
    :goto_0
    const-string v10, "ril.card_operator"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "card_operator":Ljava/lang/String;
    const-string v10, "ril.card_provisioned"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "card_provisioned":Ljava/lang/String;
    const-string v10, "SKT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 137
    .local v8, "isSktCard":Z
    const-string v10, "no"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 141
    .local v6, "isNotProvisioned":Z
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 142
    const/4 v2, 0x0

    .line 147
    :cond_2
    sget-object v10, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 148
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 151
    .local v5, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v9, :cond_3

    .line 152
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

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 156
    :cond_3
    if-eqz v5, :cond_4

    const-string v11, "com.lge.ota.SKTUsimDownloadActivity"

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 163
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

    invoke-virtual {p0, v10}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->log(Ljava/lang/String;)V

    .line 172
    :goto_1
    return-void

    .line 131
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v3    # "card_operator":Ljava/lang/String;
    .end local v4    # "card_provisioned":Ljava/lang/String;
    .end local v5    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "isNotProvisioned":Z
    .end local v8    # "isSktCard":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 168
    .restart local v1    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "card_operator":Ljava/lang/String;
    .restart local v4    # "card_provisioned":Ljava/lang/String;
    .restart local v5    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v6    # "isNotProvisioned":Z
    .restart local v8    # "isSktCard":Z
    :cond_7
    invoke-direct {p0, p1, v8, v7, v2}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->processIllegalIdentity(IZZZ)V

    .line 169
    invoke-direct {p0, p1, v8, v7, v2}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->processGprsNotAllowed(IZZZ)V

    .line 170
    invoke-direct {p0, p1, v8, v7, v2}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->processPlmnNotAllowed(IZZZ)V

    .line 171
    invoke-direct {p0, p1, v8, v7, v2}, Lcom/lge/telephony/KrRejectCause/QcrilSKTRejectCause;->processTempReject(IZZZ)V

    goto :goto_1
.end method
