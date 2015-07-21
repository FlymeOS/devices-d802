.class public final Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;
.super Ljava/lang/Object;
.source "SMSDispatcherEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcherEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PendingMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage$SEND_TYPE;
    }
.end annotation


# instance fields
.field protected sendType:Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage$SEND_TYPE;

.field protected tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 258
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage$SEND_TYPE;->NORMAL:Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage$SEND_TYPE;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;->sendType:Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage$SEND_TYPE;

    .line 259
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage$SEND_TYPE;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "sendType"    # Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage$SEND_TYPE;

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 263
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage;->sendType:Lcom/android/internal/telephony/SMSDispatcherEx$PendingMessage$SEND_TYPE;

    .line 264
    return-void
.end method
