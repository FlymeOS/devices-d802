.class Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;
.super Ljava/lang/Object;
.source "GsmServiceStateTrackerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->sendSingleTimezoneIntentCTC(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

.field final synthetic val$settingZoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;->val$settingZoneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 979
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 980
    packed-switch p2, :pswitch_data_0

    .line 992
    :goto_0
    return-void

    .line 982
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

    const-string v1, "Asia/Shanghai"

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_mode"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 986
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;->val$settingZoneId:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_mode"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
