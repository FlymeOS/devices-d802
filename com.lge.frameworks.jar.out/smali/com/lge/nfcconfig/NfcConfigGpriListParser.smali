.class public Lcom/lge/nfcconfig/NfcConfigGpriListParser;
.super Ljava/lang/Object;
.source "NfcConfigGpriListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    }
.end annotation


# static fields
.field private static final APPLY_AUTOPROFILE:Ljava/lang/Boolean;

.field private static final ATTR_NAME_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_NAME_DEFAULT:Ljava/lang/String; = "nfc_default"

.field private static final ATTR_NAME_GID:Ljava/lang/String; = "gid"

.field private static final ATTR_NAME_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_NAME_MNC:Ljava/lang/String; = "mnc"

.field private static final ATTR_NAME_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_OPERATOR:Ljava/lang/String; = "operator"

.field private static final ATTR_NAME_TARGETDEVICE:Ljava/lang/String; = "targetdevice"

.field private static final ATTR_NAME_TARGETOPERATOR:Ljava/lang/String; = "targetoperator"

.field private static final DBG:Z = false

.field private static final FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

.field private static final FILE_PATH_CUPSS_PROFILE_OPEN:Ljava/lang/String;

.field private static final FILE_PATH_PROFILE:Ljava/lang/String;

.field private static final FILE_PATH_PROFILE_OPEN:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NfcConfigGpriListParser"

.field private static final TAG_NAME_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_NAME_PROFILE:Ljava/lang/String; = "profile"

.field private static final TAG_NAME_SIMINFO:Ljava/lang/String; = "siminfo"

.field private static openPriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static targetPriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config_nfc.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_PROFILE:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config_nfcopen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_PROFILE_OPEN:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->APPLY_AUTOPROFILE:Ljava/lang/Boolean;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config/config_nfc.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config/config_nfcopen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_CUPSS_PROFILE_OPEN:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetPriList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openPriList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getMatchedProfile()Z
    .locals 4

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 113
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 115
    .local v1, "confFileOpen":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetPriList:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->parsePRIFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v2

    .line 127
    :cond_0
    :goto_0
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->APPLY_AUTOPROFILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    new-instance v1, Ljava/io/File;

    .end local v1    # "confFileOpen":Ljava/io/File;
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_CUPSS_PROFILE_OPEN:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v1    # "confFileOpen":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openPriList:Ljava/util/List;

    invoke-static {v3, v1}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->parsePRIFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v2

    .line 141
    :cond_1
    :goto_1
    return v2

    .line 119
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetPriList:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->parsePRIFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v2

    goto :goto_0

    .line 132
    :cond_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "confFileOpen":Ljava/io/File;
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->FILE_PATH_PROFILE_OPEN:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v1    # "confFileOpen":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openPriList:Ljava/util/List;

    invoke-static {v3, v1}, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->parsePRIFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v2

    goto :goto_1
.end method

.method private static parsePRIFile(Ljava/util/List;Ljava/io/File;)Z
    .locals 13
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "priList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;>;"
    const-string v11, "profile"

    invoke-static {p1, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 62
    .local v3, "headNodeList":Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_0

    const/4 v11, 0x0

    .line 108
    :goto_0
    return v11

    .line 64
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v4, v11, :cond_9

    .line 65
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 67
    .local v2, "headNode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_2

    .line 64
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 69
    :cond_2
    instance-of v11, v2, Lorg/w3c/dom/Element;

    if-eqz v11, :cond_1

    .line 70
    new-instance v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    invoke-direct {v8}, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;-><init>()V

    .line 71
    .local v8, "priconfig":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 73
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 75
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v6, v11, :cond_8

    .line 76
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 78
    .local v0, "cNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 75
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 80
    :cond_4
    instance-of v11, v0, Lorg/w3c/dom/Element;

    if-eqz v11, :cond_3

    .line 81
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "siminfo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 82
    const-string v11, "operator"

    invoke-static {v0, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->operator:Ljava/lang/String;

    .line 83
    const-string v11, "country"

    invoke-static {v0, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->country:Ljava/lang/String;

    .line 84
    const-string v11, "mcc"

    invoke-static {v0, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mcc:Ljava/lang/String;

    .line 85
    const-string v11, "mnc"

    invoke-static {v0, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mnc:Ljava/lang/String;

    .line 86
    const-string v11, "gid"

    invoke-static {v0, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->gid:Ljava/lang/String;

    goto :goto_4

    .line 87
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "item"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 88
    const-string v11, "name"

    invoke-static {v0, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "item_name":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v11, "nfc_default"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 90
    invoke-static {v0}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "nfc_default":Ljava/lang/String;
    const-string v11, "targetdevice"

    invoke-static {v0, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "targetdevice":Ljava/lang/String;
    const-string v11, "targetoperator"

    invoke-static {v0, v11}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "targetoperator":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentDevice()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->isTargetModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getCurrentOperator()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->isTargetOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 96
    const-string v11, "no"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "disabled"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const-string v11, "no"

    :goto_5
    iput-object v11, v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->nfc_default:Ljava/lang/String;

    .line 97
    iput-object v9, v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->targetdevice:Ljava/lang/String;

    .line 98
    iput-object v10, v8, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->targetoperator:Ljava/lang/String;

    goto/16 :goto_4

    .line 96
    :cond_7
    const-string v11, "yes"

    goto :goto_5

    .line 104
    .end local v0    # "cNode":Lorg/w3c/dom/Node;
    .end local v5    # "item_name":Ljava/lang/String;
    .end local v7    # "nfc_default":Ljava/lang/String;
    .end local v9    # "targetdevice":Ljava/lang/String;
    .end local v10    # "targetoperator":Ljava/lang/String;
    :cond_8
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 108
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v2    # "headNode":Lorg/w3c/dom/Node;
    .end local v6    # "j":I
    .end local v8    # "priconfig":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public static searchPRI(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    .locals 5
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 144
    if-nez p0, :cond_0

    move-object v1, v2

    .line 166
    :goto_0
    return-object v1

    .line 146
    :cond_0
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetPriList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->targetPriList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    .line 148
    .local v1, "list":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    iget-object v3, v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mnc:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mcc:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->gid:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 155
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    :cond_2
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->APPLY_AUTOPROFILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 156
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openPriList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 157
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigGpriListParser;->openPriList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;

    .line 158
    .restart local v1    # "list":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    iget-object v3, v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mnc:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->mcc:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;->gid:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Lcom/lge/nfcconfig/NfcConfigGpriListParser$GpriConfig;
    :cond_4
    move-object v1, v2

    .line 166
    goto :goto_0
.end method
