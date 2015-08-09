.class public Lcom/lge/internal/policy/impl/ArtWindowService;
.super Lcom/lge/systemservice/core/IArtWindowService$Stub;
.source "ArtWindowService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtWindowService"


# instance fields
.field mWindowManagerService:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "windowManagerService"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/systemservice/core/IArtWindowService$Stub;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 34
    if-nez p0, :cond_0

    move-object v3, v7

    .line 70
    :goto_0
    return-object v3

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 38
    .local v5, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 41
    .local v3, "findField":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 43
    .local v2, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v1, v0, v4

    .line 44
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 46
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 49
    goto :goto_0

    .line 56
    :catch_0
    move-exception v8

    .line 43
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 67
    const-class v8, Ljava/lang/Object;

    if-ne v5, v8, :cond_1

    .line 68
    const-string v8, "ArtWindowService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getField "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Value of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 70
    goto :goto_0

    .line 51
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public static getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "MethodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 119
    :goto_0
    return-object v4

    .line 78
    :cond_0
    if-nez p2, :cond_1

    .line 79
    const/4 v8, 0x0

    new-array p2, v8, [Ljava/lang/Object;

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 83
    .local v2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 85
    .local v6, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v5, v0, v1

    .line 86
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 85
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 92
    .local v7, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v7

    array-length v9, p2

    if-ne v8, v9, :cond_3

    .line 99
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 100
    invoke-virtual {v5, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 101
    .local v4, "mRet":Ljava/lang/Object;
    goto :goto_0

    .line 108
    .end local v4    # "mRet":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    throw v8

    .line 113
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 114
    const-class v8, Ljava/lang/Object;

    if-ne v2, v8, :cond_2

    .line 116
    const-string v8, "ArtWindowService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMethod ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") Value of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v7    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v8

    goto :goto_2

    .line 104
    :catch_1
    move-exception v8

    goto :goto_2

    .line 102
    :catch_2
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public getKeycodeState(I)I
    .locals 6
    .param p1, "keycode"    # I

    .prologue
    .line 239
    iget-object v2, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v3, "mInputManager"

    invoke-static {v2, v3}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, "mInputManager":Ljava/lang/Object;
    const-string v2, "getKeyCodeState"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, -0x100

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 243
    .local v1, "state":I
    return v1
.end method

.method public getViewBinder(I)Landroid/os/IBinder;
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    .line 145
    :try_start_0
    iget-object v8, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v10, "mCurrentFocus"

    invoke-static {v8, v10}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    .local v2, "currentFocus":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 148
    const-string v8, "ArtWindowService"

    const-string v10, "currentFocus is null"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 181
    .end local v2    # "currentFocus":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 152
    .restart local v2    # "currentFocus":Ljava/lang/Object;
    :cond_0
    iget-object v8, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v10, "mWindowMap"

    invoke-static {v8, v10}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 158
    .local v6, "windowMap":Ljava/lang/Object;
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    const-string v8, "getWindowList"

    const/4 v10, 0x0

    invoke-static {v2, v8, v10}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 161
    .local v7, "windows":Ljava/lang/Object;
    const-string v8, "size"

    const/4 v10, 0x0

    invoke-static {v7, v8, v10}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 164
    .local v4, "size":I
    if-ge p1, v4, :cond_1

    .line 166
    const-string v8, "get"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v10}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 170
    .local v5, "w":Ljava/lang/Object;
    const-string v8, "mClient"

    invoke-static {v5, v8}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "client":Ljava/lang/Object;
    const-string v8, "asBinder"

    const/4 v10, 0x0

    invoke-static {v1, v8, v10}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "binder":Ljava/lang/Object;
    check-cast v0, Landroid/os/IBinder;

    .end local v0    # "binder":Ljava/lang/Object;
    monitor-exit v6

    goto :goto_0

    .line 175
    .end local v1    # "client":Ljava/lang/Object;
    .end local v4    # "size":I
    .end local v5    # "w":Ljava/lang/Object;
    .end local v7    # "windows":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    .end local v2    # "currentFocus":Ljava/lang/Object;
    .end local v6    # "windowMap":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "ArtWindowService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getViewBinder : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    move-object v0, v9

    .line 181
    goto :goto_0

    .line 175
    .restart local v2    # "currentFocus":Ljava/lang/Object;
    .restart local v4    # "size":I
    .restart local v6    # "windowMap":Ljava/lang/Object;
    .restart local v7    # "windows":Ljava/lang/Object;
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getViewBinderCount()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 217
    :try_start_0
    iget-object v5, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v7, "mWindowMap"

    invoke-static {v5, v7}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 219
    .local v3, "windowMap":Ljava/lang/Object;
    iget-object v5, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v7, "mCurrentFocus"

    invoke-static {v5, v7}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "currentFocus":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 222
    const-string v5, "ArtWindowService"

    const-string v7, "currentFocus is null"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 234
    .end local v0    # "currentFocus":Ljava/lang/Object;
    .end local v3    # "windowMap":Ljava/lang/Object;
    :goto_0
    return v2

    .line 225
    .restart local v0    # "currentFocus":Ljava/lang/Object;
    .restart local v3    # "windowMap":Ljava/lang/Object;
    :cond_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    const-string v5, "getWindowList"

    const/4 v7, 0x0

    invoke-static {v0, v5, v7}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 227
    .local v4, "windows":Ljava/lang/Object;
    const-string v5, "size"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 229
    .local v2, "size":I
    monitor-exit v3

    goto :goto_0

    .line 230
    .end local v2    # "size":I
    .end local v4    # "windows":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    .end local v0    # "currentFocus":Ljava/lang/Object;
    .end local v3    # "windowMap":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ArtWindowService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getViewBinderCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 234
    goto :goto_0
