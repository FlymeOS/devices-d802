.class public Lcom/movial/ipphone/IPPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "IPPhoneProxy.java"


# instance fields
.field private mActivePhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;-><init>()V

    .line 84
    return-void
.end method

.method public static getIPPhoneProfile()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, -0x1

    return v0
.end method

.method public static getIPPhoneServiceState()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForceEmergencyMode()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getImsBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangupFakeCall(Z)V
    .locals 0
    .param p1, "dialed"    # Z

    .prologue
    .line 140
    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 134
    return-void
.end method

.method public setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V
    .locals 0
    .param p1, "state"    # Lcom/movial/ipphone/IPUtils$EmergencyState;

    .prologue
    .line 121
    return-void
.end method

.method public setEmergencyTransitToDialing(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    .prologue
    .line 98
    return-void
.end method

.method public startImsEmergencyCall()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 136
    return-void
.end method
