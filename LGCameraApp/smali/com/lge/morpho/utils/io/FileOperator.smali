.class public Lcom/lge/morpho/utils/io/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDir(Ljava/io/File;)V
    .locals 4
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 105
    if-nez p0, :cond_1

    .line 118
    :cond_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 113
    new-instance v1, Ljava/io/File;

    aget-object v3, v0, v2

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 112
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v8, 0x0

    .line 27
    .local v8, "result":Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v9, v8

    .line 69
    .end local v8    # "result":Z
    .local v9, "result":I
    :goto_0
    return v9

    .line 31
    .end local v9    # "result":I
    .restart local v8    # "result":Z
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v10, "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "dst":Ljava/io/File;
    const/4 v1, 0x0

    .line 35
    .local v1, "srcChannel":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 38
    .local v6, "dstChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 41
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const/4 v8, 0x1

    .line 52
    if-eqz v1, :cond_2

    .line 54
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 62
    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    move v9, v8

    .line 69
    .restart local v9    # "result":I
    goto :goto_0

    .line 55
    .end local v9    # "result":I
    :catch_0
    move-exception v7

    .line 56
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 64
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 45
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 46
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    if-eqz v1, :cond_4

    .line 54
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 60
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 62
    :try_start_5
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_4
    move v9, v8

    .line 65
    .restart local v9    # "result":I
    goto :goto_0

    .line 55
    .end local v9    # "result":I
    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v7

    .line 56
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 63
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 64
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 48
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 49
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 52
    if-eqz v1, :cond_6

    .line 54
    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 60
    :cond_6
    :goto_5
    if-eqz v6, :cond_7

    .line 62
    :try_start_8
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_7
    :goto_6
    move v9, v8

    .line 65
    .restart local v9    # "result":I
    goto :goto_0

    .line 55
    .end local v9    # "result":I
    :catch_6
    move-exception v7

    .line 56
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 63
    :catch_7
    move-exception v7

    .line 64
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 52
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_8

    .line 54
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 60
    :cond_8
    :goto_7
    if-eqz v6, :cond_9

    .line 62
    :try_start_a
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 65
    :cond_9
    :goto_8
    throw v2

    .line 55
    :catch_8
    move-exception v7

    .line 56
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 63
    .end local v7    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 64
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 100
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return v1
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static outputData(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 6
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 144
    .local v2, "o_stream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 146
    .local v4, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .local v3, "o_stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 148
    invoke-virtual {v4, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    if-eqz v3, :cond_0

    .line 156
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :cond_0
    :goto_0
    if-eqz v4, :cond_6

    .line 164
    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 170
    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 157
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 167
    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    if-eqz v2, :cond_2

    .line 156
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 162
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    if-eqz v4, :cond_1

    .line 164
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 165
    :catch_3
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 157
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 154
    if-eqz v2, :cond_3

    .line 156
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 162
    :cond_3
    :goto_5
    if-eqz v4, :cond_1

    .line 164
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 165
    :catch_6
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 157
    :catch_7
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v2, :cond_4

    .line 156
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 162
    :cond_4
    :goto_7
    if-eqz v4, :cond_5

    .line 164
    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 167
    :cond_5
    :goto_8
    throw v5

    .line 157
    :catch_8
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 151
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 149
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static outputData([BLjava/lang/String;)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 124
    .local v2, "o_stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .local v3, "o_stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    if-eqz v3, :cond_0

    .line 133
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 139
    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 135
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 138
    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    if-eqz v2, :cond_1

    .line 133
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 135
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 129
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    if-eqz v2, :cond_1

    .line 133
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 135
    :catch_4
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 132
    :goto_3
    if-eqz v2, :cond_2

    .line 133
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 137
    :cond_2
    :goto_4
    throw v4

    .line 135
    :catch_5
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 128
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 126
    .end local v2    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v3    # "o_stream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "o_stream":Ljava/io/FileOutputStream;
    .restart local v2    # "o_stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static read(Ljava/lang/String;)[B
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v6, v8

    .line 175
    .local v6, "size":I
    new-array v1, v6, [B

    .line 176
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 178
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v0, -0x1

    .line 179
    .local v0, "EOF":I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 190
    if-eqz v5, :cond_0

    .line 191
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .line 197
    .end local v1    # "buf":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-object v1

    .line 193
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "buf":[B
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v5, :cond_2

    .line 191
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v4, v5

    .line 197
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 193
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 194
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 196
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 184
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    if-eqz v4, :cond_3

    .line 191
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 193
    :catch_3
    move-exception v2

    .line 194
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 186
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 187
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 190
    if-eqz v4, :cond_3

    .line 191
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 193
    :catch_5
    move-exception v2

    .line 194
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 190
    :goto_5
    if-eqz v4, :cond_4

    .line 191
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 195
    :cond_4
    :goto_6
    throw v7

    .line 193
    :catch_6
    move-exception v2

    .line 194
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 186
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 184
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "result":Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v1

    .line 86
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 79
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "dst":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 86
    .restart local v2    # "result":I
    goto :goto_0
.end method
