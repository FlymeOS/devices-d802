.class Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;
.super Lcom/android/internal/widget/ILockSettingsEx$Stub;
.source "LockSettingsServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsServiceEx;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettingsEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsServiceEx;Lcom/android/server/LockSettingsServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LockSettingsServiceEx;
    .param p2, "x1"    # Lcom/android/server/LockSettingsServiceEx$1;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/LockSettingsServiceEx;)V

    return-void
.end method


# virtual methods
.method public checkBackupPin(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 253
    iget-object v7, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v7, p2}, Lcom/android/server/LockSettingsServiceEx;->checkPasswordReadPermission(I)V

    .line 256
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getLockBackupPinFilename(IZ)Ljava/lang/String;
    invoke-static {v7, p2, v8}, Lcom/android/server/LockSettingsServiceEx;->access$200(Lcom/android/server/LockSettingsServiceEx;IZ)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v6, v7, [B

    .line 259
    .local v6, "stored":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 260
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 261
    if-gtz v1, :cond_0

    .line 273
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :goto_0
    return v4

    .line 265
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_0
    iget-object v7, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v7, v7, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    .line 266
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 267
    .local v4, "matched":Z
    goto :goto_0

    .line 268
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 269
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v7, "LockSettingsServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 271
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "LockSettingsServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkKnockOn(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 451
    iget-object v7, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v7, p2}, Lcom/android/server/LockSettingsServiceEx;->checkPasswordReadPermission(I)V

    .line 455
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v7, p2}, Lcom/android/server/LockSettingsServiceEx;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v6, v7, [B

    .line 457
    .local v6, "stored":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 458
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 459
    if-gtz v1, :cond_0

    .line 471
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :goto_0
    return v4

    .line 463
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_0
    iget-object v7, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v7, v7, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    .line 464
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 465
    .local v4, "matched":Z
    goto :goto_0

    .line 466
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 467
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v7, "LockSettingsServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 469
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "LockSettingsServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPasswordKidsMode(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 343
    iget-object v8, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v8, p2}, Lcom/android/server/LockSettingsServiceEx;->checkPasswordReadPermission(I)V

    .line 345
    const/4 v5, 0x0

    .line 348
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getKidsModeFilenameByLockType(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, p2, p3}, Lcom/android/server/LockSettingsServiceEx;->access$400(Lcom/android/server/LockSettingsServiceEx;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v7, v8, [B

    .line 350
    .local v7, "stored":[B
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 351
    .local v1, "got":I
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 352
    if-gtz v1, :cond_2

    .line 365
    if-eqz v6, :cond_0

    .line 366
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v5, v6

    .line 372
    .end local v1    # "got":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v4

    .line 368
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "stored":[B
    :catch_0
    move-exception v3

    .line 369
    .local v3, "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v8, v8, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    .line 357
    .local v2, "hash":[B
    invoke-static {v7, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    .line 365
    .local v4, "matched":Z
    if-eqz v6, :cond_3

    .line 366
    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v5, v6

    .line 370
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 368
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    .line 369
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 359
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "matched":Z
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 360
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v8, "LockSettingsServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 365
    if-eqz v5, :cond_1

    .line 366
    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 368
    :catch_3
    move-exception v3

    .line 369
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 362
    .restart local v3    # "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v8, "LockSettingsServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 365
    if-eqz v5, :cond_1

    .line 366
    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 368
    :catch_5
    move-exception v3

    .line 369
    const-string v8, "LockSettingsServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 364
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 365
    :goto_5
    if-eqz v5, :cond_4

    .line 366
    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 370
    :cond_4
    :goto_6
    throw v8

    .line 368
    :catch_6
    move-exception v3

    .line 369
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v9, "LockSettingsServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 364
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 361
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 359
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkPasswords(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "passwords"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->checkPasswordsInternal(Ljava/lang/String;I)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/LockSettingsServiceEx;->access$300(Lcom/android/server/LockSettingsServiceEx;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPasswordsGetUsers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "passwords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v5, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # getter for: Lcom/android/server/LockSettingsServiceEx;->mUserManager:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/server/LockSettingsServiceEx;->access$500(Lcom/android/server/LockSettingsServiceEx;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 426
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .line 427
    .local v3, "userId":I
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 428
    .local v2, "matchedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .line 429
    .local v1, "matched":Z
    if-eqz v4, :cond_1

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 431
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v3, v5, Landroid/content/pm/UserInfo;->id:I

    .line 432
    iget-object v5, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->checkPasswordsInternal(Ljava/lang/String;I)Z
    invoke-static {v5, p1, v3}, Lcom/android/server/LockSettingsServiceEx;->access$300(Lcom/android/server/LockSettingsServiceEx;Ljava/lang/String;I)Z

    move-result v1

    .line 433
    if-eqz v1, :cond_0

    .line 434
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method public checkPasswordsKidsMode(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 16
    .param p1, "passwords"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/LockSettingsServiceEx;->checkPasswordReadPermission(I)V

    .line 380
    const/4 v8, 0x0

    .line 383
    .local v8, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    move/from16 v0, p2

    move-object/from16 v1, p3

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getKidsModeFilenameByLockType(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v0, v1}, Lcom/android/server/LockSettingsServiceEx;->access$400(Lcom/android/server/LockSettingsServiceEx;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "r"

    invoke-direct {v9, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v12, v12

    new-array v11, v12, [B

    .line 385
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v9, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 386
    .local v3, "got":I
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    if-gtz v3, :cond_1

    .line 388
    const/4 v6, 0x1

    .line 412
    if-eqz v9, :cond_0

    .line 413
    :try_start_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v8, v9

    .line 419
    .end local v3    # "got":I
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    return v6

    .line 415
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_0
    move-exception v5

    .line 416
    .local v5, "ioe":Ljava/io/IOException;
    const-string v12, "LockSettingsServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "I/O exception on close after exception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    .end local v5    # "ioe":Ljava/io/IOException;
    :cond_1
    const/4 v4, 0x0

    .line 392
    .local v4, "hash":[B
    const/4 v6, 0x0

    .line 393
    .local v6, "matched":Z
    const/4 v7, 0x0

    .line 394
    .local v7, "password":Ljava/lang/String;
    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 395
    new-instance v10, Ljava/util/StringTokenizer;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 396
    .local v10, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 397
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v12, v12, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, p2

    invoke-virtual {v12, v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 399
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    .line 400
    if-eqz v6, :cond_2

    .line 412
    .end local v10    # "st":Ljava/util/StringTokenizer;
    :cond_3
    if-eqz v9, :cond_4

    .line 413
    :try_start_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v8, v9

    .line 417
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 415
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v5

    .line 416
    .restart local v5    # "ioe":Ljava/io/IOException;
    const-string v12, "LockSettingsServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "I/O exception on close after exception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 406
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "matched":Z
    .end local v7    # "password":Ljava/lang/String;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .line 407
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v12, "LockSettingsServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot find file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 412
    if-eqz v8, :cond_5

    .line 413
    :try_start_6
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 419
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_4
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 415
    .restart local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 416
    .restart local v5    # "ioe":Ljava/io/IOException;
    const-string v12, "LockSettingsServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "I/O exception on close after exception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 408
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 409
    .restart local v5    # "ioe":Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v12, "LockSettingsServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 412
    if-eqz v8, :cond_5

    .line 413
    :try_start_8
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 415
    :catch_5
    move-exception v5

    .line 416
    const-string v12, "LockSettingsServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "I/O exception on close after exception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 411
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 412
    :goto_6
    if-eqz v8, :cond_6

    .line 413
    :try_start_9
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 417
    :cond_6
    :goto_7
    throw v12

    .line 415
    :catch_6
    move-exception v5

    .line 416
    .restart local v5    # "ioe":Ljava/io/IOException;
    const-string v13, "LockSettingsServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "I/O exception on close after exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 411
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 408
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v8, v9

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 406
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v8, v9

    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method public checkPatternKidsMode(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 227
    iget-object v7, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v7, p2}, Lcom/android/server/LockSettingsServiceEx;->checkPasswordReadPermission(I)V

    .line 230
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getLockPatternKidsModeFilename(I)Ljava/lang/String;
    invoke-static {v7, p2}, Lcom/android/server/LockSettingsServiceEx;->access$100(Lcom/android/server/LockSettingsServiceEx;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v6, v7, [B

    .line 232
    .local v6, "stored":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 233
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 234
    if-gtz v1, :cond_0

    .line 247
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :goto_0
    return v4

    .line 238
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 240
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 241
    .local v4, "matched":Z
    goto :goto_0

    .line 242
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 243
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v7, "LockSettingsServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 245
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "LockSettingsServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public haveBackupPin(I)Z
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-object v3, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsServiceEx;->checkWritePermission(I)V

    .line 293
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getLockBackupPinFilename(IZ)Ljava/lang/String;
    invoke-static {v4, p1, v2}, Lcom/android/server/LockSettingsServiceEx;->access$200(Lcom/android/server/LockSettingsServiceEx;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 301
    :goto_0
    return v1

    .line 296
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getLockBackupPinFilename(IZ)Ljava/lang/String;
    invoke-static {v3, p1, v1}, Lcom/android/server/LockSettingsServiceEx;->access$200(Lcom/android/server/LockSettingsServiceEx;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "datFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 298
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getLockBackupPinFilename(IZ)Ljava/lang/String;
    invoke-static {v4, p1, v2}, Lcom/android/server/LockSettingsServiceEx;->access$200(Lcom/android/server/LockSettingsServiceEx;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 301
    goto :goto_0
.end method

.method public havePasswordKidsMode(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getKidsModeFilenameByLockType(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1, p2}, Lcom/android/server/LockSettingsServiceEx;->access$400(Lcom/android/server/LockSettingsServiceEx;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePatternKidsMode(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getLockPatternKidsModeFilename(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/server/LockSettingsServiceEx;->access$100(Lcom/android/server/LockSettingsServiceEx;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockBackupPin(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v0, p2}, Lcom/android/server/LockSettingsServiceEx;->checkWritePermission(I)V

    .line 220
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v1, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getLockBackupPinFilename(IZ)Ljava/lang/String;
    invoke-static {v1, p2, v2}, Lcom/android/server/LockSettingsServiceEx;->access$200(Lcom/android/server/LockSettingsServiceEx;IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v2, v2, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LockSettingsServiceEx;->writeFile(Ljava/lang/String;[B)V

    .line 222
    return-void
.end method

.method public setLockKnockOn(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v0, p2}, Lcom/android/server/LockSettingsServiceEx;->checkWritePermission(I)V

    .line 446
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v1, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v1, p2}, Lcom/android/server/LockSettingsServiceEx;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v2, v2, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LockSettingsServiceEx;->writeFile(Ljava/lang/String;[B)V

    .line 447
    return-void
.end method

.method public setLockPasswordKidsMode(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v0, p2}, Lcom/android/server/LockSettingsServiceEx;->checkWritePermission(I)V

    .line 330
    iget-object v0, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v1, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getKidsModeFilenameByLockType(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p2, p3}, Lcom/android/server/LockSettingsServiceEx;->access$400(Lcom/android/server/LockSettingsServiceEx;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v2, v2, Lcom/android/server/LockSettingsServiceEx;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LockSettingsServiceEx;->writeFile(Ljava/lang/String;[B)V

    .line 331
    return-void
.end method

.method public setLockPatternKidsMode(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    invoke-virtual {v1, p2}, Lcom/android/server/LockSettingsServiceEx;->checkWritePermission(I)V

    .line 210
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 212
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    iget-object v2, p0, Lcom/android/server/LockSettingsServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/LockSettingsServiceEx;

    # invokes: Lcom/android/server/LockSettingsServiceEx;->getLockPatternKidsModeFilename(I)Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/LockSettingsServiceEx;->access$100(Lcom/android/server/LockSettingsServiceEx;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/LockSettingsServiceEx;->writeFile(Ljava/lang/String;[B)V

    .line 213
    return-void
.end method
