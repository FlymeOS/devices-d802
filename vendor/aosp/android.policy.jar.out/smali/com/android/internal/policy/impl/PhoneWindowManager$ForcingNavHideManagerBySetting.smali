.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcingNavHideManagerBySetting"
.end annotation


# static fields
.field private static final ENABLED_HIDE_NAVIGATION_SEPARATOR:C = ':'

.field public static final TALKBACK_PREFERENCE_KEY:Ljava/lang/String; = "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"


# instance fields
.field private mAccountListenerAdded:Z

.field private mBootComplete:Z

.field private mCurrentUserId:I

.field mHideAppListSet:Ljava/util/HashSet;

.field private mIsAccessibilityEnabled:Z

.field private mIsGoogleLogedIn:Z

.field private mIsInitializeTalkbackState:Z

.field private mIsReadDB:Z

.field private mIsRegistered:Z

.field public mIsSplitStatus:Z

.field private mIsTalkbackEnabled:Z

.field public mLastNavHiddenState:Z

.field private mLastRunningPkgName:Ljava/lang/String;

.field private mLastUserId:I

.field private mNavHiddenBySetting:Z

.field private mPreUpdateNeeded:Z

.field private mPreUpdatedPkgName:Ljava/lang/String;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mUserChangeCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private observer:Landroid/database/ContentObserver;

.field private talkbackObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 6470
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6416
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mHideAppListSet:Ljava/util/HashSet;

    .line 6417
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mNavHiddenBySetting:Z

    .line 6418
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z

    .line 6419
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mBootComplete:Z

    .line 6420
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsAccessibilityEnabled:Z

    .line 6421
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    .line 6422
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsInitializeTalkbackState:Z

    .line 6423
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mAccountListenerAdded:Z

    .line 6424
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    .line 6426
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdateNeeded:Z

    .line 6429
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 6433
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    .line 6435
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastRunningPkgName:Ljava/lang/String;

    .line 6436
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdatedPkgName:Ljava/lang/String;

    .line 6438
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mCurrentUserId:I

    .line 6439
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastUserId:I

    .line 6440
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsRegistered:Z

    .line 6441
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsSplitStatus:Z

    .line 6443
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mUserChangeCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 6605
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->observer:Landroid/database/ContentObserver;

    .line 6614
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->talkbackObserver:Landroid/database/ContentObserver;

    .line 6471
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->initialCheckForAccounts()V

    .line 6472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6473
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6474
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6475
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mUserChangeCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6477
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6478
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsRegistered:Z

    if-nez v2, :cond_0

    .line 6479
    const-string v2, "enable_hide_navigation_apps"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6480
    const-string v2, "enabled_accessibility_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->talkbackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6481
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsRegistered:Z

    .line 6482
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mBootComplete:Z

    .line 6484
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->checkAccessibilityEnabled()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->updateGoogleLogedInStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsAccessibilityEnabled:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->readDB()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
    .param p1, "x1"    # Z

    .prologue
    .line 6415
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
    .param p1, "x1"    # Z

    .prologue
    .line 6415
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->observer:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->talkbackObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
    .param p1, "x1"    # Z

    .prologue
    .line 6415
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->setTalkbackEnabled()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    .line 6415
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    return v0
.end method

