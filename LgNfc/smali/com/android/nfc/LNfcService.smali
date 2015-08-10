.class public Lcom/android/nfc/LNfcService;
.super Lcom/android/nfc/NfcService;
.source "LNfcService.java"

# interfaces
.implements Lcom/android/nfc/LDeviceHost$LDeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LNfcService$LNfcServiceHandler;,
        Lcom/android/nfc/LNfcService$LCardEmlationHandler;,
        Lcom/android/nfc/LNfcService$LNfcServiceAddonService;,
        Lcom/android/nfc/LNfcService$LNfcAdapterService;,
        Lcom/android/nfc/LNfcService$LEnableDisableTask;
    }
.end annotation


# static fields
.field static final AC_TAG:Ljava/lang/String; = "NfcAccessControl"

.field static final API_WATCHDOG_MS:I = 0x1388

.field protected static final CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final DBG:Z

.field protected static final DOWNLOADFW_WATCHDOG_MS:I = 0x4e20

.field protected static final MSG_CARD_EMULATION:I = 0x28

.field protected static final MSG_HCE_EXCEED_AID_TABLE:I = 0x21

.field protected static final MSG_NFCTAG_LONGTIME:I = 0x20

.field protected static final MSG_WC_ENABLE:I = 0x1f

.field protected static final NFC_GSMA_CALLBACK_DISABLE:I = 0x0

.field protected static final NFC_GSMA_CALLBACK_ENABLE:I = 0x1

.field public static final NFC_SOUND_END_FILEPATH:Ljava/lang/String; = "system/media/audio/ui/NFC_End.ogg"

.field static final NFC_SOUND_ERROR_FILEPATH:Ljava/lang/String; = "system/media/audio/ui/NFC_Error.ogg"

.field static final NFC_SOUND_FILEPATH:Ljava/lang/String; = "system/media/audio/ui/"

.field static final NFC_SOUND_START_FILEPATH:Ljava/lang/String; = "system/media/audio/ui/NFC_Start.ogg"

.field public static final NFC_VENDOR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SERVICE_ADDON_NAME:Ljava/lang/String; = "nfcaddon"

.field protected static final SERVICE_VENDOR_NAME:Ljava/lang/String; = "nfcvendor"

.field protected static final SOUND_POOL_PAIR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final SeName:Ljava/lang/String; = "SIM"

.field static final TAG:Ljava/lang/String; = "LNfcService"

.field static final TAGDETECT_LONGTIME_VALUE:J = 0x493e0L

.field protected static final TASK_ENABLE_BYSAVEDSETTING:I = 0xb

.field protected static final TASK_ENABLE_CARDBYSAVEDSETTING:I = 0xc

.field protected static final TASK_ENABLE_POWERSAVING:I = 0xd

.field protected static final TASK_FIRMWARE_DOWNLOAD:I = 0xa

.field protected static final TASK_SHUTDOWN:I = 0xe

.field protected static final TASK_UPDATE_POWERSTATUS:I = 0x10

.field protected static final TASK_WC_DISABLE:I = 0xf

