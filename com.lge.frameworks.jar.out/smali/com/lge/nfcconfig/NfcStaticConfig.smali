.class public Lcom/lge/nfcconfig/NfcStaticConfig;
.super Ljava/lang/Object;
.source "NfcStaticConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcStaticConfig"

.field private static sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;


# instance fields
.field mConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/nfcconfig/NfcStaticConfig;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useConfigKeys"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    .line 23
    invoke-static {p1}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    .line 25
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigure;
    invoke-direct {p0, v0, p2}, Lcom/lge/nfcconfig/NfcStaticConfig;->setConfigureMap(Lcom/lge/nfcconfig/NfcConfigure;[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcStaticConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/lge/nfcconfig/NfcStaticConfig;

    invoke-direct {v0, p0}, Lcom/lge/nfcconfig/NfcStaticConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    .line 65
    :cond_0
    sget-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Ljava/lang/String;)Lcom/lge/nfcconfig/NfcStaticConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useConfigKeys"    # [Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/lge/nfcconfig/NfcStaticConfig;

    invoke-direct {v0, p0, p1}, Lcom/lge/nfcconfig/NfcStaticConfig;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    .line 72
    :cond_0
    sget-object v0, Lcom/lge/nfcconfig/NfcStaticConfig;->sConfig:Lcom/lge/nfcconfig/NfcStaticConfig;

    return-object v0
.end method

.method private setConfigureMap(Lcom/lge/nfcconfig/NfcConfigure;[Ljava/lang/String;)V
    .locals 9
    .param p1, "config"    # Lcom/lge/nfcconfig/NfcConfigure;
    .param p2, "useConfigKeys"    # [Ljava/lang/String;

    .prologue
    .line 30
    const/4 v6, 0x0

    .line 31
    .local v6, "usekeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    array-length v7, p2

    if-lez v7, :cond_0

    .line 32
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 35
    :cond_0
    const-class v7, Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 36
    .local v2, "classFields":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v1, v0, v3

    .line 38
    .local v1, "classField":Ljava/lang/reflect/Field;
    if-nez v1, :cond_2

    .line 36
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "m"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 44
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 49
    :cond_4
    iget-object v8, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 51
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 49
    .restart local v5    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 55
    .end local v1    # "classField":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method public getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/nfcconfig/NfcStaticConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
