.class public Lcom/lge/nfcconfig/NfcConfigListParser;
.super Ljava/lang/Object;
.source "NfcConfigListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    }
.end annotation


# static fields
.field private static final ATTR_NAME_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_NAME_DEVICE:Ljava/lang/String; = "device"

.field private static final ATTR_NAME_OPERATOR:Ljava/lang/String; = "operator"

.field private static final ATTR_NAME_TARGETMODEL:Ljava/lang/String; = "targetdevice"

.field private static final DBG:Z = false

.field private static final FILE_PATH_COMMON_PROFILE:Ljava/lang/String;

.field private static final FILE_PATH_DEFAULT_PROFILE:Ljava/lang/String;

.field private static final NFC_CONFIG_FILE_POSTFIX:Ljava/lang/String; = ".xml"

.field private static final NFC_CONFIG_FILE_PREFIX:Ljava/lang/String; = "config"

.field private static final TAG:Ljava/lang/String; = "NfcConfigListParser"

.field private static final TAG_NAME_CONFIG:Ljava/lang/String; = "Config"

.field private static configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigListParser$Config;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_DEFAULT_PROFILE:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config_COM.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_COMMON_PROFILE:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getConfigFile()Z
    .locals 3

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 253
    .local v0, "confFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigListParser;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/lge/nfcconfig/NfcConfigListParser;->parseConfigFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v1

    .line 258
    :cond_0
    return v1
.end method

