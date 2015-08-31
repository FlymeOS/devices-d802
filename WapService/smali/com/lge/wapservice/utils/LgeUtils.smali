.class public Lcom/lge/wapservice/utils/LgeUtils;
.super Ljava/lang/Object;
.source "LgeUtils.java"


# direct methods
.method public static hexConvert([B)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # [B

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 56
    aget-byte v3, p0, v2

    .line 57
    .local v3, "value":I
    and-int/lit16 v3, v3, 0xff

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "hexDigits":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "hexDigits":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static hexConvert(Ljava/lang/String;)[B
    .locals 12
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, "convertMe":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 25
    .local v1, "bytes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 28
    .local v4, "endPos":I
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, "octet":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 37
    :goto_1
    const/16 v10, 0x10

    invoke-static {v6, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 38
    .local v9, "value":I
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v6    # "octet":Ljava/lang/String;
    .end local v9    # "value":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    .line 33
    .local v8, "startPos":I
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 34
    .restart local v6    # "octet":Ljava/lang/String;
    invoke-virtual {v2, v8, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 41
    .end local v4    # "endPos":I
    .end local v6    # "octet":Ljava/lang/String;
    .end local v8    # "startPos":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 42
    .local v0, "byteCount":I
    new-array v7, v0, [B

    .line 44
    .local v7, "result":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_2

    .line 45
    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 46
    .local v3, "element":Ljava/lang/Integer;
    sub-int v10, v0, v5

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v11

    aput-byte v11, v7, v10

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 49
    .end local v3    # "element":Ljava/lang/Integer;
    :cond_2
    return-object v7
.end method

.method public static isCurrentUserIsOwner()Z
    .locals 5

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 131
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 134
    const/4 v1, 0x1

    .line 138
    :cond_0
    :goto_0
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCurrentUSerIsOwner is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v1

    .line 136
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isEmotionalLEDSupported()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public static isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 97
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 100
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    if-eqz v1, :cond_0

    .line 106
    const/4 v3, 0x1

    .line 108
    :goto_1
    return v3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isPhoneInUse()Z
    .locals 6

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 83
    .local v0, "bInUse":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 84
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 86
    :goto_0
    const-string v3, "PushNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException onisPhoneInUse: bInUse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return v0

    .line 85
    .restart local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "PushNotification"

    const-string v4, "RemoteException onisPhoneInUse"

    invoke-static {v3, v4, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static startEmotionalLEDService(Landroid/content/Context;I)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "notiId"    # I

    .prologue
    .line 118
    return-void
.end method

.method public static stopEmotionalLEDService(Landroid/content/Context;I)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "notiId"    # I

    .prologue
    .line 122
    return-void
.end method
