.class public Lcom/android/server/LockSettingsServiceEx;
.super Lcom/android/server/LockSettingsService;
.source "LockSettingsServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsServiceEx$1;,
        Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;
    }
.end annotation


# static fields
.field private static final LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "backuppin.key"

.field private static final LOCK_BACKUP_PIN_FILE_OLD:Ljava/lang/String; = "backuppin.dat"

.field private static final LOCK_KNOCKCODE_KIDS_MODE_FILE:Ljava/lang/String; = "knockcode_kids.key"

.field private static final LOCK_PASSWORD_KIDS_MODE_FILE:Ljava/lang/String; = "password_kids.key"

.field private static final LOCK_PATTERN_KIDS_MODE_FILE:Ljava/lang/String; = "gesture_kids.key"

.field private static final LOCK_PIN_KIDS_MODE_FILE:Ljava/lang/String; = "pin_kids.key"

.field private static final SUPPORT_DAT_FILE:Z = true

.field private static final TAG:Ljava/lang/String; = "LockSettingsServiceEx"


# instance fields
.field private mExtendedBinder:Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;

.field private mLGSDEncManager:Lcom/lge/systemservice/core/LGSDEncManager;

.field private mServiceContext:Lcom/lge/systemservice/core/LGContext;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v1, p0, Lcom/android/server/LockSettingsServiceEx;->mExtendedBinder:Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;

    .line 55
    iput-object v1, p0, Lcom/android/server/LockSettingsServiceEx;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 56
    iput-object v1, p0, Lcom/android/server/LockSettingsServiceEx;->mLGSDEncManager:Lcom/lge/systemservice/core/LGSDEncManager;

    .line 62
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsServiceEx;->mUserManager:Landroid/os/UserManager;

    .line 63
    iput-object v1, p0, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 64
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 65
    new-instance v0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/LockSettingsServiceEx;Lcom/android/server/LockSettingsServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsServiceEx;->mExtendedBinder:Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;

    .line 68
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SDENCRYPTION_USERKEY:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsServiceEx;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 71
    invoke-static {p1}, Lcom/lge/systemservice/core/LGSDEncManager;->getSDEncSupportStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    const-string v1, "lgsdencryption"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LGSDEncManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsServiceEx;->mLGSDEncManager:Lcom/lge/systemservice/core/LGSDEncManager;

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsServiceEx;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsServiceEx;->getLockPatternKidsModeFilename(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsServiceEx;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsServiceEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsServiceEx;->getLockBackupPinFilename(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsServiceEx;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsServiceEx;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsServiceEx;->checkPasswordsInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/LockSettingsServiceEx;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsServiceEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsServiceEx;->getKidsModeFilenameByLockType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LockSettingsServiceEx;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsServiceEx;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private checkPasswordsInternal(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "passwords"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 138
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsServiceEx;->checkPasswordReadPermission(I)V

    .line 139
    const/4 v9, 0x0

    .line 140
    .local v9, "raf":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 143
    .local v7, "matched":Z
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsServiceEx;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "filename":Ljava/lang/String;
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v13, "r"

    invoke-direct {v10, v2, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v12, v13, [B

    .line 146
    .local v12, "stored":[B
    const/4 v13, 0x0

    array-length v14, v12

    invoke-virtual {v10, v12, v13, v14}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 147
    .local v4, "got":I
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    if-gtz v4, :cond_1

    .line 149
    const/4 v13, 0x0

    .line 174
    if-eqz v10, :cond_0

    .line 175
    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    :cond_0
    const/4 v9, 0x0

    .line 183
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "got":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    return v13

    .line 178
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v4    # "got":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "stored":[B
    :catch_0
    move-exception v6

    .line 179
    .local v6, "ioe":Ljava/io/IOException;
    const-string v14, "LockSettingsServiceEx"

    const-string v15, "I/O exception on close after exception"

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 153
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v5, 0x0

    .line 154
    .local v5, "hash":[B
    const/4 v8, 0x0

    .line 155
    .local v8, "password":Ljava/lang/String;
    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 156
    new-instance v11, Ljava/util/StringTokenizer;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 157
    .local v11, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 158
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, p2

    invoke-virtual {v13, v8, v0}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v5

    .line 161
    invoke-static {v12, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    .line 162
    if-eqz v7, :cond_2

    .line 174
    .end local v11    # "st":Ljava/util/StringTokenizer;
    :cond_3
    if-eqz v10, :cond_4

    .line 175
    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 177
    :cond_4
    const/4 v9, 0x0

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    move v13, v7

    .line 181
    goto :goto_0

    .line 178
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .line 179
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v13, "LockSettingsServiceEx"

    const-string v14, "I/O exception on close after exception"

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 168
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "got":I
    .end local v5    # "hash":[B
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v8    # "password":Ljava/lang/String;
    .end local v12    # "stored":[B
    :catch_2
    move-exception v3

    .line 169
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v13, "LockSettingsServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot find file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    if-eqz v9, :cond_5

    .line 175
    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 177
    :cond_5
    const/4 v9, 0x0

    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    move v13, v7

    .line 183
    goto :goto_0

    .line 178
    .restart local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 179
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v13, "LockSettingsServiceEx"

    const-string v14, "I/O exception on close after exception"

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 170
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 171
    .restart local v6    # "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v13, "LockSettingsServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot read file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 174
    if-eqz v9, :cond_6

    .line 175
    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 177
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 178
    :catch_5
    move-exception v6

    .line 179
    const-string v13, "LockSettingsServiceEx"

    const-string v14, "I/O exception on close after exception"

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 173
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 174
    :goto_5
    if-eqz v9, :cond_7

    .line 175
    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 177
    :cond_7
    const/4 v9, 0x0

    .line 181
    :goto_6
    throw v13

    .line 178
    :catch_6
    move-exception v6

    .line 179
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v14, "LockSettingsServiceEx"

    const-string v15, "I/O exception on close after exception"

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 173
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 170
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v6

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 168
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v3

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private getKidsModeFilenameByLockType(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    const-string v1, ""

    .line 103
    .local v1, "passwordFile":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PIN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const-string v1, "pin_kids.key"

    .line 112
    :cond_0
    :goto_0
    if-nez p1, :cond_4

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    :goto_1
    return-object v2

    .line 105
    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PASSWORD:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const-string v1, "password_kids.key"

    goto :goto_0

    .line 107
    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    const-string v1, "knockcode_kids.key"

    goto :goto_0

    .line 109
    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PATTERN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v1, "gesture_kids.key"

    goto :goto_0

    .line 116
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getLockBackupPinFilename(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "oldVersion"    # Z

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string v1, "backuppin.key"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :goto_1
    return-object v1

    .line 128
    :cond_0
    const-string v1, "backuppin.dat"

    goto :goto_0

    .line 131
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    if-nez p2, :cond_2

    const-string v1, "backuppin.key"

    :goto_2
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "backuppin.dat"

    goto :goto_2
.end method

.method private getLockPatternKidsModeFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture_kids.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "gesture_kids.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 527
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 528
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 529
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 531
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkVoldPassword(I)Z
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 477
    iget-boolean v5, p0, Lcom/android/server/LockSettingsServiceEx;->mFirstCallToVold:Z

    if-nez v5, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v3

    .line 480
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/LockSettingsServiceEx;->mFirstCallToVold:Z

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsServiceEx;->checkPasswordReadPermission(I)V

    .line 492
    invoke-direct {p0}, Lcom/android/server/LockSettingsServiceEx;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 493
    .local v2, "service":Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "password":Ljava/lang/String;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->clearPassword()V

    .line 495
    if-eqz v1, :cond_0

    .line 500
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 501
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsServiceEx;->checkPattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 502
    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "LockSettingsServiceEx"

    const-string v6, "Exception occur"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsServiceEx;->checkPassword(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 512
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_SDENCRYPTION_USERKEY:Z

    if-eqz v5, :cond_3

    .line 513
    iget-object v5, p0, Lcom/android/server/LockSettingsServiceEx;->mLGSDEncManager:Lcom/lge/systemservice/core/LGSDEncManager;

    if-eqz v5, :cond_3

    .line 514
    iget-object v5, p0, Lcom/android/server/LockSettingsServiceEx;->mLGSDEncManager:Lcom/lge/systemservice/core/LGSDEncManager;

    invoke-virtual {v5, v1}, Lcom/lge/systemservice/core/LGSDEncManager;->unlockDevice(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move v3, v4

    .line 517
    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    .line 521
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "LockSettingsServiceEx"

    const-string v5, "Exception occur"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/server/LockSettingsServiceEx;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/android/server/LockSettingsServiceEx;->mExtendedBinder:Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method
