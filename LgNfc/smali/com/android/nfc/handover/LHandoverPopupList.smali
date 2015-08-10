.class public Lcom/android/nfc/handover/LHandoverPopupList;
.super Ljava/lang/Object;
.source "LHandoverPopupList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_HEADSET_CONFIRMPOPUP_NEGATIVE:Ljava/lang/String; = "com.lge.nfc.bluetoothheadset_confirmpopup_negative"

.field private static final ACTION_HEADSET_CONFIRMPOPUP_POSITIVE:Ljava/lang/String; = "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

.field private static final ACTION_HEADSET_POPUP_NEGATIVE:Ljava/lang/String; = "com.lge.nfc.bluetoothheadset_popup_negative"

.field private static final ACTION_HEADSET_POPUP_POSITIVE:Ljava/lang/String; = "com.lge.nfc.bluetoothheadset_popup_positive"

.field private static final EXTRA_CALLBACK_MESSAGE:Ljava/lang/String; = "callback"

.field private static final TAG:Ljava/lang/String; = "LHandoverPopupList"


# instance fields
.field private final mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHandoverPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

.field private final mLReceiver:Landroid/content/BroadcastReceiver;

.field private final mMsg:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverPopupList$Callback;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    .param p3, "msg"    # Landroid/os/Parcelable;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/android/nfc/handover/LHandoverPopupList$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/LHandoverPopupList$1;-><init>(Lcom/android/nfc/handover/LHandoverPopupList;)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mLReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mHandoverPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    .line 47
    iput-object p2, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    .line 48
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mMsg:Landroid/os/Parcelable;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/LHandoverPopupList;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mHandoverPopupList:Lcom/android/nfc/handover/LHandoverPopupList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/LHandoverPopupList;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/LHandoverPopupList;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/LHandoverPopupList;->makeConfirmPopupDialogIntent(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/LHandoverPopupList;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/LHandoverPopupList;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mCallback:Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    return-object v0
.end method

.method private makeConfirmPopupDialogIntent(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Parcelable;

    .prologue
    const/4 v7, 0x0

    .line 119
    const-string v4, "LHandoverPopupList"

    const-string v5, "makeConfirmPopupDialogIntent"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v3, "positiveIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.nfc.bluetoothheadset_confirmpopup_negative"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "negativeIntent":Landroid/content/Intent;
    const-string v4, "callback"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    const-string v4, "callback"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverPopupList;->registerIntentFilter()V

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "bintent":Landroid/content/Intent;
    const-string v4, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const v4, 0x10008000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    new-instance v4, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v6, 0x7f08003f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v6, 0x7f080037

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v7, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v7, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v2

    .line 138
    .local v2, "popupInfor":Lcom/android/nfc/utils/LNfcPopupInformation;
    const-string v4, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method


# virtual methods
.method registerIntentFilter()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.nfc.bluetoothheadset_popup_positive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "com.lge.nfc.bluetoothheadset_popup_negative"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "com.lge.nfc.bluetoothheadset_confirmpopup_positive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "com.lge.nfc.bluetoothheadset_confirmpopup_negative"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method requestConnectBluetoothDeviceConfirmation()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 66
    const-string v10, "LHandoverPopupList"

    const-string v11, "requestConnectBluetoothDeviceConfirmation"

    invoke-static {v10, v11}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v3

    .line 69
    .local v3, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v3, :cond_2

    .line 70
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v8

    .line 74
    :cond_1
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v10

    if-ne v10, v9, :cond_2

    const/16 v10, 0x65

    invoke-virtual {v3, v10}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 81
    :cond_2
    iget-object v10, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v11, 0x7f080034

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "popupTitle":Ljava/lang/String;
    const-string v5, ""

    .line 83
    .local v5, "popupMessage":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 84
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 88
    iget-object v10, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v11, 0x7f080035

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverPopupList;->registerIntentFilter()V

    .line 95
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.lge.nfc.bluetoothheadset_popup_negative"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, "negativeIntent":Landroid/content/Intent;
    const-string v10, "callback"

    iget-object v11, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mMsg:Landroid/os/Parcelable;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.lge.nfc.bluetoothheadset_popup_positive"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v7, "positiveIntent":Landroid/content/Intent;
    const-string v10, "callback"

    iget-object v11, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mMsg:Landroid/os/Parcelable;

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v4, "popupIntent":Landroid/content/Intent;
    const-string v10, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const v10, 0x10008000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    new-instance v10, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v10}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    invoke-virtual {v10, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v7, v8, v11}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v2, v8, v11}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v8

    const v10, 0x7f080015

    invoke-virtual {v8, v10}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v8

    const v10, 0x7f080016

    invoke-virtual {v8, v10}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v1

    .line 112
    .local v1, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    const-string v8, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 115
    goto/16 :goto_0

    .line 90
    .end local v1    # "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    .end local v2    # "negativeIntent":Landroid/content/Intent;
    .end local v4    # "popupIntent":Landroid/content/Intent;
    .end local v7    # "positiveIntent":Landroid/content/Intent;
    :cond_3
    iget-object v10, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    const v11, 0x7f080036

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method unregisterIntentFilter()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverPopupList;->mLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    return-void
.end method