.end method

.method public getViewBinderTitle(I)Ljava/lang/String;
    .locals 11
    .param p1, "index"    # I

    .prologue
    .line 185
    iget-object v7, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v8, "mWindowMap"

    invoke-static {v7, v8}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 188
    .local v5, "windowMap":Ljava/lang/Object;
    iget-object v7, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v8, "mCurrentFocus"

    invoke-static {v7, v8}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "currentFocus":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 191
    const-string v7, "ArtWindowService"

    const-string v8, "currentFocus is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v7, ""

    .line 212
    :goto_0
    return-object v7

    .line 194
    :cond_0
    monitor-enter v5

    .line 195
    :try_start_0
    const-string v7, "getWindowList"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 196
    .local v6, "windows":Ljava/lang/Object;
    const-string v7, "size"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 199
    .local v2, "size":I
    if-ge p1, v2, :cond_1

    .line 201
    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 204
    .local v4, "w":Ljava/lang/Object;
    const-string v7, "mAttrs"

    invoke-static {v4, v7}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, "mAttrs":Ljava/lang/Object;
    const-string v7, "getTitle"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "title":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    monitor-exit v5

    goto :goto_0

    .line 210
    .end local v1    # "mAttrs":Ljava/lang/Object;
    .end local v2    # "size":I
    .end local v3    # "title":Ljava/lang/Object;
    .end local v4    # "w":Ljava/lang/Object;
    .end local v6    # "windows":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "size":I
    .restart local v6    # "windows":Ljava/lang/Object;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    const-string v7, ""

    goto :goto_0
.end method

.method public getViewRootBinder()Landroid/os/IBinder;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 126
    :try_start_0
    iget-object v5, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v6, "mCurrentFocus"

    invoke-static {v5, v6}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 128
    .local v2, "currentFocus":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 129
    const-string v5, "ArtWindowService"

    const-string v6, "currentFocus is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 139
    .end local v2    # "currentFocus":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 132
    .restart local v2    # "currentFocus":Ljava/lang/Object;
    :cond_0
    const-string v5, "mClient"

    invoke-static {v2, v5}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, "client":Ljava/lang/Object;
    const-string v5, "asBinder"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, "binder":Ljava/lang/Object;
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "binder":Ljava/lang/Object;
    .end local v1    # "client":Ljava/lang/Object;
    .end local v2    # "currentFocus":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ArtWindowService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getViewRootBinder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 139
    goto :goto_0
.end method

.method public registerInputMonitor(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 5
    .param p1, "channelname"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v2, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v3, "mInputManager"

    invoke-static {v2, v3}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "mInputManager":Ljava/lang/Object;
    const-string v2, "monitorInput"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    .line 252
    .local v1, "ret":Landroid/view/InputChannel;
    return-object v1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "ArtWindowService"

    const-string v1, "register ArtWindowService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v0, "artwindowservice"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 31
    return-void
.end method

.method public unregisterInputMonitor(Landroid/view/InputChannel;)V
    .locals 4
    .param p1, "channel"    # Landroid/view/InputChannel;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/lge/internal/policy/impl/ArtWindowService;->mWindowManagerService:Ljava/lang/Object;

    const-string v2, "mInputManager"

    invoke-static {v1, v2}, Lcom/lge/internal/policy/impl/ArtWindowService;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 258
    .local v0, "mInputManager":Ljava/lang/Object;
    const-string v1, "unregisterInputChannel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lge/internal/policy/impl/ArtWindowService;->getMethodValue(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method
