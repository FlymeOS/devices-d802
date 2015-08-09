.class Lcom/android/internal/policy/impl/EmergencyLauncher$2;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EmergencyLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EmergencyLauncher;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private processKorGoFireReport(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 397
    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const-string v3, "com.winitech.mm119t"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledProperly(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$100(Lcom/android/internal/policy/impl/EmergencyLauncher;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    const-string v2, "intentFlag"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "intentFlag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 417
    .end local v0    # "intentFlag":Ljava/lang/String;
    :goto_0
    return v1

    .line 411
    .restart local v0    # "intentFlag":Ljava/lang/String;
    :cond_0
    const-string v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const-string v3, "119"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->setSystemState(ILjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$200(Lcom/android/internal/policy/impl/EmergencyLauncher;ILjava/lang/String;)V

    .line 417
    .end local v0    # "intentFlag":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 413
    .restart local v0    # "intentFlag":Ljava/lang/String;
    :cond_2
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const/4 v2, 0x2

    const-string v3, "119"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->setSystemState(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$200(Lcom/android/internal/policy/impl/EmergencyLauncher;ILjava/lang/String;)V

    goto :goto_1
.end method

.method private processKorGoPoliceReport(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const-string v3, "go.police.report"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledProperly(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$100(Lcom/android/internal/policy/impl/EmergencyLauncher;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    const-string v2, "IntentFlag"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "intentFlag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 393
    .end local v0    # "intentFlag":Ljava/lang/String;
    :goto_0
    return v1

    .line 387
    .restart local v0    # "intentFlag":Ljava/lang/String;
    :cond_0
    const-string v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const-string v3, "112"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->setSystemState(ILjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$200(Lcom/android/internal/policy/impl/EmergencyLauncher;ILjava/lang/String;)V

    .line 393
    .end local v0    # "intentFlag":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 389
    .restart local v0    # "intentFlag":Ljava/lang/String;
    :cond_2
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const/4 v2, 0x2

    const-string v3, "112"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->setSystemState(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$200(Lcom/android/internal/policy/impl/EmergencyLauncher;ILjava/lang/String;)V

    goto :goto_1
.end method

.method private processMMS119AppRequest()V
    .locals 3

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.winitech.mm119t"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 422
    .local v0, "mmsIntent119App":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const-string v2, "com.winitech.mm119t"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledProperly(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$100(Lcom/android/internal/policy/impl/EmergencyLauncher;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 426
    const-string v1, "startFlag"

    const-string v2, "003"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 429
    :cond_0
    return-void
.end method

.method private processNewOutgoingCall(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 459
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "callingNumber":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 465
    const/4 v3, 0x1

    .line 491
    :goto_0
    return v3

    .line 472
    :cond_0
    const-string v3, "119"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.winitech.mm119t"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 474
    .local v0, "callIntent119App":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const-string v4, "com.winitech.mm119t"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledProperly(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$100(Lcom/android/internal/policy/impl/EmergencyLauncher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 478
    const-string v3, "startFlag"

    const-string v4, "001"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 491
    .end local v0    # "callIntent119App":Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 481
    :cond_2
    const-string v3, "112"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "go.police.report"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 483
    .local v2, "intent112App":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const-string v4, "go.police.report"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledProperly(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$100(Lcom/android/internal/policy/impl/EmergencyLauncher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 487
    const-string v3, "startFlag"

    const-string v4, "001"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private processVTRequest(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 432
    const-string v3, "com.lge.ims.extra.VT_PHONE_NUMBER_LIST"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "phoneNumberList":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 438
    const/4 v2, 0x1

    .line 455
    :cond_0
    :goto_0
    return v2

    .line 445
    :cond_1
    aget-object v3, v0, v2

    const-string v4, "119"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.winitech.mm119t"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 447
    .local v1, "vtIntent119App":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const-string v4, "com.winitech.mm119t"

    # invokes: Lcom/android/internal/policy/impl/EmergencyLauncher;->isAppInstalledProperly(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$100(Lcom/android/internal/policy/impl/EmergencyLauncher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 451
    const-string v3, "startFlag"

    const-string v4, "002"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v3, p0, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->this$0:Lcom/android/internal/policy/impl/EmergencyLauncher;

    # getter for: Lcom/android/internal/policy/impl/EmergencyLauncher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/EmergencyLauncher;->access$000(Lcom/android/internal/policy/impl/EmergencyLauncher;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->processNewOutgoingCall(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const-string v1, "com.lge.ims.action.VT_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->processVTRequest(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 357
    :cond_2
    const-string v1, "com.lge.mms.action.MMS_119APP_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->processMMS119AppRequest()V

    goto :goto_0

    .line 359
    :cond_3
    const-string v1, "android.intent.KOR_GO_FIRE_REPORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 360
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->processKorGoFireReport(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 363
    :cond_4
    const-string v1, "android.intent.KOR_GO_POLICE_REPORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 364
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/EmergencyLauncher$2;->processKorGoPoliceReport(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 368
    :cond_5
    const-string v1, "EmergencyLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action not processed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
