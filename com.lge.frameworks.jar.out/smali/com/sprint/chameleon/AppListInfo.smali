.class public Lcom/sprint/chameleon/AppListInfo;
.super Ljava/lang/Object;
.source "AppListInfo.java"


# static fields
.field private static final ASSET_FILE_TYPE:I = 0x1

.field private static final CARRIER_ASSETFILE:Ljava/lang/String;

.field private static final INVAILD:Z = false

.field private static final LOCAL_DBG:Z

.field private static final MASTER_FILE_TYPE:I = 0x0

.field private static final SYSTEM_MASTERFILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AppList"

.field private static final VAILD:Z = true

.field private static mAssetAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/AppListData;",
            ">;"
        }
    .end annotation
.end field

.field private static mAssetFileInfo:Lcom/sprint/chameleon/FileInfo;

.field private static mFinalAppList:Lcom/sprint/chameleon/AppListData;

.field private static mMasterAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/AppListData;",
            ">;"
        }
    .end annotation
.end field

.field private static mMasterFileInfo:Lcom/sprint/chameleon/FileInfo;

.field private static mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sprint/chameleon/AppListInfo;->LOCAL_DBG:Z

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MASTER_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/chameleon/AppListInfo;->SYSTEM_MASTERFILE:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "carrier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cust"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appcontrol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ASSET_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/chameleon/AppListInfo;->CARRIER_ASSETFILE:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sprint/chameleon/AppListInfo;->mMasterAppList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sprint/chameleon/AppListInfo;->mAssetAppList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/sprint/chameleon/FileInfo;

    invoke-direct {v0}, Lcom/sprint/chameleon/FileInfo;-><init>()V

    sput-object v0, Lcom/sprint/chameleon/AppListInfo;->mMasterFileInfo:Lcom/sprint/chameleon/FileInfo;

    .line 28
    new-instance v0, Lcom/sprint/chameleon/FileInfo;

    invoke-direct {v0}, Lcom/sprint/chameleon/FileInfo;-><init>()V

    sput-object v0, Lcom/sprint/chameleon/AppListInfo;->mAssetFileInfo:Lcom/sprint/chameleon/FileInfo;

    .line 29
    new-instance v0, Lcom/sprint/chameleon/AppListData;

    invoke-direct {v0}, Lcom/sprint/chameleon/AppListData;-><init>()V

    sput-object v0, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fileVersionCheck()V
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/sprint/chameleon/AppListInfo;->mMasterFileInfo:Lcom/sprint/chameleon/FileInfo;

    invoke-virtual {v0}, Lcom/sprint/chameleon/FileInfo;->getFileVersion()I

    move-result v0

    sget-object v1, Lcom/sprint/chameleon/AppListInfo;->mAssetFileInfo:Lcom/sprint/chameleon/FileInfo;

    invoke-virtual {v1}, Lcom/sprint/chameleon/FileInfo;->getFileVersion()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 300
    sget-object v0, Lcom/sprint/chameleon/AppListInfo;->mAssetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    :cond_0
    return-void
.end method

