.class public Lcom/android/internal/telephony/LGPhoneInterfaceManager;
.super Lcom/android/internal/telephony/ILGTelephony$Stub;
.source "LGPhoneInterfaceManager.java"


# static fields
.field private static final DBG:Z = true

.field public static final EVENT_EPDG_SETUP_DATA_CALL:I = 0x2

.field public static final LISTEN_SETUP_DATA_CALL_RSP_PARAM:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "LGPhoneInterfaceManager"

.field private static sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;


# instance fields
.field mMyRil:Lcom/android/internal/telephony/RIL;

.field mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field public myfeature:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/RIL;Landroid/content/Context;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "myril"    # Lcom/android/internal/telephony/RIL;
    .param p3, "con"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/ILGTelephony$Stub;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->myfeature:I

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 59
    iput-object p2, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyRil:Lcom/android/internal/telephony/RIL;

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->myfeature:I

    .line 63
    iget v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->myfeature:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->myfeature:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 65
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ePDGinterface;

    iget-object v1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p2, v1, p3}, Lcom/android/internal/telephony/ePDGinterface;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->publish()V

    .line 69
    return-void
.end method

.method static init(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/RIL;Landroid/content/Context;)Lcom/android/internal/telephony/LGPhoneInterfaceManager;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "myril"    # Lcom/android/internal/telephony/RIL;
    .param p2, "con"    # Landroid/content/Context;

    .prologue
    .line 45
    const-class v1, Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/RIL;Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    .line 51
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 49
    :cond_0
    const-string v0, "LGPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!    sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "LGPhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JPhoneMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 74
    const-string v0, "Jphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 75
    return-void
.end method


# virtual methods
.method public checkDataProfileEx(II)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "Q_IPv"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public ePDGDeactivateDataCall(Ljava/lang/String;II)V
    .locals 5
    .param p1, "apntype"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "reason"    # I

    .prologue
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ePDG] ePDGDeactivateDataCall start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 135
    const-string v3, "ims"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->myfeature:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .line 138
    .local v2, "myPhone":Lcom/android/internal/telephony/PhoneProxy;
    iget-object v0, v2, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 139
    .local v0, "myBasePhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 141
    .local v1, "myDctracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-nez v1, :cond_0

    .line 143
    const-string v3, "[ePDG] myDctracker=null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 151
    .end local v0    # "myBasePhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v1    # "myDctracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "myPhone":Lcom/android/internal/telephony/PhoneProxy;
    :goto_0
    return-void

    .line 146
    .restart local v0    # "myBasePhone":Lcom/android/internal/telephony/PhoneBase;
    .restart local v1    # "myDctracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .restart local v2    # "myPhone":Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setIMSteardown()V

    goto :goto_0

    .line 149
    .end local v0    # "myBasePhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v1    # "myDctracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "myPhone":Lcom/android/internal/telephony/PhoneProxy;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/telephony/ePDGinterface;->ePDGDeactivateDataCall(Ljava/lang/String;IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apntype"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->getDPfromtype(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v9

    .line 114
    .local v9, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v9, :cond_0

    .line 116
    const-string v0, "[ePDG] setup_data_call fail cause apn is null "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] setup_data_call success get dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    iget-object v3, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ePDGinterface;->ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAPNList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getAPNList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDPfromtype(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 5
    .param p1, "apntype"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v3, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    .line 88
    .local v3, "myPhone":Lcom/android/internal/telephony/PhoneProxy;
    iget-object v1, v3, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 89
    .local v1, "myBasePhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 91
    .local v2, "myDctracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-nez v2, :cond_0

    .line 93
    const-string v4, "[ePDG] myDctracker=null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDPbyType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 98
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0
.end method

.method public getDebugInfo(II)[I
    .locals 1
    .param p1, "infotype"    # I
    .param p2, "itemnum"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPcscfAddress(ILjava/lang/String;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "ipv"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPcscfAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ipv :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/ePDGinterface;->getPcscfAddress(ILjava/lang/String;)V

    .line 177
    return-void
.end method

.method public setePDGsetprefTest(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "apntype"    # Ljava/lang/String;
    .param p2, "data_pref"    # I

    .prologue
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setePDGsetprefTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->getDPfromtype(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 157
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v0, :cond_0

    .line 159
    const-string v1, "[ePDG] setePDGsetprefTest fail cause apn is null "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mMyePDGinterface:Lcom/android/internal/telephony/ePDGinterface;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/telephony/ePDGinterface;->setePDGsetprefTest(Ljava/lang/String;ILandroid/os/Message;)V

    .line 165
    const/4 v1, 0x1

    goto :goto_0
.end method
