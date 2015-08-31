.class public Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;
.super Ljava/lang/Object;
.source "WbxmlWapProvisioningDocParser.java"


# instance fields
.field private BrowserAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/Application;",
            ">;"
        }
    .end annotation
.end field

.field private EmailAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/Application;",
            ">;"
        }
    .end annotation
.end field

.field private MmsAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/Application;",
            ">;"
        }
    .end annotation
.end field

.field private SyncMLDMAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/Application;",
            ">;"
        }
    .end annotation
.end field

.field private SyncMLDSAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/Application;",
            ">;"
        }
    .end annotation
.end field

.field private input_level1:Ljava/lang/String;

.field private input_level2:Ljava/lang/String;

.field private input_level3:Ljava/lang/String;

.field private mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

.field private mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

.field private mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

.field private mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

.field private mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

.field private mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

.field private mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

.field private mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

.field private mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-direct {v0}, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    .line 76
    new-instance v0, Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-direct {v0}, Lcom/lge/wapservice/parser/WbxmlParser;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    .line 77
    return-void
.end method

.method private getAttributes()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 777
    .local v1, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 778
    .local v0, "attributeCount":I
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v3}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 779
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 780
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v3, v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v4, v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private match(IILjava/lang/String;)Z
    .locals 3
    .param p1, "nextState"    # I
    .param p2, "expectedState"    # I
    .param p3, "expectedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    if-ne p2, p1, :cond_2

    .line 759
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v1}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v1}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 768
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "error":Ljava/lang/String;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseCharacteristic()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-direct {p0}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    .line 119
    .local v0, "characteristicAttributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, "characteristicType":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v4}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v3

    .line 122
    .local v3, "nextState":I
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v4}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "nextName":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-string v4, "parm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "characteristic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    :cond_0
    const-string v4, "parm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-direct {p0, v1}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->parseParm(Ljava/lang/String;)V

    .line 137
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v4}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v3

    .line 138
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v4}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 128
    :cond_2
    const-string v4, "characteristic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    iput-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    .line 130
    iput-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    .line 131
    invoke-direct {p0}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->parseCharacteristic()V

    .line 133
    iput-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    goto :goto_1

    .line 141
    :cond_3
    const/4 v4, 0x3

    const-string v5, "characteristic"

    invoke-direct {p0, v3, v4, v5}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->match(IILjava/lang/String;)Z

    .line 142
    return-void
.end method

