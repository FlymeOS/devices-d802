.class public Lcom/android/nfc/VNfcService;
.super Lcom/android/nfc/LNfcService;
.source "VNfcService.java"

# interfaces
.implements Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/VNfcService$VNfcBrcmService;,
        Lcom/android/nfc/VNfcService$VEnableDisableTask;,
        Lcom/android/nfc/VNfcService$VNfcServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field static final DBG:Z

.field static final MSG_CARD_EMULATION_AID_PRE_SELECTED:I = 0x40

.field static final MSG_PPSE_ROUTED:I = 0x3d

.field static final MSG_SE_LISTEN_ACTIVATED:I = 0x3e

.field static final MSG_SE_LISTEN_DEACTIVATED:I = 0x3f

.field static final PPSE:Ljava/lang/String; = "325041592E5359532E4444463031"

.field static final RM_NONE:I = 0x0

.field static final RM_OFFHOST:I = 0x2

.field static final RM_ONHOST:I = 0x1

.field public static final SERVICE_BRCM_NAME:Ljava/lang/String; = "nfcvendor"

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field static TAG:Ljava/lang/String;

.field static mIsDisabledCE:Z

.field protected static sService:Lcom/android/nfc/VNfcService;


# instance fields
.field private mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

.field private mIsDeferChangeRoutingTable:Z

.field private mIsDeferChangeRoutingWhenNoApp:Z

.field private mIsDiscoveringDefered:Z

.field mLastScreenState:I

.field protected mNfcBrcmService:Lcom/android/nfc/VNfcService$VNfcBrcmService;

.field public final mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

