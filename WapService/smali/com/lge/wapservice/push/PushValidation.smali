.class public Lcom/lge/wapservice/push/PushValidation;
.super Landroid/app/Service;
.source "PushValidation.java"


# static fields
.field private static mPushDocument:Lcom/lge/wapservice/push/message/WapPushDoc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static executePushReceiveValidation(Landroid/content/Context;I[BLjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgType"    # I
    .param p2, "document"    # [B
    .param p3, "serviceCenterAddress"    # Ljava/lang/String;
    .param p4, "originatingAddress"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/wapservice/push/PushValidation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "validationIntent":Landroid/content/Intent;
    const-string v1, "com.lge.wapservice.push.msgtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v1, "com.lge.wapservice.push.push-data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 126
    const-string v1, "com.lge.wapservice.push.servicecenteraddress"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "com.lge.wapservice.push.originatingaddress"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "com.lge.wapservice.push.simID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PushValidation] executePushReceiveValidation phoneID ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 54
    const/4 v6, 0x0

    .line 56
    .local v6, "simID":I
    const-string v7, "com.lge.wapservice.push.msgtype"

    const/4 v8, 0x5

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 58
    .local v2, "msgType":I
    const-string v7, "com.lge.wapservice.push.push-data"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 61
    .local v0, "document":[B
    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, p2}, Lcom/lge/wapservice/push/PushValidation;->stopSelf(I)V

    .line 111
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v7, "com.lge.wapservice.push.simID"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 66
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PushValidation] onStart sim_id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v4, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;

    invoke-direct {v4}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;-><init>()V

    .line 73
    .local v4, "parser":Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;
    :try_start_0
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Document length is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msgType is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v7, v2}, Lcom/lge/wapservice/push/wbxml/WbxmlWapPushDocParser;->parse(Ljava/io/InputStream;I)Lcom/lge/wapservice/push/message/WapPushDoc;

    move-result-object v7

    sput-object v7, Lcom/lge/wapservice/push/PushValidation;->mPushDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

    .line 79
    sget-object v7, Lcom/lge/wapservice/push/PushValidation;->mPushDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

    invoke-virtual {v7}, Lcom/lge/wapservice/push/message/WapPushDoc;->isDocumentValid()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    const-string v7, "WapService"

    const-string v8, "<performPushReceiveValidation> document validation success"

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v7, "com.lge.wapservice.push.servicecenteraddress"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "serviceCenterAddress":Ljava/lang/String;
    const-string v7, "com.lge.wapservice.push.originatingaddress"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "originatingAddress":Ljava/lang/String;
    sget-object v7, Lcom/lge/wapservice/push/PushValidation;->mPushDocument:Lcom/lge/wapservice/push/message/WapPushDoc;

    invoke-static {p0, v7, v5, v3, v6}, Lcom/lge/wapservice/push/PushHandler;->excutePushHandling(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/lge/wapservice/push/PushValidation;->stopSelf(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 102
    .end local v3    # "originatingAddress":Ljava/lang/String;
    .end local v5    # "serviceCenterAddress":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<performPushReceiveValidation> XmlPullParserException error ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0, p2}, Lcom/lge/wapservice/push/PushValidation;->stopSelf(I)V

    goto/16 :goto_0

    .line 84
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :try_start_1
    const-string v7, "WapService"

    const-string v8, "<performPushReceiveValidation> document validation failed"

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, p2}, Lcom/lge/wapservice/push/PushValidation;->stopSelf(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 106
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<performPushReceiveValidation> IOException error ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, p2}, Lcom/lge/wapservice/push/PushValidation;->stopSelf(I)V

    goto/16 :goto_0
.end method
