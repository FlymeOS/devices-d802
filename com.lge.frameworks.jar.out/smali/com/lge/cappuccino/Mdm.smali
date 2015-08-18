.class public Lcom/lge/cappuccino/Mdm;
.super Ljava/lang/Object;
.source "Mdm.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mdm"

.field private static sMdm:Lcom/lge/cappuccino/IMdm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 26
    sput-object v7, Lcom/lge/cappuccino/Mdm;->sMdm:Lcom/lge/cappuccino/IMdm;

    .line 29
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_0

    .line 30
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.lge.mdm.jar"

    const-class v5, Lcom/lge/cappuccino/Mdm;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 35
    .local v1, "cloader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v4, "com.lge.is.frameworks.ISInterfaceImpl"

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cappuccino/IMdm;

    .line 37
    .local v3, "mdm":Lcom/lge/cappuccino/IMdm;
    sput-object v3, Lcom/lge/cappuccino/Mdm;->sMdm:Lcom/lge/cappuccino/IMdm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "mdm":Lcom/lge/cappuccino/IMdm;
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Mdm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library loading failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sput-object v7, Lcom/lge/cappuccino/Mdm;->sMdm:Lcom/lge/cappuccino/IMdm;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/cappuccino/IMdm;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/lge/cappuccino/Mdm;->sMdm:Lcom/lge/cappuccino/IMdm;

    return-object v0
.end method

.method public static isSupportMultiUser()Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    return v0
.end method

.method public static isUseLGMDMLibrary(Landroid/content/ComponentName;I)Z
    .locals 14
    .param p0, "who"    # Landroid/content/ComponentName;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 50
    if-nez p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v9

    .line 53
    :cond_1
    const-string v11, "Mdm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[isUseLGMDMLibrary] who: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", userHandle: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 57
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v5, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 62
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 66
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3}, Landroid/content/pm/PackageParser;-><init>()V

    .line 67
    .local v3, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 69
    new-instance v6, Ljava/io/File;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .local v6, "sourceFile":Ljava/io/File;
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v3, v6, v11}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 76
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_0

    .line 80
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 81
    .local v7, "usesLibList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 82
    .local v8, "usesOptionalLibList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    const-string v11, "com.lge.mdm"

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "com.lge.is"

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 86
    :cond_2
    const-string v11, "Mdm"

    const-string v12, "uses LGMDM Lib req: true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 87
    goto :goto_0

    .line 90
    :cond_3
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    const-string v11, "com.lge.mdm"

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.lge.is"

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 94
    :cond_4
    const-string v11, "Mdm"

    const-string v12, "uses LGMDM Lib req: false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v10

    .line 95
    goto/16 :goto_0

    .line 98
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "usesLibList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "usesOptionalLibList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/content/pm/PackageParser$PackageParserException;
    :try_start_2
    const-string v10, "Mdm"

    const-string v11, "fail packageParser.parseMonolithicPackage"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 101
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "packageParser":Landroid/content/pm/PackageParser;
    .end local v6    # "sourceFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/RemoteException;
    const-string v10, "Mdm"

    const-string v11, "fail isUseLGMDMLibrary"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
