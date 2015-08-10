.class Lcom/android/nfc/LNfcService$5;
.super Landroid/content/BroadcastReceiver;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 0

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2216
    .local v0, "action":Ljava/lang/String;
    sget-boolean v6, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v7, "LNfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLgNfcOwnerReceiver Intent action: : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2218
    iget-object v6, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->collectNfcRelatedServices()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2220
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2222
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2223
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_5

    .line 2224
    const/4 v2, 0x0

    .line 2225
    .local v2, "isSkip":Z
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 2226
    .local v3, "pkgName":Ljava/lang/String;
    sget-boolean v6, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v7, "LNfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package Name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2227
    iget-object v6, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2228
    sget-boolean v6, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v7, "LNfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SKIP! make itself android.intent.action.PACKAGE_CHANGED data : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v9, v9, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2261
    .end local v2    # "isSkip":Z
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 2231
    .restart local v2    # "isSkip":Z
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v6, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mResolvedPaymentServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2232
    .local v4, "resolvedService":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2237
    .end local v4    # "resolvedService":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-eqz v2, :cond_5

    .line 2238
    sget-boolean v6, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v7, "LNfcService"

    const-string v8, "SKIP! Changed/Replaced package is NOT releted to NFC."

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2235
    .restart local v4    # "resolvedService":Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v2, 0x1

    .line 2236
    goto :goto_1

    .line 2245
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isSkip":Z
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2252
    :cond_6
    iget-object v6, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->updatePackageCache()V

    .line 2254
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2256
    iget-object v6, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-virtual {v6}, Lcom/android/nfc/NfceeAccessControl;->invalidateCache()V

    .line 2259
    :cond_7
    iget-object v6, p0, Lcom/android/nfc/LNfcService$5;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->changeHceRouteWhenNoApp()V

    goto :goto_0
.end method
