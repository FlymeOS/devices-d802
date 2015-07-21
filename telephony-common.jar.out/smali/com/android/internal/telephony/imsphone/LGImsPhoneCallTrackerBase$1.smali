.class Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;
.super Lcom/android/ims/ImsCall$Listener;
.source "LGImsPhoneCallTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 868
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 871
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallConferenceExtendFailed reasonInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$900(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 875
    if-eqz v0, :cond_1

    .line 876
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-static {v0, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    new-instance v3, Lcom/android/ims/ImsException;

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallResult(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;Ljava/lang/Throwable;)V

    .line 882
    :goto_1
    return-void

    .line 871
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallConferenceExtendFailed fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 886
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 889
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallConferenceExtendReceived"

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$1000(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 892
    if-eqz v0, :cond_0

    .line 893
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallUpdate(ILjava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallUpdateReceived(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;)V

    .line 898
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallConferenceExtendReceived fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v3, 0x0

    .line 852
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 855
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallConferenceExtended"

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$800(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 858
    if-eqz v0, :cond_0

    .line 859
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallResult(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;Ljava/lang/Throwable;)V

    .line 863
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallConferenceExtended fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsConferenceState;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 970
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 973
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallConferenceStateUpdated size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$1500(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 977
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 978
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallConferenceState(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallConferenceStateChanged(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;)V

    .line 983
    :goto_1
    return-void

    .line 973
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallConferenceStateUpdated fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    .line 737
    return-void
.end method

.method public onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 743
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 744
    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V

    .line 768
    return-void
.end method

.method public onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v3, 0x0

    .line 902
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 905
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallInviteParticipantsRequestDelivered"

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$1100(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 908
    if-eqz v0, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallResult(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;Ljava/lang/Throwable;)V

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallInviteParticipantsRequestDelivered fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 921
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallInviteParticipantsRequestFailed reasonInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$1200(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 925
    if-eqz v0, :cond_1

    .line 926
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-static {v0, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    new-instance v3, Lcom/android/ims/ImsException;

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallResult(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;Ljava/lang/Throwable;)V

    .line 932
    :goto_1
    return-void

    .line 921
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 930
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallInviteParticipantsRequestFailed fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 814
    return-void
.end method

.method public onCallMerged(Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 772
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v3, "onCallMerged"

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$500(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 775
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    .line 776
    .local v1, "foregroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    .line 777
    .local v0, "backgroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V

    .line 806
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->updatePhoneStateInternal()V

    .line 807
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyPreciseCallStateChanged()V

    goto :goto_0
.end method

.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    .line 636
    return-void
.end method

.method public onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v3, 0x0

    .line 936
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 939
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallRemoveParticipantsRequestDelivered"

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$1300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 942
    if-eqz v0, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallResult(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;Ljava/lang/Throwable;)V

    .line 947
    :goto_0
    return-void

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallRemoveParticipantsRequestDelivered fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 955
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallRemoveParticipantsRequestFailed reasonInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$1400(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 959
    if-eqz v0, :cond_1

    .line 960
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-static {v0, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    new-instance v3, Lcom/android/ims/ImsException;

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallResult(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;Ljava/lang/Throwable;)V

    .line 966
    :goto_1
    return-void

    .line 955
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 964
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallRemoveParticipantsRequestFailed fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallResumeFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$400(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 758
    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V

    .line 763
    return-void
.end method

.method public onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V

    .line 749
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/4 v4, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStartFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$000(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const/16 v2, 0x67

    new-instance v3, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;

    invoke-direct {v3, v4, p1, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$CallEvent;-><init>(ILcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 658
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    .line 641
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 10
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 663
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCallTerminated reasonCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$100(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 666
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    .line 667
    .local v3, "foregroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    .line 668
    .local v0, "backgroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v5

    .line 669
    .local v5, "ringingCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 676
    .local v4, "oldState":Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v2

    .line 679
    .local v2, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6, v2, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->setDisconnectReason(Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;Lcom/android/ims/ImsReasonInfo;)I

    move-result v1

    .line 682
    .local v1, "cause":I
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cause = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " conn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$200(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 684
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->getConnectTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 686
    const/4 v6, 0x3

    if-ne v1, v6, :cond_8

    .line 687
    const/16 v1, 0x10

    .line 693
    :cond_2
    :goto_1
    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;->getImsCallInternal()Lcom/android/ims/ImsCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 695
    const/16 v1, 0x5b

    .line 698
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v1, v8}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->processCallStateChangeInternal(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 700
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v6

    const/16 v7, 0x1f5

    if-ne v6, v7, :cond_5

    .line 701
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->keepBackgroundHeld()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_5

    .line 712
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->resumeBackground()V

    .line 716
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_7

    .line 718
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->allowResumeBackground()V

    .line 722
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_0

    .line 723
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-nez v6, :cond_0

    .line 728
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getPendingMOInternal()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 729
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->dialPendingMo()V

    goto/16 :goto_0

    .line 689
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public onCallUpdateFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 822
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallUpdateFailed reasonInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$600(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 826
    if-eqz v0, :cond_1

    .line 827
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-static {v0, p2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    new-instance v3, Lcom/android/ims/ImsException;

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallResult(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;Ljava/lang/Throwable;)V

    .line 833
    :goto_1
    return-void

    .line 822
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 831
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallUpdateFailed fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 837
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->findConnectionInternal(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;

    move-result-object v0

    .line 840
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/LGImsPhoneConnectionBase;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallUpdateReceived"

    # invokes: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$700(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;Ljava/lang/String;)V

    .line 843
    if-eqz v0, :cond_0

    .line 844
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    # getter for: Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->access$300(Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;)Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->forCallUpdate(Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBaseEx;->notifyImsCallUpdateReceived(Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;)V

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    const-string v2, "onCallUpdateReceived fail to find connection"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase$1;->this$0:Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/LGImsPhoneCallTrackerBase;->getImsCallListenerInternal()Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V

    .line 646
    return-void
.end method

.method public onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 989
    return-void
.end method