.field protected mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    .line 47
    const-string v0, "NfcServiceBRCM"

    sput-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/VNfcService;->mIsDisabledCE:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 8
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService;-><init>(Landroid/app/Application;)V

    .line 76
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    iput-boolean v6, p0, Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingTable:Z

    .line 79
    iput-boolean v6, p0, Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingWhenNoApp:Z

    .line 82
    iput-boolean v6, p0, Lcom/android/nfc/VNfcService;->mIsDiscoveringDefered:Z

    .line 388
    new-instance v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;-><init>(Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    .line 101
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "NfcServiceBRCM is Start"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sput-object p0, Lcom/android/nfc/VNfcService;->sService:Lcom/android/nfc/VNfcService;

    .line 105
    const-string v0, "nfc"

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v1}, Lcom/android/nfc/LNfcCommon;->addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 106
    const-string v0, "nfcaddon"

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    invoke-static {v0, v1}, Lcom/android/nfc/LNfcCommon;->addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 108
    new-instance v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    .line 109
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    .line 110
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    check-cast v0, Lcom/android/nfc/DeviceHost;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 111
    new-instance v0, Lcom/android/nfc/LP2pLinkManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    iget-object v4, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getDefaultLlcpMiu()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getDefaultLlcpRwSize()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/LP2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverManager;Lcom/android/nfc/lgsharing/LSharingManager;II)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 115
    new-instance v0, Lcom/android/nfc/LNfcDispatcher;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    iget-boolean v3, p0, Lcom/android/nfc/VNfcService;->mInProvisionMode:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/LNfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 117
    new-instance v0, Lcom/android/nfc/dhimpl/VNativeNfcTest;

    invoke-direct {v0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    .line 124
    iput v6, p0, Lcom/android/nfc/VNfcService;->mLastScreenState:I

    .line 140
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/nfc/cardemulation/VCardEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/VCardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    .line 142
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 145
    :cond_0
    sget-object v0, Lcom/android/nfc/VNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorStablePatch:Z

    if-ne v0, v7, :cond_1

    .line 146
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "TASK_FIRMWARE_DOWNLOAD"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/nfc/VNfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingWhenNoApp:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/nfc/VNfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingWhenNoApp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/VNfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsDiscoveringDefered:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/nfc/VNfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/nfc/VNfcService;->mIsDiscoveringDefered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/nfc/VNfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingTable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/nfc/VNfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingTable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/cardemulation/VCardEmulationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/nfc/VNfcService;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/nfc/VNfcService;->sService:Lcom/android/nfc/VNfcService;

    return-object v0
.end method


# virtual methods
.method public adjustDefaultRoutes(II)V
    .locals 1
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setDefaultRouteDestinations(II)V

    .line 322
    return-void
.end method

.method protected changeHceRouteWhenNoApp()V
    .locals 5

    .prologue
    .line 653
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 654
    :cond_0
    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v3, "changeHceRouteWhenNoApp - Not updating routing table because NFC is off."

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_1
    :goto_0
    return-void

    .line 658
    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_1

    .line 659
    sget-object v2, Lcom/android/nfc/VNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v3, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    const-string v4, "na"

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    sget-boolean v2, Lcom/android/nfc/VNfcService;->mIsDisabledCE:Z

    if-nez v2, :cond_3

    .line 661
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/nfc/VNfcService;->mIsDisabledCE:Z

    .line 662
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->disableCardEmulation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v3, "NFC configure Routing for ScreenState - Exception."

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v3, "Skip to disable CE .. already disabled."

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_4
    sget-object v2, Lcom/android/nfc/VNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v3, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    iget-object v4, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getHceAppCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(II)Z

    move-result v1

    .line 670
    .local v1, "isRoutingOffhost":Z
    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getOffHostRoute()I

    move-result v2

    :goto_1
    invoke-virtual {v3, v2, v1}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->setDefaultRouteDest(IZ)V

    .line 673
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/nfc/VNfcService;->mIsDisabledCE:Z

    goto :goto_0

    .line 670
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1
.end method

.method protected configureScreenState()V
    .locals 2

    .prologue
    .line 638
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingWhenNoApp:Z

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->changeHceRouteWhenNoApp()V

    goto :goto_0

    .line 648
    :cond_2
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "NFC is already turned off."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected excuteDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;)V
    .locals 3
    .param p1, "newParams"    # Lcom/android/nfc/NfcDiscoveryParameters;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "defer excuting Discovery!!"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/VNfcService;->mIsDiscoveringDefered:Z

    .line 196
    :goto_0
    iput-object p1, p0, Lcom/android/nfc/VNfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 197
    return-void

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v0

    .line 191
    .local v0, "shouldRestart":Z
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    goto :goto_0

    .line 193
    .end local v0    # "shouldRestart":Z
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    goto :goto_0
.end method

.method isAidFilterFeatureEnabled()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lcom/android/nfc/VNfcService$VEnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VEnableDisableTask;-><init>(Lcom/android/nfc/VNfcService;)V

    return-object v0
.end method