.method private static finalMakeAppList()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 252
    const-string v8, "ro.home.operator.carrierid"

    const-string v9, "Chameleon"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "currentCid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 254
    .local v1, "assetData":Lcom/sprint/chameleon/AppListData;
    const/4 v5, 0x0

    .line 255
    .local v5, "masterData":Lcom/sprint/chameleon/AppListData;
    const/4 v2, 0x0

    .line 256
    .local v2, "assetPackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/PackagesData;>;"
    const/4 v6, 0x0

    .line 257
    .local v6, "masterPackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/PackagesData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "addPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/PackagesData;>;"
    invoke-static {v10}, Lcom/sprint/chameleon/AppListInfo;->readAppListFile(I)V

    .line 259
    invoke-static {v11}, Lcom/sprint/chameleon/AppListInfo;->readAppListFile(I)V

    .line 260
    invoke-static {}, Lcom/sprint/chameleon/AppListInfo;->fileVersionCheck()V

    .line 261
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v8}, Lcom/sprint/chameleon/AppListData;->setClearPackageArray()V

    .line 262
    invoke-static {v3, v10}, Lcom/sprint/chameleon/AppListInfo;->getAppListData(Ljava/lang/String;I)Lcom/sprint/chameleon/AppListData;

    move-result-object v5

    .line 263
    if-eqz v5, :cond_0

    .line 264
    invoke-virtual {v5}, Lcom/sprint/chameleon/AppListData;->getPacakges()Ljava/util/ArrayList;

    move-result-object v6

    .line 266
    :cond_0
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mAssetAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 267
    invoke-static {v3, v11}, Lcom/sprint/chameleon/AppListInfo;->getAppListData(Ljava/lang/String;I)Lcom/sprint/chameleon/AppListData;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v1}, Lcom/sprint/chameleon/AppListData;->getPacakges()Ljava/util/ArrayList;

    move-result-object v2

    .line 271
    :cond_1
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v8, v3}, Lcom/sprint/chameleon/AppListData;->setCID(Ljava/lang/String;)V

    .line 272
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v1}, Lcom/sprint/chameleon/AppListData;->getFileVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sprint/chameleon/AppListData;->setFileVersion(I)V

    .line 273
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sprint/chameleon/PackagesData;

    .line 274
    .local v7, "packagesData":Lcom/sprint/chameleon/PackagesData;
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v8, v7}, Lcom/sprint/chameleon/AppListData;->setPacakges(Lcom/sprint/chameleon/PackagesData;)V

    goto :goto_0

    .line 276
    .end local v7    # "packagesData":Lcom/sprint/chameleon/PackagesData;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sprint/chameleon/PackagesData;

    .line 277
    .restart local v7    # "packagesData":Lcom/sprint/chameleon/PackagesData;
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v8}, Lcom/sprint/chameleon/AppListData;->getPacakges()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sprint/chameleon/PackagesData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sprint/chameleon/AppListInfo;->findPackage(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 278
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    .end local v7    # "packagesData":Lcom/sprint/chameleon/PackagesData;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sprint/chameleon/PackagesData;

    .line 282
    .restart local v7    # "packagesData":Lcom/sprint/chameleon/PackagesData;
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v8, v7}, Lcom/sprint/chameleon/AppListData;->setPacakges(Lcom/sprint/chameleon/PackagesData;)V

    goto :goto_2

    .line 285
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "packagesData":Lcom/sprint/chameleon/PackagesData;
    :cond_5
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v8, v3}, Lcom/sprint/chameleon/AppListData;->setCID(Ljava/lang/String;)V

    .line 286
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v5}, Lcom/sprint/chameleon/AppListData;->getFileVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sprint/chameleon/AppListData;->setFileVersion(I)V

    .line 287
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sprint/chameleon/PackagesData;

    .line 288
    .restart local v7    # "packagesData":Lcom/sprint/chameleon/PackagesData;
    sget-object v8, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v8, v7}, Lcom/sprint/chameleon/AppListData;->setPacakges(Lcom/sprint/chameleon/PackagesData;)V

    goto :goto_3

    .line 291
    .end local v7    # "packagesData":Lcom/sprint/chameleon/PackagesData;
    :cond_6
    return-void
.end method

.method private static findAppListData(Ljava/util/ArrayList;I)Lcom/sprint/chameleon/AppListData;
    .locals 4
    .param p1, "colIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/AppListData;",
            ">;I)",
            "Lcom/sprint/chameleon/AppListData;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "arrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/AppListData;>;"
    const/4 v1, 0x0

    .line 34
    .local v1, "data":Lcom/sprint/chameleon/AppListData;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/chameleon/AppListData;

    .line 35
    .local v0, "appListData":Lcom/sprint/chameleon/AppListData;
    invoke-virtual {v0}, Lcom/sprint/chameleon/AppListData;->getColIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 36
    move-object v1, v0

    .line 40
    .end local v0    # "appListData":Lcom/sprint/chameleon/AppListData;
    :cond_1
    return-object v1
