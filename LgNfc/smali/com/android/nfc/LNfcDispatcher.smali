.class Lcom/android/nfc/LNfcDispatcher;
.super Lcom/android/nfc/NfcDispatcher;
.source "LNfcDispatcher.java"


# static fields
.field private static final ACTION_NFC_CONFIRMPOPUP_POSITIVE_RESULT:Ljava/lang/String; = "com.lge.nfc.action.confirmpopup_positive_result"

.field private static final ACTION_NFC_EMPTYPOPUP_POSITIVE_RESULT:Ljava/lang/String; = "com.lge.nfc.action.emptypopup_positive_result"

.field private static final ACTION_NFC_GSMA_POPUP_POSITIVE_RESULT:Ljava/lang/String; = "com.lge.nfc.action.gsma_popup_positive_result"

.field private static final ACTION_NFC_VZW_POPUP_POSITIVE_RESULT:Ljava/lang/String; = "com.lge.nfc.action.vzw_popup_positive_result"

.field public static final BROWSER_SCHEME_MAP:[Ljava/lang/String;

.field public static final CONTACT_MIME_MAP:[Ljava/lang/String;

.field private static final EXTRA_SEND_INTENT:Ljava/lang/String; = "com.lge.nfc.intent.extra.send_intent"

.field public static final SMS_HEADER_MAP:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field private mLReceiver:Landroid/content/BroadcastReceiver;

.field mPopupPref:Lcom/android/nfc/utils/LNfcPopupPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v0, v2

    const-string v1, "https://"

    aput-object v1, v0, v3

    const-string v1, "market"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "text/vcard"

    aput-object v1, v0, v2

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v3

    const-string v1, "text/x-vCard"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/nfc/LNfcDispatcher;->CONTACT_MIME_MAP:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sms:"

    aput-object v1, v0, v2

    const-string v1, "smsto:"

    aput-object v1, v0, v3

    const-string v1, "mms:"

    aput-object v1, v0, v4

    const-string v1, "mmsto:"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    .line 66
    const-string v0, "LNfcDispatcher"

    sput-object v0, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p3, "provisionOnly"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V

    .line 67
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 420
    new-instance v0, Lcom/android/nfc/LNfcDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcDispatcher$1;-><init>(Lcom/android/nfc/LNfcDispatcher;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->mLReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-static {p1}, Lcom/android/nfc/utils/LNfcPopupPreference;->getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->mPopupPref:Lcom/android/nfc/utils/LNfcPopupPreference;

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/LNfcDispatcher;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/LNfcDispatcher;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->mLReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/LNfcDispatcher;Landroid/content/Intent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/LNfcDispatcher;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/LNfcDispatcher;->makeConfirmPopupDialogIntent(Landroid/content/Intent;II)V

    return-void
.end method

.method private makeConfirmPopupDialogIntent(Landroid/content/Intent;II)V
    .locals 6
    .param p1, "saveIntent"    # Landroid/content/Intent;
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I

    .prologue
    const/4 v5, 0x0

    .line 379
    const-string v3, "com.lge.nfc.action.confirmpopup_positive_result"

    invoke-direct {p0, p1, v3}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 381
    .local v2, "positiveButtonIntent":Landroid/content/Intent;
    new-instance v3, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v1

    .line 389
    .local v1, "popupInfor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .local v0, "bintent":Landroid/content/Intent;
    const-string v3, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    const-string v3, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 393
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 394
    return-void
.end method

.method private makeEmptyTagPopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "saveIntent"    # Landroid/content/Intent;
    .param p2, "popupTitle"    # Ljava/lang/String;
    .param p3, "popupMessage"    # Ljava/lang/String;

    .prologue
    .line 365
    new-instance v2, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    invoke-virtual {v2, p2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 370
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v1, "popupIntent":Landroid/content/Intent;
    const-string v2, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    const-string v2, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    return-object v1
.end method

.method private makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "positiveButtonIntent"    # Landroid/content/Intent;
    .param p2, "popupTitle"    # Ljava/lang/String;
    .param p3, "popupMessage"    # Ljava/lang/String;

    .prologue
    .line 349
    new-instance v2, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    invoke-virtual {v2, p2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 356
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .local v1, "popupIntent":Landroid/content/Intent;
    const-string v2, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    const-string v2, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    return-object v1
.end method

.method private makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "saveIntent"    # Landroid/content/Intent;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 397
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, "positiveButtonIntent":Landroid/content/Intent;
    const-string v2, "com.lge.nfc.intent.extra.send_intent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 400
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    return-object v1
.end method

.method private makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "saveIntent"    # Landroid/content/Intent;

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/NfcRootActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, "rootIntent":Landroid/content/Intent;
    const-string v1, "launchIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 409
    const-string v1, "launchIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    return-object v0
.end method

.method private sendIntenttoEmptyPopupDialog(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v8, 0x7f080042

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    sget-object v6, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "sendIntenttoEmptyPopupDialog"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 244
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v4

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_0

    .line 251
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 254
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.vending"

    const/16 v6, 0x80

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x7f080043

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v4, v6}, Lcom/android/nfc/LNfcDispatcher;->makeEmptyTagPopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 266
    .local v3, "popupIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v4, v5

    .line 267
    goto :goto_0

    .line 255
    .end local v3    # "popupIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x7f080044

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v4, v6}, Lcom/android/nfc/LNfcDispatcher;->makeEmptyTagPopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 259
    .restart local v3    # "popupIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v4, v5

    .line 260
    goto :goto_0
.end method

.method private sendIntenttoGSMAPopupDialog(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 300
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    .line 301
    .local v1, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v4

    .line 304
    :cond_1
    invoke-virtual {v1, v5}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v6, v7}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 310
    .local v3, "positiveButtonIntent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyCallType(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 311
    goto :goto_0

    .line 314
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyMailType(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 315
    goto :goto_0

    .line 318
    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyMimeType(Landroid/content/Intent;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 319
    goto :goto_0

    .line 322
    :cond_4
    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcDispatcher;->startActivitybySchemeType(Landroid/content/Intent;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    .line 323
    goto :goto_0

    .line 325
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyTextType(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v5

    .line 326
    goto :goto_0

    .line 328
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybySmsType(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v5

    .line 329
    goto :goto_0

    .line 332
    :cond_7
    new-instance v6, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f08003f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f080040

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v4, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;ZLandroid/os/UserHandle;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    const v6, 0x7f080015

    invoke-virtual {v4, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    const v6, 0x7f080016

    invoke-virtual {v4, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 339
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .local v2, "popupIntent":Landroid/content/Intent;
    const-string v4, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 342
    const-string v4, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 344
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v4, v5

    .line 345
    goto/16 :goto_0
.end method

.method private sendIntenttoVZWPopupDialog(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 275
    .local v0, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 278
    :cond_1
    invoke-virtual {v0, v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    if-ne v3, v2, :cond_2

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    :cond_2
    sget-object v3, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "sendIntenttoPopupDialog"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p1, v1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybyMimeType(Landroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 289
    goto :goto_0

    .line 292
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/nfc/LNfcDispatcher;->startActivitybySchemeType(Landroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 293
    goto :goto_0
.end method

.method private startActivitybyCallType(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 185
    const-string v5, "tel:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    const-string v5, "tel:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 189
    .local v2, "positivePopupIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v6, 0x7f08003f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x7f08003c

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v5, v4}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 193
    .local v1, "popupIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 197
    .end local v1    # "popupIntent":Landroid/content/Intent;
    .end local v2    # "positivePopupIntent":Landroid/content/Intent;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private startActivitybyMailType(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 163
    .local v1, "index":I
    if-eqz v0, :cond_1

    .line 164
    const-string v6, "mailto:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    const-string v6, "mailto:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v6, "?"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 167
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 168
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v6, v7}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 171
    .local v3, "positivePopupIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f08003a

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v6, v5}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 175
    .local v2, "popupIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 179
    .end local v2    # "popupIntent":Landroid/content/Intent;
    .end local v3    # "positivePopupIntent":Landroid/content/Intent;
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private startActivitybyMimeType(Landroid/content/Intent;Z)Z
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isGsma"    # Z

    .prologue
    .line 77
    const-string v12, "android.nfc.extra.NDEF_MESSAGES"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 78
    .local v3, "intentMsg":[Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 79
    .local v5, "msg":Landroid/nfc/NdefMessage;
    const/4 v7, 0x0

    .line 80
    .local v7, "phone_data":[Lcom/android/vcard/VCardEntry$PhoneData;
    const/4 v11, 0x0

    .line 81
    .local v11, "vcard_record":Lcom/android/nfc/VCardRecord;
    const-string v1, ""

    .line 82
    .local v1, "full_name":Ljava/lang/String;
    const-string v8, ""

    .line 84
    .local v8, "phone_num":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    if-eqz v3, :cond_0

    const-string v12, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 85
    :cond_0
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v13, "null || Unknowon intent."

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v12, 0x0

    .line 137
    :goto_0
    return v12

    .line 89
    :cond_1
    const/4 v12, 0x0

    aget-object v5, v3, v12

    .end local v5    # "msg":Landroid/nfc/NdefMessage;
    check-cast v5, Landroid/nfc/NdefMessage;

    .line 90
    .restart local v5    # "msg":Landroid/nfc/NdefMessage;
    if-nez v5, :cond_2

    .line 91
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v13, "msg is null"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v12, 0x0

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v4, v12, v13

    .line 96
    .local v4, "mRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    .line 97
    .local v6, "payload":[B
    if-nez v6, :cond_3

    .line 98
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v13, "payload is null"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v12, 0x0

    goto :goto_0

    .line 102
    :cond_3
    new-instance v11, Lcom/android/nfc/VCardRecord;

    .end local v11    # "vcard_record":Lcom/android/nfc/VCardRecord;
    invoke-direct {v11, v6}, Lcom/android/nfc/VCardRecord;-><init>([B)V

    .line 103
    .restart local v11    # "vcard_record":Lcom/android/nfc/VCardRecord;
    if-nez v11, :cond_4

    .line 104
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v13, "vcard_record is null"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v12, 0x0

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 113
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v7, v12, [Lcom/android/vcard/VCardEntry$PhoneData;

    .line 114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_7

    .line 115
    invoke-virtual {v11}, Lcom/android/nfc/VCardRecord;->getPhoneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/vcard/VCardEntry$PhoneData;

    aput-object v12, v7, v2

    .line 116
    aget-object v12, v7, v2

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 117
    if-eqz v2, :cond_5

    .line 118
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 120
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v7, v2

    invoke-virtual {v13}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    sget-object v12, Lcom/android/nfc/LNfcDispatcher;->CONTACT_MIME_MAP:[Ljava/lang/String;

    array-length v12, v12

    if-ge v2, v12, :cond_a

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/nfc/LNfcDispatcher;->CONTACT_MIME_MAP:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 127
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    if-eqz p2, :cond_8

    const-string v12, "com.lge.nfc.action.gsma_popup_positive_result"

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 128
    .local v10, "positivePopupIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v13, 0x7f08003f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v14, 0x7f080039

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/16 v16, 0x1

    aput-object v8, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v13}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 132
    .local v9, "popupIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v9, v13}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 133
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 127
    .end local v9    # "popupIntent":Landroid/content/Intent;
    .end local v10    # "positivePopupIntent":Landroid/content/Intent;
    :cond_8
    const-string v12, "com.lge.nfc.action.vzw_popup_positive_result"

    goto :goto_3

    .line 125
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 137
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private startActivitybySchemeType(Landroid/content/Intent;Z)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isGsma"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 143
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v7, "http://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v7, "https://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->BROWSER_SCHEME_MAP:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    if-eqz p2, :cond_2

    const-string v4, "com.lge.nfc.action.gsma_popup_positive_result"

    :goto_1
    invoke-direct {p0, v7, v4}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 148
    .local v3, "positivePopupIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v7, 0x7f08003f

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f080038

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v0, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v6}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 152
    .local v2, "popupIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v4, v5

    .line 157
    .end local v1    # "i":I
    .end local v2    # "popupIntent":Landroid/content/Intent;
    .end local v3    # "positivePopupIntent":Landroid/content/Intent;
    :goto_2
    return v4

    .line 147
    .restart local v1    # "i":I
    :cond_2
    const-string v4, "com.lge.nfc.action.vzw_popup_positive_result"

    goto :goto_1

    .line 142
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_4
    move v4, v6

    .line 157
    goto :goto_2
.end method

.method private startActivitybySmsType(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "data":Ljava/lang/String;
    const/4 v2, 0x0

    .line 219
    .local v2, "index":I
    if-eqz v0, :cond_2

    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v7, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 221
    sget-object v7, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 223
    sget-object v7, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    const-string v7, "?"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 225
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 226
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v7, v8}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 229
    .local v4, "positivePopupIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f08003f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v9, 0x7f08003d

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v7, v6}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 234
    .local v3, "popupIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 239
    .end local v1    # "i":I
    .end local v3    # "popupIntent":Landroid/content/Intent;
    .end local v4    # "positivePopupIntent":Landroid/content/Intent;
    :goto_1
    return v5

    .line 220
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    move v5, v6

    .line 239
    goto :goto_1
.end method

.method private startActivitybyTextType(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 203
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 205
    .local v2, "positivePopupIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v5, 0x7f08003b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 209
    .local v1, "popupIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 210
    const/4 v3, 0x1

    .line 213
    .end local v1    # "popupIntent":Landroid/content/Intent;
    .end local v2    # "positivePopupIntent":Landroid/content/Intent;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected alwaysLockScreenPolling()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    return v0
.end method

.method protected applyPopupDialogScenario(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)Z
    .locals 7
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 625
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 627
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 628
    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "Invalid Sequence : intent is null"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_0
    :goto_0
    return v3

    .line 632
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 633
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 637
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    if-ne v5, v6, :cond_2

    .line 638
    invoke-direct {p0, v1}, Lcom/android/nfc/LNfcDispatcher;->sendIntenttoVZWPopupDialog(Landroid/content/Intent;)Z

    move-result v5

    if-ne v5, v4, :cond_0

    .line 639
    sget-boolean v3, Lcom/android/nfc/LNfcDispatcher;->DBG:Z

    sget-object v5, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v6, "send VZW Popup Dialog"

    invoke-static {v3, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 640
    goto :goto_0

    .line 642
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->gsma:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    if-ne v5, v6, :cond_0

    .line 643
    const-string v5, "android.nfc.extra.TAG"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 644
    .local v2, "taginfo":Landroid/nfc/Tag;
    invoke-virtual {p0, v2}, Lcom/android/nfc/LNfcDispatcher;->isAndroidBeamReceived(Landroid/nfc/Tag;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v1}, Lcom/android/nfc/LNfcDispatcher;->sendIntenttoGSMAPopupDialog(Landroid/content/Intent;)Z

    move-result v5

    if-ne v5, v4, :cond_0

    .line 646
    sget-boolean v3, Lcom/android/nfc/LNfcDispatcher;->DBG:Z

    sget-object v5, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v6, "send GSMA Popup Dialog"

    invoke-static {v3, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 647
    goto :goto_0
.end method

.method protected checkEmptyTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "message":Landroid/nfc/NdefMessage;
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v1

    .line 505
    .local v1, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v1, :cond_1

    .line 506
    invoke-virtual {v1}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    if-nez v4, :cond_1

    .line 508
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mEmptyPopupSupport:Z

    if-ne v4, v2, :cond_1

    .line 509
    iget-object v4, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/nfc/LNfcDispatcher;->sendIntenttoEmptyPopupDialog(Landroid/content/Intent;)Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 510
    sget-boolean v3, Lcom/android/nfc/LNfcDispatcher;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "send EmptyPopup Dialog"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method protected checkSMSTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z
    .locals 18
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/nfc/NfcDispatcher$DispatchInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 521
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-nez v13, :cond_0

    .line 522
    const/4 v13, 0x0

    .line 575
    :goto_0
    return v13

    .line 524
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 525
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/ResolveInfo;

    .local v2, "arr$":[Landroid/content/pm/ResolveInfo;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v1, v2, v6

    .line 526
    .local v1, "appinfor":Landroid/content/pm/ResolveInfo;
    iget v13, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-lez v13, :cond_1

    .line 527
    const/4 v13, 0x0

    goto :goto_0

    .line 525
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 532
    .end local v1    # "appinfor":Landroid/content/pm/ResolveInfo;
    .end local v2    # "arr$":[Landroid/content/pm/ResolveInfo;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    :cond_2
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 533
    .local v10, "payloadString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "defaultSmsApplication":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 535
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 537
    :cond_4
    sget-object v2, Lcom/android/nfc/LNfcDispatcher;->SMS_HEADER_MAP:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v8, :cond_a

    aget-object v5, v2, v6

    .line 538
    .local v5, "header":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 539
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v13, v13, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sget-object v14, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->gsma:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    if-ne v13, v14, :cond_8

    .line 543
    const/4 v7, 0x0

    .line 544
    .local v7, "index":I
    const-string v3, ""

    .line 546
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 547
    const-string v13, "?"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 548
    const/4 v13, -0x1

    if-eq v7, v13, :cond_5

    .line 549
    const/4 v13, 0x0

    invoke-virtual {v3, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 552
    :cond_5
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v9

    .line 553
    .local v9, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-nez v9, :cond_6

    .line 554
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 557
    :cond_6
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v13

    goto/16 :goto_0

    .line 560
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    const-string v14, "com.lge.nfc.action.gsma_popup_positive_result"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 561
    .local v12, "positivePopupIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v14, 0x7f08003f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v15, 0x7f080028

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 565
    .local v11, "popupIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v11, v14}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 566
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 569
    .end local v3    # "data":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v9    # "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    .end local v11    # "popupIntent":Landroid/content/Intent;
    .end local v12    # "positivePopupIntent":Landroid/content/Intent;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    goto/16 :goto_0

    .line 537
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 572
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "defaultSmsApplication":Ljava/lang/String;
    .end local v5    # "header":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "payloadString":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 575
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method protected checkTEXTTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z
    .locals 10
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/nfc/NfcDispatcher$DispatchInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 580
    iget-object v8, p0, Lcom/android/nfc/LNfcDispatcher;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v8, v8, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->gsma:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    if-ne v8, v9, :cond_0

    .line 581
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v6

    .line 584
    :cond_1
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    .line 585
    .local v2, "nfcAdapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v2, :cond_0

    .line 588
    invoke-virtual {v2, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 591
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 592
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 595
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "type":Ljava/lang/String;
    const-string v8, "text/plain"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 597
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 598
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v8, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v6}, Lcom/android/nfc/LNfcDispatcher;->makeRootActivityIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    const-string v8, "com.lge.nfc.action.gsma_popup_positive_result"

    invoke-direct {p0, v6, v8}, Lcom/android/nfc/LNfcDispatcher;->makeRegisterIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 601
    .local v4, "positivePopupIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v8, 0x7f08003f

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    const v9, 0x7f08002a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v6, v8}, Lcom/android/nfc/LNfcDispatcher;->makePopupDialogIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 605
    .local v3, "popupIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/LNfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v6, v7

    .line 606
    goto :goto_0
.end method

.method protected checkValidMessageType(Landroid/nfc/NdefMessage;)Z
    .locals 3
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 614
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    .line 615
    .local v0, "tnf_val":I
    if-eqz v0, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method isAndroidBeamReceived(Landroid/nfc/Tag;)Z
    .locals 6
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 478
    if-nez p1, :cond_1

    .line 479
    sget-object v3, Lcom/android/nfc/LNfcDispatcher;->TAG:Ljava/lang/String;

    const-string v4, "tag object is null"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    :goto_0
    return v2

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    .line 483
    .local v0, "tagid":[B
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v1

    .line 485
    .local v1, "taginfor":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-array v4, v3, [B

    aput-byte v2, v4, v2

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ndefmaxlength"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ndefcardstate"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    const-string v4, "ndeftype"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v4

    if-nez v4, :cond_0

    move v2, v3

    .line 491
    goto :goto_0
.end method