.method public onCardEmulationAidPreSelected([B)V
    .locals 3
    .param p1, "aid"    # [B

    .prologue
    .line 376
    sget-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "onCardEmulationAidPreSelected"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 377
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 378
    return-void
.end method

.method public onCardEmulationAidSelected([B)V
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 351
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 353
    return-void
.end method

.method public onPpseRouted(I)Z
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 314
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 315
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    const/4 v1, 0x1

    return v1
.end method

.method public onSeListenActivated()V
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 358
    :cond_0
    const/16 v0, 0x3e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 360
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onHostCardEmulationActivated()V

    .line 363
    :cond_1
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 368
    :cond_0
    const/16 v0, 0x3f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 370
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 373
    :cond_1
    return-void
.end method

.method protected postExcuteDiscovery(ZI)V
    .locals 2
    .param p1, "force"    # Z
    .param p2, "screenState"    # I

    .prologue
    .line 205
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/nfc/VNfcService;->mLastScreenState:I

    if-eq p2, v0, :cond_1

    .line 206
    :cond_0
    iput p2, p0, Lcom/android/nfc/VNfcService;->mLastScreenState:I

    .line 207
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "defer changing routing table"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsDeferChangeRoutingTable:Z

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->reRouteAllAids()V

    goto :goto_0
.end method

.method public reRouteAid(Ljava/lang/String;IZZ)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "isStopDiscovery"    # Z
    .param p4, "isStartDiscovery"    # Z

    .prologue
    .line 301
    const-string v0, "BCM2079x"

    const-string v1, "BCM2079x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "325041592E5359532E4444463031"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "routeAids; PPSE AID is added"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 304
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/nfc/VNfcService;->onPpseRouted(I)Z

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-static {p1}, Lcom/android/nfc/VNfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->reRouteAid([BIZZ)Z

    .line 308
    return-void

    .line 304
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected receivedShutDownIntent()V
    .locals 3

    .prologue
    .line 683
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "Device is shutting down."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    sget-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "get intent - ACTION_SHUTDOWN"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "BCM2079x"

    const-string v1, "BCM2079x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setPowerMode(I)Z

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "NFC is already turned off."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeHceOffHostAidRoute([B)V
    .locals 10
    .param p1, "aid"    # [B

    .prologue
    const/4 v9, 0x0

    .line 264
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 265
    .local v4, "output":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 266
    .local v1, "element":B
    const-string v6, "%02X:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "temp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "element":B
    .end local v5    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->removeHceOffHostAidRoute([B)V

    .line 270
    return-void
.end method

.method public routeAids(Ljava/lang/String;I)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 157
    const-string v0, "BCM2079x"

    const-string v1, "BCM2079x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "325041592E5359532E4444463031"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "routeAids; PPSE AID is added"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 160
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/nfc/VNfcService;->onPpseRouted(I)Z

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/nfc/LNfcService;->routeAids(Ljava/lang/String;I)V

    .line 166
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 384
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void
.end method

.method public setDefaultRouteDestinations(II)V
    .locals 1
    .param p1, "defaultIsoDepRoute"    # I
    .param p2, "defaultOffHostRoute"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->adjustDefaultRoutes(II)V

    .line 229
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onNfcDisabled()V

    .line 230
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onNfcEnabled()V

    .line 232
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->reRouteAllAids()V

    .line 233
    return-void
.end method

.method public setHceOffHostAidRoute([BZZZIZZZ)V
    .locals 15
    .param p1, "aid"    # [B
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 253
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    .line 254
    .local v13, "output":Ljava/lang/String;
    move-object/from16 v9, p1

    .local v9, "arr$":[B
    array-length v12, v9

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-byte v10, v9, v11

    .line 255
    .local v10, "element":B
    const-string v0, "%02X:"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 256
    .local v14, "temp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 254
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 258
    .end local v10    # "element":B
    .end local v14    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setHceOffHostAidRoute([BZZZIZZZ)V

    .line 259
    return-void
.end method

.method public setPowerConfig()V
    .locals 4

    .prologue
    .line 327
    const-string v0, "BCM2079x"

    const-string v1, "BCM2079x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    .line 330
    sget-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 331
    iget v0, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    packed-switch v0, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 333
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setPowerMode(I)Z

    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setPowerMode(I)Z

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setPowerMode(I)Z

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setStaticRouteByProto(IZZZIZZZ)V
    .locals 9
    .param p1, "protocol"    # I
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setStaticRouteByProto(IZZZIZZZ)V

    .line 247
    return-void
.end method

.method public setStaticRouteByTech(IZZZIZZZ)V
    .locals 9
    .param p1, "technology"    # I
    .param p2, "screenOn"    # Z
    .param p3, "screenOff"    # Z
    .param p4, "screenLock"    # Z
    .param p5, "route"    # I
    .param p6, "switchOn"    # Z
    .param p7, "switchOff"    # Z
    .param p8, "batteryOff"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setStaticRouteByTech(IZZZIZZZ)V

    .line 240
    return-void
.end method

.method public simCardRestartNfc()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "BCM2079x"

    const-string v1, "BCM2079x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "325041592E5359532E4444463031"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "unrouteAids; PPSE AID is removed"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/VNfcService;->onPpseRouted(I)Z

    .line 178
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 179
    return-void
.end method
