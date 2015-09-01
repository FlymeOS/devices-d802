.class public Lcom/lge/wapservice/push/PushHandler;
.super Ljava/lang/Object;
.source "PushHandler.java"


# static fields
.field private static OFF:I

.field private static ON:I

.field private static PUSH_SL_DISABLE:I

.field private static content:Ljava/lang/String;

.field private static createdDateTime:Ljava/util/Date;

.field private static currentDateTime:Ljava/util/Date;

.field private static currentSLOption:I

.field private static dbAction:I

.field private static dbParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static expiresDateTime:Ljava/util/Date;

.field private static href:Ljava/lang/String;

.field private static mOriginatingAddress:Ljava/lang/String;

.field private static mServiceCenterAddress:Ljava/lang/String;

.field private static mSimID:I

.field private static msgAction:I

.field private static operator:I

.field private static previousSLOption:I

.field private static siid:Ljava/lang/String;

.field private static tempDataTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/lge/wapservice/push/PushHandler;->ON:I

    .line 69
    sput v1, Lcom/lge/wapservice/push/PushHandler;->OFF:I

    .line 71
    const/4 v0, 0x2

    sput v0, Lcom/lge/wapservice/push/PushHandler;->PUSH_SL_DISABLE:I

    .line 73
    const/16 v0, 0xa

    sput v0, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    .line 74
    const/16 v0, 0x14

    sput v0, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 75
    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    sput-object v0, Lcom/lge/wapservice/push/PushHandler;->tempDataTime:Ljava/util/Date;

    .line 79
    invoke-static {}, Lcom/lge/wapservice/utils/LocaleManager;->getOperator()I

    move-result v0

    sput v0, Lcom/lge/wapservice/push/PushHandler;->operator:I

    .line 80
    sput v1, Lcom/lge/wapservice/push/PushHandler;->previousSLOption:I

    .line 81
    sput v1, Lcom/lge/wapservice/push/PushHandler;->currentSLOption:I

    return-void
.end method

