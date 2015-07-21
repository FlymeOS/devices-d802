.class public Lcom/lge/wifi/impl/WifiConnectionList;
.super Ljava/lang/Object;
.source "WifiConnectionList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/WifiConnectionList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final TAG:Ljava/lang/String; = "WifiConnectionList"

.field private static final WIFICONNMAX_SIZE:I = 0x32

.field private static final WIFI_CONN_FAIL:Ljava/lang/String; = "/data/misc/wifi/WifiConnectionFailList"

.field private static final WIFI_CONN_SUCCESS:Ljava/lang/String; = "/data/misc/wifi/WifiConnectionSuccessList"


# instance fields
.field private DEBUG:Z

.field private mList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wifi/impl/WifiConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConnectionListPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/lge/wifi/impl/WifiConnectionList$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiConnectionList$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/WifiConnectionList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "/data/misc/wifi/WifiConnectionFailList"

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mWifiConnectionListPath:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    .line 33
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiConnectionList;->loadList()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/impl/WifiConnectionList;)V
    .locals 1
    .param p1, "source"    # Lcom/lge/wifi/impl/WifiConnectionList;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "/data/misc/wifi/WifiConnectionFailList"

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mWifiConnectionListPath:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/lge/wifi/impl/WifiConnectionList;->getConnectionList()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    .line 63
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wifi/impl/WifiConnectionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/WifiConnectionInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v2, "/data/misc/wifi/WifiConnectionFailList"

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mWifiConnectionListPath:Ljava/lang/String;

    .line 28
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    .line 30
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiConnectionInfo;

    .line 69
    .local v0, "i":Lcom/lge/wifi/impl/WifiConnectionInfo;
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "i":Lcom/lge/wifi/impl/WifiConnectionInfo;
    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "/data/misc/wifi/WifiConnectionFailList"

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mWifiConnectionListPath:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    .line 42
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    const-string v0, "/data/misc/wifi/WifiConnectionSuccessList"

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mWifiConnectionListPath:Ljava/lang/String;

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiConnectionList;->loadList()V

    .line 56
    return-void

    .line 53
    :cond_1
    const-string v0, "/data/misc/wifi/WifiConnectionFailList"

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mWifiConnectionListPath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wifi/impl/WifiConnectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadList()V
    .locals 8

    .prologue
    .line 136
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mWifiConnectionListPath:Ljava/lang/String;

    .line 137
    .local v1, "filePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 140
    .local v2, "in":Ljava/io/DataInputStream;
    const-string v5, "WifiConnectionList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[START] load wifi connection list to file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiConnectionList;->clear()Z

    .line 146
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    .end local v2    # "in":Ljava/io/DataInputStream;
    .local v3, "in":Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 152
    .local v4, "readData":Ljava/lang/String;
    :try_start_2
    const-string v5, "eos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    if-eqz v3, :cond_6

    .line 171
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, v3

    .line 175
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "readData":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    const-string v5, "WifiConnectionList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[END] load wifi connection list no = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 154
    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "readData":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 155
    iget-boolean v5, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "WifiConnectionList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -> load length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " list : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    new-instance v5, Lcom/lge/wifi/impl/WifiConnectionInfo;

    invoke-direct {v5, v4}, Lcom/lge/wifi/impl/WifiConnectionInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/lge/wifi/impl/WifiConnectionList;->update(Lcom/lge/wifi/impl/WifiConnectionInfo;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v5, "WifiConnectionList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore invalid address while reading"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "readData":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 167
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :goto_2
    :try_start_6
    const-string v5, "WifiConnectionList"

    const-string v6, "no WifiConnectionList file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 169
    if-eqz v2, :cond_1

    .line 171
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 172
    :catch_2
    move-exception v5

    goto/16 :goto_1

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "readData":Ljava/lang/String;
    :cond_4
    :try_start_8
    iget-boolean v5, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiConnectionList"

    const-string v6, " -> no read data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 169
    .end local v4    # "readData":Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :goto_3
    if-eqz v2, :cond_5

    .line 171
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 172
    :cond_5
    :goto_4
    throw v5

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "readData":Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .end local v4    # "readData":Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_4

    .line 169
    :catchall_1
    move-exception v5

    goto :goto_3

    .line 166
    :catch_5
    move-exception v0

    goto :goto_2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "readData":Ljava/lang/String;
    :cond_6
    move-object v2, v3

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_1
.end method

.method public remove(Lcom/lge/wifi/impl/WifiConnectionInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/lge/wifi/impl/WifiConnectionInfo;

    .prologue
    .line 104
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public saveListToFile()V
    .locals 9

    .prologue
    .line 180
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mWifiConnectionListPath:Ljava/lang/String;

    .line 181
    .local v1, "filePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 183
    .local v4, "out":Ljava/io/DataOutputStream;
    iget-boolean v6, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConnectionList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save wifi connection list to file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .local v5, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/impl/WifiConnectionInfo;

    .line 189
    .local v3, "info":Lcom/lge/wifi/impl/WifiConnectionInfo;
    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiConnectionInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    iget-boolean v6, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "WifiConnectionList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -> save list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiConnectionInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 193
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/lge/wifi/impl/WifiConnectionInfo;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 194
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    const-string v6, "WifiConnectionList"

    const-string v7, "Error writing WifiConnectionList file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    if-eqz v4, :cond_2

    .line 199
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    const-string v6, "WifiConnectionList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saved wifi connection list no = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 192
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :cond_3
    :try_start_4
    const-string v6, "eos"

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    if-eqz v5, :cond_5

    .line 199
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .line 200
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 197
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_4

    .line 199
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 200
    :cond_4
    :goto_4
    throw v6

    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 197
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 193
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :cond_5
    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/impl/WifiConnectionInfo;

    .line 116
    .local v1, "info":Lcom/lge/wifi/impl/WifiConnectionInfo;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 118
    .end local v1    # "info":Lcom/lge/wifi/impl/WifiConnectionInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Lcom/lge/wifi/impl/WifiConnectionInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/lge/wifi/impl/WifiConnectionInfo;

    .prologue
    .line 82
    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiConnectionList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[START] update wifi connection list no = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_3

    .line 87
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/WifiConnectionInfo;

    .line 88
    .local v0, "i":Lcom/lge/wifi/impl/WifiConnectionInfo;
    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiConnectionList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (2) remove list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiConnectionInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", (before size) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/WifiConnectionList;->remove(Lcom/lge/wifi/impl/WifiConnectionInfo;)Z

    .line 92
    .end local v0    # "i":Lcom/lge/wifi/impl/WifiConnectionInfo;
    :cond_2
    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiConnectionList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -> (after size) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v2, "WifiConnectionList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update wifi connection list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/wifi/impl/WifiConnectionInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "WifiConnectionList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[END] update wifi connection list no = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiConnectionList;->mList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/impl/WifiConnectionInfo;

    .line 130
    .local v1, "info":Lcom/lge/wifi/impl/WifiConnectionInfo;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 132
    .end local v1    # "info":Lcom/lge/wifi/impl/WifiConnectionInfo;
    :cond_0
    return-void
.end method
