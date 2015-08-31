.class public final Lcom/lge/wapservice/prov/ProvisioningDocParse;
.super Ljava/lang/Object;
.source "ProvisioningDocParse.java"


# static fields
.field public static mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

.field public static mSettingTitle:Ljava/lang/String;

.field public static mSettingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingTitle:Ljava/lang/String;

    return-void
.end method

.method public static getParseMsg(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 53
    const-string v3, ""

    sput-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    .line 54
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->name:Ljava/lang/String;

    sput-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingTitle:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 58
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "prov_container":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-virtual {v3, p0}, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->checkDocumentValid(Landroid/content/Context;)V

    .line 62
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-virtual {v3}, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isDocumentValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 64
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-virtual {v3, p0}, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->initHni(Landroid/content/Context;)V

    .line 65
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidApn:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 68
    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidBrowser:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 74
    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidMMS:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 80
    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_2
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidEmail:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_3

    .line 86
    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDM:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_4

    .line 92
    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_4
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDS:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_5

    .line 98
    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_5
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidWiFi:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_6

    .line 104
    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    .line 110
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_8
    const-string v3, "WapService"

    const-string v4, "<WbxmlWapProvisioningDocParser> isDocumentValid return false"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    .line 123
    const/4 v3, 0x0

    .line 125
    :goto_1
    return v3

    .restart local v0    # "i":I
    :cond_9
    move v3, v4

    goto :goto_1
.end method

.method public static parseDoc([B)Z
    .locals 6
    .param p0, "wbxmlDocument"    # [B

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v1, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;

    invoke-direct {v1}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;-><init>()V

    .line 33
    .local v1, "parser":Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->parse(Ljava/io/InputStream;)Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    move-result-object v3

    sput-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    .line 34
    sget-object v3, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-boolean v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    if-nez v3, :cond_0

    .line 35
    const-string v3, "WapService"

    const-string v4, "<WbxmlWapProvisioningDocParser> Checking length of param is invalid..."

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :goto_0
    return v2

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "WapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<WbxmlWapProvisioningDocParser> XmlPullParserException error ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "WapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<WbxmlWapProvisioningDocParser> IOException error ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v2, "WapService"

    const-string v3, "<WbxmlWapProvisioningDocParser> parsing complete"

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, 0x1

    goto :goto_0
.end method
