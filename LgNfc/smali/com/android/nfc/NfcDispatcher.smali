.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NfcDispatcher"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field protected final mContext:Landroid/content/Context;

.field private final mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p3, "provisionOnly"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 90
    new-instance v2, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.nfc.action.TECH_DISCOVERED"

    const-string v5, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 94
    new-instance v2, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v2, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 95
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 104
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 110
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 111
    return-void

    .line 99
    .end local v1    # "provisionMimes":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 106
    .restart local v1    # "provisionMimes":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 557
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 456
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 457
    .local v5, "record":Landroid/nfc/NdefRecord;
    invoke-static {v5}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 459
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 567
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, "enabled":Z
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v0, "compname":Landroid/content/ComponentName;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 579
    const/4 v2, 0x1

    .line 584
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 585
    const-string v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Component not enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    return v2

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected alwaysLockScreenPolling()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method protected applyPopupDialogScenario(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)Z
    .locals 1
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method protected checkEmptyTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method protected checkSMSTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z
    .locals 1
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
    .line 606
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected checkTEXTTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z
    .locals 1
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
    .line 609
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected checkValidMessageType(Landroid/nfc/NdefMessage;)Z
    .locals 1
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .locals 14
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 233
    .local v5, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 234
    .local v4, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 235
    .local v6, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 236
    .local v8, "provisioningOnly":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const/4 v9, 0x0

    .line 239
    .local v9, "screenUnlocked":Z
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    if-ne v0, v12, :cond_1

    .line 241
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v9

    .line 242
    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->alwaysLockScreenPolling()Z

    move-result v0

    if-nez v0, :cond_1

    move v10, v12

    .line 300
    :cond_0
    :goto_0
    return v10

    .line 236
    .end local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v6    # "overrideTechLists":[[Ljava/lang/String;
    .end local v8    # "provisioningOnly":Z
    .end local v9    # "screenUnlocked":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 247
    .restart local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .restart local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .restart local v6    # "overrideTechLists":[[Ljava/lang/String;
    .restart local v8    # "provisioningOnly":Z
    .restart local v9    # "screenUnlocked":Z
    :cond_1
    const/4 v3, 0x0

    .line 248
    .local v3, "message":Landroid/nfc/NdefMessage;
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v7

    .line 249
    .local v7, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v7, :cond_2

    .line 250
    invoke-virtual {v7}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 253
    :cond_2
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "NfcDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dispatch tag: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " message: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_3
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p1, v3}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    .line 257
    .local v1, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    move-object v0, p0

    move-object v2, p1

    .line 259
    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    if-eqz v9, :cond_4

    move v0, v10

    :goto_1
    move v10, v0

    goto :goto_0

    :cond_4
    move v0, v11

    goto :goto_1

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/handover/HandoverManager;->tryHandover(Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "NfcDispatcher"

    const-string v2, "matched BT HANDOVER"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_6
    if-nez v9, :cond_0

    move v10, v11

    goto :goto_0

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 270
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "NfcDispatcher"

    const-string v2, "matched NFC WPS TOKEN"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_8
    if-nez v9, :cond_0

    move v10, v11

    goto :goto_0

    .line 274
    :cond_9
    invoke-virtual {p0, v1, v3, v8}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 275
    if-nez v9, :cond_0

    move v10, v11

    goto/16 :goto_0

    .line 278
    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->alwaysLockScreenPolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    :cond_b
    if-eqz v8, :cond_c

    move v10, v12

    .line 285
    goto/16 :goto_0

    .line 289
    :cond_c
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v10, v11

    .line 290
    goto/16 :goto_0

    .line 293
    :cond_d
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 294
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 295
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "NfcDispatcher"

    const-string v2, "matched TAG"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v10, v11

    .line 296
    goto/16 :goto_0

    .line 299
    :cond_f
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "NfcDispatcher"

    const-string v2, "no match"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v10, v12

    .line 300
    goto/16 :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    monitor-exit p0

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 542
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v4

    .line 544
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 545
    .local v3, "tech":Ljava/lang/String;
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 549
    .end local v3    # "tech":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 356
    if-eqz p2, :cond_2

    .line 357
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/IntentFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 358
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "NfcDispatcher"

    invoke-virtual {v1, v6, p1, v5, v7}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 365
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 357
    .restart local v0    # "arr$":[Landroid/content/IntentFilter;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "arr$":[Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    if-eqz p3, :cond_0

    :cond_3
    move v4, v5

    .line 365
    goto :goto_1
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .locals 7
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 369
    if-nez p2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v5

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "tagTechs":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 375
    move-object v0, p2

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 376
    .local v1, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v4, v1}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 377
    const/4 v5, 0x1

    goto :goto_0

    .line 375
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method resumeAppSwitches()V
    .locals 1

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcDispatcher"

    const-string v1, "Set Foreground Dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 117
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 118
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z
    .locals 13
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "provisioningOnly"    # Z

    .prologue
    .line 384
    if-nez p2, :cond_0

    .line 385
    const/4 v10, 0x0

    .line 451
    :goto_0
    return v10

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v6

    .line 390
    .local v6, "intent":Landroid/content/Intent;
    if-nez v6, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 392
    :cond_1
    if-eqz p3, :cond_3

    .line 393
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 395
    :cond_2
    const-string v10, "NfcDispatcher"

    const-string v11, "Dropping NFC intent in provisioning mode."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v10, 0x0

    goto :goto_0

    .line 401
    :cond_3
    invoke-static {p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v0

    .line 402
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 403
    .local v8, "pkg":Ljava/lang/String;
    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 405
    sget-boolean v10, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v10, :cond_5

    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to NDEF"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_5
    const/4 v10, 0x1

    goto :goto_0

    .line 411
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 412
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 415
    .local v4, "firstPackage":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-direct {v2, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 416
    .local v2, "currentUser":Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 422
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 423
    .local v1, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_8

    invoke-virtual {p1, v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 424
    sget-boolean v10, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v10, :cond_7

    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to application launch"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 418
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 419
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "NfcDispatcher"

    const-string v11, "Could not create user package context"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 428
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appLaunchIntent":Landroid/content/Intent;
    .restart local v2    # "currentUser":Landroid/os/UserHandle;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    invoke-static {v4}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 429
    .local v7, "marketIntent":Landroid/content/Intent;
    if-eqz v7, :cond_a

    invoke-virtual {p1, v7}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 430
    sget-boolean v10, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v10, :cond_9

    const-string v10, "NfcDispatcher"

    const-string v11, "matched AAR to market launch"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 436
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v4    # "firstPackage":Ljava/lang/String;
    .end local v7    # "marketIntent":Landroid/content/Intent;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfcDispatcher;->checkValidMessageType(Landroid/nfc/NdefMessage;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 437
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 439
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcDispatcher;->applyPopupDialogScenario(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 440
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 445
    :cond_c
    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 447
    sget-boolean v10, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v10, :cond_d

    const-string v10, "NfcDispatcher"

    const-string v11, "matched NDEF"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 451
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 309
    if-nez p4, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v4

    .line 315
    :cond_1
    if-eqz p3, :cond_4

    .line 316
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 317
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    if-eqz p6, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 321
    sget-boolean v2, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NfcDispatcher"

    const-string v5, "matched NDEF override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v4, v3

    .line 322
    goto :goto_0

    :cond_3
    move v2, v4

    .line 317
    goto :goto_1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 330
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v1

    .line 331
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 333
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 334
    sget-boolean v2, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "NfcDispatcher"

    const-string v5, "matched TECH override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    move v4, v3

    .line 335
    goto :goto_0

    .line 336
    :catch_1
    move-exception v0

    .line 337
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0

    .line 342
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_6
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v1

    .line 343
    if-eqz p6, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 346
    sget-boolean v2, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "NfcDispatcher"

    const-string v5, "matched TAG override"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    move v4, v3

    .line 347
    goto :goto_0

    :cond_8
    move v2, v4

    .line 343
    goto :goto_2

    .line 348
    :catch_2
    move-exception v0

    .line 349
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 12
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 466
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 468
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, "tagTechs":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 472
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v5, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v9}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v7

    .line 477
    .local v7, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 478
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 485
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 487
    .local v3, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v6, v9}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 490
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 491
    iget-object v9, v3, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NfcDispatcher"

    const-string v10, "Could not create user package context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v9, 0x0

    .line 523
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return v9

    .line 497
    .restart local v0    # "currentUser":Landroid/os/UserHandle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcDispatcher;->checkEmptyTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0, p1, v5}, Lcom/android/nfc/NfcDispatcher;->checkSMSTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0, p1, v5}, Lcom/android/nfc/NfcDispatcher;->checkTEXTTag(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 498
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 500
    :cond_3
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 503
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 505
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 506
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 508
    sget-boolean v9, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "NfcDispatcher"

    const-string v10, "matched single TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    .line 511
    :cond_5
    iget-object v9, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 523
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 512
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_6

    .line 514
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.INTENT"

    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    const-string v9, "rlist"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p1, v4}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 519
    sget-boolean v9, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "NfcDispatcher"

    const-string v10, "matched multiple TECH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_8
    const/4 v9, 0x1

    goto :goto_1
.end method
