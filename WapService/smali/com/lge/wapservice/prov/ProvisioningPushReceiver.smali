.class public Lcom/lge/wapservice/prov/ProvisioningPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProvisioningPushReceiver.java"


# static fields
.field private static OFF:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/lge/wapservice/prov/ProvisioningPushReceiver;->OFF:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "mimeType":Ljava/lang/String;
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_PROVISIONING_ENABLE:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I

    move-result v0

    sget v11, Lcom/lge/wapservice/prov/ProvisioningPushReceiver;->OFF:I

    if-ne v0, v11, :cond_0

    .line 43
    const-string v0, "WapService"

    const-string v11, "<ProvisioningPushReceiver> PROV_CFG_PROVISIONING_ENABLE is off, provisioning isn\'t received."

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 47
    :cond_0
    if-eqz v9, :cond_1

    .line 48
    const-string v0, "WapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<ProvisioningPushReceiver> mimeType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "lgeWapService/clear.prov.notification"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-static {p1}, Lcom/lge/wapservice/prov/ProvisioningNotification;->clearNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "WapService"

    const-string v11, "<ProvisioningPushReceiver> mimeType null"

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "action":Ljava/lang/String;
    const/4 v6, 0x0

    .line 61
    .local v6, "phoneId":I
    invoke-static {p1}, Lcom/lge/wapservice/utils/DBManager;->setAppOpsForLGMessage(Landroid/content/Context;)V

    .line 63
    const-string v0, "android.intent.action.cp.install"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "document":Ljava/lang/String;
    const-string v0, "sec"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "sec":Ljava/lang/String;
    const-string v0, "mac"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "mac":Ljava/lang/String;
    const-string v0, "msguri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "msguri":Ljava/lang/String;
    const-string v0, "pinRemainCnt"

    const/4 v11, 0x3

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 71
    .local v5, "pinRemainCnt":I
    const-string v0, "provSubID"

    const/4 v11, 0x0

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 72
    const-string v0, "WapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<ProvisioningPushReceiver> Start to install OTA , phoneId from SMS = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    invoke-static {v6}, Lcom/lge/wapservice/utils/DualSIM_Helper;->setSimID(I)V

    .line 77
    :cond_3
    if-eqz v3, :cond_4

    move-object v0, p1

    .line 78
    invoke-static/range {v0 .. v6}, Lcom/lge/wapservice/prov/ProvisioningValidation;->provisionValidation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 83
    :goto_1
    const-string v0, "WapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<ProvisioningPushReceiver> pinRemainCnt = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    :cond_4
    const-string v0, "WapService"

    const-string v11, "<ProvisioningPushReceiver> document is null. install is canceled "

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .end local v1    # "sec":Ljava/lang/String;
    .end local v2    # "mac":Ljava/lang/String;
    .end local v3    # "document":Ljava/lang/String;
    .end local v4    # "msguri":Ljava/lang/String;
    .end local v5    # "pinRemainCnt":I
    :cond_5
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 88
    .local v3, "document":[B
    const/4 v1, 0x0

    .line 89
    .restart local v1    # "sec":Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .restart local v2    # "mac":Ljava/lang/String;
    const-string v0, "WapService"

    const-string v11, "<ProvisioningPushReceiver> Start to receive OTA"

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_6

    .line 93
    const-string v0, "WapService"

    const-string v11, "<ProvisioningPushReceiver: Error> Intent from SMS is null, It\'s discard"

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 97
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v11, "contentTypeParameters"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 98
    .local v10, "provisioningParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v10, :cond_7

    .line 99
    const-string v0, "WapService"

    const-string v11, "<ProvisioningPushReceiver: Error> provisioningParameters is null, It\'s discard"

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_7
    const-string v0, "SEC"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "sec":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 103
    .restart local v1    # "sec":Ljava/lang/String;
    if-eqz v1, :cond_8

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    const-string v1, "0"

    .line 106
    :cond_8
    const-string v0, "MAC"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mac":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 108
    .restart local v2    # "mac":Ljava/lang/String;
    if-eqz v1, :cond_9

    if-nez v2, :cond_a

    .line 109
    :cond_9
    const-string v0, "WapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<ProvisioningPushReceiver> SEC is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and MAC is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "WapService"

    const-string v11, "<ProvisioningPushReceiver: Error> SEC and MAC should be set, It\'s discard"

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 115
    :cond_a
    if-nez v3, :cond_b

    .line 116
    :try_start_0
    const-string v0, "WapService"

    const-string v11, "<ProvisioningPushReceiver: Error> document is NULL, It\'s discard"

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    move-exception v8

    .line 131
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "WapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<ProvisioningPushReceiver> It is invalid/unsupported XML files : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 119
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_1
    const-string v0, "WapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<ProvisioningPushReceiver> DOC= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "phone"

    const/4 v11, 0x0

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 124
    const-string v0, "WapService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<ProvisioningPushReceiver>  phoneId from SMS = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 126
    invoke-static {v6}, Lcom/lge/wapservice/utils/DualSIM_Helper;->setSimID(I)V

    .line 129
    :cond_c
    invoke-static {p1, v1, v2, v3, v6}, Lcom/lge/wapservice/prov/ProvisioningNotification;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
