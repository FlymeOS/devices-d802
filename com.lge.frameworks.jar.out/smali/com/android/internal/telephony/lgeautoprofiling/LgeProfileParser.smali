.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;
.super Ljava/lang/Object;
.source "LgeProfileParser.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$1;,
        Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;,
        Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;,
        Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EDBG:Z = true

.field private static final VDBG:Z = true

.field private static checkLoadXmlDBG:Z

.field private static sIsGlobalCupss:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->checkLoadXmlDBG:Z

    .line 32
    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->sIsGlobalCupss:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    return-void
.end method

.method private getMatchedFeatureByNtcode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "ntcodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    const-string v2, "persist.sys.ntcode"

    const-string v3, "\"0\",\"FFF,FFF,FFFFFFFF,FFFFFFFF,FF\""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "ntcode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 767
    .local v1, "ntcodeProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const-string v2, "FeatureSet"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 770
    :cond_0
    const-string v2, "\",\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 771
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matched ntcode parse from xml : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v2, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 773
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v1

    .line 780
    :cond_1
    return-object v1

    .line 776
    :cond_2
    :goto_0
    const-string v2, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method private isFileExist(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 593
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 8
    .param p1, "confFile"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    .prologue
    .line 554
    const/4 v2, 0x0

    .line 556
    .local v2, "in":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 557
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 560
    .local v4, "parsedData":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 561
    sget-boolean v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->checkLoadXmlDBG:Z

    if-nez v6, :cond_0

    .line 562
    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "[parse] Do NOT load xml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->checkLoadXmlDBG:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :cond_0
    const/4 v6, 0x0

    .line 582
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 588
    :cond_1
    :goto_0
    return-object v6

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 567
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "[parse] Load xml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 571
    .end local v2    # "in":Ljava/io/FileReader;
    .local v3, "in":Ljava/io/FileReader;
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 572
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 573
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 575
    invoke-virtual {p0, p2, v5, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->getMatchedProfile(ILorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 582
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v2, v3

    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    :cond_4
    :goto_1
    move-object v6, v4

    .line 588
    goto :goto_0

    .line 583
    .end local v2    # "in":Ljava/io/FileReader;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "in":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 584
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 586
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    goto :goto_1

    .line 576
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_2
    move-exception v0

    .line 577
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 582
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 583
    :catch_3
    move-exception v0

    .line 584
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 578
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 579
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 582
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 583
    :catch_5
    move-exception v0

    .line 584
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 581
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 582
    :goto_4
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 585
    :cond_5
    :goto_5
    throw v6

    .line 583
    :catch_6
    move-exception v0

    .line 584
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 581
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    goto :goto_4

    .line 578
    .end local v2    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    goto :goto_3

    .line 576
    .end local v2    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v2    # "in":Ljava/io/FileReader;
    goto :goto_2
.end method

.method protected static profileToMap(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;
    .locals 8
    .param p0, "profile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 735
    .local v2, "profileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 736
    .local v0, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 737
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValueMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 738
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 740
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 741
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "key":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 742
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 744
    const-string v5, "TelephonyAutoProfiling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[profileToMap] add - key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 749
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 43
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 47
    :cond_1
    if-eq v1, v3, :cond_2

    .line 48
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "first":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 53
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start tag: found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_3
    return-void
.end method

.method protected existInTokens(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 113
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected existInTokens(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 127
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v4

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 134
    .local v3, "xml_length":I
    if-le v3, p3, :cond_2

    .line 135
    move v0, p3

    .line 143
    .local v0, "final_length":I
    :goto_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "fixed_xml_gid":Ljava/lang/String;
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "fixed_sim_gid":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    const/4 v4, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "final_length":I
    .end local v1    # "fixed_sim_gid":Ljava/lang/String;
    .end local v2    # "fixed_xml_gid":Ljava/lang/String;
    :cond_2
    move v0, v3

    .restart local v0    # "final_length":I
    goto :goto_1
.end method

.method public getMatchedProfile(ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 9
    .param p1, "type"    # I
    .param p2, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    .prologue
    const/4 v6, 0x0

    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, "matchedProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v0, 0x0

    .line 465
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 467
    .local v1, "confFileOpen":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 536
    const-string v7, "TelephonyAutoProfiling"

    const-string v8, "[getMatchedProfile] unsupported type"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    return-object v6

    .line 470
    :pswitch_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v7, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->FILE_PATH_CUPSS_FEATURE:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 473
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v7, "/etc/featureset.xml"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .restart local v0    # "confFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->isGlobalCupssGroup()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 479
    new-instance v1, Ljava/io/File;

    .end local v1    # "confFileOpen":Ljava/io/File;
    const-string v7, "/etc/featuresetOpen.xml"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v1    # "confFileOpen":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 481
    const-string v7, "TelephonyAutoProfiling"

    const-string v8, "try FeaturesetOpen.xml parsing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v3

    .line 485
    .local v3, "openProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    invoke-virtual {p0, v3, v2, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfileIfNeeded(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    .line 540
    .end local v3    # "openProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->isFileExist(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getMatchedProfile] selected file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->isGlobalCupssGroup()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->isFileExist(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 545
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getMatchedProfile] selected file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v6, v2

    .line 548
    goto/16 :goto_0

    .line 494
    :pswitch_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .restart local v0    # "confFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "confFileOpen":Ljava/io/File;
    const-string v6, "/etc/telephonyOpen.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .restart local v1    # "confFileOpen":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 497
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v6, "/etc/telephony.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 499
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v6, "/etc/telephonyOpen.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v0    # "confFile":Ljava/io/File;
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    .line 505
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "matchedProfile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "ro.lge.autoprofile"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 510
    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "autoprofile property is true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v2

    .line 512
    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string v7, "p"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 514
    .local v5, "profilePriorityFromOperatorXml":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 515
    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "bestMatchedProfile is not found on operator xml, parse open xml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v3

    .line 519
    .restart local v3    # "openProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    if-eqz v3, :cond_5

    move-object v6, v3

    .line 520
    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string v7, "p"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 521
    .local v4, "profilePriorityFromOpenXml":I
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profile priority - operatorXml : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", openXml : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-le v5, v4, :cond_5

    .line 525
    move-object v2, v3

    .line 530
    .end local v3    # "openProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .end local v4    # "profilePriorityFromOpenXml":I
    .end local v5    # "profilePriorityFromOperatorXml":I
    :cond_5
    if-eqz v2, :cond_1

    move-object v6, v2

    .line 531
    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string v7, "p"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMatchedProfile(ILorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 11
    .param p1, "type"    # I
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    .prologue
    const/4 v8, 0x0

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "commonProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v7, 0x0

    .line 277
    .local v7, "validProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v2, 0x0

    .line 279
    .local v2, "featureProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    new-instance v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;

    invoke-direct {v6, p0, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;-><init>(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$1;)V

    .line 281
    .local v6, "profile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;
    if-nez p2, :cond_0

    .line 357
    :goto_0
    return-object v8

    .line 287
    :cond_0
    :try_start_0
    const-string v8, "profiles"

    invoke-virtual {p0, p2, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 291
    :cond_1
    :goto_1
    const-string v8, "profiles"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 292
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 295
    :cond_2
    const-string v8, "profile"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 296
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 298
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 354
    :goto_2
    iget-object v8, v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mBestMatchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    if-eqz v8, :cond_d

    iget-object v7, v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mBestMatchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    .line 357
    :goto_3
    invoke-virtual {p0, v0, v7, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfileIfNeeded(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v8

    goto :goto_0

    .line 302
    :cond_4
    :try_start_1
    const-string v8, "siminfo"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 304
    invoke-virtual {p0, v6, p2, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->getValidProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Z

    move-result v3

    .line 308
    .local v3, "found":Z
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mDefaultProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    if-nez v8, :cond_7

    :cond_6
    iget-object v8, v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mBestMatchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    if-eqz v8, :cond_8

    .line 310
    :cond_7
    const-string v8, "TelephonyAutoProfiling"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getMatchedProfile] sim info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "bestMatchedProfile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mBestMatchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 348
    .end local v3    # "found":Z
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 316
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "found":Z
    :cond_8
    if-nez v3, :cond_1

    .line 317
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->skipCurrentElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 350
    .end local v3    # "found":Z
    :catch_1
    move-exception v1

    .line 351
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 321
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_3
    const-string v8, "CommonProfile"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 322
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v0

    goto/16 :goto_1

    .line 323
    :cond_a
    const-string v8, "FeatureSet"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->isGlobalCupssGroup()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 326
    const/4 v8, 0x0

    const-string v9, "ntcode"

    invoke-interface {p2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "ntcodeValue":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 328
    invoke-direct {p0, p2, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->getMatchedFeatureByNtcode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v4

    .line 329
    .local v4, "ntcodeProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    if-eqz v4, :cond_1

    .line 332
    const/4 v8, 0x0

    invoke-virtual {p0, v2, v4, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfileIfNeeded(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    .line 334
    goto/16 :goto_2

    .line 341
    .end local v4    # "ntcodeProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .end local v5    # "ntcodeValue":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    goto/16 :goto_1

    .line 344
    :cond_c
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected tag: found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 354
    :cond_d
    iget-object v8, v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mCandidateProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    if-eqz v8, :cond_e

    iget-object v7, v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mCandidateProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    goto/16 :goto_3

    :cond_e
    iget-object v7, v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mDefaultProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    goto/16 :goto_3
.end method

.method public getValidProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Z
    .locals 15
    .param p1, "profile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    .prologue
    .line 378
    const/4 v10, 0x0

    .line 379
    .local v10, "p":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v2, 0x0

    .line 381
    .local v2, "found":Z
    const/4 v12, 0x0

    const-string v13, "mcc"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, "mccValue":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "mnc"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "mncValue":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "operator"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, "operatorValue":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "country"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "countryValue":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "gid"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "gidValue":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "spn"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 387
    .local v11, "spnValue":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "imsi"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "imsiValue":Ljava/lang/String;
    const-string v12, "true"

    const/4 v13, 0x0

    const-string v14, "default"

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 391
    .local v6, "isDefault":Z
    if-eqz v6, :cond_2

    .line 393
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mDefaultProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    if-nez v12, :cond_0

    .line 394
    const-string v12, "3"

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->setParseDataPrio(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v10

    .line 395
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mDefaultProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    .line 398
    :cond_0
    const/4 v2, 0x1

    .line 400
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    move v3, v2

    .line 451
    .end local v2    # "found":Z
    .local v3, "found":I
    :goto_0
    return v3

    .line 413
    .end local v3    # "found":I
    .restart local v2    # "found":Z
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->matchMccMnc(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 416
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mCandidateProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    if-nez v12, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 417
    if-nez v10, :cond_3

    .line 418
    const-string v12, "2"

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->setParseDataPrio(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v10

    .line 420
    :cond_3
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mCandidateProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    .line 421
    const/4 v2, 0x1

    .line 429
    :cond_4
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mBestMatchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    if-nez v12, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 431
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v4, v11, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->matchExtension(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 434
    const-string v12, "TelephonyAutoProfiling"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[getMatchedProfile] Set bestMatchedProfile  -MCC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x100

    invoke-static {v7, v14}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", MNC : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x100

    invoke-static {v8, v14}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", GID : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x100

    invoke-static {v4, v14}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", SPN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x100

    invoke-static {v11, v14}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", IMSI : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x100

    invoke-static {v5, v14}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v12, "1"

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->setParseDataPrio(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$MatchedProfile;->mBestMatchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    .line 445
    const/4 v2, 0x1

    :cond_6
    move v3, v2

    .line 451
    .restart local v3    # "found":I
    goto/16 :goto_0
.end method

.method protected final isGlobalCupssGroup()Z
    .locals 3

    .prologue
    .line 754
    sget-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->sIsGlobalCupss:Z

    if-nez v1, :cond_0

    .line 755
    const-string v1, "ro.lge.cupssgroup"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "cupssgroup":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "global"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->sIsGlobalCupss:Z

    .line 760
    .end local v0    # "cupssgroup":Ljava/lang/String;
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->sIsGlobalCupss:Z

    return v1
.end method

.method protected matchExtension(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;
    .param p2, "gidParsed"    # Ljava/lang/String;
    .param p3, "spnParsed"    # Ljava/lang/String;
    .param p4, "imsiParsed"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 172
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v4

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getGid()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "gid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getSpn()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 192
    .local v1, "gidLength":I
    if-eqz p2, :cond_3

    const-string v5, "00"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    .end local v1    # "gidLength":I
    :cond_3
    if-eqz v3, :cond_7

    .line 206
    if-eqz p3, :cond_4

    invoke-virtual {p0, p3, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 219
    invoke-virtual {p0, p4, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->matchImsi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    .line 200
    :cond_6
    if-eqz p2, :cond_3

    goto :goto_0

    .line 213
    :cond_7
    if-eqz p3, :cond_4

    goto :goto_0
.end method

.method protected matchImsi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "imsiParsed"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "found":Z
    if-eqz p2, :cond_3

    .line 236
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 238
    .local v3, "imsiLength":I
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 240
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "t":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 243
    .local v4, "len":I
    if-gt v4, v3, :cond_0

    .line 249
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 250
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 252
    .local v0, "c":C
    const/16 v7, 0x78

    if-eq v0, v7, :cond_2

    const/16 v7, 0x58

    if-eq v0, v7, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_2

    .line 257
    .end local v0    # "c":C
    :cond_1
    if-ne v2, v4, :cond_0

    .line 258
    const/4 v1, 0x1

    goto :goto_0

    .line 249
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "imsiLength":I
    .end local v4    # "len":I
    .end local v5    # "st":Ljava/util/StringTokenizer;
    .end local v6    # "t":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method protected matchMccMnc(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "simInfo"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;
    .param p2, "mccParsed"    # Ljava/lang/String;
    .param p3, "mncParsed"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "mnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x1

    .line 168
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 8
    .param p1, "commonProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .param p2, "matchedProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .param p3, "featureProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    .prologue
    .line 696
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .local v0, "cp":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    move-object v4, p2

    .line 697
    check-cast v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .local v4, "mp":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    move-object v1, p3

    .line 698
    check-cast v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .line 703
    .local v1, "fp":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    if-eqz v0, :cond_1

    .line 705
    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$100(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 706
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 708
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 709
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 710
    .local v2, "key":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$100(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 711
    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$100(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 716
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_3

    .line 718
    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$100(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 719
    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 721
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 722
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 723
    .restart local v2    # "key":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$100(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 724
    # getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$100(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 729
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-object v4
.end method

.method protected mergeProfileIfNeeded(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 1
    .param p1, "globalProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .param p2, "matchedProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .param p3, "featureProfile"    # Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_1

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    move-object p1, v0

    .line 108
    .end local p1    # "globalProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :cond_0
    :goto_0
    return-object p1

    .line 96
    .restart local p1    # "globalProfile":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :cond_1
    if-nez p2, :cond_2

    .line 99
    if-eqz p3, :cond_0

    .line 100
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object p1

    goto :goto_0
.end method

.method protected final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    :cond_1
    return-void
.end method

.method protected readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    new-instance v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    invoke-direct {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;-><init>()V

    .line 659
    .local v1, "p":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    :goto_0
    const-string v5, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "FeatureSet"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 660
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 663
    :cond_1
    :goto_1
    const-string v5, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 665
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "tag":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 672
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 673
    .local v3, "type":I
    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 674
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .end local v3    # "type":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 684
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public setParseDataPrio(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 5
    .param p1, "prio"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 362
    .local v1, "p":Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 370
    :goto_0
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 371
    check-cast v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string v3, "p"

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-object v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 366
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final skipCurrentElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 72
    const-string v0, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "profile"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 77
    const-string v0, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 83
    :cond_2
    const-string v0, "profile"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method
