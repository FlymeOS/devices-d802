.class Lcom/android/server/ConnectivityService$10;
.super Landroid/telephony/PhoneStateListener;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 7243
    iput-object p1, p0, Lcom/android/server/ConnectivityService$10;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 7246
    iget-object v0, p0, Lcom/android/server/ConnectivityService$10;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    # setter for: Lcom/android/server/ConnectivityService;->mLteRssi:I
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5702(Lcom/android/server/ConnectivityService;I)I

    .line 7247
    return-void
.end method
