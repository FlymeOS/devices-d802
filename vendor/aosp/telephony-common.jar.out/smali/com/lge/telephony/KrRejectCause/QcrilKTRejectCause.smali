.class public Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/KTRejectCause;
.source "QcrilKTRejectCause.java"


# static fields
.field static final DBG:Z = true

.field private static final DELAYED_5SEC_TIMEOUT:I = 0x1388

.field static final LOG_TAG:Ljava/lang/String; = "QcrilKTRejectCause"

.field private static final MSG_ID_5SEC_DELAYED_TIMEOUT:I = 0x1


# instance fields
.field m5SECDelayedTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;-><init>()V

    .line 42
    new-instance v0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->m5SECDelayedTimeoutHandler:Landroid/os/Handler;

    .line 33
    sput-object p1, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    .line 37
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->m5SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->checkManagedRoamingDialogAtBoot()V

    return-void
.end method

.method private checkGsmServiceStatusWithoutCard()I
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "statusId":I
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 198
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 199
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 201
    if-nez v0, :cond_0

    const-string v1, "KT"

    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/16 v0, 0x64

    .line 206
    :cond_0
    return v0
.end method

.method private checkManagedRoamingDialogAtBoot()V
    .locals 5

    .prologue
    .line 57
    sget-object v2, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 58
    .local v1, "ss":Landroid/telephony/ServiceState;
    sget-object v2, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "airplaneMode":I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "false"

    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->createManagedRoamingDialog()V

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkGsmServiceStatus()I
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "statusId":I
    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "canShowAlert = false"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 140
    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->canShowAlert:Z

    .line 141
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->checkGsmServiceStatusWithoutCard()I

    move-result v0

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eq v1, v4, :cond_3

    .line 145
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 146
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 148
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->network_op_mode:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    .line 152
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 155
    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_domain:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 157
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v8, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 167
    :cond_4
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    goto :goto_0

    .line 170
    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_domain:I

    if-ne v1, v4, :cond_0

    .line 172
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v6, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v8, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 180
    :cond_6
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 182
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-ne v1, v6, :cond_0

    .line 183
    :cond_7
    iput-boolean v7, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->canShowAlert:Z

    .line 185
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->postDismissDialog()V

    goto/16 :goto_0
.end method

.method protected checkLockStatusOta()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/16 v6, 0x16

    const/16 v5, 0x11

    const/16 v4, 0x10

    .line 228
    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 229
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->ms_op_mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-ne v1, v6, :cond_1

    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_1
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-ne v1, v6, :cond_3

    :cond_2
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v7, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_9

    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v7, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_5

    :cond_4
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    :cond_6
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    :cond_7
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->ms_op_mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_8
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->ms_op_mode:I

    if-ne v1, v7, :cond_a

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-ne v1, v6, :cond_a

    .line 295
    :cond_9
    const/4 v0, 0x1

    .line 302
    :cond_a
    return v0
.end method

.method protected checkManagedRoamingDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 108
    sget-object v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 109
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->checkGsmServiceStatus()I

    move-result v2

    .line 110
    .local v2, "statusId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkManagedRoamingDialog: srv_status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ss.getState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ss.getDataRegState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 111
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->pre_srv_status:I

    if-ne v3, v5, :cond_1

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-nez v3, :cond_1

    .line 114
    sget-object v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "airplaneMode":I
    if-nez v0, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v3, :cond_0

    const-string v3, "false"

    const-string v4, "gsm.lge.ota_is_running"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string v3, "createManagedRoamingDialog show"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->createManagedRoamingDialog()V

    .line 131
    .end local v0    # "airplaneMode":I
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-ne v3, v5, :cond_0

    if-nez v2, :cond_0

    .line 126
    sget-boolean v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-eqz v3, :cond_0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkManagedRoamingDialog: Dismiss dialog, srv_staus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->dismissManagedRoamingDialog()V

    goto :goto_0
.end method

.method protected isNeedDelayed()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 212
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->gmm_reject_cause:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 220
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "QcrilKTRejectCause"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method protected processIntentBroadcast()V
    .locals 6

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "bOtaIsRunning":Z
    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 84
    if-nez v2, :cond_0

    const-string v3, "KT"

    const-string v4, "ril.card_operator"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "no"

    const-string v4, "ril.card_provisioned"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    :cond_0
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "IntentOtaInService":Landroid/content/Intent;
    const-string v3, "send intent OTA_IN_SERVICE"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 92
    sget-object v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 104
    .end local v0    # "IntentOtaInService":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->srv_status:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 99
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.OTA_NO_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "IntentOtaNoService":Landroid/content/Intent;
    const-string v3, "send intent OTA_NO_SERVICE"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->log(Ljava/lang/String;)V

    .line 101
    sget-object v3, Lcom/lge/telephony/KrRejectCause/QcrilKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
