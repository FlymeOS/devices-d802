.class public Lcom/lge/wapservice/parser/WbxmlParser;
.super Ljava/lang/Object;
.source "WbxmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# instance fields
.field private ATTR_START_TABLE:I

.field private ATTR_VALUE_TABLE:I

.field private TAG_TABLE:I

.field private attrStartTable:[Ljava/lang/String;

.field private attrValueTable:[Ljava/lang/String;

.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private cacheStringTable:Ljava/util/Hashtable;

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private isWhitespace:Z

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextId:I

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private publicIdentifierId:I

.field private stringTable:[B

.field private tables:Ljava/util/Vector;

.field private tagTable:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private version:I

.field private wapCode:I

.field private wapExtensionData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->TAG_TABLE:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->ATTR_START_TABLE:I

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->ATTR_VALUE_TABLE:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 74
    const/4 v0, -0x2

    iput v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nextId:I

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    return-void
.end method

.method private final adjustNsp()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3a

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "any":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_4

    .line 504
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 505
    .local v1, "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 508
    .local v4, "cut":I
    if-eq v4, v12, :cond_1

    .line 509
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, "prefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    :goto_1
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 520
    const/4 v0, 0x1

    .line 501
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 512
    :cond_1
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 513
    move-object v7, v1

    .line 514
    .restart local v7    # "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_1

    .line 523
    :cond_2
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    iget v9, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 525
    .local v6, "j":I
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lcom/lge/wapservice/parser/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 526
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 527
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 529
    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 531
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 537
    :cond_3
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    .line 548
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    .end local v6    # "j":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_9

    .line 549
    iget v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v5, v8, -0x4

    .line 550
    :goto_3
    if-ltz v5, :cond_9

    .line 553
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 554
    .restart local v1    # "attrName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 556
    .restart local v4    # "cut":I
    if-nez v4, :cond_5

    .line 557
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal attribute name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 563
    :cond_5
    if-eq v4, v12, :cond_8

    .line 564
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "attrPrefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {p0, v3}, Lcom/lge/wapservice/parser/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "attrNs":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 572
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 578
    :cond_6
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 579
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 580
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 582
    iget v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v6, v8, -0x4

    .line 583
    .restart local v6    # "j":I
    :goto_4
    if-le v6, v5, :cond_8

    .line 585
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate Attribute: {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 584
    :cond_7
    add-int/lit8 v6, v6, -0x4

    goto :goto_4

    .line 551
    .end local v2    # "attrNs":Ljava/lang/String;
    .end local v3    # "attrPrefix":Ljava/lang/String;
    .end local v6    # "j":I
    :cond_8
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_3

    .line 596
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    :cond_9
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 598
    .restart local v4    # "cut":I
    if-nez v4, :cond_d

    .line 599
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 605
    :cond_a
    :goto_5
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/lge/wapservice/parser/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->namespace:Ljava/lang/String;

    .line 607
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 608
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 609
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 610
    :cond_b
    const-string v8, ""

    iput-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->namespace:Ljava/lang/String;

    .line 613
    :cond_c
    return v0

    .line 600
    :cond_d
    if-eq v4, v12, :cond_a

    .line 601
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    .line 602
    iget-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_5
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "required"    # I

    .prologue
    const/4 v2, 0x0

    .line 973
    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 977
    .end local p1    # "arr":[Ljava/lang/String;
    :goto_0
    return-object p1

    .line 975
    .restart local p1    # "arr":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 976
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 977
    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 632
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final nextImpl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x1

    .line 655
    iget v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    if-ne v3, v4, :cond_0

    .line 656
    iget v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    .line 659
    :cond_0
    iget-boolean v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->degenerated:Z

    if-eqz v3, :cond_1

    .line 660
    iput v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 661
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->degenerated:Z

    .line 754
    :goto_0
    return-void

    .line 665
    :cond_1
    iput-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    .line 666
    iput-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    .line 667
    iput-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    .line 669
    invoke-direct {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->peekId()I

    move-result v1

    .line 670
    .local v1, "id":I
    :goto_1
    if-nez v1, :cond_2

    .line 671
    iput v7, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nextId:I

    .line 672
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/lge/wapservice/parser/WbxmlParser;->selectPage(IZ)V

    .line 673
    invoke-direct {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->peekId()I

    move-result v1

    goto :goto_1

    .line 675
    :cond_2
    iput v7, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nextId:I

    .line 677
    sparse-switch v1, :sswitch_data_0

    .line 748
    invoke-virtual {p0, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->parseElement(I)V

    goto :goto_0

    .line 679
    :sswitch_0
    iput v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    goto :goto_0

    .line 684
    :sswitch_1
    iget v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v3, 0x2

    .line 687
    .local v2, "sp":I
    if-gez v2, :cond_3

    .line 689
    const-string v3, "WapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR!!:sp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " depth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unexpected and unpaired external tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iput v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    goto :goto_0

    .line 694
    :cond_3
    iput v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 695
    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->namespace:Ljava/lang/String;

    .line 696
    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    .line 697
    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 706
    .end local v2    # "sp":I
    :sswitch_2
    const/4 v3, 0x6

    iput v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 707
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    move-result v3

    int-to-char v0, v3

    .line 708
    .local v0, "c":C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 715
    .end local v0    # "c":C
    :sswitch_3
    iput v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 716
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 730
    :sswitch_4
    const/16 v3, 0x40

    iput v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 731
    iput v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->wapCode:I

    .line 732
    invoke-virtual {p0, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    goto/16 :goto_0

    .line 736
    :sswitch_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PI curr. not supp."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 742
    :sswitch_6
    iput v8, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 743
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 677
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_4
        0x42 -> :sswitch_4
        0x43 -> :sswitch_5
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_4
        0x83 -> :sswitch_6
        0xc0 -> :sswitch_4
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
    .end sparse-switch
.end method

.method private peekId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nextId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nextId:I

    .line 882
    :cond_0
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nextId:I

    return v0
.end method

.method private selectPage(IZ)V
    .locals 3
    .param p1, "nr"    # I
    .param p2, "tags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 648
    :goto_0
    return-void

    .line 639
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " undefined!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 642
    :cond_1
    if-eqz p2, :cond_2

    .line 643
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->TAG_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tagTable:[Ljava/lang/String;

    goto :goto_0

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->ATTR_START_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->ATTR_VALUE_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    goto :goto_0
.end method

.method private final setTable(II[Ljava/lang/String;)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "type"    # I
    .param p3, "table"    # [Ljava/lang/String;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->stringTable:[B

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setXxxTable must be called before setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    .line 621
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 624
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 117
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 289
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 283
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 295
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 275
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 301
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 310
    iget v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 311
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 313
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 319
    :goto_1
    return-object v1

    .line 312
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 319
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 323
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-boolean v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->processNsp:Z

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 154
    :goto_0
    return-object v1

    .line 141
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 144
    :cond_1
    iget v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .line 145
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 147
    if-nez p1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 146
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 154
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    if-le p1, v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    sget-object v5, Lcom/lge/wapservice/parser/WbxmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lcom/lge/wapservice/parser/WbxmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    if-ne v4, v6, :cond_8

    .line 169
    :cond_0
    iget-boolean v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 170
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 173
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    :cond_2
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_3
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v4, 0x2

    .line 180
    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 181
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 163
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 199
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "cnt":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 201
    :cond_8
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 202
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 203
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 204
    :cond_9
    iget-boolean v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->isWhitespace:Z

    if-eqz v4, :cond_a

    .line 205
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 207
    :cond_a
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_b

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 6
    .param p1, "poslen"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 238
    iget v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 239
    aput v3, p1, v3

    .line 240
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, p1, v5

    .line 241
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 242
    .local v0, "buf":[C
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 248
    .end local v0    # "buf":[C
    :goto_0
    return-object v0

    .line 246
    :cond_0
    aput v4, p1, v3

    .line 247
    aput v4, p1, v5

    .line 248
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 265
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 266
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 226
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 229
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 332
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->isWhitespace:Z

    .line 333
    const/16 v0, 0x270f

    .line 337
    .local v0, "minType":I
    :cond_0
    :sswitch_0
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    .line 339
    .local v1, "save":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->nextImpl()V

    .line 341
    iget v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    if-ge v2, v0, :cond_1

    .line 342
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 344
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 346
    if-lt v0, v4, :cond_3

    .line 348
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    .end local v1    # "save":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    .line 350
    :cond_2
    invoke-direct {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->peekId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 364
    :cond_3
    iput v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 366
    iget v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    if-le v2, v4, :cond_4

    .line 367
    iput v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 369
    :cond_4
    iget v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    return v2

    .line 348
    .restart local v1    # "save":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x44 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0xc4 -> :sswitch_0
    .end sparse-switch
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    .line 385
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    .line 388
    :cond_0
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 389
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 391
    :cond_1
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    iget v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 397
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    .line 403
    iget v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    .line 410
    :goto_0
    iget v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 411
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 413
    :cond_1
    return-object v0

    .line 408
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->isWhitespace:Z

    .line 376
    invoke-direct {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->nextImpl()V

    .line 377
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    return v0
.end method

.method parseElement(I)V
    .locals 8
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 924
    const/4 v4, 0x2

    iput v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    .line 925
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->tagTable:[Ljava/lang/String;

    and-int/lit8 v6, p1, 0x3f

    invoke-virtual {p0, v4, v6}, Lcom/lge/wapservice/parser/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    .line 927
    iput v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    .line 928
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readAttr()V

    .line 932
    :cond_0
    and-int/lit8 v4, p1, 0x40

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->degenerated:Z

    .line 934
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    shl-int/lit8 v3, v4, 0x2

    .line 938
    .local v3, "sp":I
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {p0, v4, v6}, Lcom/lge/wapservice/parser/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 939
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    iget-object v7, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 941
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    if-lt v4, v6, :cond_1

    .line 942
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    add-int/lit8 v4, v4, 0x4

    new-array v0, v4, [I

    .line 943
    .local v0, "bigger":[I
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    invoke-static {v4, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 944
    iput-object v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    .line 947
    .end local v0    # "bigger":[I
    :cond_1
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    iget v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->nspCounts:[I

    iget v7, p0, Lcom/lge/wapservice/parser/WbxmlParser;->depth:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 949
    iget v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_5

    .line 950
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 951
    invoke-virtual {p0, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate Attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 950
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "sp":I
    :cond_3
    move v4, v5

    .line 932
    goto :goto_0

    .line 949
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "sp":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 959
    .end local v2    # "j":I
    :cond_5
    iget-boolean v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->processNsp:Z

    if-eqz v4, :cond_6

    .line 960
    invoke-direct {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->adjustNsp()Z

    .line 964
    :goto_3
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->namespace:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 965
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->prefix:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 966
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 968
    return-void

    .line 962
    :cond_6
    const-string v4, ""

    iput-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->namespace:Ljava/lang/String;

    goto :goto_3
.end method

.method public parseWapExtension(I)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 760
    sparse-switch p1, :sswitch_data_0

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 791
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 764
    :sswitch_1
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 769
    :sswitch_2
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 778
    :sswitch_3
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    move-result v1

    .line 779
    .local v1, "count":I
    new-array v0, v1, [B

    .line 781
    .local v0, "buf":[B
    :goto_1
    if-lez v1, :cond_0

    .line 782
    iget-object v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->in:Ljava/io/InputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 760
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_2
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method public readAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 797
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v3

    .line 798
    .local v3, "id":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 800
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    .line 802
    :goto_1
    if-nez v3, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/lge/wapservice/parser/WbxmlParser;->selectPage(IZ)V

    .line 804
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v3

    goto :goto_1

    .line 807
    :cond_0
    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lcom/lge/wapservice/parser/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, "name":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 812
    .local v0, "cut":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 813
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 820
    .local v5, "value":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v3

    .line 827
    :goto_3
    if-gt v3, v9, :cond_2

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/16 v6, 0x83

    if-eq v3, v6, :cond_2

    const/16 v6, 0x40

    if-lt v3, v6, :cond_1

    const/16 v6, 0x42

    if-le v3, v6, :cond_2

    :cond_1
    if-lt v3, v9, :cond_4

    const/16 v6, 0x82

    if-gt v3, v6, :cond_4

    .line 829
    :cond_2
    sparse-switch v3, :sswitch_data_0

    .line 860
    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lcom/lge/wapservice/parser/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    :goto_4
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v3

    goto :goto_3

    .line 815
    .end local v5    # "value":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 817
    .restart local v5    # "value":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 831
    :sswitch_0
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/lge/wapservice/parser/WbxmlParser;->selectPage(IZ)V

    goto :goto_4

    .line 835
    :sswitch_1
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 839
    :sswitch_2
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 852
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/lge/wapservice/parser/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/lge/wapservice/parser/WbxmlParser;->resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 856
    :sswitch_4
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 867
    :cond_4
    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x4

    invoke-direct {p0, v6, v7}, Lcom/lge/wapservice/parser/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 869
    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const-string v7, ""

    aput-object v7, v6, v2

    .line 870
    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 871
    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-object v4, v6, v2

    .line 872
    iget-object v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 874
    iget v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lge/wapservice/parser/WbxmlParser;->attributeCount:I

    goto/16 :goto_0

    .line 876
    .end local v0    # "cut":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/StringBuffer;
    :cond_5
    return-void

    .line 829
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x40 -> :sswitch_3
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    iget-object v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 982
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 983
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 984
    :cond_0
    return v0
.end method

.method readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 988
    const/4 v1, 0x0

    .line 992
    .local v1, "result":I
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v0

    .line 993
    .local v0, "i":I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 995
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 997
    return v1
.end method

.method readStrI()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1002
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 1004
    .local v3, "wsp":Z
    :goto_0
    iget-object v4, p0, Lcom/lge/wapservice/parser/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1005
    .local v1, "i":I
    if-nez v1, :cond_0

    .line 1016
    iput-boolean v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->isWhitespace:Z

    .line 1017
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1018
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1019
    return-object v2

    .line 1008
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 1009
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1011
    :cond_1
    const/16 v4, 0x20

    if-le v1, v4, :cond_2

    .line 1012
    const/4 v3, 0x0

    .line 1014
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method readStrT()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    move-result v2

    .line 1027
    .local v2, "pos":I
    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 1029
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 1031
    :cond_0
    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1032
    .local v1, "forReturn":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1034
    move v0, v2

    .line 1035
    .local v0, "end":I
    :goto_0
    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->stringTable:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->stringTable:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    new-instance v1, Ljava/lang/String;

    .end local v1    # "forReturn":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->stringTable:[B

    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1039
    .restart local v1    # "forReturn":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wapservice/parser/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    .end local v0    # "end":I
    :cond_2
    return-object v1
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    const-string v0, "WAP Ext."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 425
    :cond_2
    return-void

    .line 423
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lge/wapservice/parser/WbxmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method resolveId([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "tab"    # [Ljava/lang/String;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 905
    and-int/lit8 v1, p2, 0x7f

    add-int/lit8 v0, v1, -0x5

    .line 906
    .local v0, "idx":I
    if-ne v0, v2, :cond_0

    .line 907
    iput v2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->wapCode:I

    .line 908
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v1

    .line 918
    :goto_0
    return-object v1

    .line 910
    :cond_0
    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 914
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undef."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    :cond_2
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->wapCode:I

    .line 918
    aget-object v1, p1, v0

    goto :goto_0
.end method

.method protected resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 890
    instance-of v3, p2, [B

    if-eqz v3, :cond_1

    .line 891
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 892
    .local v2, "sb":Ljava/lang/StringBuffer;
    check-cast p2, [B

    .end local p2    # "data":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 894
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 895
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 896
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 894
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 901
    .end local v0    # "b":[B
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "table"    # [Ljava/lang/String;

    .prologue
    .line 1068
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->ATTR_START_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lcom/lge/wapservice/parser/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1069
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "table"    # [Ljava/lang/String;

    .prologue
    .line 1080
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->ATTR_VALUE_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lcom/lge/wapservice/parser/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 483
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iput-boolean p2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->processNsp:Z

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 435
    iput-object p1, p0, Lcom/lge/wapservice/parser/WbxmlParser;->in:Ljava/io/InputStream;

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readByte()I

    move-result v5

    iput v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->version:I

    .line 439
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    move-result v5

    iput v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->publicIdentifierId:I

    .line 441
    iget v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->publicIdentifierId:I

    if-nez v5, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    move-result v0

    .line 446
    .local v0, "charset":I
    if-nez p2, :cond_2

    .line 447
    sparse-switch v0, :sswitch_data_0

    .line 455
    const-string v5, "UTF-8"

    iput-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->encoding:Ljava/lang/String;

    .line 463
    :goto_0
    invoke-virtual {p0}, Lcom/lge/wapservice/parser/WbxmlParser;->readInt()I

    move-result v4

    .line 464
    .local v4, "strTabSize":I
    new-array v5, v4, [B

    iput-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->stringTable:[B

    .line 466
    const/4 v3, 0x0

    .line 467
    .local v3, "ok":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 468
    iget-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->stringTable:[B

    sub-int v6, v4, v3

    invoke-virtual {p1, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 469
    .local v1, "cnt":I
    if-gtz v1, :cond_3

    .line 473
    .end local v1    # "cnt":I
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/lge/wapservice/parser/WbxmlParser;->selectPage(IZ)V

    .line 474
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/lge/wapservice/parser/WbxmlParser;->selectPage(IZ)V

    .line 479
    .end local v0    # "charset":I
    .end local v3    # "ok":I
    .end local v4    # "strTabSize":I
    :goto_2
    return-void

    .line 448
    .restart local v0    # "charset":I
    :sswitch_0
    const-string v5, "ISO-8859-1"

    iput-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    .end local v0    # "charset":I
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "Illegal input format"

    invoke-direct {p0, v5}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    goto :goto_2

    .line 449
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "charset":I
    :sswitch_1
    :try_start_1
    const-string v5, "UTF-8"

    iput-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 450
    :sswitch_2
    const-string v5, "US-ASCII"

    iput-object v5, p0, Lcom/lge/wapservice/parser/WbxmlParser;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 460
    :cond_2
    iput-object p2, p0, Lcom/lge/wapservice/parser/WbxmlParser;->encoding:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 470
    .restart local v1    # "cnt":I
    .restart local v3    # "ok":I
    .restart local v4    # "strTabSize":I
    :cond_3
    add-int/2addr v3, v1

    .line 471
    goto :goto_1

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 429
    const-string v0, "InputStream required"

    invoke-direct {p0, v0}, Lcom/lge/wapservice/parser/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "table"    # [Ljava/lang/String;

    .prologue
    .line 1050
    iget v0, p0, Lcom/lge/wapservice/parser/WbxmlParser;->TAG_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lcom/lge/wapservice/parser/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1055
    return-void
.end method
