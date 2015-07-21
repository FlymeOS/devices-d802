.class public Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;
.super Lcom/lge/telephony/KrRejectCause/KTRejectCause;
.source "InfineonKTRejectCause.java"


# static fields
.field static final DBG:Z = true

.field private static final DELAYED_5SEC_TIMEOUT:I = 0x1388

.field static final LOG_TAG:Ljava/lang/String; = "InfineonKTRejectCause"

.field private static final MSG_ID_5SEC_DELAYED_TIMEOUT:I = 0x1


# instance fields
.field m5SECDelayedTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/KTRejectCause;-><init>()V

    .line 43
    new-instance v0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause$1;-><init>(Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;)V

    iput-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->m5SECDelayedTimeoutHandler:Landroid/os/Handler;

    .line 34
    sput-object p1, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    .line 38
    iget-object v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->m5SECDelayedTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->checkManagedRoamingDialogAtBoot()V

    return-void
.end method

.method private checkManagedRoamingDialogAtBoot()V
    .locals 5

    .prologue
    .line 58
    sget-object v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 59
    .local v1, "ss":Landroid/telephony/ServiceState;
    sget-object v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "airplaneMode":I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->createManagedRoamingDialog()V

    .line 69
    :cond_1
    return-void
.end method

.method private getGsmServiceStatusWithoutCard()I
    .locals 4

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "statusId":I
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-nez v1, :cond_1

    .line 224
    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 225
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 227
    :cond_1
    if-nez v0, :cond_2

    const-string v1, "KT"

    const-string v2, "ril.card_operator"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    const/16 v0, 0x64

    .line 231
    :cond_2
    return v0
.end method


# virtual methods
.method protected checkGsmServiceStatus()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "statusId":I
    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-string v1, "canShowAlert = false"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 153
    iput-boolean v8, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->canShowAlert:Z

    .line 154
    invoke-direct {p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->getGsmServiceStatusWithoutCard()I

    move-result v0

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-nez v1, :cond_4

    .line 161
    :cond_2
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 162
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 164
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->network_op_mode:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-ne v1, v5, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    .line 168
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 171
    :cond_4
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_domain:I

    if-nez v1, :cond_7

    .line 175
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v7, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 185
    :cond_6
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_7
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v1, v4, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :cond_8
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_domain:I

    if-ne v1, v4, :cond_0

    .line 192
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v6, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v7, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 200
    :cond_9
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    invoke-virtual {p0, v1, v0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->getStatusIdFromRejectCause(II)I

    move-result v0

    .line 202
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_a

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v6, :cond_a

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-ne v1, v7, :cond_0

    .line 206
    :cond_a
    iput-boolean v8, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->canShowAlert:Z

    .line 208
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->postDismissDialog()V

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

    .line 254
    const-string v1, "no"

    const-string v2, "ril.card_provisioned"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 255
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->ms_op_mode:I

    if-ne v1, v7, :cond_7

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-ne v1, v6, :cond_1

    :cond_0
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_1
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-ne v1, v6, :cond_3

    :cond_2
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v7, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_9

    :cond_3
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v7, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_5

    :cond_4
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_5
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    :cond_6
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    :cond_7
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->ms_op_mode:I

    if-nez v1, :cond_8

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v1, v6, :cond_9

    :cond_8
    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->ms_op_mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-eq v1, v5, :cond_9

    iget v1, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-ne v1, v6, :cond_a

    .line 321
    :cond_9
    const/4 v0, 0x1

    .line 328
    :cond_a
    return v0
.end method

.method protected checkManagedRoamingDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 114
    sget-object v3, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 115
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->checkGsmServiceStatus()I

    move-result v2

    .line 116
    .local v2, "statusId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkManagedRoamingDialog: srv_status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

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

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 117
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->pre_srv_status:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->pre_srv_status:I

    if-ne v3, v6, :cond_2

    :cond_0
    iget v3, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v3, v5, :cond_2

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v3, v6, :cond_2

    .line 122
    sget-object v3, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "airplaneMode":I
    if-nez v0, :cond_1

    .line 128
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-nez v3, :cond_1

    .line 129
    const-string v3, "createManagedRoamingDialog show"

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->createManagedRoamingDialog()V

    .line 143
    .end local v0    # "airplaneMode":I
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-ne v3, v6, :cond_1

    :cond_3
    if-nez v2, :cond_1

    .line 138
    sget-boolean v3, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->isManagedRoamingDialogDisplayed:Z

    if-eqz v3, :cond_1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkManagedRoamingDialog: Dismiss dialog, srv_staus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->dismissManagedRoamingDialog()V

    goto :goto_0
.end method

.method protected isNeedDelayed()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 237
    iget v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mm_reject_cause:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->gmm_reject_cause:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-nez v0, :cond_2

    .line 244
    :cond_1
    const/4 v0, 0x1

    .line 246
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
    .line 74
    const-string v0, "InfineonKTRejectCause"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method protected processIntentBroadcast()V
    .locals 7

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "bOtaIsRunning":Z
    const-string v5, "gsm.lge.ota_is_running"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 83
    const-string v5, "ril.card_operator"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "card_operator":Ljava/lang/String;
    const-string v5, "ril.card_provisioned"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "card_provisioned":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v5, "KT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    :cond_0
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 94
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "IntentOtaInService":Landroid/content/Intent;
    const-string v5, "send intent OTA_IN_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 96
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 109
    .end local v0    # "IntentOtaInService":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 98
    :cond_3
    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->srv_status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 104
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.OTA_NO_SERVICE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "IntentOtaNoService":Landroid/content/Intent;
    const-string v5, "send intent OTA_NO_SERVICE"

    invoke-virtual {p0, v5}, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->log(Ljava/lang/String;)V

    .line 106
    sget-object v5, Lcom/lge/telephony/KrRejectCause/InfineonKTRejectCause;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
