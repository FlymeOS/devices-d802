.class public Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;
.super Ljava/lang/Object;
.source "WbxmlWapPushDocParser.java"


# instance fields
.field private mDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

.field private mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

.field private mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

.field private mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/lge/wapservice/push/message/WapPushDoc;

    invoke-direct {v0}, Lcom/lge/wapservice/push/message/WapPushDoc;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

    .line 53
    new-instance v0, Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-direct {v0}, Lcom/lge/wapservice/parser/WbxmlParser;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    .line 54
    return-void
.end method

.method private getAttributes()Ljava/util/HashMap;
    .locals 6
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
    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v1, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 246
    .local v0, "attributeCount":I
    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v3}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 248
    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v3, v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v4, v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v3, "WapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<getAttributes> AttributeName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v5, v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", AttributeValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v5, v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
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
    .line 226
    if-ne p2, p1, :cond_2

    .line 227
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v1}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v1}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 236
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

    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

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

    .line 239
    .local v0, "error":Ljava/lang/String;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseDocument(I)V
    .locals 4
    .param p1, "msgType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->getAttributes()Ljava/util/HashMap;

    move-result-object v0

    .line 134
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 135
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/lge/wapservice/push/message/SIMessage;

    invoke-direct {v1}, Lcom/lge/wapservice/push/message/SIMessage;-><init>()V

    iput-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    .line 140
    :cond_0
    const-string v1, "si-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v1, "si-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    .line 146
    :goto_0
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> SI_ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v3, v3, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v1, "href"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v1, "href"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    .line 155
    :goto_1
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> HREF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v3, v3, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v1, "created"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v1, "created"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/lge/wapservice/push/message/SIMessage;->CREATED:Ljava/lang/String;

    .line 164
    :goto_2
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> CREATED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v3, v3, Lcom/lge/wapservice/push/message/SIMessage;->CREATED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v1, "si-expires"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v1, "si-expires"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/lge/wapservice/push/message/SIMessage;->EXPIRES:Ljava/lang/String;

    .line 173
    :goto_3
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> EXPIRES = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v3, v3, Lcom/lge/wapservice/push/message/SIMessage;->EXPIRES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/lge/wapservice/push/message/SIMessage;->ACTION:Ljava/lang/String;

    .line 186
    :goto_4
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> ACTION = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v3, v3, Lcom/lge/wapservice/push/message/SIMessage;->ACTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT:Ljava/lang/String;

    .line 191
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> CONTENT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v3, v3, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v1}, Lcom/lge/wapservice/parser/WbxmlParser;->getEventType()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "indication"

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->match(IILjava/lang/String;)Z

    .line 222
    :goto_5
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v2, "NOT_USED"

    iput-object v2, v1, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v2, "NOT_USED"

    iput-object v2, v1, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    goto/16 :goto_1

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v2, "NOT_USED"

    iput-object v2, v1, Lcom/lge/wapservice/push/message/SIMessage;->CREATED:Ljava/lang/String;

    goto/16 :goto_2

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v2, "NOT_USED"

    iput-object v2, v1, Lcom/lge/wapservice/push/message/SIMessage;->EXPIRES:Ljava/lang/String;

    goto/16 :goto_3

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    const-string v2, "signal-medium"

    iput-object v2, v1, Lcom/lge/wapservice/push/message/SIMessage;->ACTION:Ljava/lang/String;

    goto :goto_4

    .line 196
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 197
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    if-nez v1, :cond_7

    .line 198
    new-instance v1, Lcom/lge/wapservice/push/message/SLMessage;

    invoke-direct {v1}, Lcom/lge/wapservice/push/message/SLMessage;-><init>()V

    iput-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    .line 202
    :cond_7
    const-string v1, "href"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    const-string v1, "href"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/lge/wapservice/push/message/SLMessage;->HREF:Ljava/lang/String;

    .line 208
    :goto_6
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> HREF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    iget-object v3, v3, Lcom/lge/wapservice/push/message/SLMessage;->HREF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 212
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/lge/wapservice/push/message/SLMessage;->ACTION:Ljava/lang/String;

    .line 217
    :goto_7
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> ACTION = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    iget-object v3, v3, Lcom/lge/wapservice/push/message/SLMessage;->ACTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 205
    :cond_8
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    const-string v2, "NOT_USED"

    iput-object v2, v1, Lcom/lge/wapservice/push/message/SLMessage;->HREF:Ljava/lang/String;

    goto :goto_6

    .line 214
    :cond_9
    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    const-string v2, "NOT_USED"

    iput-object v2, v1, Lcom/lge/wapservice/push/message/SLMessage;->ACTION:Ljava/lang/String;

    goto :goto_7

    .line 220
    :cond_a
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<parseDocument> unknown message type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private parseWapPushDoc(I)V
    .locals 8
    .param p1, "msgType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 82
    if-ne p1, v7, :cond_2

    .line 83
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v2

    const-string v3, "si"

    invoke-direct {p0, v2, v5, v3}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->match(IILjava/lang/String;)Z

    .line 85
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v1

    .line 86
    .local v1, "nextState":I
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "nextName":Ljava/lang/String;
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<parseWapPushDoc> nextName= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-ne v1, v5, :cond_0

    const-string v2, "indication"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->parseDocument(I)V

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<parseWapPushDoc> after parseDocument, nextState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,nextName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    if-eq v1, v6, :cond_1

    const-string v2, "si"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<parseWapPushDoc> info skip, nextState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,nextName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v1

    .line 110
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    const-string v2, "si"

    invoke-direct {p0, v1, v6, v2}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->match(IILjava/lang/String;)Z

    .line 114
    const-string v2, "WapService"

    const-string v3, "<parseWapPushDoc> SI parsing ended normally"

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "nextName":Ljava/lang/String;
    .end local v1    # "nextState":I
    :goto_1
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v7, v3}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->match(IILjava/lang/String;)Z

    .line 129
    :goto_2
    return-void

    .line 116
    :cond_2
    if-ne p1, v5, :cond_3

    .line 117
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v2

    const-string v3, "sl"

    invoke-direct {p0, v2, v5, v3}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->match(IILjava/lang/String;)Z

    .line 118
    invoke-direct {p0, p1}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->parseDocument(I)V

    .line 119
    iget-object v2, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v2}, Lcom/lge/wapservice/parser/WbxmlParser;->next()I

    move-result v2

    const-string v3, "sl"

    invoke-direct {p0, v2, v6, v3}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->match(IILjava/lang/String;)Z

    .line 121
    const-string v2, "WapService"

    const-string v3, "<parseWapPushDoc> SL parsing ended normally"

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    :cond_3
    invoke-direct {p0, p1}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->parseDocument(I)V

    goto :goto_2
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;I)Lcom/lge/wapservice/push/message/WapPushDoc;
    .locals 4
    .param p1, "bytesIn"    # Ljava/io/InputStream;
    .param p2, "msgType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->TAG_TABLE_CODEPAGE_SI:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->ATTRIBUTE_START_TABLE_CODEPAGE_SI:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->ATTRIBUTE_VALUE_TABLE_CODEPAGE_SI:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    invoke-virtual {v0, p1, v3}, Lcom/lge/wapservice/parser/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    iput-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    .line 70
    iput-object v3, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    .line 72
    invoke-direct {p0, p2}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->parseWapPushDoc(I)V

    .line 74
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

    iput p2, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    .line 75
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSIMessage:Lcom/lge/wapservice/push/message/SIMessage;

    iput-object v1, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    .line 76
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

    iget-object v1, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mSLMessage:Lcom/lge/wapservice/push/message/SLMessage;

    iput-object v1, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;

    .line 78
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

    return-object v0

    .line 61
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->TAG_TABLE_CODEPAGE_SL:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->ATTRIBUTE_START_TABLE_CODEPAGE_SL:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->mPullParser:Lcom/lge/wapservice/parser/WbxmlParser;

    sget-object v1, Lcom/lge/wapservice/push/wbxml/WbxmlTokenTable;->ATTRIBUTE_VALUE_TABLE_CODEPAGE_SL:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/lge/wapservice/parser/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    goto :goto_0
.end method