.field protected static final VIBRATION_PATTERN:[J

.field static final WC_DELAY_TIME_MILLIS:I = 0x1b58

.field protected static mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

.field static mIsDisable:Z

.field protected static mStatusMngr:Lcom/android/nfc/LNfcStatusManager;


# instance fields
.field protected am:Landroid/media/AudioManager;

.field protected mCEPrefs:Landroid/content/SharedPreferences;

.field private mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;

.field private mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

.field protected mIsNfcModeOn:Z

.field protected mIsPowerSaveMode:Z

.field protected mIsQuickCoverOpen:Z

.field protected mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

.field protected mLDeviceHost:Lcom/android/nfc/LDeviceHost;

.field protected mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

.field protected mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

.field protected final mLgNfcOwnerReceiver:Landroid/content/BroadcastReceiver;

.field protected final mLgNfcReceiver:Landroid/content/BroadcastReceiver;

.field protected mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

.field protected mOffReturn:Z

.field protected mPopupList:Lcom/android/nfc/LNfcPopupList;

.field protected mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

.field mPreScreenState:I

.field mResolvedPaymentServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

.field protected mSoundPoolForRing:Landroid/media/SoundPool;

.field protected mSoundPoolForRingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

.field protected mVibrator:Landroid/os/Vibrator;

.field protected tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/LNfcService;->VIBRATION_PATTERN:[J

    .line 155
    new-instance v0, Lcom/android/nfc/LNfcService$1;

    invoke-direct {v0}, Lcom/android/nfc/LNfcService$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcService;->SOUND_POOL_PAIR:Ljava/util/Map;

    .line 165
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 166
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getInstance()Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 179
    new-instance v0, Lcom/android/nfc/LNfcService$2;

    invoke-direct {v0}, Lcom/android/nfc/LNfcService$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcService;->NFC_VENDOR_MAP:Ljava/util/Map;

    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/LNfcService;->mIsDisable:Z

    return-void

    .line 150
    :array_0
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 14
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 206
    invoke-direct {p0}, Lcom/android/nfc/NfcService;-><init>()V

    .line 191
    iput-boolean v13, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    .line 192
    iput-boolean v13, p0, Lcom/android/nfc/LNfcService;->mIsNfcModeOn:Z

    .line 193
    iput-boolean v12, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 195
    iput-boolean v13, p0, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    .line 1807
    new-instance v0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;-><init>(Lcom/android/nfc/LNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    .line 2174
    new-instance v0, Lcom/android/nfc/LNfcService$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcService$4;-><init>(Lcom/android/nfc/LNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mLgNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 2211
    new-instance v0, Lcom/android/nfc/LNfcService$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcService$5;-><init>(Lcom/android/nfc/LNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mLgNfcOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/LNfcService;->mUserId:I

    .line 208
    iput-object p1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    .line 210
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 211
    new-instance v0, Lcom/android/nfc/LNfcService$LNfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcService$LNfcAdapterService;-><init>(Lcom/android/nfc/LNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 212
    const-string v0, "LNfcService"

    const-string v1, "Starting NFC service"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sput-object p0, Lcom/android/nfc/LNfcService;->sService:Lcom/android/nfc/NfcService;

    .line 216
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 217
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 222
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 224
    new-instance v0, Lcom/android/nfc/handover/LHandoverManager;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/LHandoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    .line 225
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 227
    const/4 v8, 0x0

    .line 229
    .local v8, "isNfcProvisioningEnabled":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 234
    :goto_0
    if-eqz v8, :cond_a

    .line 235
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    move v0, v12

    :goto_1
    iput-boolean v0, p0, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    .line 250
    :goto_2
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v1, "NfcServicePrefs"

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 251
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v1, "NfcServiceCEPrefs"

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mCEPrefs:Landroid/content/SharedPreferences;

    .line 252
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 254
    new-instance v0, Lcom/android/nfc/NfceeAccessControl;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 255
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->CardEmlationThreadstart()V

    .line 257
    iput v12, p0, Lcom/android/nfc/LNfcService;->mState:I

    .line 258
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ndef_push_on"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/LNfcService;->mIsNdefPushEnabled:Z

    .line 259
    iget-boolean v0, p0, Lcom/android/nfc/LNfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 261
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    move v0, v12

    :goto_3
    iput-boolean v0, p0, Lcom/android/nfc/LNfcService;->mIsDebugBuild:Z

    .line 263
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 265
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "NfcService:mRoutingWakeLock"

    invoke-virtual {v0, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 268
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 269
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mUserManager:Landroid/os/UserManager;

    .line 271
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    .line 279
    new-instance v0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;-><init>(Lcom/android/nfc/LNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    .line 280
    new-instance v0, Lcom/android/nfc/LNfcIndicatorIcon;

    invoke-direct {v0}, Lcom/android/nfc/LNfcIndicatorIcon;-><init>()V

    sput-object v0, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    .line 281
    new-instance v0, Lcom/android/nfc/LNfcStatusManager;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/LNfcStatusManager;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    .line 282
    new-instance v0, Lcom/android/nfc/LNfcPopupList;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mCEPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/LNfcPopupList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    .line 283
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    .line 285
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    if-ne v0, v12, :cond_1

    .line 286
    new-instance v0, Lcom/android/nfc/LGsmaAPIService;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/LGsmaAPIService;-><init>(Landroid/content/Context;Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    .line 288
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->multicast:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    if-ne v0, v1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Lcom/android/nfc/LGsmaAPIService;->enableMultiEvt_transactionReception(Ljava/lang/String;)V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mVibrator:Landroid/os/Vibrator;

    .line 298
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->tm:Landroid/telephony/TelephonyManager;

    .line 299
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->am:Landroid/media/AudioManager;

    .line 305
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    if-eqz v0, :cond_2

    .line 306
    const/4 v0, 0x2

    sput v0, Lcom/android/nfc/LNfcService;->NFC_POLLING_MODE:I

    .line 309
    :cond_2
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mLGSharingEnable:Z

    if-eqz v0, :cond_3

    .line 310
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingManager;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/lgsharing/LSharingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    .line 324
    :cond_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 329
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 330
    .local v9, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mLgNfcOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    new-instance v9, Landroid/content/IntentFilter;

    .end local v9    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    .restart local v9    # "ownerFilter":Landroid/content/IntentFilter;
    const/16 v0, -0x64

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 335
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v0, "package"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mLgNfcOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->updatePackageCache()V

    .line 346
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerScreenLockIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 353
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerResetSettingIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 354
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerBeamUIFinishIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 355
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerPhoneStateChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 357
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-eq v0, v1, :cond_4

    .line 358
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerPowerSaveActivationToOthersIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 361
    :cond_4
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    if-ne v0, v12, :cond_5

    .line 362
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerWirelessChargeIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 365
    :cond_5
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    if-ne v0, v12, :cond_6

    .line 366
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerSimStateChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 367
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerSimChangedIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 370
    :cond_6
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isUserMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 371
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerTestTransactionEventIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 374
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/nfc/LNfcService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 375
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mLgNfcReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 377
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    if-ne v0, v12, :cond_8

    .line 378
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    invoke-static {v3}, Lcom/android/nfc/LNfcCommon;->registerSmartCoverIntent(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    .line 380
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mLgNfcReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v6

    .line 382
    .local v6, "accessoryEventIntent":Landroid/content/Intent;
    if-eqz v6, :cond_8

    .line 383
    const-string v0, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 384
    .local v11, "state":I
    if-ne v11, v12, :cond_8

    .line 385
    iput-boolean v13, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 390
    .end local v6    # "accessoryEventIntent":Landroid/content/Intent;
    .end local v11    # "state":I
    :cond_8
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.lge.nfc.action.start"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v7, "intentNfc":Landroid/content/Intent;
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v1, "LNfcService"

    const-string v2, "send action : com.lge.nfc.action.start"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 398
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.nfc.hce"

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    .line 405
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 412
    iput v13, p0, Lcom/android/nfc/LNfcService;->mPreScreenState:I

    .line 415
    sput-boolean v13, Lcom/android/nfc/LNfcService;->mIsDisable:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->collectNfcRelatedServices()Z

    .line 418
    return-void

    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "intentNfc":Landroid/content/Intent;
    .end local v9    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    move v0, v13

    .line 235
    goto/16 :goto_1

    .line 238
    :cond_a
    iput-boolean v13, p0, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    goto/16 :goto_2

    :cond_b
    move v0, v13

    .line 261
    goto/16 :goto_3

    .line 231
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/LNfcService;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/nfc/LNfcService;Lcom/android/nfc/LNfcService$LCardEmlationHandler;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/LNfcService;
    .param p1, "x1"    # Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    return-object p1
.end method


# virtual methods
.method public CardEmlationThreadstart()V
    .locals 2

    .prologue
    .line 1610
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/nfc/LNfcService$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/LNfcService$3;-><init>(Lcom/android/nfc/LNfcService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1629
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1630
    return-void
.end method

.method protected applyNfcTagLongTimePopup(Lcom/android/nfc/DeviceHost$TagEndpoint;)Z
    .locals 4
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    const/4 v0, 0x0

    .line 1891
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1905
    :goto_0
    return v0

    .line 1895
    :cond_0
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isAllAutoTestMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const-string v2, "com.isis.testsuite.nfc.PermOn"

    invoke-static {v1, v2}, Lcom/android/nfc/LNfcCommon;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1899
    :cond_1
    sget-boolean v1, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v2, "LNfcService"

    const-string v3, "sendIntenttoNfcTagDetectLongTimeDialog - disable"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1902
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    if-eqz v0, :cond_3

    .line 1903
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcPopupList;->applyNfcTagLongTimePopup()Z

    .line 1905
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected applyWirelessChargingMode(Z)V
    .locals 5
    .param p1, "status"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1859
    if-ne p1, v3, :cond_2

    .line 1861
    const/16 v1, 0x34

    invoke-static {v1}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1866
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1869
    :cond_2
    const/16 v1, 0x36

    invoke-static {v1}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1872
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1874
    const/16 v1, 0x33

    invoke-static {v1}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    move-result v0

    .line 1875
    .local v0, "result":Z
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chage WirelessCharging Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1880
    .end local v0    # "result":Z
    :cond_3
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-eq v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    if-ne v1, v3, :cond_4

    .line 1882
    const-string v1, "LNfcService"

    const-string v2, "POWER SAVE MODE"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1886
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected changeHceRouteWhenNoApp()V
    .locals 2

    .prologue
    .line 2148
    const-string v0, "LNfcService"

    const-string v1, "changeHceRouteWhenNoApp"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    return-void
.end method

.method public checkDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1126
    :try_start_0
    sget-boolean v1, Lcom/android/nfc/LNfcService;->mIsDisable:Z

    if-ne v1, v2, :cond_0

    .line 1127
    const-string v1, "LNfcService"

    const-string v2, "Defered disable"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/nfc/LNfcService;->mIsDisable:Z

    .line 1129
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$NfcAdapterService;->disable(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LNfcService"

    const-string v2, "Error disable NFC"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected collectNfcRelatedServices()Z
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 2152
    const/4 v1, 0x0

    .line 2153
    .local v1, "preSize":I
    const/4 v0, 0x0

    .line 2155
    .local v0, "currSize":I
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mResolvedPaymentServices:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 2156
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mResolvedPaymentServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2157
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mResolvedPaymentServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2159
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/LNfcService;->mResolvedPaymentServices:Ljava/util/List;

    .line 2162
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mResolvedPaymentServices:Ljava/util/List;

    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2165
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mResolvedPaymentServices:Ljava/util/List;

    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2169
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mResolvedPaymentServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2171
    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method initSoundPool()V
    .locals 7

    .prologue
    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_2

    .line 424
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 426
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/ui/NFC_Start.ogg"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/nfc/LNfcService;->mStartSound:I

    .line 427
    iget v3, p0, Lcom/android/nfc/LNfcService;->mStartSound:I

    if-gtz v3, :cond_0

    .line 428
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Sound file load Fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/nfc/LNfcService;->mStartSound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const v5, 0x7f050002

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/nfc/LNfcService;->mStartSound:I

    .line 431
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/ui/NFC_End.ogg"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/nfc/LNfcService;->mEndSound:I

    .line 432
    iget v3, p0, Lcom/android/nfc/LNfcService;->mEndSound:I

    if-gtz v3, :cond_1

    .line 433
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END Sound file load Fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/nfc/LNfcService;->mEndSound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f050000

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/nfc/LNfcService;->mEndSound:I

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/ui/NFC_Error.ogg"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/nfc/LNfcService;->mErrorSound:I

    .line 437
    iget v3, p0, Lcom/android/nfc/LNfcService;->mErrorSound:I

    if-gtz v3, :cond_2

    .line 438
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Sound file load Fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/nfc/LNfcService;->mErrorSound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const v5, 0x7f050001

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/nfc/LNfcService;->mErrorSound:I

    .line 442
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRingMap:Ljava/util/HashMap;

    if-nez v3, :cond_5

    .line 443
    :cond_3
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    .line 444
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRingMap:Ljava/util/HashMap;

    .line 446
    sget-object v3, Lcom/android/nfc/LNfcService;->SOUND_POOL_PAIR:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 447
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 449
    .local v1, "key":I
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    sget-object v3, Lcom/android/nfc/LNfcService;->SOUND_POOL_PAIR:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    .line 450
    .local v2, "load":I
    if-lez v2, :cond_4

    .line 451
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRingMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "key":I
    .end local v2    # "load":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 450
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1    # "key":I
    .restart local v2    # "load":I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/nfc/LNfcService;->SOUND_POOL_PAIR:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    goto :goto_1

    .line 454
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "key":I
    .end local v2    # "load":I
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    return-void
.end method

.method protected isHCERoutingtoHost()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1096
    const/4 v0, 0x0

    .line 1097
    .local v0, "ret":Z
    iget-boolean v3, p0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 1098
    sget-object v3, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v4, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const-string v5, "na"

    invoke-virtual {v3, v4, v5}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1102
    :cond_0
    :goto_0
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHCERoutingtoHost() return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    return v0

    :cond_1
    move v0, v2

    .line 1098
    goto :goto_0

    .line 1099
    :cond_2
    iget-boolean v3, p0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    if-ne v3, v1, :cond_0

    .line 1100
    sget-object v3, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v4, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const-string v5, "config"

    invoke-virtual {v3, v4, v5}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v4, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    const-string v5, "host"

    invoke-virtual {v3, v4, v5}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v1

    :goto_1
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .prologue
    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isRequireNfcCRouting()Z
    .locals 3

    .prologue
    .line 1084
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRequireNfcCRouting() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v0

    return v0
.end method

.method protected manageShutdown()V
    .locals 0

    .prologue
    .line 1856
    return-void
.end method

.method newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;
    .locals 1

    .prologue
    .line 566
    new-instance v0, Lcom/android/nfc/LNfcService$LEnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;-><init>(Lcom/android/nfc/LNfcService;)V

    return-object v0
.end method

.method public onHostCardEmulationExceedAidTable()V
    .locals 3

    .prologue
    .line 1820
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v1, "LNfcService"

    const-string v2, "onHostCardEmulationExceedAidTable"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1821
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1822
    return-void
.end method

.method protected playErrorSound(Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 2
    .param p1, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    .line 514
    const-string v0, "LNfcService"

    const-string v1, "playErrorSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    if-nez v0, :cond_1

    .line 516
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService;->playErrorSound(Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->onlyndefdiscovered:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    if-eq v0, v1, :cond_0

    .line 521
    if-eqz p1, :cond_2

    iget v0, p1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 523
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->playVibrate()V

    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->playSound(I)V

    .line 525
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->playSound(I)V

    goto :goto_0
.end method

.method protected playNotSuportedSound()V
    .locals 3

    .prologue
    .line 544
    const-string v0, "LNfcService"

    const-string v1, "playNotSuportedSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    if-nez v0, :cond_0

    .line 546
    invoke-super {p0}, Lcom/android/nfc/NfcService;->playNotSuportedSound()V

    .line 552
    :goto_0
    return-void

    .line 549
    :cond_0
    const-string v0, "LNfcService"

    const-string v1, "Tag not supported"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 8
    .param p1, "sound"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 470
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSound - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 472
    :cond_0
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v7

    .line 473
    .local v7, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v7, :cond_1

    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    .end local v7    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :goto_0
    return-void

    .line 479
    .restart local v7    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRingMap:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 480
    :cond_2
    const-string v0, "LNfcService"

    const-string v1, "mSoundPoolForRing is null"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRingMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 487
    .end local v7    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    :cond_4
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0
.end method

.method protected playStartSound()V
    .locals 2

    .prologue
    .line 505
    const-string v0, "LNfcService"

    const-string v1, "playStartSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    if-nez v0, :cond_0

    .line 507
    invoke-super {p0}, Lcom/android/nfc/NfcService;->playStartSound()V

    .line 510
    :cond_0
    return-void
.end method

.method protected playSuccessSound()V
    .locals 2

    .prologue
    .line 532
    const-string v0, "LNfcService"

    const-string v1, "playSuccessSound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    if-nez v0, :cond_0

    .line 534
    invoke-super {p0}, Lcom/android/nfc/NfcService;->playSuccessSound()V

    .line 540
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->playVibrate()V

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->playSound(I)V

    .line 539
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService;->playSound(I)V

    goto :goto_0
.end method

.method protected playVibrate()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 491
    const-string v2, "LNfcService"

    const-string v3, "playVibrate"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->am:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 493
    .local v1, "ringermode":I
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->usevibrate:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    if-ne v2, v3, :cond_0

    if-eq v1, v0, :cond_1

    :cond_0
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->onlyndefdiscovered:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    if-ne v2, v3, :cond_3

    if-lez v1, :cond_3

    .line 498
    .local v0, "isVibrateOn":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 499
    iget-object v2, p0, Lcom/android/nfc/LNfcService;->mVibrator:Landroid/os/Vibrator;

    sget-object v3, Lcom/android/nfc/LNfcService;->VIBRATION_PATTERN:[J

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 501
    :cond_2
    return-void

    .line 493
    .end local v0    # "isVibrateOn":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected receivedAirPlaneIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1999
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2003
    .local v0, "isAirplaneModeOn":Z
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2026
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_0

    .line 2009
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "airplane_override"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2010
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2011
    if-eqz v0, :cond_2

    .line 2012
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2013
    :cond_2
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v1, v3}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2014
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v1

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v1

    const/16 v2, 0x34

    if-eq v1, v2, :cond_0

    .line 2018
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    if-ne v1, v3, :cond_3

    .line 2020
    const-string v1, "LNfcService"

    const-string v2, "POWER SAVE MODE"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2024
    :cond_3
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected receivedAlarmClockIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 2088
    return-void
.end method

.method protected receivedBatteryChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x1f

    const/4 v6, 0x0

    .line 2067
    const-string v1, "plugged"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2070
    .local v0, "plugged_infor":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2071
    const/4 v3, 0x0

    const-wide/16 v4, 0x1b58

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/nfc/LNfcService;->sendMessageDelay(ILjava/lang/Object;JZ)V

    .line 2076
    :goto_0
    return-void

    .line 2073
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/nfc/LNfcService;->removeMessage(I)V

    .line 2074
    invoke-virtual {p0, v6}, Lcom/android/nfc/LNfcService;->applyWirelessChargingMode(Z)V

    goto :goto_0
.end method

.method protected receivedPhoneStateChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2079
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2081
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2082
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 2084
    :cond_0
    return-void
.end method

.method protected receivedPowerSavedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2036
    sget-object v2, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-ne v2, v3, :cond_1

    .line 2037
    const-string v2, "LNfcService"

    const-string v3, "NFC not support POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    const-string v2, "powersave_activation"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2042
    .local v0, "doActivation":I
    const-string v2, "powersave_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2044
    .local v1, "name":Ljava/lang/String;
    const-string v2, "LNfcService"

    const-string v3, "POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    if-eqz v1, :cond_3

    const-string v2, "power_save_nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2047
    if-lez v0, :cond_0

    .line 2048
    iput-boolean v4, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    .line 2049
    const-string v2, "LNfcService"

    const-string v3, "POWER_SAVER_MODE_ACTIVE"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v2

    if-eq v2, v4, :cond_2

    .line 2052
    const-string v2, "LNfcService"

    const-string v3, "NFC system is not intialized"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2055
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2057
    :cond_3
    if-ge v0, v4, :cond_0

    .line 2058
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2059
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Integer;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2061
    :cond_4
    iput-boolean v5, p0, Lcom/android/nfc/LNfcService;->mIsPowerSaveMode:Z

    .line 2062
    const-string v2, "LNfcService"

    const-string v3, "POWER_SAVER_MODE_DE_ACTIVE"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected receivedResetSettingIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2123
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 2124
    const-string v0, "LNfcService"

    const-string v1, "mPrefsEditor is null!"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :goto_0
    return-void

    .line 2128
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "calling_nfcsound"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2129
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2131
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    if-eqz v0, :cond_1

    .line 2132
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->resetPopupPreference()V

    .line 2135
    :cond_1
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 2136
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected receivedScreenStateIntent(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1909
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1910
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1912
    .local v1, "screenState":I
    const-string v7, "LNfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    sget-object v7, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v7, v7, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    if-eqz v7, :cond_7

    const-string v7, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1917
    const-string v7, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1918
    .local v2, "state":I
    if-nez v2, :cond_5

    .line 1920
    iput-boolean v5, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 1921
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isLockScreenStatus()Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v3

    .line 1943
    .end local v2    # "state":I
    :cond_0
    :goto_0
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1944
    const/4 v1, 0x1

    .line 1982
    :cond_1
    :goto_1
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    if-ne v3, v5, :cond_12

    iget-object v3, p0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v3}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v3

    if-eq v3, v4, :cond_12

    .line 1984
    sget-object v3, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v7, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/android/nfc/LNfcIndicatorIcon;->removeNfcIndicatorIcon(Landroid/content/Context;)V

    .line 1990
    :cond_2
    :goto_2
    sget-object v3, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v3

    if-eqz v3, :cond_13

    if-ne v1, v4, :cond_13

    move v3, v5

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1993
    new-instance v3, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    invoke-direct {v3, p0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v4, v5, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v6, v1

    .line 1995
    :cond_3
    :goto_4
    return v6

    .restart local v2    # "state":I
    :cond_4
    move v1, v4

    .line 1921
    goto :goto_0

    .line 1923
    :cond_5
    if-ne v2, v5, :cond_3

    .line 1925
    iput-boolean v6, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 1926
    iget v7, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    if-ne v7, v5, :cond_6

    move v1, v5

    :goto_5
    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_5

    .line 1937
    .end local v2    # "state":I
    :cond_7
    sget-object v7, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v7, v7, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    if-nez v7, :cond_0

    .line 1938
    iput-boolean v5, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    .line 1939
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isLockScreenStatus()Z

    move-result v7

    if-eqz v7, :cond_8

    move v1, v3

    :goto_6
    goto :goto_0

    :cond_8
    move v1, v4

    goto :goto_6

    .line 1945
    :cond_9
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1950
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isLockScreenStatus()Z

    move-result v7

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    if-nez v7, :cond_b

    :cond_a
    move v1, v3

    :goto_7
    goto :goto_1

    :cond_b
    move v1, v4

    goto :goto_7

    .line 1953
    :cond_c
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1954
    iget-boolean v7, p0, Lcom/android/nfc/LNfcService;->mIsQuickCoverOpen:Z

    if-ne v7, v5, :cond_e

    .line 1955
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isLockScreenStatus()Z

    move-result v7

    if-eqz v7, :cond_d

    move v1, v3

    :goto_8
    goto :goto_1

    :cond_d
    move v1, v4

    goto :goto_8

    .line 1959
    :cond_e
    iget v1, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    goto/16 :goto_1

    .line 1961
    :cond_f
    const-string v3, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1963
    iget v3, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    if-ne v3, v4, :cond_10

    .line 1964
    sget-boolean v3, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v4, "LNfcService"

    const-string v5, "Would be SCREEN_STATE_OFF! Skip LOCKSCREEN_CREATE INTENT"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1967
    :cond_10
    iget v3, p0, Lcom/android/nfc/LNfcService;->mScreenState:I

    if-eq v3, v5, :cond_11

    .line 1968
    sget-boolean v3, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v7, "LNfcService"

    const-string v8, "LOCKSCREEN_CREATE INTENT received"

    invoke-static {v3, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1969
    const/4 v1, 0x2

    goto/16 :goto_1

    .line 1971
    :cond_11
    sget-boolean v3, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v4, "LNfcService"

    const-string v5, "Already SCREEN_STATE_OFF! Skip LOCKSCREEN_CREATE INTENT"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1985
    :cond_12
    if-eq v1, v5, :cond_2

    .line 1986
    sget-object v3, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v7, p0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/android/nfc/LNfcIndicatorIcon;->restoreNfcIndicatorIcon(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_13
    move v3, v6

    .line 1990
    goto/16 :goto_3
.end method

.method protected receivedShutDownIntent()V
    .locals 2

    .prologue
    .line 2139
    const-string v0, "LNfcService"

    const-string v1, "Device is shutting down."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    return-void
.end method

.method protected receivedSimChangedInfoIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2120
    const-string v0, "LNfcService"

    const-string v1, "SIM_CHANGED_INFO event :"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    return-void
.end method

.method protected receivedSimLoadedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2091
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2092
    .local v2, "stateExtra":Ljava/lang/String;
    const-string v1, ""

    .line 2093
    .local v1, "beforeStatus":Ljava/lang/String;
    const-string v0, ""

    .line 2095
    .local v0, "afterStatus":Ljava/lang/String;
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v3, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 2097
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFirstBooting :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isFirstBooting()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimChanged :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isSimChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM_STATE_CHANGED event stateExtra :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UNKNOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2105
    :cond_0
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure;->resetOpenarrayPowerStatus()Ljava/lang/String;

    move-result-object v0

    .line 2107
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2108
    sget-object v3, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v3}, Lcom/android/nfc/LNfcStatusManager;->setDefaultPreference()V

    .line 2109
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getBootComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2110
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2118
    :cond_1
    :goto_0
    return-void

    .line 2115
    :cond_2
    const-string v3, "LNfcService"

    const-string v4, "UICC Load is not complete "

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected receivedTestTransactionEventIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2143
    const-string v0, "LNfcService"

    const-string v1, "receivedTestTransactionEventIntent"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-byte v3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/LGsmaAPIService;->intentAccessControl([B[B)Z

    .line 2145
    return-void

    .line 2144
    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data
.end method

.method protected receivedUserSwitchedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    if-nez v0, :cond_0

    .line 2033
    :goto_0
    return-void

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcPopupPreference;->setUserID(I)V

    goto :goto_0
.end method

.method releaseSoundPool()V
    .locals 1

    .prologue
    .line 459
    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/LNfcService;->mSoundPoolForRing:Landroid/media/SoundPool;

    .line 464
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-super {p0}, Lcom/android/nfc/NfcService;->releaseSoundPool()V

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method removeMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-virtual {v0, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    :goto_0
    return-void

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-virtual {v0, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method saveAirplaneSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1844
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1845
    iget-boolean v1, p0, Lcom/android/nfc/LNfcService;->mIsAirplaneToggleable:Z

    if-nez v1, :cond_1

    .line 1846
    const-string v0, "LNfcService"

    const-string v1, "denying request (airplane mode)"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const/4 v0, 0x0

    .line 1853
    :cond_0
    :goto_0
    return v0

    .line 1850
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "airplane_override"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1851
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1812
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1813
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1814
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1815
    return-void
.end method

.method sendMessageDelay(ILjava/lang/Object;JZ)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J
    .param p5, "isReset"    # Z

    .prologue
    .line 1824
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-virtual {v1, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1825
    if-nez p5, :cond_0

    .line 1834
    :goto_0
    return-void

    .line 1828
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-virtual {v1, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->removeMessages(I)V

    .line 1830
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1831
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1832
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1833
    iget-object v1, p0, Lcom/android/nfc/LNfcService;->mHandler:Lcom/android/nfc/LNfcService$LNfcServiceHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setPowerConfig()V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method

.method updatePackageCache()V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 558
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0}, Lcom/android/nfc/LGsmaAPIService;->setTransactionEventPackageList()V

    .line 560
    iget-object v0, p0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0}, Lcom/android/nfc/LGsmaAPIService;->setNFCPermissionPackageList()V

    .line 562
    :cond_0
    return-void
.end method