.method private static buildDbParamMap(I)V
    .locals 4
    .param p0, "msgType"    # I

    .prologue
    .line 916
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    .line 920
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "SMSC_ADDR"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->mServiceCenterAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "ORIGIN_ADDR"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "SIM_ID"

    sget v2, Lcom/lge/wapservice/push/PushHandler;->mSimID:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 930
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "MSG_TYPE"

    const-string v2, "application/vnd.wap.sic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "SI_ID"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "BODY"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "CONTENT"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 935
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "CREATED"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    invoke-static {v2}, Lcom/lge/wapservice/push/PushHandler;->getUTC(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_1
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 937
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "EXPIRES"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    invoke-static {v2}, Lcom/lge/wapservice/push/PushHandler;->getUTC(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :cond_2
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "RECEIVED"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->currentDateTime:Ljava/util/Date;

    invoke-static {v2}, Lcom/lge/wapservice/push/PushHandler;->getUTC(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "ACTION"

    sget v2, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_3
    :goto_0
    return-void

    .line 941
    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 942
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "MSG_TYPE"

    const-string v2, "application/vnd.wap.slc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "BODY"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "CONTENT"

    sget-object v2, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    const-string v1, "ACTION"

    sget v2, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static excutePushHandling(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Lcom/lge/wapservice/push/message/WapPushDoc;
    .param p2, "serviceCenterAddress"    # Ljava/lang/String;
    .param p3, "originatingAddress"    # Ljava/lang/String;
    .param p4, "simID"    # I

    .prologue
    .line 91
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PushHandler] excutePushHandling sim_id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sput-object p2, Lcom/lge/wapservice/push/PushHandler;->mServiceCenterAddress:Ljava/lang/String;

    .line 95
    sput-object p3, Lcom/lge/wapservice/push/PushHandler;->mOriginatingAddress:Ljava/lang/String;

    .line 97
    sput p4, Lcom/lge/wapservice/push/PushHandler;->mSimID:I

    .line 100
    const/16 v0, 0xa

    sput v0, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    .line 101
    const/16 v0, 0x14

    sput v0, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 104
    iget v0, p1, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    invoke-static {p0, p1}, Lcom/lge/wapservice/push/PushHandler;->processSIMessage(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;)V

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    iget v0, p1, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 109
    invoke-static {p0, p1}, Lcom/lge/wapservice/push/PushHandler;->processSLMessage(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;)V

    goto :goto_0

    .line 112
    :cond_1
    const-string v0, "WapService"

    const-string v1, "<excutePushHandling> unknown msg-type"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getAction(Ljava/lang/String;)I
    .locals 2
    .param p0, "actionString"    # Ljava/lang/String;

    .prologue
    .line 846
    const/16 v0, 0xa

    .line 848
    .local v0, "action":I
    const-string v1, "signal-none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    const/16 v0, 0xa

    .line 862
    :cond_0
    :goto_0
    return v0

    .line 850
    :cond_1
    const-string v1, "signal-low"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "execute-low"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 851
    :cond_2
    const/16 v0, 0xb

    goto :goto_0

    .line 852
    :cond_3
    const-string v1, "signal-medium"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 853
    const/16 v0, 0xc

    goto :goto_0

    .line 854
    :cond_4
    const-string v1, "signal-high"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "execute-high"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 855
    :cond_5
    const/16 v0, 0xd

    goto :goto_0

    .line 856
    :cond_6
    const-string v1, "delete"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 857
    const/16 v0, 0xe

    goto :goto_0

    .line 858
    :cond_7
    const-string v1, "cache"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    const/16 v0, 0xf

    goto :goto_0
.end method

.method private static getDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 14
    .param p0, "dateTime"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xa

    const/16 v12, 0x8

    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 783
    const/4 v3, 0x0

    .line 784
    .local v3, "hour":I
    const/4 v4, 0x0

    .line 785
    .local v4, "minute":I
    const/4 v5, 0x0

    .line 786
    .local v5, "second":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 788
    .local v7, "len":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit16 v0, v8, -0x76c

    .line 789
    .local v0, "year":I
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 790
    .local v1, "month":I
    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 792
    .local v2, "day":I
    add-int/lit8 v8, v7, -0x8

    if-lt v8, v9, :cond_0

    .line 793
    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 794
    :cond_0
    add-int/lit8 v8, v7, -0xa

    if-lt v8, v9, :cond_1

    .line 795
    const/16 v8, 0xc

    invoke-virtual {p0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 796
    :cond_1
    add-int/lit8 v8, v7, -0xc

    if-lt v8, v9, :cond_2

    .line 797
    const/16 v8, 0xc

    const/16 v9, 0xe

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 809
    :cond_2
    const/16 v8, 0xb

    if-gt v1, v8, :cond_3

    const/16 v8, 0x1f

    if-gt v2, v8, :cond_3

    const/16 v8, 0x17

    if-gt v3, v8, :cond_3

    const/16 v8, 0x3b

    if-gt v4, v8, :cond_3

    const/16 v8, 0x3b

    if-le v5, v8, :cond_4

    .line 810
    :cond_3
    const-string v8, "WapService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<getDateTime> invalid month day hour minute second "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit16 v10, v0, 0x76c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    sget-object v6, Lcom/lge/wapservice/push/PushHandler;->tempDataTime:Ljava/util/Date;

    .line 823
    :goto_0
    return-object v6

    .line 816
    :cond_4
    new-instance v6, Ljava/util/Date;

    invoke-static/range {v0 .. v5}, Lcom/lge/wapservice/push/PushHandler;->getUTC(IIIIII)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 819
    .local v6, "instDateTime":Ljava/util/Date;
    const-string v8, "WapService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<getDateTime> yyyy-mm-dd,hh:mm:ss = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit16 v10, v0, 0x76c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getUTC(IIIIII)J
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 837
    const-wide/16 v0, 0x0

    .line 839
    .local v0, "timeMills":J
    invoke-static/range {p0 .. p5}, Ljava/util/Date;->UTC(IIIIII)J

    move-result-wide v0

    .line 841
    return-wide v0
.end method

.method private static getUTC(Ljava/util/Date;)J
    .locals 2
    .param p0, "dateTime"    # Ljava/util/Date;

    .prologue
    .line 827
    const-wide/16 v0, 0x0

    .line 829
    .local v0, "timeMills":J
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 833
    return-wide v0
.end method

.method public static isFlagSet(II)Z
    .locals 1
    .param p0, "flag"    # I
    .param p1, "flagMask"    # I

    .prologue
    .line 962
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpaceString(Ljava/lang/String;)Z
    .locals 7
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "found":Z
    const/4 v3, 0x0

    .line 868
    .local v3, "start":I
    const/4 v2, 0x0

    .line 869
    .local v2, "match":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 871
    .local v1, "length":I
    if-lez v1, :cond_2

    .line 872
    :goto_0
    if-eq v3, v1, :cond_0

    .line 873
    const-string v4, " "

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 874
    add-int/lit8 v2, v2, 0x1

    .line 878
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 881
    :cond_0
    if-ne v2, v1, :cond_1

    .line 882
    const/4 v0, 0x1

    .line 885
    :cond_1
    const-string v4, "WapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<isWhiteSpaceString> white space found="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_2
    return v0
.end method

.method private static loadURL(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "actionType"    # I

    .prologue
    const/4 v6, 0x0

    .line 892
    const-string v7, "WapService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<PushHandler> loadURL actionType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", url : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v7, "PushLaunchBrowser"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 895
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "LauncherRunning"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 896
    .local v2, "isIdle":Z
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 897
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v7, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v7}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v7

    and-int/2addr v7, p2

    sget-object v8, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v8}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v8

    if-ne v7, v8, :cond_0

    const/4 v3, 0x1

    .line 898
    .local v3, "isPushLowMsg":Z
    :goto_0
    const-string v7, "PushReceived"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 899
    const-string v7, "PushUrl"

    invoke-interface {v0, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 903
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 905
    .local v5, "uri":Landroid/net/Uri;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 907
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 908
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 910
    const-string v7, "PushReceived"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 911
    const-string v6, "PushUrl"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 912
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 913
    return-void

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "isPushLowMsg":Z
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v6

    .line 897
    goto :goto_0

    .line 903
    .restart local v3    # "isPushLowMsg":Z
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1
.end method

.method public static processAction(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Lcom/lge/wapservice/push/message/WapPushDoc;
    .param p2, "action"    # I

    .prologue
    .line 726
    const/4 v0, 0x0

    .line 728
    .local v0, "actionType":I
    iget v1, p1, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 729
    packed-switch p2, :pswitch_data_0

    .line 747
    const/high16 v0, 0x70000

    .line 752
    :goto_0
    sget v1, Lcom/lge/wapservice/push/PushHandler;->mSimID:I

    invoke-static {p0, p1, v0, v1}, Lcom/lge/wapservice/push/PushNotification;->createNotification(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;II)V

    .line 780
    :cond_0
    :goto_1
    return-void

    .line 731
    :pswitch_0
    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_NONE:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v1}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v0

    .line 732
    goto :goto_0

    .line 735
    :pswitch_1
    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v1}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v0

    .line 736
    goto :goto_0

    .line 739
    :pswitch_2
    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_MEDIUM:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v1}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v0

    .line 740
    goto :goto_0

    .line 743
    :pswitch_3
    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_ACTION_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v1}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v0

    .line 744
    goto :goto_0

    .line 755
    :cond_1
    iget v1, p1, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 756
    packed-switch p2, :pswitch_data_1

    .line 764
    :pswitch_4
    const/high16 v0, 0x70000

    .line 769
    :goto_2
    sget v1, Lcom/lge/wapservice/push/PushHandler;->mSimID:I

    invoke-static {p0, p1, v0, v1}, Lcom/lge/wapservice/push/PushNotification;->createNotification(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;II)V

    .line 772
    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/lge/wapservice/push/PushHandler;->isFlagSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    sget-object v1, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/lge/wapservice/push/PushHandler;->loadURL(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 758
    :pswitch_5
    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_LOW:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v1}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v0

    .line 759
    goto :goto_2

    .line 761
    :pswitch_6
    sget-object v1, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_EXECUTE_HIGH:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v1}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v0

    .line 762
    goto :goto_2

    .line 777
    :cond_2
    const-string v1, "WapService"

    const-string v2, "<processAction> action not handled: unknown msg-type"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 729
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 756
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static processSIMessage(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Lcom/lge/wapservice/push/message/WapPushDoc;

    .prologue
    .line 123
    invoke-static/range {p0 .. p0}, Lcom/lge/wapservice/push/PushExpiration;->executePushDeletionForExpired(Landroid/content/Context;)V

    .line 128
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/DBManager;->isMaxCountReached(Landroid/content/Context;I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 130
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: database full"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v15, -0x1

    .line 133
    .local v15, "foundMsgId":I
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v7, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "_id"

    aput-object v23, v7, v22

    .line 134
    .local v7, "PROJECTION":[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "(lgeMsgType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") AND ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "lgeSiid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v8, 0x0

    .line 137
    .local v8, "WHERE":Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v8, v1, v2}, Lcom/lge/wapservice/utils/DBManager;->isDataExist(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 139
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> Query :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_4

    .line 144
    const-string v5, "(lgeMsgType=1) OR (lgeMsgType=\'2\')"

    const/4 v5, 0x0

    .line 145
    .local v5, "GETFIRSTID_WHERE":Ljava/lang/String;
    const-string v6, "_id ASC"

    .line 148
    .local v6, "ORDER":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v7, v5, v1, v6}, Lcom/lge/wapservice/utils/DBManager;->isDataExist(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 150
    .local v12, "delID":I
    sget-object v22, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v12

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 153
    .local v17, "mDeleteUri":Landroid/net/Uri;
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> del uri= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " query= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/lge/wapservice/utils/DBManager;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 157
    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.lge.message.transaction.MESSAGE_STATUS_UPDATE"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> continue "

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v5    # "GETFIRSTID_WHERE":Ljava/lang/String;
    .end local v6    # "ORDER":Ljava/lang/String;
    .end local v7    # "PROJECTION":[Ljava/lang/String;
    .end local v8    # "WHERE":Ljava/lang/String;
    .end local v12    # "delID":I
    .end local v15    # "foundMsgId":I
    .end local v17    # "mDeleteUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_SIID:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 173
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushHandler;->isWhiteSpaceString(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 174
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 175
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x80

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 176
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x80

    invoke-direct/range {v22 .. v25}, Ljava/lang/String;-><init>([CII)V

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    .line 183
    :goto_1
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> si-id is null, si-id replaced with href"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_2
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_HREF:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 217
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushHandler;->isWhiteSpaceString(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 219
    :cond_2
    const-string v22, ""

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    .line 221
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message accept: href is null"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3
    :goto_3
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_CONTENT:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    const/16 v23, 0x1e

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 253
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 255
    const v22, 0x7f070022

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    .line 290
    :goto_4
    new-instance v22, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->currentDateTime:Ljava/util/Date;

    .line 292
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> current date&time(GMT): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/lge/wapservice/push/PushHandler;->currentDateTime:Ljava/util/Date;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> current date&time(Locale): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/lge/wapservice/push/PushHandler;->currentDateTime:Ljava/util/Date;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->CREATED:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_16

    .line 297
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->CREATED:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushHandler;->getDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    .line 299
    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->tempDataTime:Ljava/util/Date;

    invoke-virtual/range {v22 .. v23}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v22

    if-nez v22, :cond_15

    .line 301
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: invalid created time"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_5
    return-void

    .line 164
    .restart local v7    # "PROJECTION":[Ljava/lang/String;
    .restart local v8    # "WHERE":Ljava/lang/String;
    .restart local v15    # "foundMsgId":I
    :cond_4
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> Continue update foundMsgId :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    .end local v7    # "PROJECTION":[Ljava/lang/String;
    .end local v8    # "WHERE":Ljava/lang/String;
    .end local v15    # "foundMsgId":I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    goto/16 :goto_1

    .line 185
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 186
    .local v10, "currTimeMillis":Ljava/lang/Long;
    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "si-id_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    goto/16 :goto_2

    .line 190
    .end local v10    # "currTimeMillis":Ljava/lang/Long;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    goto/16 :goto_2

    .line 193
    :cond_8
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_SIID:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 195
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 197
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: si-id is null"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 199
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x80

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    .line 200
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x80

    invoke-direct/range {v22 .. v25}, Ljava/lang/String;-><init>([CII)V

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    goto/16 :goto_2

    .line 203
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    goto/16 :goto_2

    .line 208
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->SI_ID:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    goto/16 :goto_2

    .line 222
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x400

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    .line 224
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> message discard: href(length="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") exceed max length"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 228
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    goto/16 :goto_3

    .line 231
    :cond_e
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_HREF:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 233
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 235
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: href is null"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 237
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x400

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_10

    .line 239
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> message discard: href(length="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") exceed max length"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 243
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    goto/16 :goto_3

    .line 258
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    goto/16 :goto_4

    .line 261
    :cond_12
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_CONTENT:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    const/16 v23, 0x28

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 263
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 265
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    goto/16 :goto_4

    .line 268
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    goto/16 :goto_4

    .line 273
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    goto/16 :goto_4

    .line 306
    :cond_15
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> created date&time(GMT): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> created date&time(Locale): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->EXPIRES:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_21

    .line 315
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->EXPIRES:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushHandler;->getDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    .line 317
    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->tempDataTime:Ljava/util/Date;

    invoke-virtual/range {v22 .. v23}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v22

    if-nez v22, :cond_17

    .line 319
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: invalid expires time"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 311
    :cond_16
    const/16 v22, 0x0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    goto :goto_6

    .line 325
    :cond_17
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> expires date&time(GMT): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v22, "WapService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<processSIMessage> expires date&time(Locale): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_7
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_VALIDATING_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    sget v23, Lcom/lge/wapservice/push/PushHandler;->ON:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 339
    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    if-nez v22, :cond_22

    .line 341
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> no created time"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_18
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_VALIDATING_EXPIRE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    sget v23, Lcom/lge/wapservice/push/PushHandler;->ON:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    .line 353
    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    if-nez v22, :cond_23

    .line 355
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> no expires time"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->ACTION:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1a

    .line 371
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->ACTION:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushHandler;->getAction(Ljava/lang/String;)I

    move-result v22

    sput v22, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    .line 375
    :cond_1a
    const/4 v14, 0x1

    .line 376
    .local v14, "existCreatedTime":Z
    const/4 v9, 0x1

    .line 377
    .local v9, "checkExplicitlyCreatedTime":Z
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/DBManager;->getCount(Landroid/content/Context;I)I

    move-result v11

    .line 378
    .local v11, "dbCount":I
    const/4 v15, -0x1

    .line 379
    .restart local v15    # "foundMsgId":I
    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1b

    .line 380
    if-lez v11, :cond_1b

    .line 381
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v7, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "_id"

    aput-object v23, v7, v22

    .line 382
    .restart local v7    # "PROJECTION":[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "(lgeMsgType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") AND ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "lgeSiid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v8, 0x0

    .line 385
    .restart local v8    # "WHERE":Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v8, v1, v2}, Lcom/lge/wapservice/utils/DBManager;->isDataExist(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 389
    .end local v7    # "PROJECTION":[Ljava/lang/String;
    .end local v8    # "WHERE":Ljava/lang/String;
    :cond_1b
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_NULL_CREATED_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    sget v23, Lcom/lge/wapservice/push/PushHandler;->ON:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SIMessage;->CREATED:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "NOT_USED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 391
    const/4 v14, 0x0

    .line 393
    :cond_1c
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_CHECK_EXPLICITYLY_CREATE_TIME:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    sget v23, Lcom/lge/wapservice/push/PushHandler;->ON:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 394
    const/4 v9, 0x0

    .line 396
    :cond_1d
    if-ltz v15, :cond_28

    if-nez v9, :cond_1e

    if-eqz v14, :cond_28

    .line 397
    :cond_1e
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v7, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "lgeCreated"

    aput-object v23, v7, v22

    .line 398
    .restart local v7    # "PROJECTION":[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "(lgeMsgType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") AND ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "lgeSiid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 402
    .restart local v8    # "WHERE":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    #invoke-static {v0, v7, v8, v1}, Lcom/lge/wapservice/utils/DBManager;->getData(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #move-result-object v19

    const/16 v19, 0x0

    .line 404
    .local v19, "retData":Ljava/lang/String;
    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 405
    .local v20, "storedDateTime":Ljava/lang/Long;
    if-eqz v19, :cond_1f

    .line 406
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 412
    :cond_1f
    if-eqz v20, :cond_24

    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    if-eqz v22, :cond_20

    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    if-eqz v22, :cond_24

    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushHandler;->getUTC(Ljava/util/Date;)J

    move-result-wide v22

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sub-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_24

    .line 414
    :cond_20
    const/16 v22, 0x17

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 416
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: the received SI is older than stored SI in DB"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v7    # "PROJECTION":[Ljava/lang/String;
    .end local v8    # "WHERE":Ljava/lang/String;
    .end local v19    # "retData":Ljava/lang/String;
    .end local v20    # "storedDateTime":Ljava/lang/Long;
    :goto_8
    sget v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    packed-switch v22, :pswitch_data_0

    .line 557
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discarded: unknown action"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 332
    .end local v9    # "checkExplicitlyCreatedTime":Z
    .end local v11    # "dbCount":I
    .end local v14    # "existCreatedTime":Z
    .end local v15    # "foundMsgId":I
    :cond_21
    const/16 v22, 0x0

    sput-object v22, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    goto/16 :goto_7

    .line 344
    :cond_22
    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->createdDateTime:Ljava/util/Date;

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->currentDateTime:Ljava/util/Date;

    invoke-virtual/range {v22 .. v23}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v22

    if-lez v22, :cond_18

    .line 346
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: created time is later than current time"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 358
    :cond_23
    sget-object v22, Lcom/lge/wapservice/push/PushHandler;->expiresDateTime:Ljava/util/Date;

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->currentDateTime:Ljava/util/Date;

    invoke-virtual/range {v22 .. v23}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v22

    if-gez v22, :cond_19

    .line 360
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: expires time is less than current time"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 427
    .restart local v7    # "PROJECTION":[Ljava/lang/String;
    .restart local v8    # "WHERE":Ljava/lang/String;
    .restart local v9    # "checkExplicitlyCreatedTime":Z
    .restart local v11    # "dbCount":I
    .restart local v14    # "existCreatedTime":Z
    .restart local v15    # "foundMsgId":I
    .restart local v19    # "retData":Ljava/lang/String;
    .restart local v20    # "storedDateTime":Ljava/lang/Long;
    :cond_24
    sget v22, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    const/16 v23, 0xe

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_25

    .line 428
    const/16 v22, 0x16

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 430
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: the received SI action is delete"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 436
    :cond_25
    sget v22, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_27

    .line 437
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_SIGNAL_NONE_MESSAGE:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    sget v23, Lcom/lge/wapservice/push/PushHandler;->ON:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_26

    .line 438
    const/16 v22, 0x15

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 440
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message update: the received SI action is signal-none"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 443
    :cond_26
    const/16 v22, 0x17

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 445
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: the received SI action is signal-none"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 453
    :cond_27
    const/16 v22, 0x15

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 455
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message update: the received SI is more recent one than stored SI in DB"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 465
    .end local v7    # "PROJECTION":[Ljava/lang/String;
    .end local v8    # "WHERE":Ljava/lang/String;
    .end local v19    # "retData":Ljava/lang/String;
    .end local v20    # "storedDateTime":Ljava/lang/Long;
    :cond_28
    sget v22, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    const/16 v23, 0xe

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_29

    .line 466
    const/16 v22, 0x16

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 468
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: the received SI action is delete"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 474
    :cond_29
    sget v22, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2b

    .line 475
    sget-object v22, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_ACCEPTING_SIGNAL_NONE_MESSAGE:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v22

    sget v23, Lcom/lge/wapservice/push/PushHandler;->ON:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a

    .line 476
    const/16 v22, 0x14

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 478
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message insert: the received SI action is signal-none"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 481
    :cond_2a
    const/16 v22, 0x17

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 483
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discard: the received SI action is signal-none"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 491
    :cond_2b
    const/16 v22, 0x14

    sput v22, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 493
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message insert: new SI received"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 503
    :pswitch_0
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushHandler;->buildDbParamMap(I)V

    .line 504
    const/16 v22, 0x1

    sget-object v23, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v24, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/lge/wapservice/utils/DBManager;->insert(Landroid/content/Context;ILandroid/net/Uri;Ljava/util/HashMap;)Landroid/net/Uri;

    .line 506
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message inserted: PUSH_MSG_INSERT"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget v22, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/lge/wapservice/push/PushHandler;->processAction(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;I)V

    goto/16 :goto_5

    .line 512
    :pswitch_1
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/lge/wapservice/push/PushHandler;->buildDbParamMap(I)V

    .line 513
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "(lgeMsgType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") AND ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "lgeSiid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v21, 0x0

    .line 516
    .local v21, "update_where":Ljava/lang/String;
    sget-object v22, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/lge/wapservice/utils/DBManager;->update(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 518
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message updated: PUSH_MSG_UPDATE"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget v22, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/lge/wapservice/push/PushHandler;->processAction(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;I)V

    goto/16 :goto_5

    .line 524
    .end local v21    # "update_where":Ljava/lang/String;
    :pswitch_2
    const/16 v18, -0x1

    .line 526
    .local v18, "msgId":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_9
    move/from16 v0, v16

    if-ge v0, v11, :cond_2e

    .line 527
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v7, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "_id"

    aput-object v23, v7, v22

    .line 529
    .restart local v7    # "PROJECTION":[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "(lgeMsgType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") AND ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "lgeSiid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/lge/wapservice/push/PushHandler;->siid:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\')"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v13, 0x0

    .line 531
    .local v13, "del_where":Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v7, v13, v1, v2}, Lcom/lge/wapservice/utils/DBManager;->isDataExist(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 532
    if-ltz v18, :cond_2c

    .line 534
    sget-object v22, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 535
    .local v4, "DeleteUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-static {v0, v4, v13}, Lcom/lge/wapservice/utils/DBManager;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 537
    .end local v4    # "DeleteUri":Landroid/net/Uri;
    :cond_2c
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/DBManager;->getCount(Landroid/content/Context;I)I

    move-result v22

    if-nez v22, :cond_2d

    .line 538
    invoke-static/range {p0 .. p0}, Lcom/lge/wapservice/push/PushNotification;->clearNotification(Landroid/content/Context;)V

    .line 526
    :cond_2d
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 542
    .end local v7    # "PROJECTION":[Ljava/lang/String;
    .end local v13    # "del_where":Ljava/lang/String;
    :cond_2e
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message deleted: PUSH_MSG_DELETE"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 551
    .end local v16    # "i":I
    .end local v18    # "msgId":I
    :pswitch_3
    const-string v22, "WapService"

    const-string v23, "<processSIMessage> message discarded: PUSH_MSG_IGNORE"

    invoke-static/range {v22 .. v23}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 501
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static processSLMessage(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "document"    # Lcom/lge/wapservice/push/message/WapPushDoc;

    .prologue
    .line 569
    sget-object v14, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v14}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v14

    sget v15, Lcom/lge/wapservice/push/PushHandler;->OFF:I

    if-eq v14, v15, :cond_0

    sget-object v14, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_OPTION_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v14}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v14

    sget v15, Lcom/lge/wapservice/push/PushHandler;->PUSH_SL_DISABLE:I

    if-ne v14, v15, :cond_1

    .line 572
    :cond_0
    const-string v14, "WapService"

    const-string v15, "<processSLMessage> message discard: ignore receiving SL"

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/lge/wapservice/push/PushExpiration;->executePushDeletionForExpired(Landroid/content/Context;)V

    .line 585
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/lge/wapservice/utils/DBManager;->isMaxCountReached(Landroid/content/Context;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 587
    const-string v14, "WapService"

    const-string v15, "<processSLMessage> database full : message delete and continue.."

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v14, 0x1

    new-array v4, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "_id"

    aput-object v15, v4, v14

    .line 591
    .local v4, "PROJECTION":[Ljava/lang/String;
    const-string v2, "(lgeMsgType=1) OR (lgeMsgType=\'2\')"

    const/4 v2, 0x0

    .line 592
    .local v2, "GETFIRSTID_WHERE":Ljava/lang/String;
    const-string v3, "_id ASC"

    .line 593
    .local v3, "ORDER":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v2, v14, v3}, Lcom/lge/wapservice/utils/DBManager;->isDataExist(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 595
    .local v9, "delID":I
    sget-object v14, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 598
    .local v12, "mDeleteUri":Landroid/net/Uri;
    const-string v14, "WapService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<processSIMessage> del uri= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " query= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v14}, Lcom/lge/wapservice/utils/DBManager;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 607
    .end local v2    # "GETFIRSTID_WHERE":Ljava/lang/String;
    .end local v3    # "ORDER":Ljava/lang/String;
    .end local v4    # "PROJECTION":[Ljava/lang/String;
    .end local v9    # "delID":I
    .end local v12    # "mDeleteUri":Landroid/net/Uri;
    :cond_2
    sget-object v14, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_CONTENT:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v14}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v14

    const/16 v15, 0x1e

    if-ne v14, v15, :cond_3

    .line 609
    const v14, 0x7f070022

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    .line 628
    :goto_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;

    iget-object v14, v14, Lcom/lge/wapservice/push/message/SLMessage;->HREF:Ljava/lang/String;

    const-string v15, "NOT_USED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 630
    const-string v14, "WapService"

    const-string v15, "<processSLMessage> message discard: href is null"

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 610
    :cond_3
    sget-object v14, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_METHOD_CONTENT:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v14}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v14

    const/16 v15, 0x28

    if-ne v14, v15, :cond_5

    .line 611
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;

    iget-object v14, v14, Lcom/lge/wapservice/push/message/SLMessage;->CONTENT:Ljava/lang/String;

    const-string v15, "NOT_USED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 613
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSIMsg:Lcom/lge/wapservice/push/message/SIMessage;

    iget-object v14, v14, Lcom/lge/wapservice/push/message/SIMessage;->HREF:Ljava/lang/String;

    sput-object v14, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    goto :goto_1

    .line 616
    :cond_4
    const v14, 0x7f070022

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    goto :goto_1

    .line 621
    :cond_5
    const v14, 0x7f070022

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/lge/wapservice/push/PushHandler;->content:Ljava/lang/String;

    goto :goto_1

    .line 632
    :cond_6
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;

    iget-object v14, v14, Lcom/lge/wapservice/push/message/SLMessage;->HREF:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x400

    if-le v14, v15, :cond_7

    .line 634
    const-string v14, "WapService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<processSLMessage> message discard: href(length="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lge/wapservice/push/message/SLMessage;->HREF:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") exceed max length"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 638
    :cond_7
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;

    iget-object v14, v14, Lcom/lge/wapservice/push/message/SLMessage;->HREF:Ljava/lang/String;

    sput-object v14, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    .line 642
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;

    iget-object v14, v14, Lcom/lge/wapservice/push/message/SLMessage;->ACTION:Ljava/lang/String;

    const-string v15, "NOT_USED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 643
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->parsedSLMsg:Lcom/lge/wapservice/push/message/SLMessage;

    iget-object v14, v14, Lcom/lge/wapservice/push/message/SLMessage;->ACTION:Ljava/lang/String;

    invoke-static {v14}, Lcom/lge/wapservice/push/PushHandler;->getAction(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    .line 648
    :cond_8
    sget-object v14, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_HANDLING_PUSH_SL_CACHE:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v14}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v14

    sget v15, Lcom/lge/wapservice/push/PushHandler;->OFF:I

    if-ne v14, v15, :cond_9

    .line 649
    sget v14, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    const/16 v15, 0xf

    if-ne v14, v15, :cond_9

    .line 651
    const-string v14, "WapService"

    const-string v15, "<processSLMessage> message discard: action = cache"

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 659
    :cond_9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/lge/wapservice/utils/DBManager;->getCount(Landroid/content/Context;I)I

    move-result v8

    .line 660
    .local v8, "dbCount":I
    const/4 v10, -0x1

    .line 661
    .local v10, "foundMsgId":I
    if-lez v8, :cond_c

    .line 662
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_c

    .line 665
    const/4 v14, 0x1

    new-array v4, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "_id"

    aput-object v15, v4, v14

    .line 666
    .restart local v4    # "PROJECTION":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(lgeMsgType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") AND ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "body"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\')"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v6, 0x0

    .line 667
    .local v6, "WHERE":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v14, v15}, Lcom/lge/wapservice/utils/DBManager;->isDataExist(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 668
    if-ltz v10, :cond_a

    .line 670
    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "lgeAction"

    aput-object v15, v5, v14

    .line 672
    .local v5, "Projection":[Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    #invoke-static {v0, v5, v6, v14}, Lcom/lge/wapservice/utils/DBManager;->getData(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #move-result-object v7

    const/4 v7, 0x0

    .line 673
    .local v7, "dbActionString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    sget v14, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-lt v14, v15, :cond_b

    .line 674
    const/16 v14, 0x15

    sput v14, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    .line 662
    .end local v5    # "Projection":[Ljava/lang/String;
    .end local v7    # "dbActionString":Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 676
    .restart local v5    # "Projection":[Ljava/lang/String;
    .restart local v7    # "dbActionString":Ljava/lang/String;
    :cond_b
    const/16 v14, 0x17

    sput v14, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    goto :goto_3

    .line 685
    .end local v4    # "PROJECTION":[Ljava/lang/String;
    .end local v5    # "Projection":[Ljava/lang/String;
    .end local v6    # "WHERE":Ljava/lang/String;
    .end local v7    # "dbActionString":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_c
    sget v14, Lcom/lge/wapservice/push/PushHandler;->dbAction:I

    packed-switch v14, :pswitch_data_0

    .line 718
    :pswitch_0
    const-string v14, "WapService"

    const-string v15, "<processSLMessage> message discarded: unknown action"

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 687
    :pswitch_1
    const/4 v14, 0x2

    invoke-static {v14}, Lcom/lge/wapservice/push/PushHandler;->buildDbParamMap(I)V

    .line 688
    const/4 v14, 0x1

    sget-object v15, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v16, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Lcom/lge/wapservice/utils/DBManager;->insert(Landroid/content/Context;ILandroid/net/Uri;Ljava/util/HashMap;)Landroid/net/Uri;

    .line 690
    const-string v14, "WapService"

    const-string v15, "<processSLMessage> message inserted: PUSH_MSG_INSERT"

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    sget v14, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14}, Lcom/lge/wapservice/push/PushHandler;->processAction(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;I)V

    goto/16 :goto_0

    .line 696
    :pswitch_2
    const/4 v14, 0x2

    invoke-static {v14}, Lcom/lge/wapservice/push/PushHandler;->buildDbParamMap(I)V

    .line 698
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(lgeMsgType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/lge/wapservice/push/message/WapPushDoc;->msgType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") AND ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "body"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/lge/wapservice/push/PushHandler;->href:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\')"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v13, 0x0

    .line 699
    .local v13, "update_where":Ljava/lang/String;
    sget-object v14, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v15, Lcom/lge/wapservice/push/PushHandler;->dbParamMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v13, v15}, Lcom/lge/wapservice/utils/DBManager;->update(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 701
    const-string v14, "WapService"

    const-string v15, "<processSLMessage> message updated: PUSH_MSG_UPDATE"

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    sget v14, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14}, Lcom/lge/wapservice/push/PushHandler;->processAction(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;I)V

    goto/16 :goto_0

    .line 708
    .end local v13    # "update_where":Ljava/lang/String;
    :pswitch_3
    const-string v14, "WapService"

    const-string v15, "<processSLMessage> message discarded: PUSH_MSG_IGNORE"

    invoke-static {v14, v15}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 713
    :pswitch_4
    sget v14, Lcom/lge/wapservice/push/PushHandler;->msgAction:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14}, Lcom/lge/wapservice/push/PushHandler;->processAction(Landroid/content/Context;Lcom/lge/wapservice/push/message/WapPushDoc;I)V

    goto/16 :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