.method private checkAccessibilityEnabled()V
    .locals 3

    .prologue
    .line 6591
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 6593
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsAccessibilityEnabled:Z

    .line 6594
    return-void

    .line 6593
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialCheckForAccounts()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 6585
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 6586
    .local v1, "accMngr":Landroid/accounts/AccountManager;
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 6587
    .local v0, "accArray":[Landroid/accounts/Account;
    array-length v3, v0

    if-lt v3, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    .line 6588
    return-void

    .line 6587
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readDB()V
    .locals 7

    .prologue
    .line 6710
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_hide_navigation_apps"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 6711
    .local v3, "enableHideApp":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 6712
    const-string v3, ""

    .line 6714
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 6715
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 6717
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6718
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 6719
    .local v1, "componentNameString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6721
    .end local v0    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enableHideApp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 6722
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6724
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private setTalkbackEnabled()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6597
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6598
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 6599
    const-string v2, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    .line 6603
    :goto_0
    return-void

    .line 6601
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    goto :goto_0
.end method

.method private updateGoogleLogedInStatus()V
    .locals 5

    .prologue
    .line 6560
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mAccountListenerAdded:Z

    if-nez v2, :cond_0

    .line 6561
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 6563
    .local v0, "accMngr":Landroid/accounts/AccountManager;
    :try_start_0
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6580
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mAccountListenerAdded:Z

    .line 6582
    .end local v0    # "accMngr":Landroid/accounts/AccountManager;
    :cond_0
    return-void

    .line 6577
    .restart local v0    # "accMngr":Landroid/accounts/AccountManager;
    :catch_0
    move-exception v1

    .line 6578
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "HideNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountsUpdateListener is already added? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mAccountListenerAdded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getLastRunningPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6504
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastRunningPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUpdatedPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6512
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdatedPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isForcingNavHideState()Z
    .locals 1

    .prologue
    .line 6552
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mNavHiddenBySetting:Z

    return v0
.end method

.method public isGoogleLogedIn()Z
    .locals 1

    .prologue
    .line 6556
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    return v0
.end method

.method public isNavBarHidingWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v5, 0x7d4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6623
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsInitializeTalkbackState:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v3, :cond_0

    .line 6624
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->setTalkbackEnabled()V

    .line 6625
    const-string v3, "HideNav"

    const-string v4, "initialize talkback flag state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6626
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsInitializeTalkbackState:Z

    .line 6629
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v3, :cond_1

    .line 6630
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->readDB()V

    .line 6631
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z

    .line 6644
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mCurrentUserId:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastUserId:I

    if-eq v3, v4, :cond_2

    .line 6645
    const-string v3, "HideNav"

    const-string v4, "user switched.. observer should be re registered.. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6646
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mCurrentUserId:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastUserId:I

    .line 6649
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_4

    .line 6705
    :cond_3
    :goto_0
    return v2

    .line 6654
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->isSplitStatus()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6657
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    .line 6658
    iget v3, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d2

    if-ne v3, v4, :cond_5

    invoke-virtual {p6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LG_AppDrawer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6659
    const-string v1, "HideNav"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this is app drawer related windows.. check nav frame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6660
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    goto :goto_0

    .line 6662
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v0, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 6664
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 6665
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->isPreUpdateNeeded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6666
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_3

    .line 6668
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v1

    .line 6671
    goto :goto_0

    .line 6675
    :cond_6
    const-string v3, "com.android.providers.media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.internal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6677
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    goto/16 :goto_0

    .line 6678
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_3

    .line 6680
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6682
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Floating:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6683
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->isPreUpdateNeeded()Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_1
    move v2, v1

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_1

    .line 6684
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_c

    .line 6685
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->isPreUpdateNeeded()Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_2
    move v2, v1

    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto :goto_2

    .line 6689
    :cond_c
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Floating:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6691
    iget v2, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_d

    .line 6692
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_e

    .line 6693
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    iput v2, p4, Landroid/graphics/Rect;->bottom:I

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 6700
    :cond_d
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->setLastRunningPkg(Ljava/lang/String;)V

    move v2, v1

    .line 6701
    goto/16 :goto_0

    .line 6695
    :cond_e
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p3, Landroid/graphics/Rect;->right:I

    iput v2, p4, Landroid/graphics/Rect;->right:I

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3
.end method

.method public isPreUpdateNeeded()Z
    .locals 1

    .prologue
    .line 6496
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdateNeeded:Z

    return v0
.end method

.method public resetForcingNavHide()V
    .locals 1

    .prologue
    .line 6548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mNavHiddenBySetting:Z

    .line 6549
    return-void
.end method

.method public setForcingNavHide()V
    .locals 1

    .prologue
    .line 6519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mNavHiddenBySetting:Z

    .line 6521
    return-void
.end method

.method public setLastRunningPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6500
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastRunningPkgName:Ljava/lang/String;

    .line 6501
    return-void
.end method

.method public setPreUpdateBeforeLayout(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 6492
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdateNeeded:Z

    .line 6493
    return-void
.end method

.method public setPreUpdatedPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6508
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdatedPkgName:Ljava/lang/String;

    .line 6509
    return-void
.end method

.method public updateCurrentUserForNavHide(I)V
    .locals 3
    .param p1, "uId"    # I

    .prologue
    .line 6487
    const-string v0, "HideNav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user switched.. mLastUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6488
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mCurrentUserId:I

    .line 6489
    return-void
.end method

.method public updateSplitStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 6524
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsSplitStatus:Z

    .line 6526
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v4, :cond_0

    .line 6527
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    .line 6529
    .local v1, "splitWindowManager":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    :try_start_0
    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    .line 6531
    const/4 v2, 0x0

    .local v2, "zoneAScrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/4 v3, 0x0

    .line 6532
    .local v3, "zoneBScrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfoForZone(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v2

    .line 6533
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfoForZone(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v3

    .line 6534
    invoke-interface {v2}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenState()I

    move-result v4

    if-eq v4, v5, :cond_0

    invoke-interface {v3}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenState()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 6535
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsSplitStatus:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6545
    .end local v1    # "splitWindowManager":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .end local v2    # "zoneAScrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    .end local v3    # "zoneBScrInfo":Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    :cond_0
    :goto_0
    return-void

    .line 6538
    .restart local v1    # "splitWindowManager":Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    :catch_0
    move-exception v0

    .line 6539
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SplitWindow"

    const-string v5, "Binder service (SplitWindowPolicyService) is not available. need to recover Service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6540
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->recoverService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    .line 6543
    goto :goto_0

    .line 6541
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 6542
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "SplitWindow"

    const-string v5, "SplitWindowPolicyService is not created well.. check service routine"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
