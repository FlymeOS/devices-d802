.class public Lcom/android/internal/telephony/SmsBroadcastUndeliveredEx;
.super Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.source "SmsBroadcastUndeliveredEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsBroadcastUndeliveredEx"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "SmsBroadcastUndeliveredEx"

    const-string v1, "scanning raw table for undelivered messages"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsBroadcastUndeliveredEx;->scanRawTable()V

    .line 29
    return-void
.end method