.method private static getConfigFileName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 113
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_COMMON_PROFILE:Ljava/lang/String;

    .line 114
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentOperator()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "operator":Ljava/lang/String;
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentCountry()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "country":Ljava/lang/String;
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentDevice()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "device":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {v3, v0, v1}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    invoke-static {v3, v0, v1}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    :cond_0
    :goto_0
    return-object v2

    .line 120
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-static {v3, v0, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    invoke-static {v3, v0, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 122
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-static {v3, v6, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    invoke-static {v3, v6, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 124
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-static {v6, v0, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-static {v6, v0, v6}, Lcom/lge/nfcconfig/NfcConfigListParser;->makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "tagname"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_DEFAULT_PROFILE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v9, "Config"

    invoke-static {v8, v9}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 222
    .local v2, "headNodeList":Lorg/w3c/dom/NodeList;
    const-string v5, ""

    .line 224
    .local v5, "resultValue":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v6, v5

    .line 247
    .end local v5    # "resultValue":Ljava/lang/String;
    .local v6, "resultValue":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 226
    .end local v6    # "resultValue":Ljava/lang/String;
    .restart local v5    # "resultValue":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 227
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 230
    .local v1, "headChildNodeList":Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_2

    .line 226
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 232
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 233
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 235
    .local v0, "childNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 232
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 237
    :cond_4
    instance-of v8, v0, Lorg/w3c/dom/Element;

    if-eqz v8, :cond_3

    .line 239
    const-string v8, "targetdevice"

    invoke-static {v0, v8}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "targetModelName":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentDevice()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->isTargetModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 242
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v1    # "headChildNodeList":Lorg/w3c/dom/NodeList;
    .end local v4    # "j":I
    .end local v7    # "targetModelName":Ljava/lang/String;
    :cond_5
    move-object v6, v5

    .line 247
    .end local v5    # "resultValue":Ljava/lang/String;
    .restart local v6    # "resultValue":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getDefaultConfig(Lcom/lge/nfcconfig/NfcConfigListParser$Config;)Z
    .locals 7
    .param p0, "config"    # Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .prologue
    .line 201
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/lge/nfcconfig/NfcConfigListParser;->FILE_PATH_DEFAULT_PROFILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "Config"

    invoke-static {v5, v6}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 203
    .local v2, "headNodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_0

    const/4 v5, 0x0

    .line 218
    :goto_0
    return v5

    .line 205
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 206
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 208
    .local v1, "headChildNodeList":Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_2

    .line 205
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 210
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 211
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 213
    .local v0, "childNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 210
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 215
    :cond_3
    invoke-static {p0, v0}, Lcom/lge/nfcconfig/NfcConfigListParser;->setConfigValue(Lcom/lge/nfcconfig/NfcConfigListParser$Config;Lorg/w3c/dom/Node;)V

    goto :goto_3

    .line 218
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v1    # "headChildNodeList":Lorg/w3c/dom/NodeList;
    .end local v4    # "j":I
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static makeConfigFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "device"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "config"

    .line 95
    .local v0, "fileName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    if-eqz p2, :cond_2

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseConfigFile(Ljava/util/List;Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigListParser$Config;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigListParser$Config;>;"
    const-string v7, "Config"

    invoke-static {p1, v7}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 165
    .local v4, "headNodeList":Lorg/w3c/dom/NodeList;
    if-nez v4, :cond_0

    const/4 v7, 0x0

    .line 198
    :goto_0
    return v7

    .line 167
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 168
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 170
    .local v3, "headNode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_2

    .line 167
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    :cond_2
    instance-of v7, v3, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_1

    .line 173
    new-instance v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    invoke-direct {v2}, Lcom/lge/nfcconfig/NfcConfigListParser$Config;-><init>()V

    .line 175
    .local v2, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    invoke-static {v2}, Lcom/lge/nfcconfig/NfcConfigListParser;->getDefaultConfig(Lcom/lge/nfcconfig/NfcConfigListParser$Config;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 179
    :cond_3
    const-string v7, "operator"

    invoke-static {v3, v7}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    .line 180
    const-string v7, "country"

    invoke-static {v3, v7}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    .line 181
    const-string v7, "device"

    invoke-static {v3, v7}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    .line 183
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 185
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 187
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 188
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 190
    .local v0, "cNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 187
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 192
    :cond_4
    invoke-static {v2, v0}, Lcom/lge/nfcconfig/NfcConfigListParser;->setConfigValue(Lcom/lge/nfcconfig/NfcConfigListParser$Config;Lorg/w3c/dom/Node;)V

    goto :goto_4

    .line 194
    .end local v0    # "cNode":Lorg/w3c/dom/Node;
    :cond_5
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 198
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v2    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .end local v3    # "headNode":Lorg/w3c/dom/Node;
    .end local v6    # "j":I
    :cond_6
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private static searchConfig()Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .locals 4

    .prologue
    .line 261
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 262
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static searchConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .locals 5
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 296
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 297
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :goto_0
    return-object v0

    .line 303
    :cond_1
    invoke-static {p0}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfigByOperator(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v2

    .local v2, "tmpConfig":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    if-nez v2, :cond_2

    .line 304
    invoke-static {p1}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfigByCounty(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v2

    if-nez v2, :cond_2

    .line 305
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 308
    goto :goto_0
.end method

.method public static searchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .locals 3
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "device"    # Ljava/lang/String;

    .prologue
    .line 311
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 315
    :cond_0
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 316
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 322
    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :cond_2
    invoke-static {p0, p1}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v0

    goto :goto_0
.end method

.method private static searchConfigByCounty(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .locals 4
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 283
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 284
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigListParser;->searchConfig()Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v0

    goto :goto_0
.end method

.method private static searchConfigByOperator(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .locals 4
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigListParser;->configList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    .line 273
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mCountry:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDevice:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    .end local v0    # "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setConfigValue(Lcom/lge/nfcconfig/NfcConfigListParser$Config;Lorg/w3c/dom/Node;)V
    .locals 8
    .param p0, "config"    # Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    .param p1, "childNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 133
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    instance-of v7, p1, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_0

    .line 138
    invoke-static {p1}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "value":Ljava/lang/String;
    const-string v7, "targetdevice"

    invoke-static {p1, v7}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "targetModelName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 142
    .local v1, "f":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "valueString":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 144
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentDevice()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->isTargetModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v6    # "valueString":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 140
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
