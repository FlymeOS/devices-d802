.class public Lcom/lge/wapservice/push/message/WapPushDoc;
.super Ljava/lang/Object;
.source "WapPushDoc.java"


# instance fields
.field public msgType:I

.field public parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

.field public parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsValidSIMessage()Z
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    .line 39
    .local v0, "isValid":Z
    iget v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 40
    iget-object v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v1, v1, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    const-string v2, "NOT_USED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v1, v1, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    const-string v2, "NOT_USED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v1, v1, Lcom/lge/wapservice/push/message/SIMessage;->CREATED:Ljava/lang/String;

    const-string v2, "NOT_USED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    const/4 v0, 0x1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v1, v1, Lcom/lge/wapservice/push/message/SIMessage;->EXPIRES:Ljava/lang/String;

    const-string v2, "NOT_USED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    const/4 v0, 0x1

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v1, v1, Lcom/lge/wapservice/push/message/SIMessage;->ACTION:Ljava/lang/String;

    const-string v2, "NOT_USED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    const/4 v0, 0x1

    .line 57
    :cond_4
    return v0
.end method

.method public containsValidSLMessage()Z
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    .line 63
    .local v0, "isValid":Z
    iget v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v1, v1, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    const-string v2, "NOT_USED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v1, v1, Lcom/lge/wapservice/push/message/SIMessage;->ACTION:Ljava/lang/String;

    const-string v2, "NOT_USED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 72
    :cond_1
    return v0
.end method

.method public isDocumentValid()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lge/wapservice/push/message/WapPushDoc;->containsValidSIMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/wapservice/push/message/WapPushDoc;->containsValidSLMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
