.class public Lcom/lge/hardware/usb/LGUsbManager;
.super Ljava/lang/Object;
.source "LGUsbManager.java"


# static fields
.field private static final CONFIG_NUM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/config_num"

.field private static final TAG:Ljava/lang/String; = "LGUsbManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultipleConfiguration()I
    .locals 9

    .prologue
    const/16 v6, 0x400

    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, "config_num":I
    new-array v0, v6, [C

    .line 24
    .local v0, "buffer":[C
    const/4 v3, 0x0

    .line 27
    .local v3, "file":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v6, "/sys/class/android_usb/android0/config_num"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x400

    :try_start_1
    invoke-virtual {v4, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 29
    .local v5, "len":I
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 36
    if-eqz v4, :cond_0

    .line 37
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 43
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v5    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_1
    :goto_0
    return v1

    .line 39
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "len":I
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "LGUsbManager"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 42
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_0

    .line 30
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "len":I
    :catch_1
    move-exception v2

    .line 31
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v6, "LGUsbManager"

    const-string v7, "File Not Found"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    if-eqz v3, :cond_1

    .line 37
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 39
    :catch_2
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "LGUsbManager"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 32
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "LGUsbManager"

    const-string v7, "Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 36
    if-eqz v3, :cond_1

    .line 37
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 39
    :catch_4
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "LGUsbManager"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 35
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 36
    :goto_3
    if-eqz v3, :cond_2

    .line 37
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 41
    :cond_2
    :goto_4
    throw v6

    .line 39
    :catch_5
    move-exception v2

    .line 40
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "LGUsbManager"

    const-string v8, "IOException closing file"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 35
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 32
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2

    .line 30
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method