.method private parseParm(Ljava/lang/String;)V
    .locals 10
    .param p1, "characteristicType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x32

    const/16 v5, 0x10

    const/16 v8, 0x40

    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 146
    invoke-direct {p0}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    .line 147
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "parmName":Ljava/lang/String;
    const-string v3, "PXLOGICAL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    .line 151
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 152
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    if-nez v3, :cond_0

    .line 154
    new-instance v3, Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-direct {v3}, Lcom/lge/wapservice/prov/oma/Proxy;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    .line 156
    :cond_0
    const-string v3, "PROXY-ID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->proxy_id:Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->proxy_id:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->proxy_id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v9, :cond_1

    .line 161
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PROXY_ID_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->proxies:Ljava/util/HashMap;

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_2
    const-string v3, "NAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->name:Ljava/lang/String;

    .line 169
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_3

    .line 171
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PXLOGICAL_NAME_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 175
    :cond_3
    const-string v3, "STARTPAGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    .line 177
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 178
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v8, :cond_4

    .line 179
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_STARTPAGE_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 753
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v3}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "parm"

    invoke-direct {p0, v3, v4, v5}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->match(IILjava/lang/String;)Z

    .line 754
    return-void

    .line 195
    :cond_5
    const-string v3, "PXPHYSICAL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 197
    const-string v3, "PXLOGICAL"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 199
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 200
    const-string v3, "PXADDR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->address:Ljava/lang/String;

    .line 202
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->address:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 203
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x28

    if-le v3, v4, :cond_6

    .line 204
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PXADDR_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 208
    :cond_6
    const-string v3, "PXADDRTYPE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 209
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->addressType:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->addressType:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 213
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v4, "IPV4"

    iput-object v4, v3, Lcom/lge/wapservice/prov/oma/Proxy;->addressType:Ljava/lang/String;

    .line 216
    :cond_7
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->addressType:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 217
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->addressType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    if-le v3, v4, :cond_8

    .line 218
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PXADDRTYPE_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 222
    :cond_8
    const-string v3, "TO-NAPID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 223
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->to_napid:Ljava/lang/String;

    .line 224
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->to_napid:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 225
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->to_napid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_4

    .line 226
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_TO_NAPID_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 237
    :cond_9
    const-string v3, "PXAUTHINFO"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 238
    const-string v3, "PXLOGICAL"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 239
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 240
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 241
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    if-eqz v3, :cond_4

    .line 242
    const-string v3, "PXAUTH-ID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 243
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->user:Ljava/lang/String;

    .line 244
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->user:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 245
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->user:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v5, :cond_a

    .line 246
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PXAUTH_ID_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 250
    :cond_a
    const-string v3, "PXAUTH-PW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->password:Ljava/lang/String;

    .line 252
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->password:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 253
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v5, :cond_4

    .line 254
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PXAUTH_PW_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 261
    :cond_b
    const-string v3, "PORT"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 263
    const-string v3, "PXLOGICAL"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "PXPHYSICAL"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 265
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 266
    const-string v3, "PORTNBR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    if-eqz v3, :cond_4

    .line 269
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    .line 270
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 271
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    if-le v3, v4, :cond_4

    .line 272
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PORTNBR_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 277
    :cond_c
    const-string v3, "PXLOGICAL"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "NONE"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 279
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 280
    const-string v3, "PORTNBR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    if-eqz v3, :cond_4

    .line 283
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    .line 284
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    if-le v3, v4, :cond_4

    .line 286
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PORTNBR_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 291
    :cond_d
    const-string v3, "APPLICATION"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "APPADDR"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 293
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    if-eqz v3, :cond_4

    .line 295
    const-string v3, "PORTNBR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 296
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    goto/16 :goto_0

    .line 297
    :cond_e
    const-string v3, "SERVICE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 298
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    .line 299
    const-string v3, "WapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVICE port ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v5, v5, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 306
    :cond_f
    const-string v3, "NAPDEF"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 307
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    .line 308
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 309
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 310
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    if-nez v3, :cond_10

    .line 311
    new-instance v3, Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-direct {v3}, Lcom/lge/wapservice/prov/oma/AccessPoint;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    .line 313
    :cond_10
    const-string v3, "NAP-ADDRESS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 314
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->address:Ljava/lang/String;

    .line 315
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->address:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 316
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x64

    if-le v3, v4, :cond_4

    .line 317
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_NAP_ADDRESS_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 320
    :cond_11
    const-string v3, "NAPID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 321
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->napId:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->napId:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 323
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->napId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_12

    .line 324
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_NAPID_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 327
    :cond_12
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 329
    :cond_13
    const-string v3, "BEARER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 330
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->bearer:Ljava/lang/String;

    .line 331
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->bearer:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 332
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->bearer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v9, :cond_4

    .line 333
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_BEARER_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 337
    :cond_14
    const-string v3, "NAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 338
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->name:Ljava/lang/String;

    .line 339
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->name:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 340
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v8, :cond_15

    .line 341
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_NAME_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 344
    :cond_15
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 345
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 347
    :cond_16
    const-string v3, "NAP-ADDRTYPE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 348
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->nap_addresstype:Ljava/lang/String;

    .line 349
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->nap_addresstype:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 350
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->nap_addresstype:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa

    if-le v3, v4, :cond_4

    .line 351
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_NAP_ADDRESS_TYPE_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 354
    :cond_17
    const-string v3, "CALLTYPE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 355
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->calltype:Ljava/lang/String;

    .line 356
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->calltype:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 357
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->calltype:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x23

    if-le v3, v4, :cond_4

    .line 358
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_CALLTYPE_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 361
    :cond_18
    const-string v3, "LINGER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 362
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->linger:Ljava/lang/String;

    goto/16 :goto_0

    .line 366
    :cond_19
    const-string v3, "NAPAUTHINFO"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 367
    const-string v3, "NAPDEF"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 369
    const-string v3, "characteristicType"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 370
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 371
    const-string v3, "AUTHNAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 372
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->user:Ljava/lang/String;

    .line 373
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->user:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 374
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->user:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v8, :cond_4

    .line 375
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APN_AUTHNAME_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 378
    :cond_1a
    const-string v3, "AUTHSECRET"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 379
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->password:Ljava/lang/String;

    .line 380
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->password:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 381
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v8, :cond_4

    .line 382
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APN_AUTHSECRET_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 385
    :cond_1b
    const-string v3, "AUTHTYPE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 386
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->authType:Ljava/lang/String;

    .line 387
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->authType:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 388
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->authType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v9, :cond_4

    .line 389
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APN_AUTHTYPE_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 394
    :cond_1c
    const-string v3, "VALIDITY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 397
    const-string v3, "BOOTSTRAP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 398
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    .line 399
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 400
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 401
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->name:Ljava/lang/String;

    .line 402
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    if-nez v3, :cond_1d

    .line 403
    new-instance v3, Lcom/lge/wapservice/prov/oma/Bootstrap;

    invoke-direct {v3}, Lcom/lge/wapservice/prov/oma/Bootstrap;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    .line 404
    :cond_1d
    const-string v3, "NAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 405
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Bootstrap;->name:Ljava/lang/String;

    .line 406
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Bootstrap;->name:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 407
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Bootstrap;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_1e

    .line 408
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_BOOTSTRAP_NAME"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 412
    :cond_1e
    const-string v3, "PROVURL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 413
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Bootstrap;->provurl:Ljava/lang/String;

    .line 414
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Bootstrap;->provurl:Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 415
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Bootstrap;->provurl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mBootstrap:Lcom/lge/wapservice/prov/oma/Bootstrap;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x80

    if-le v3, v4, :cond_1f

    .line 416
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_BOOTSTRAP_PROVURL"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 420
    :cond_1f
    const-string v3, "CONTEXT-ALLOW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 424
    :cond_20
    const-string v3, "TO-PROXY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 429
    :cond_21
    const-string v3, "CLIENTIDENTITY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 431
    const-string v3, "VENDORCONFIG"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 432
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    .line 433
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 434
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 435
    const-string v3, "MCC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 436
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    goto/16 :goto_0

    .line 437
    :cond_22
    const-string v3, "MNC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 438
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    goto/16 :goto_0

    .line 440
    :cond_23
    const-string v3, "APPLICATION"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 441
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    .line 442
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 443
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 444
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    if-nez v3, :cond_24

    .line 445
    new-instance v3, Lcom/lge/wapservice/prov/oma/Application;

    invoke-direct {v3}, Lcom/lge/wapservice/prov/oma/Application;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    .line 447
    :cond_24
    const-string v3, "APPID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 449
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->appid:Ljava/lang/String;

    .line 450
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->appid:Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 451
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->appid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v5, :cond_25

    .line 452
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_APPID_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 457
    :cond_25
    const-string v3, "w2"

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 458
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->BrowserAppList:Ljava/util/ArrayList;

    if-nez v3, :cond_26

    .line 459
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->BrowserAppList:Ljava/util/ArrayList;

    .line 461
    :cond_26
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->BrowserAppList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w2"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    .line 463
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w2"

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->BrowserAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_27
    :goto_1
    const-string v3, "TO-NAPID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 501
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    .line 502
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 503
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_28

    .line 504
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_TONAPID_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 507
    :cond_28
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v4, v4, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_29
    const-string v3, "TO-PROXY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 510
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    .line 511
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 512
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_2a

    .line 513
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_TOPROXY_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 517
    :cond_2a
    const-string v3, "ADDR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 518
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    .line 519
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 520
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x46

    if-le v3, v4, :cond_2b

    .line 521
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_ADDR_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 525
    :cond_2b
    const-string v3, "NAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 526
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->name:Ljava/lang/String;

    .line 527
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->name:Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 528
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v8, :cond_2c

    .line 529
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_NAME_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 533
    :cond_2c
    const-string v3, "PROVIDER-ID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 534
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    .line 535
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 536
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_2d

    .line 537
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_PROVIDERID_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 541
    :cond_2d
    const-string v3, "FROM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 542
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->from:Ljava/lang/String;

    goto/16 :goto_0

    .line 465
    :cond_2e
    const-string v3, "w4"

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 466
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->MmsAppList:Ljava/util/ArrayList;

    if-nez v3, :cond_2f

    .line 467
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->MmsAppList:Ljava/util/ArrayList;

    .line 469
    :cond_2f
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->MmsAppList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w4"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    .line 471
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w4"

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->MmsAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 473
    :cond_30
    const-string v3, "143"

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "25"

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "110"

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 474
    :cond_31
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->EmailAppList:Ljava/util/ArrayList;

    if-nez v3, :cond_32

    .line 475
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->EmailAppList:Ljava/util/ArrayList;

    .line 477
    :cond_32
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->EmailAppList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    .line 479
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "email"

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->EmailAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 481
    :cond_33
    const-string v3, "w7"

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 482
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->SyncMLDMAppList:Ljava/util/ArrayList;

    if-nez v3, :cond_34

    .line 483
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->SyncMLDMAppList:Ljava/util/ArrayList;

    .line 485
    :cond_34
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->SyncMLDMAppList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w7"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    .line 487
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w7"

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->SyncMLDMAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 488
    :cond_35
    const-string v3, "w5"

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 490
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->SyncMLDSAppList:Ljava/util/ArrayList;

    if-nez v3, :cond_36

    .line 491
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->SyncMLDSAppList:Ljava/util/ArrayList;

    .line 493
    :cond_36
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->SyncMLDSAppList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w5"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    .line 495
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w5"

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->SyncMLDSAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 546
    :cond_37
    const-string v3, "APPADDR"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 547
    const-string v3, "APPLICATION"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 548
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 549
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 550
    const-string v3, "ADDR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 552
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    if-eqz v3, :cond_4

    .line 553
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    goto/16 :goto_0

    .line 557
    :cond_38
    const-string v3, "APPAUTH"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 558
    const-string v3, "APPLICATION"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 559
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 560
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 562
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    if-nez v3, :cond_39

    .line 564
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    .line 566
    :cond_39
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    if-nez v3, :cond_3a

    .line 568
    new-instance v3, Lcom/lge/wapservice/prov/oma/AppAuth;

    invoke-direct {v3}, Lcom/lge/wapservice/prov/oma/AppAuth;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    .line 569
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_3a
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    if-eqz v3, :cond_4

    .line 572
    const-string v3, "AAUTHLEVEL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 573
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    .line 574
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    if-eqz v3, :cond_3b

    .line 575
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_3b

    .line 576
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHLEVEL_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 581
    :cond_3b
    const-string v3, "AAUTHTYPE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 582
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    .line 583
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    if-eqz v3, :cond_3c

    .line 584
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_3c

    .line 585
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHTYPE_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 589
    :cond_3c
    const-string v3, "AAUTHNAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 590
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    .line 591
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    if-eqz v3, :cond_3d

    .line 592
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v8, :cond_3d

    .line 593
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHNAME_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 597
    :cond_3d
    const-string v3, "AAUTHSECRET"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 598
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    .line 599
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    if-eqz v3, :cond_3e

    .line 600
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_3e

    .line 601
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHSECRET_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 605
    :cond_3e
    const-string v3, "AAUTHDATA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 606
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    .line 607
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 608
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v8, :cond_4

    .line 609
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHDATA_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 617
    :cond_3f
    const-string v3, "ACCESS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 620
    const-string v3, "RESOURCE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 621
    const-string v3, "APPLICATION"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 622
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 623
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 624
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->app_res:Ljava/util/ArrayList;

    if-nez v3, :cond_40

    .line 626
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/lge/wapservice/prov/oma/Application;->app_res:Ljava/util/ArrayList;

    .line 628
    :cond_40
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    if-nez v3, :cond_41

    .line 630
    new-instance v3, Lcom/lge/wapservice/prov/oma/Resource;

    invoke-direct {v3}, Lcom/lge/wapservice/prov/oma/Resource;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    .line 631
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Application;->app_res:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_41
    const-string v3, "URI"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 635
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    .line 636
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    if-eqz v3, :cond_42

    .line 637
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x80

    if-le v3, v4, :cond_42

    .line 638
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_URI_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 642
    :cond_42
    const-string v3, "NAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 643
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Resource;->name:Ljava/lang/String;

    .line 644
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->name:Ljava/lang/String;

    if-eqz v3, :cond_43

    .line 645
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_43

    .line 646
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHNAME_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 650
    :cond_43
    const-string v3, "AACCEPT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 651
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Resource;->accept:Ljava/lang/String;

    .line 652
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->accept:Ljava/lang/String;

    if-eqz v3, :cond_44

    .line 653
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->accept:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v5, :cond_44

    .line 654
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AACCEPT_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 659
    :cond_44
    const-string v3, "AAUTHTYPE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 660
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Resource;->authtype:Ljava/lang/String;

    .line 661
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->authtype:Ljava/lang/String;

    if-eqz v3, :cond_45

    .line 662
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->authtype:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_45

    .line 663
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHTYPE_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 667
    :cond_45
    const-string v3, "AAUTHNAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 668
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Resource;->authname:Ljava/lang/String;

    .line 669
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->authname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v7, :cond_46

    .line 670
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHNAME_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 674
    :cond_46
    const-string v3, "AAUTHSECRET"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 675
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Resource;->authsercret:Ljava/lang/String;

    .line 676
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->authsercret:Ljava/lang/String;

    if-eqz v3, :cond_47

    .line 677
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->authsercret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v5, :cond_47

    .line 678
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_APP_AAUTHSECRET_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    .line 682
    :cond_47
    const-string v3, "STARTPAGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 683
    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 684
    .local v2, "startpage_url":Ljava/lang/String;
    if-nez v2, :cond_48

    .line 685
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    const-string v4, "STARTPAGE"

    iput-object v4, v3, Lcom/lge/wapservice/prov/oma/Resource;->startpage:Ljava/lang/String;

    goto/16 :goto_0

    .line 687
    :cond_48
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/Resource;->startpage:Ljava/lang/String;

    .line 688
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->startpage:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 689
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/Resource;->startpage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v3, v8, :cond_4

    .line 690
    const-string v3, "WapService"

    const-string v4, "WbxmlWapDocParser param length over MAX_STARTPAGE_LEN"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iput-boolean v6, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    goto/16 :goto_0

    .line 696
    .end local v2    # "startpage_url":Ljava/lang/String;
    :cond_49
    const-string v3, "WLAN"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 697
    const-string v3, "NAPDEF"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 698
    iput-object p1, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    .line 699
    const-string v3, "NONE"

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level3:Ljava/lang/String;

    .line 701
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v4, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->napId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v4, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->napId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->wlanList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v4, v4, Lcom/lge/wapservice/prov/oma/AccessPoint;->napId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->wifilist:Ljava/util/ArrayList;

    if-nez v3, :cond_4a

    .line 706
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->wifilist:Ljava/util/ArrayList;

    .line 708
    :cond_4a
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    if-nez v3, :cond_4b

    .line 709
    new-instance v3, Lcom/lge/wapservice/prov/oma/WiFi;

    invoke-direct {v3}, Lcom/lge/wapservice/prov/oma/WiFi;-><init>()V

    iput-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    .line 710
    iget-object v3, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    iget-object v3, v3, Lcom/lge/wapservice/prov/oma/AccessPoint;->wifilist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_4b
    const-string v3, "PRI-SSID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 713
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->pri_ssid:Ljava/lang/String;

    .line 719
    :cond_4c
    :goto_2
    const-string v3, "NETMODE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 720
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->netMode:Ljava/lang/String;

    .line 722
    :cond_4d
    const-string v3, "SECMODE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 723
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->secMode:Ljava/lang/String;

    .line 725
    :cond_4e
    const-string v3, "WPA-PRES-KEY-ASC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 726
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->wpa_pres_key_asc:Ljava/lang/String;

    .line 728
    :cond_4f
    const-string v3, "WPA-PRES-KEY-HEX"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 729
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->wpa_pres_key_hex:Ljava/lang/String;

    .line 731
    :cond_50
    const-string v3, "WEPKEYIND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 732
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->wepkeyind:Ljava/lang/String;

    .line 734
    :cond_51
    const-string v3, "WEPAUTHMODE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 735
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->wepauthmode:Ljava/lang/String;

    goto/16 :goto_0

    .line 714
    :cond_52
    const-string v3, "U-SSID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 715
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->u_ssid:Ljava/lang/String;

    goto/16 :goto_2

    .line 716
    :cond_53
    const-string v3, "H-SSID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 717
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->h_ssid:Ljava/lang/String;

    goto/16 :goto_2

    .line 738
    :cond_54
    const-string v3, "WEPKEY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 739
    const-string v3, "NAPDEF"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "WLAN"

    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->input_level2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 741
    const-string v3, "LENGTH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 742
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->wepkey_length:Ljava/lang/String;

    .line 744
    :cond_55
    const-string v3, "INDEX"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 745
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->wepkey_index:Ljava/lang/String;

    .line 747
    :cond_56
    const-string v3, "DATA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 748
    iget-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentWifi:Lcom/lge/wapservice/prov/oma/WiFi;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/lge/wapservice/prov/oma/WiFi;->wepkey_data:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private parseWapProvisioningDoc()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 95
    iget-object v2, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v2

    const-string v3, "wap-provisioningdoc"

    invoke-direct {p0, v2, v5, v3}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->match(IILjava/lang/String;)Z

    .line 97
    iget-object v2, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v1

    .line 98
    .local v1, "nextState":I
    iget-object v2, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "nextName":Ljava/lang/String;
    :goto_0
    if-ne v1, v5, :cond_0

    const-string v2, "characteristic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iput-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAccessPoint:Lcom/lge/wapservice/prov/oma/AccessPoint;

    .line 102
    iput-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentProxy:Lcom/lge/wapservice/prov/oma/Proxy;

    .line 103
    iput-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentApplication:Lcom/lge/wapservice/prov/oma/Application;

    .line 104
    iput-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentResource:Lcom/lge/wapservice/prov/oma/Resource;

    .line 105
    iput-object v4, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mCurrentAppAuth:Lcom/lge/wapservice/prov/oma/AppAuth;

    .line 106
    invoke-direct {p0}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->parseCharacteristic()V

    .line 108
    iget-object v2, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_0
    const/4 v2, 0x3

    const-string v3, "wap-provisioningdoc"

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->match(IILjava/lang/String;)Z

    .line 114
    iget-object v2, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->match(IILjava/lang/String;)Z

    .line 115
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .locals 4
    .param p1, "bytesIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->TAG_TABLE_CODEPAGE_0:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->TAG_TABLE_CODEPAGE_1:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->ATTRIBUTE_START_TABLE_CODEPAGE_0:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->ATTRIBUTE_START_TABLE_CODEPAGE_1:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->ATTRIBUTE_VALUE_TABLE_CODEPAGE_0:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/prov/wbxml/WbxmlTokenTable;->ATTRIBUTE_VALUE_TABLE_CODEPAGE_1:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->parseWapProvisioningDoc()V

    .line 91
    iget-object v0, p0, Lcom/lge/wapservice/prov/wbxml/WbxmlWapProvisioningDocParser;->mDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    return-object v0
.end method
