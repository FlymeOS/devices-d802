.class public Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;
.super Ljava/lang/Object;
.source "LGImsPhoneCallTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CallEvent"
.end annotation


# instance fields
.field final mEvent:I

.field final mImsCall:Lcom/android/ims/ImsCall;

.field final mImsReasonInfo:Lcom/android/ims/ImsReasonInfo;


# direct methods
.method constructor <init>(ILcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;->mEvent:I

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;->mImsCall:Lcom/android/ims/ImsCall;

    .line 49
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;->mImsReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 50
    return-void
.end method