.end method

.method private static findPackage(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/PackagesData;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "arrSrc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/PackagesData;>;"
    const/4 v1, 0x0

    .line 242
    .local v1, "isInclude":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/chameleon/PackagesData;

    .line 243
    .local v2, "packagesData":Lcom/sprint/chameleon/PackagesData;
    invoke-virtual {v2}, Lcom/sprint/chameleon/PackagesData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 248
    .end local v2    # "packagesData":Lcom/sprint/chameleon/PackagesData;
    :cond_1
    return v1
.end method

.method private static getAppListData(Ljava/lang/String;I)Lcom/sprint/chameleon/AppListData;
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "fileType"    # I

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "arrAppListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/AppListData;>;"
    const/4 v3, 0x0

    .line 218
    .local v3, "retData":Lcom/sprint/chameleon/AppListData;
    if-nez p1, :cond_4

    .line 219
    sget-object v1, Lcom/sprint/chameleon/AppListInfo;->mMasterAppList:Ljava/util/ArrayList;

    .line 223
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/chameleon/AppListData;

    .line 224
    .local v0, "appListData":Lcom/sprint/chameleon/AppListData;
    invoke-virtual {v0}, Lcom/sprint/chameleon/AppListData;->getCID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    move-object v3, v0

    .line 230
    .end local v0    # "appListData":Lcom/sprint/chameleon/AppListData;
    :cond_1
    if-nez v3, :cond_3

    if-nez p1, :cond_3

    .line 231
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/chameleon/AppListData;

    .line 232
    .restart local v0    # "appListData":Lcom/sprint/chameleon/AppListData;
    invoke-virtual {v0}, Lcom/sprint/chameleon/AppListData;->getCID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MVNO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    move-object v3, v0

    .line 238
    .end local v0    # "appListData":Lcom/sprint/chameleon/AppListData;
    :cond_3
    return-object v3

    .line 221
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    sget-object v1, Lcom/sprint/chameleon/AppListInfo;->mAssetAppList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static getPreLoadPkgList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/PackagesData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/sprint/chameleon/AppListInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 294
    invoke-static {}, Lcom/sprint/chameleon/AppListInfo;->finalMakeAppList()V

    .line 295
    sget-object v0, Lcom/sprint/chameleon/AppListInfo;->mFinalAppList:Lcom/sprint/chameleon/AppListData;

    invoke-virtual {v0}, Lcom/sprint/chameleon/AppListData;->getPacakges()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static parseAppListFile(Ljava/util/ArrayList;ILjava/lang/String;)Z
    .locals 21
    .param p1, "fileType"    # I
    .param p2, "strLine1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/AppListData;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "arrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/AppListData;>;"
    const/4 v5, 0x0

    .line 45
    .local v5, "data":Lcom/sprint/chameleon/AppListData;
    const/4 v2, 0x1

    .line 46
    .local v2, "bVaild":Z
    const/4 v7, 0x0

    .line 47
    .local v7, "fileinfo":Lcom/sprint/chameleon/FileInfo;
    const/4 v10, 0x0

    .line 48
    .local v10, "index":I
    const/4 v8, 0x0

    .line 49
    .local v8, "filename":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 50
    sget-object v7, Lcom/sprint/chameleon/AppListInfo;->mMasterFileInfo:Lcom/sprint/chameleon/FileInfo;

    .line 51
    const-string v8, "MASTER_FILE"

    .line 56
    :goto_0
    const-string v19, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 57
    .local v11, "infomationSplit":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v15, v11, v19

    .line 58
    .local v15, "tempString":Ljava/lang/String;
    const/16 v19, 0x5f

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 59
    .local v16, "underScoreIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 60
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invaild file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (header)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v7, v2}, Lcom/sprint/chameleon/FileInfo;->setVaild(Z)V

    move v3, v2

    .line 119
    .end local v2    # "bVaild":Z
    .local v3, "bVaild":I
    :goto_1
    return v3

    .line 53
    .end local v3    # "bVaild":I
    .end local v11    # "infomationSplit":[Ljava/lang/String;
    .end local v15    # "tempString":Ljava/lang/String;
    .end local v16    # "underScoreIndex":I
    .restart local v2    # "bVaild":Z
    :cond_0
    sget-object v7, Lcom/sprint/chameleon/AppListInfo;->mAssetFileInfo:Lcom/sprint/chameleon/FileInfo;

    .line 54
    const-string v8, "ASSET_FILE"

    goto :goto_0

    .line 65
    .restart local v11    # "infomationSplit":[Ljava/lang/String;
    .restart local v15    # "tempString":Ljava/lang/String;
    .restart local v16    # "underScoreIndex":I
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, "matrixString":Ljava/lang/String;
    const/16 v19, 0x78

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 67
    .local v18, "xIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 68
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invaild file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (row and column)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v7, v2}, Lcom/sprint/chameleon/FileInfo;->setVaild(Z)V

    move v3, v2

    .line 71
    .restart local v3    # "bVaild":I
    goto :goto_1

    .line 73
    .end local v3    # "bVaild":I
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 74
    .local v14, "row":Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "column":Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/sprint/chameleon/FileInfo;->setRows(I)V

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/sprint/chameleon/FileInfo;->setCols(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/16 v19, 0x5f

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 85
    .local v12, "lastUnderScoreIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v0, v12, :cond_3

    .line 86
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invaild file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (version information error"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-virtual {v7, v2}, Lcom/sprint/chameleon/FileInfo;->setVaild(Z)V

    move v3, v2

    .line 89
    .restart local v3    # "bVaild":I
    goto/16 :goto_1

    .line 78
    .end local v3    # "bVaild":I
    .end local v12    # "lastUnderScoreIndex":I
    :catch_0
    move-exception v6

    .line 79
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v7, v2}, Lcom/sprint/chameleon/FileInfo;->setVaild(Z)V

    move v3, v2

    .line 82
    .restart local v3    # "bVaild":I
    goto/16 :goto_1

    .line 91
    .end local v3    # "bVaild":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "lastUnderScoreIndex":I
    :cond_3
    add-int/lit8 v19, v12, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 92
    .local v17, "versionTemp":Ljava/lang/String;
    const-string v19, "_"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "formatTemp":[Ljava/lang/String;
    :try_start_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/sprint/chameleon/FileInfo;->setFileVersion(I)V

    .line 95
    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 96
    const/16 v19, 0x2

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/sprint/chameleon/FileInfo;->setFormatVersion(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :cond_4
    array-length v0, v11

    move/from16 v19, v0

    invoke-virtual {v7}, Lcom/sprint/chameleon/FileInfo;->getCols()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 106
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invaild file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (mismatch header cols and count col"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {v7, v2}, Lcom/sprint/chameleon/FileInfo;->setVaild(Z)V

    move v3, v2

    .line 109
    .restart local v3    # "bVaild":I
    goto/16 :goto_1

    .line 98
    .end local v3    # "bVaild":I
    :catch_1
    move-exception v6

    .line 99
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-virtual {v7, v2}, Lcom/sprint/chameleon/FileInfo;->setVaild(Z)V

    move v3, v2

    .line 102
    .restart local v3    # "bVaild":I
    goto/16 :goto_1

    .line 111
    .end local v3    # "bVaild":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v10, 0x1

    :goto_2
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_6

    .line 112
    aget-object v19, v11, v10

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/sprint/chameleon/FileInfo;->setCid(Ljava/lang/String;)V

    .line 113
    new-instance v5, Lcom/sprint/chameleon/AppListData;

    .end local v5    # "data":Lcom/sprint/chameleon/AppListData;
    invoke-direct {v5}, Lcom/sprint/chameleon/AppListData;-><init>()V

    .line 114
    .restart local v5    # "data":Lcom/sprint/chameleon/AppListData;
    aget-object v19, v11, v10

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sprint/chameleon/AppListData;->setCID(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v7}, Lcom/sprint/chameleon/FileInfo;->getFileVersion()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sprint/chameleon/AppListData;->setFileVersion(I)V

    .line 116
    invoke-virtual {v5, v10}, Lcom/sprint/chameleon/AppListData;->setColIndex(I)V

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move v3, v2

    .line 119
    .restart local v3    # "bVaild":I
    goto/16 :goto_1
.end method

.method private static parseAppListLine(Ljava/util/ArrayList;Ljava/lang/String;ILcom/sprint/chameleon/FileInfo;)V
    .locals 8
    .param p1, "strLine"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "fileinfo"    # Lcom/sprint/chameleon/FileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/chameleon/AppListData;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sprint/chameleon/FileInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "arrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/AppListData;>;"
    const/4 v7, 0x0

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "index":I
    const/4 v0, 0x0

    .line 125
    .local v0, "data":Lcom/sprint/chameleon/AppListData;
    const/4 v4, 0x0

    .line 126
    .local v4, "pkgData":Lcom/sprint/chameleon/PackagesData;
    if-eqz p2, :cond_2

    .line 127
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "infomationSplit":[Ljava/lang/String;
    invoke-virtual {p3}, Lcom/sprint/chameleon/FileInfo;->getCols()I

    move-result v5

    array-length v6, v2

    if-ne v5, v6, :cond_1

    .line 129
    aget-object v3, v2, v7

    .line 130
    .local v3, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 131
    invoke-static {p0, v1}, Lcom/sprint/chameleon/AppListInfo;->findAppListData(Ljava/util/ArrayList;I)Lcom/sprint/chameleon/AppListData;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    new-instance v4, Lcom/sprint/chameleon/PackagesData;

    .end local v4    # "pkgData":Lcom/sprint/chameleon/PackagesData;
    invoke-direct {v4}, Lcom/sprint/chameleon/PackagesData;-><init>()V

    .line 134
    .restart local v4    # "pkgData":Lcom/sprint/chameleon/PackagesData;
    invoke-virtual {v4, v3}, Lcom/sprint/chameleon/PackagesData;->setName(Ljava/lang/String;)V

    .line 135
    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Lcom/sprint/chameleon/PackagesData;->setStatus(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v4}, Lcom/sprint/chameleon/AppListData;->setPacakges(Lcom/sprint/chameleon/PackagesData;)V

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mismatch header column and strLine : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3, v7}, Lcom/sprint/chameleon/FileInfo;->setVaild(Z)V

    .line 144
    .end local v2    # "infomationSplit":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static printLocalLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 305
    sget-boolean v0, Lcom/sprint/chameleon/AppListInfo;->LOCAL_DBG:Z

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "AppList"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    return-void
.end method

.method private static readAppListFile(I)V
    .locals 15
    .param p0, "fileType"    # I

    .prologue
    const/4 v14, 0x1

    .line 147
    const/4 v11, 0x0

    .line 148
    .local v11, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 149
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 150
    .local v8, "fr":Ljava/io/FileReader;
    const/4 v10, 0x0

    .line 151
    .local v10, "lineNumber":I
    const/4 v6, 0x0

    .line 152
    .local v6, "fileName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 153
    .local v1, "bParse":Z
    const/4 v7, 0x0

    .line 155
    .local v7, "fileinfo":Lcom/sprint/chameleon/FileInfo;
    if-nez p0, :cond_1

    .line 156
    const-string v12, "========== readMasterFile =========="

    invoke-static {v12}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 157
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "carrier MasterFile : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sprint/chameleon/AppListInfo;->SYSTEM_MASTERFILE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 158
    sget-object v12, Lcom/sprint/chameleon/AppListInfo;->mMasterAppList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 159
    sget-object v6, Lcom/sprint/chameleon/AppListInfo;->SYSTEM_MASTERFILE:Ljava/lang/String;

    .line 160
    sget-object v7, Lcom/sprint/chameleon/AppListInfo;->mMasterFileInfo:Lcom/sprint/chameleon/FileInfo;

    .line 161
    sget-object v0, Lcom/sprint/chameleon/AppListInfo;->mMasterAppList:Ljava/util/ArrayList;

    .line 170
    .local v0, "arrAppListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/AppListData;>;"
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 172
    const-string v12, "File not exist. RETURN *****"

    invoke-static {v12}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 163
    .end local v0    # "arrAppListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/AppListData;>;"
    .end local v5    # "f":Ljava/io/File;
    :cond_1
    sget-object v12, Lcom/sprint/chameleon/AppListInfo;->mAssetAppList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 164
    const-string v12, "========== readAssetFile =========="

    invoke-static {v12}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 165
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "carrier AssetFile : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sprint/chameleon/AppListInfo;->CARRIER_ASSETFILE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V

    .line 166
    sget-object v6, Lcom/sprint/chameleon/AppListInfo;->CARRIER_ASSETFILE:Ljava/lang/String;

    .line 167
    sget-object v7, Lcom/sprint/chameleon/AppListInfo;->mAssetFileInfo:Lcom/sprint/chameleon/FileInfo;

    .line 168
    sget-object v0, Lcom/sprint/chameleon/AppListInfo;->mAssetAppList:Ljava/util/ArrayList;

    .restart local v0    # "arrAppListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprint/chameleon/AppListData;>;"
    goto :goto_0

    .line 175
    .restart local v5    # "f":Ljava/io/File;
    :cond_2
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v8    # "fr":Ljava/io/FileReader;
    .local v9, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 179
    if-nez v10, :cond_3

    .line 180
    invoke-static {v0, p0, v11}, Lcom/sprint/chameleon/AppListInfo;->parseAppListFile(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v1

    .line 182
    :cond_3
    if-ne v1, v14, :cond_4

    invoke-virtual {v7}, Lcom/sprint/chameleon/FileInfo;->getVaild()Z

    move-result v12

    if-ne v12, v14, :cond_4

    .line 183
    invoke-static {v0, v11, v10, v7}, Lcom/sprint/chameleon/AppListInfo;->parseAppListLine(Ljava/util/ArrayList;Ljava/lang/String;ILcom/sprint/chameleon/FileInfo;)V

    .line 185
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 187
    :cond_5
    invoke-virtual {v7}, Lcom/sprint/chameleon/FileInfo;->getRows()I

    move-result v12

    if-ne v12, v10, :cond_6

    invoke-virtual {v7}, Lcom/sprint/chameleon/FileInfo;->getVaild()Z

    move-result v12

    if-nez v12, :cond_7

    .line 188
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/sprint/chameleon/FileInfo;->setVaild(Z)V

    .line 189
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    const-string v12, "mismatch row count!!!"

    invoke-static {v12}, Lcom/sprint/chameleon/AppListInfo;->printLocalLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 196
    :cond_7
    if-eqz v3, :cond_8

    .line 198
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 204
    :cond_8
    :goto_3
    if-eqz v9, :cond_c

    .line 206
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    move-object v2, v3

    .line 210
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 199
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 201
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 207
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 209
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    move-object v2, v3

    .line 210
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 192
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 194
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 196
    if-eqz v2, :cond_9

    .line 198
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 204
    :cond_9
    :goto_5
    if-eqz v8, :cond_0

    .line 206
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 207
    :catch_3
    move-exception v4

    .line 209
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 199
    :catch_4
    move-exception v4

    .line 201
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 196
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v2, :cond_a

    .line 198
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 204
    :cond_a
    :goto_7
    if-eqz v8, :cond_b

    .line 206
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 210
    :cond_b
    :goto_8
    throw v12

    .line 199
    :catch_5
    move-exception v4

    .line 201
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 207
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 209
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 196
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 192
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v4

    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :cond_c
    move-object v8, v9

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v8    # "fr":Ljava/io/FileReader;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method
