.class public Lcom/android/internal/telephony/gsm/EmergencyCallController;
.super Landroid/os/Handler;
.source "EmergencyCallController.java"


# static fields
.field private static final AIRPLANE:I = 0x4

.field private static final DBG:Z = true

.field private static final EVENT_AIRPLANE_MODE_DONE:I = 0x2

.field private static final EVENT_CHANGE_NETWORK_TYPE_DONE:I = 0x4

.field private static final EVENT_DIAL:I = 0x5

.field private static final EVENT_FAST_DETACH_DONE:I = 0x1

.field private static final EVENT_FULL_FUNCTIONALITY_MODE_DONE:I = 0x3

.field private static final FAST_DETACH:I = 0x5

.field private static final FULL_FUNCTIONALITY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field private static final TIMEOUT_DIAL_DELAY:I = 0x7d0


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCt:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private mDialString:Ljava/lang/String;

.field private mIsECallOnGoing:Z

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mIsECallOnGoing:Z

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 38
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mCt:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 39
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 40
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "CALL_FRW"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "CALL_FRW"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/EmergencyCallController;->log(Ljava/lang/String;)V

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EmergencyCallController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setModemFunctionalityLevel(ILandroid/os/Message;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EmergencyCallController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setModemFunctionalityLevel(ILandroid/os/Message;)V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EmergencyCallController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkTypeGWForECall(Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :pswitch_3
    const/4 v0, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/EmergencyCallController;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 82
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mCt:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mDialString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dialInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method restoreNetworkType()V
    .locals 3

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mIsECallOnGoing:Z

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mIsECallOnGoing:Z

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 55
    :cond_0
    return-void
.end method

.method startEmergencyCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mDialString:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mIsECallOnGoing:Z

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EmergencyCallController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EmergencyCallController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setModemFunctionalityLevel(ILandroid/os/Message;)V

    .line 47
    return-void
.end method
