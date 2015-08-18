.class public Lcom/lge/nfcconfig/NfcConfigTargetListParser;
.super Ljava/lang/Object;
.source "NfcConfigTargetListParser.java"


# static fields
.field private static final DBG:Z = false

.field private static final FILE_PATH_PROFILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NfcConfigTargetListParser"

.field private static final TAG_NAME_TARGET:Ljava/lang/String; = "Target"

.field private static targetlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigParserUtil;->NFC_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "target_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->FILE_PATH_PROFILE:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTargetListFile()Z
    .locals 3

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 42
    .local v0, "confFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->FILE_PATH_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->parseTargetListFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v1

    .line 47
    :cond_0
    return v1
.end method

.method public static isTargetModel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "device"    # Ljava/lang/String;
    .param p1, "targetModelName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 59
    const-string v5, "~"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->searchTargetIndex(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, "targetModel":I
    invoke-static {p0}, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->searchTargetIndex(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "presentModel":I
    const-string v5, "~"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "directionIndex":I
    if-eqz p1, :cond_1

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v3

    .line 67
    :cond_1
    if-ne v0, v7, :cond_2

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 70
    :cond_2
    if-eq v1, v7, :cond_3

    if-ne v2, v7, :cond_4

    .line 71
    :cond_3
    if-gtz v0, :cond_0

    move v3, v4

    goto :goto_0

    .line 73
    :cond_4
    if-eq v2, v1, :cond_0

    .line 76
    if-nez v0, :cond_5

    .line 77
    if-gt v2, v1, :cond_0

    move v3, v4

    goto :goto_0

    .line 79
    :cond_5
    if-lt v2, v1, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static isTargetOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "targetOpName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 82
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseTargetListFile(Ljava/util/List;Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "targetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "Target"

    invoke-static {p1, v4}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeList(Ljava/io/File;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 24
    .local v1, "headNodeList":Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 36
    :goto_0
    return v4

    .line 26
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 27
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 29
    .local v0, "headNode":Lorg/w3c/dom/Node;
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_1

    .line 30
    invoke-static {v0}, Lcom/lge/nfcconfig/NfcConfigParserUtil;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "target":Ljava/lang/String;
    sget-object v4, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .end local v3    # "target":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    .end local v0    # "headNode":Lorg/w3c/dom/Node;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static searchTargetIndex(Ljava/lang/String;)I
    .locals 2
    .param p0, "targetname"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 51
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 50
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigTargetListParser;->targetlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method
