.class public Lcom/android/nfc/LNfcPopupList;
.super Ljava/lang/Object;
.source "LNfcPopupList.java"


# static fields
.field private static final ACTION_NFC_EXCEED_POPUP_RESULT:Ljava/lang/String; = "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

.field private static DBG:Z = false

.field private static final EXTRA_SEND_HCE_SETTING:Ljava/lang/String; = "com.lge.nfc.extra.SEND_HCE_SETTING"

.field public static final PREF_HCE_POPUP:Ljava/lang/String; = "hcepopup"

.field public static final PREF_HCE_POPUP_CONFIRM:Ljava/lang/String; = "hceconfirm"

.field private static final TAG:Ljava/lang/String; = "LNfcPopupList"


# instance fields
.field protected final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field intentFilter:Landroid/content/IntentFilter;

.field private final mContext:Landroid/content/Context;

.field protected final mLgNfcPopupReceiver:Landroid/content/BroadcastReceiver;

.field private final mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcPopupList;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mSyncObject:Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/android/nfc/LNfcPopupList$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcPopupList$1;-><init>(Lcom/android/nfc/LNfcPopupList;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mLgNfcPopupReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    .line 39
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->intentFilter:Landroid/content/IntentFilter;

    .line 42
    iget-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcPopupList;->mLgNfcPopupReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/nfc/LNfcPopupList;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/LNfcPopupList;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/LNfcPopupList;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public applyHostCardEmulationExceedAidTablePopup(IZ)Z
    .locals 13
    .param p1, "defaultRoute"    # I
    .param p2, "isSettingButton"    # Z

    .prologue
    const v12, 0x7f08003f

    const v11, 0x104000a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    iget-object v6, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    move v6, v7

    .line 133
    :goto_0
    return v6

    .line 84
    :cond_0
    sget-boolean v6, Lcom/android/nfc/LNfcPopupList;->DBG:Z

    const-string v9, "LNfcPopupList"

    const-string v10, "applyHostCardEmulationExceedAidTablePopup"

    invoke-static {v6, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v5, "settingResultIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "ignoreResultIntent":Landroid/content/Intent;
    const-string v6, "com.lge.nfc.extra.SEND_HCE_SETTING"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string v6, "com.lge.nfc.extra.SEND_HCE_SETTING"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string v3, ""

    .line 93
    .local v3, "message":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 105
    iget-object v6, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const v9, 0x7f08005f

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    .line 109
    new-instance v6, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    iget-object v9, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    const v9, 0x7f080056

    invoke-virtual {v6, v9}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v5, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->cancelButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v1

    .line 127
    .local v1, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    :goto_2
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v4, "popupIntent":Landroid/content/Intent;
    const-string v6, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const v6, 0x10008000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    const-string v6, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    iget-object v6, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v6, v8

    .line 133
    goto/16 :goto_0

    .line 95
    .end local v1    # "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    .end local v4    # "popupIntent":Landroid/content/Intent;
    :pswitch_0
    iget-object v6, p0, Lcom/android/nfc/LNfcPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v6, v6, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v6, v9, :cond_3

    .line 96
    const-string v6, "ro.build.target_country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "KR"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 97
    .local v2, "isKoreaModel":Z
    iget-object v9, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    const v6, 0x7f080060

    :goto_3
    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    goto :goto_1

    .line 97
    :cond_2
    const v6, 0x7f08005d

    goto :goto_3

    .line 100
    .end local v2    # "isKoreaModel":Z
    :cond_3
    iget-object v6, p0, Lcom/android/nfc/LNfcPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v6, v6, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v6, v9, :cond_1

    .line 101
    iget-object v6, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const v9, 0x7f08005e

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 119
    :cond_4
    new-instance v6, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    iget-object v9, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v1

    .restart local v1    # "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    goto :goto_2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public applyNfcTagLongTimePopup()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v3, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 66
    :goto_0
    return v2

    .line 50
    :cond_0
    sget-boolean v3, Lcom/android/nfc/LNfcPopupList;->DBG:Z

    const-string v4, "LNfcPopupList"

    const-string v5, "sendIntenttoNfcTagDetectLongTimeDialog"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v3, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const v5, 0x7f08003f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const v5, 0x7f080046

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 60
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v1, "popupIntent":Landroid/content/Intent;
    const-string v2, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    const-string v2, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    const/4 v2, 0x1

    goto :goto_0
.end method
