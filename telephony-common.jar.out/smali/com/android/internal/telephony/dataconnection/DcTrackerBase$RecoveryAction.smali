.class public Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RecoveryAction"
.end annotation


# static fields
.field public static final CLEANUP:I = 0x1

.field public static final DNS_QUERY_TO_KR:I = 0x6

.field public static final DNS_QUERY_TO_VZW:I = 0x5

.field public static final GET_DATA_CALL_LIST:I = 0x0

.field public static final RADIO_RESTART:I = 0x3

.field public static final RADIO_RESTART_WITH_PROP:I = 0x4

.field public static final REREGISTER:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 2759
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->isAggressiveRecovery(I)Z

    move-result v0

    return v0
.end method

.method private static isAggressiveRecovery(I)Z
    .locals 3
    .param p0, "value"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2774
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_VZW:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2775
    if-lt p0, v0, :cond_0

    .line 2779
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2775
    goto :goto_0

    .line 2779
    :cond_1
    if-eq p0, v0, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-ne p0, v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
