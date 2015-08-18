.class public Lcom/lge/wfds/WfdsMonitor;
.super Ljava/lang/Object;
.source "WfdsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;
    }
.end annotation


# static fields
.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final BASE:I = 0x902000

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x902018

.field private static final P2P_EVENT_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field private static final TAG:Ljava/lang/String; = "WfdsMonitor"

.field public static final WFDS_DEVICE_FOUND_EVENT:I = 0x902003

.field public static final WFDS_DEVICE_INFO_LOST_EVENT:I = 0x902017

.field public static final WFDS_DEVICE_LOST_EVENT:I = 0x902016

.field private static final WFDS_EVENT_DEVICE_FOUND_STR:Ljava/lang/String; = "WFDS-DEVICE-FOUND"

.field private static final WFDS_EVENT_DEVICE_INFO_LOST_STR:Ljava/lang/String; = "WFDS-DEVICE-INFO-LOST"

.field private static final WFDS_EVENT_DEVICE_LOST_STR:Ljava/lang/String; = "WFDS-DEVICE-LOST"

.field private static final WFDS_EVENT_GO_NEG_FAIL_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final WFDS_EVENT_GO_NEG_REQUEST_STR:Ljava/lang/String; = "WFDS-GO-NEG-REQUEST"

.field private static final WFDS_EVENT_GROUP_FORMATION_FAIL_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field private static final WFDS_EVENT_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field private static final WFDS_EVENT_PERSISTENT_UNKNOWN_GROUP_STR:Ljava/lang/String; = "WFDS-PERSISTENT-UNKNOWN-GROUP"

.field private static final WFDS_EVENT_PREFIX_STR:Ljava/lang/String; = "WFDS"

.field private static final WFDS_EVENT_PROV_DISC_ACCEPT_STR:Ljava/lang/String; = "WFDS-PROV-DISC-ACCEPT"

.field private static final WFDS_EVENT_PROV_DISC_DEFER_STR:Ljava/lang/String; = "WFDS-PROV-DISC-DEFER"

.field private static final WFDS_EVENT_PROV_DISC_DEF_PIN_STR:Ljava/lang/String; = "WFDS-PROV-DISC-DEF-PIN"

.field private static final WFDS_EVENT_PROV_DISC_DISPLAY_STR:Ljava/lang/String; = "WFDS-PROV-DISC-SHOW-PIN"

.field private static final WFDS_EVENT_PROV_DISC_FAIL_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field private static final WFDS_EVENT_PROV_DISC_KEYPAD_STR:Ljava/lang/String; = "WFDS-PROV-DISC-ENTER-PIN"

.field private static final WFDS_EVENT_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "WFDS-PROV-DISC-PBC-REQ"

.field private static final WFDS_EVENT_PROV_DISC_PBC_RESP_STR:Ljava/lang/String; = "WFDS-PROV-DISC-PBC-RESP"

.field private static final WFDS_EVENT_PROV_DISC_PERSISTENT_RESULT_STR:Ljava/lang/String; = "WFDS-PROV-DISC-PERSISTENT-RESULT"

.field private static final WFDS_EVENT_PROV_DISC_REQ_SENT_STR:Ljava/lang/String; = "WFDS-PROV-DISC-SENT"

.field private static final WFDS_EVENT_PROV_DISC_REQ_STR:Ljava/lang/String; = "WFDS-PROV-DISC-REQ"

.field private static final WFDS_EVENT_SUPP_CONNECTED_STR:Ljava/lang/String; = "WFDS-SUPPLICANT-CONNECTED"

.field private static final WFDS_EVENT_SUPP_TERMINATING_STR:Ljava/lang/String; = "CTRL-EVENT-TERMINATING "

.field public static final WFDS_GET_INTERFACE_ADDRESS_EVENT:I = 0x902014

.field public static final WFDS_GO_NEG_FAIL_EVENT:I = 0x902010

.field public static final WFDS_GO_NEG_REQUEST_EVENT:I = 0x90200f

.field public static final WFDS_P2P_DISCONNECTED_EVENT:I = 0x902015

.field public static final WFDS_P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x902013

.field public static final WFDS_P2P_GROUP_REMOVED_EVENT:I = 0x902012

.field public static final WFDS_PERSISTENT_UNKNOWN_EVENT:I = 0x90200e

.field public static final WFDS_PROV_DISC_ACCEPT_EVENT:I = 0x902006

.field public static final WFDS_PROV_DISC_DEFER_EVENT:I = 0x902011

.field public static final WFDS_PROV_DISC_DEF_PIN_EVENT:I = 0x90200a

.field public static final WFDS_PROV_DISC_DISPLAY_EVENT:I = 0x90200b

.field public static final WFDS_PROV_DISC_FAIL_EVENT:I = 0x902007

.field public static final WFDS_PROV_DISC_KEYPAD_EVENT:I = 0x90200c

.field public static final WFDS_PROV_DISC_PBC_REQ_EVENT:I = 0x902008

.field public static final WFDS_PROV_DISC_PBC_RESP_EVENT:I = 0x902009

.field public static final WFDS_PROV_DISC_PERSISTENT_EVENT:I = 0x90200d

.field public static final WFDS_PROV_DISC_REQ_EVENT:I = 0x902004

.field public static final WFDS_PROV_DISC_REQ_SENT_EVENT:I = 0x902005

.field public static final WFDS_SUPPLICANT_CONNECTED:I = 0x902001

.field public static final WFDS_SUPPLICANT_TERMINATING:I = 0x902002


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScanAlwaysAvailable:Z

.field private mThread:Ljava/lang/Thread;

.field private mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;

.field private mWfdsNative:Lcom/lge/wfds/WfdsNative;

.field private mWfdsStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/WfdsNative;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p3, "wfdsNative"    # Lcom/lge/wfds/WfdsNative;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/lge/wfds/WfdsMonitor;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 91
    iput-object p3, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 92
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsMonitor;->getScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsMonitor;->mScanAlwaysAvailable:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsMonitor;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/wfds/WfdsMonitor;)Lcom/lge/wfds/WfdsNative;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wfds/WfdsMonitor;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    return-object v0
.end method


# virtual methods
.method public getScanAlwaysAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lcom/lge/wfds/WfdsMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method declared-synchronized handleWifiScanAlwaysAvailable()V
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsMonitor;->getScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsMonitor;->mScanAlwaysAvailable:Z

    .line 121
    const-string v0, "WfdsMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ScanAlwaysAvailable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/wfds/WfdsMonitor;->mScanAlwaysAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;-><init>(Lcom/lge/wfds/WfdsMonitor;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;

    .line 98
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mThread:Ljava/lang/Thread;

    .line 99
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    const-string v0, "WfdsMonitor"

    const-string v1, "WFDS Monitor is created and started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x902001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 110
    iput-object v1, p0, Lcom/lge/wfds/WfdsMonitor;->mThread:Ljava/lang/Thread;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->disconnectToSupplicant()V

    .line 114
    iput-object v1, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;

    .line 116
    :cond_1
    const-string v0, "WfdsMonitor"

    const-string v1, "WFDS Monitor is stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
