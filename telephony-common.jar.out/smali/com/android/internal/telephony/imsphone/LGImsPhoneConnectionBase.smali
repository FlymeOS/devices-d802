.class public abstract Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
.super Lcom/android/internal/telephony/ConnectionEx;
.source "LGImsPhoneConnectionBase.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ILGImsPhoneConnectionInternal;


# static fields
.field private static final LGT_DUAL_NUM_MARK:Ljava/lang/String; = "#"


# instance fields
.field protected mAddresses:[Ljava/lang/String;

.field protected mDialStrings:[Ljava/lang/String;

.field private mIsConference:Z

.field private mLastImsReasonInfo:Lcom/android/ims/ImsReasonInfo;

.field protected mOnRemoteHeld:Z

.field protected mPreciseCause:I

.field protected mRequestedLGCallProfile:Lcom/android/internal/telephony/LGCallProfile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/android/internal/telephony/ConnectionEx;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mAddresses:[Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mDialStrings:[Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mPreciseCause:I

    .line 21
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mOnRemoteHeld:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mIsConference:Z

    .line 24
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mLastImsReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mRequestedLGCallProfile:Lcom/android/internal/telephony/LGCallProfile;

    return-void
.end method

.method private isLguDualNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mAddresses:[Ljava/lang/String;

    return-object v0
.end method

.method protected getDualNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "cdnipNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    const-string v1, "Korea_CDNIP"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const-string v1, "LGU"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->isLguDualNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    new-instance p2, Ljava/lang/String;

    .end local p2    # "cdnipNumber":Ljava/lang/String;
    const-string v0, "#"

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-object p2

    .line 91
    .restart local p2    # "cdnipNumber":Ljava/lang/String;
    :cond_1
    const-string v1, "KT"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKT"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    move-object p2, v0

    .line 96
    goto :goto_0
.end method

.method protected abstract getImsCallInternal()Lcom/android/ims/ImsCall;
.end method

.method public abstract getLGImsPhoneCall()Lcom/android/internal/telephony/ILGImsPhoneCall;
.end method

.method public getLastReasonInfo()Lcom/android/ims/ImsReasonInfo;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mLastImsReasonInfo:Lcom/android/ims/ImsReasonInfo;

    return-object v0
.end method

.method public getRequestedLGCallProfile()Lcom/android/internal/telephony/LGCallProfile;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mRequestedLGCallProfile:Lcom/android/internal/telephony/LGCallProfile;

    return-object v0
.end method

.method public isConference()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mIsConference:Z

    return v0
.end method

.method public setDialStrings([Ljava/lang/String;)V
    .locals 3
    .param p1, "recipients"    # [Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mDialStrings:[Ljava/lang/String;

    .line 56
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mAddresses:[Ljava/lang/String;

    .line 59
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->setRedialNumber(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mAddresses:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mIsConference:Z

    .line 67
    return-void
.end method

.method protected setLastReasonInfo(Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mLastImsReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 37
    return-void
.end method

.method public setRequestedLGCallProfile(Lcom/android/internal/telephony/LGCallProfile;)V
    .locals 0
    .param p1, "callProfile"    # Lcom/android/internal/telephony/LGCallProfile;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->mRequestedLGCallProfile:Lcom/android/internal/telephony/LGCallProfile;

    .line 72
    return-void
.end method

.method protected updateLguDualNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    const-string v1, "Korea_CDNIP"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "LGU"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSimOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->isLguDualNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 108
    .end local p1    # "address":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
