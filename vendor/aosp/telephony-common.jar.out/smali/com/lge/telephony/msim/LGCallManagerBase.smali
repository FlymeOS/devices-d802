.class public Lcom/lge/telephony/msim/LGCallManagerBase;
.super Ljava/lang/Object;
.source "LGCallManagerBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LGCallManager"


# instance fields
.field protected targetInstance:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;I)V
    .locals 0
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method public canConference(Lcom/android/internal/telephony/Call;I)Z
    .locals 1
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subscription"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected(I)V
    .locals 0
    .param p1, "subscription"    # I

    .prologue
    .line 270
    return-void
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "extras"    # [Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 224
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public getActiveSubscription()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public getBgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFgCallConnections(I)Ljava/util/List;
    .locals 1
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsIMSECCSetup()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalCallHoldStatus(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneInCall(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceState(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 149
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getTargetInstatnce()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/telephony/msim/LGCallManagerBase;->targetInstance:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method public hasActiveBgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public hasActiveFgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public hasActiveFgCallAnyPhone()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public hasActiveRingingCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public hasDisconnectedBgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public hasDisconnectedFgCall(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isCallOnCsvtEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isCallOnImsEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isImsPhoneActive()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isImsPhoneIdle()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 288
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 326
    return-void
.end method

.method public registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 124
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 97
    return-void
.end method

.method public setActiveSubscription(I)V
    .locals 0
    .param p1, "subscription"    # I

    .prologue
    .line 302
    return-void
.end method

.method public setCallAudioDrivers(ILcom/android/internal/telephony/Call$State;)V
    .locals 0
    .param p1, "phoneType"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 308
    return-void
.end method

.method public setIsIMSECCSetup(Z)V
    .locals 0
    .param p1, "sending"    # Z

    .prologue
    .line 319
    return-void
.end method

.method public switchToLocalHold(IZ)V
    .locals 0
    .param p1, "subscription"    # I
    .param p2, "switchTo"    # Z

    .prologue
    .line 315
    return-void
.end method

.method public unregisterForCallModify(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 291
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 329
    return-void
.end method

.method public unregisterForSubscriptionChange(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 127
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 105
    return-void
.end method
