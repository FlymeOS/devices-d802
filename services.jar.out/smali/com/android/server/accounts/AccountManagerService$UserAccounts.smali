.class Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserAccounts"
.end annotation


# instance fields
.field private final accountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final authTokenCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final credentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

.field private final previousNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final signinRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final userDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 190
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 192
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 194
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 197
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    .line 200
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    .line 214
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 218
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 219
    const/4 v3, 0x0

    .line 221
    .local v3, "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 223
    :try_start_0
    const-string v6, "com.android.server.accounts.DatabaseHelperEx"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 224
    .local v1, "c":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 225
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v6, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v8

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 226
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_0

    .line 227
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    move-object v3, v0

    .line 231
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_0
    if-nez v3, :cond_1

    .line 232
    const-string v6, "AccountManagerService"

    const-string v8, "DatabaseHelperEx not found."

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v4, v3

    .line 238
    .end local v1    # "c":Ljava/lang/Class;
    .end local v3    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .local v4, "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    :goto_0
    if-nez v4, :cond_2

    .line 239
    :try_start_1
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    invoke-direct {v3, p1, p2}, Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;-><init>(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    .end local v4    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .restart local v3    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    :goto_1
    :try_start_2
    iput-object v3, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    .line 242
    monitor-exit v7

    .line 243
    return-void

    .line 234
    :catch_0
    move-exception v5

    .line 235
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "AccountManagerService"

    const-string v8, "DatabaseHelperEx not found."

    invoke-static {v6, v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v3

    .end local v3    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .restart local v4    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    goto :goto_0

    .line 242
    .end local v4    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .end local v3    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .restart local v4    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .restart local v3    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    goto :goto_2

    .end local v3    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .restart local v4    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    :cond_2
    move-object v3, v4

    .end local v4    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .restart local v3    # "dbHelper":Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DatabaseHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    return-object v0
.end method
