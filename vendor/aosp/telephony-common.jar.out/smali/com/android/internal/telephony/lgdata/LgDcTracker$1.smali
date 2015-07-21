.class Lcom/android/internal/telephony/lgdata/LgDcTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LgDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LgDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgdata/LgDcTracker;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "action":Ljava/lang/String;
    const-string v31, "[LGE_DATA][LGDCT] "

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onReceive: action="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v31, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 425
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 155
    :cond_1
    const-string v31, "lge.test.limit_data_usage"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 156
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LGE_DATA] lge.test.limit_data_usage"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v31, "cause"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    const-string v32, "2"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->handleSKT_QA:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x2

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto :goto_0

    .line 161
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->handleSKT_QA:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x5

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto :goto_0

    .line 166
    :cond_3
    const-string v31, "com.skt.cats_portforwarding"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 167
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LGE_DATA] com.skt.cats_portforwarding"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v31, "ipaddr"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 169
    .local v18, "ipaddr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionManager;->SKTCatsPortForwarding(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    .end local v18    # "ipaddr":Ljava/lang/String;
    :cond_4
    const-string v31, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 174
    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 175
    const-string v31, "on_off"

    const/16 v32, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 177
    .local v14, "enabled":Z
    const-string v31, "[LGE_DATA][LGDCT] "

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[LGE_DATA] CALL_PROTECTION_STATUS_CHANGED ::"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-nez v14, :cond_5

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    .line 184
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 187
    .end local v14    # "enabled":Z
    :cond_6
    const-string v31, "com.skt.CALL_PROTECTION_MENU_OFF"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 190
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LGE_DATA] com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    .line 197
    :cond_7
    const-string v31, "com.skt.CALL_PROTECTION_MENU_ON"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 200
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LGE_DATA] com.skt.CALL_PROTECTION_MENU_ON"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 209
    :cond_8
    const-string v31, "com.skt.test_intent"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 212
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LGE_DATA] com.skt.test_intent"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->functionForPacketList:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 217
    :cond_9
    const-string v31, "com.kt.CALL_PROTECTION_CALL_START"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 218
    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "multi_rab_setting"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 220
    .local v10, "blockPacketMenuFlag":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_c

    :cond_a
    const/16 v30, 0x1

    .line 222
    .local v30, "validCallState":Z
    :goto_2
    const-string v31, "LGE_DATA"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "com.kt.CALL_PROTECTION_CALL_START settingFlag : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " callState : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz v30, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 225
    const-string v31, "LGE_DATA"

    const-string v32, "com.kt.CALL_PROTECTION_CALL_START"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    const-string v32, "mms"

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    const-string v32, "supl"

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_d

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v32, v0

    const v33, 0x42810

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v32

    const-wide/16 v34, 0xbb8

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 219
    .end local v10    # "blockPacketMenuFlag":Z
    .end local v30    # "validCallState":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 220
    .restart local v10    # "blockPacketMenuFlag":Z
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 234
    .restart local v30    # "validCallState":Z
    :cond_d
    const-string v31, "LGE_DATA"

    const-string v32, "mFDTimeoutMaxCount 10sec"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v25, Landroid/content/Intent;

    const-string v31, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v25, "sendIntent":Landroid/content/Intent;
    const-string v31, "value"

    const/16 v32, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 242
    .end local v10    # "blockPacketMenuFlag":Z
    .end local v25    # "sendIntent":Landroid/content/Intent;
    .end local v30    # "validCallState":Z
    :cond_e
    const-string v31, "com.kt.CALL_PROTECTION_MENU_OFF"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 243
    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "multi_rab_setting"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    const/4 v10, 0x1

    .line 245
    .restart local v10    # "blockPacketMenuFlag":Z
    :goto_3
    if-eqz v10, :cond_0

    .line 246
    const-string v31, "LGE_DATA"

    const-string v32, "com.kt.CALL_PROTECTION_MENU_OFF"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 244
    .end local v10    # "blockPacketMenuFlag":Z
    :cond_f
    const/4 v10, 0x0

    goto :goto_3

    .line 252
    :cond_10
    const-string v31, "com.kt.CALL_PROTECTION_MENU_ON"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 253
    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "multi_rab_setting"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    const/4 v10, 0x1

    .line 255
    .restart local v10    # "blockPacketMenuFlag":Z
    :goto_4
    if-eqz v10, :cond_0

    .line 256
    const-string v31, "LGE_DATA"

    const-string v32, "com.kt.CALL_PROTECTION_MENU_ON"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v33, ""

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v31

    const-string v32, "activity"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 259
    .local v7, "am":Landroid/app/ActivityManager;
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v27

    .line 260
    .local v27, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v27, :cond_0

    .line 262
    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    .line 263
    .local v28, "topActivity":Landroid/content/ComponentName;
    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 264
    .local v20, "name":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v29

    .line 265
    .local v29, "topclassname":Ljava/lang/String;
    const-string v31, "LGE_DATA"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "topActivity.getPackageName(); = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v31, "LGE_DATA"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "topActivity.getClassName(); = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v31, "com.android.incallui.InCallActivity"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    const-string v32, "mms"

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_12

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v32, v0

    const v33, 0x42810

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v32

    const-wide/16 v34, 0xbb8

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 254
    .end local v7    # "am":Landroid/app/ActivityManager;
    .end local v10    # "blockPacketMenuFlag":Z
    .end local v20    # "name":Ljava/lang/String;
    .end local v27    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v28    # "topActivity":Landroid/content/ComponentName;
    .end local v29    # "topclassname":Ljava/lang/String;
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 274
    .restart local v7    # "am":Landroid/app/ActivityManager;
    .restart local v10    # "blockPacketMenuFlag":Z
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v27    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v28    # "topActivity":Landroid/content/ComponentName;
    .restart local v29    # "topclassname":Ljava/lang/String;
    :cond_12
    const-string v31, "LGE_DATA"

    const-string v32, "mFDTimeoutMaxCount 10sec"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v25, Landroid/content/Intent;

    const-string v31, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v25    # "sendIntent":Landroid/content/Intent;
    const-string v31, "value"

    const/16 v32, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 281
    .end local v25    # "sendIntent":Landroid/content/Intent;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    .line 289
    .end local v7    # "am":Landroid/app/ActivityManager;
    .end local v10    # "blockPacketMenuFlag":Z
    .end local v20    # "name":Ljava/lang/String;
    .end local v27    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v28    # "topActivity":Landroid/content/ComponentName;
    .end local v29    # "topclassname":Ljava/lang/String;
    :cond_14
    const-string v31, "com.lge.GprsAttachedIsTrue"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v31, v0

    const-string v32, "default"

    invoke-virtual/range {v31 .. v32}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 294
    .local v12, "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v15, -0x1

    .line 295
    .local v15, "gprsState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v31

    if-eqz v31, :cond_15

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v15

    .line 300
    :cond_15
    const-string v31, "[LGE_DATA][LGDCT] "

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[LGE_DATA] com.lge.GprsAttachedIsTrue / default : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " / gprsState : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_0

    if-nez v15, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataConnectionAttached()V

    goto/16 :goto_0

    .line 311
    .end local v12    # "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v15    # "gprsState":I
    :cond_16
    const-string v31, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 313
    const-string v31, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 314
    .local v9, "apnType":Ljava/lang/String;
    const-class v31, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v32, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 318
    .local v26, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    if-nez v9, :cond_17

    .line 319
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LG_DATA] onReceive() ACTION_ANY_DATA_CONNECTION_STATE_CHANGED apnType is NULL"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v9, ""

    .line 324
    :cond_17
    const-string v31, "[LGE_DATA][LGDCT] "

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[LGE_DATA] ACTION_ANY_DATA_CONNECTION_STATE_CHANGED : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "  type "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 327
    const-string v31, "[LGE_DATA][LGDCT] "

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[LGE_DATA] This apnType is invalid apn. apnType == "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    :cond_18
    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDcTracker$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    goto/16 :goto_0

    .line 333
    :pswitch_1
    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$200()[Z

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v32, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v32

    aget-boolean v31, v31, v32

    if-eqz v31, :cond_0

    .line 334
    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$200()[Z

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v32, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v32

    const/16 v33, 0x0

    aput-boolean v33, v31, v32

    goto/16 :goto_0

    .line 343
    :pswitch_2
    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_19

    sget-object v31, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 344
    :cond_19
    const-string v31, "wifi"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 346
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LG_DATA]WIFI IS CONNECTED"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 353
    .end local v9    # "apnType":Ljava/lang/String;
    .end local v26    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_1a
    const-string v31, "android.intent.action.DATA_CONNECTION_FAILED"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 355
    const-string v31, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 356
    .restart local v9    # "apnType":Ljava/lang/String;
    const-string v31, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 357
    .local v24, "reason":Ljava/lang/String;
    const-string v31, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "apnName":Ljava/lang/String;
    const-string v31, "[LGE_DATA][LGDCT] "

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[LGE_DATA] ACTION_DATA_CONNECTION_FAILED (type) : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->setTeardownRequested:[Z
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$200()[Z

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v32, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v32

    const/16 v33, 0x0

    aput-boolean v33, v31, v32

    .line 362
    const-string v31, "wifi"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 363
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "handleConnectionFailure: mIsWifiConnected = false"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    goto/16 :goto_0

    .line 369
    .end local v8    # "apnName":Ljava/lang/String;
    .end local v9    # "apnType":Ljava/lang/String;
    .end local v24    # "reason":Ljava/lang/String;
    :cond_1b
    const-string v31, "ACTIVATE_SETUP_DATA_CALL"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v32, v0

    const v33, 0x42817

    const-string v34, "dataEnabled"

    invoke-virtual/range {v32 .. v34}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 375
    :cond_1c
    const-string v31, "lge.test.routetable.add"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 376
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LG_DATA][Test] lge.test.routetable.add"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v5, "1.2.3.4"

    .line 378
    .local v5, "address1":Ljava/lang/String;
    const/16 v21, 0xb

    .line 379
    .local v21, "networktype_ims1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v31

    const-string v32, "connectivity"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 381
    .local v11, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    .line 382
    .local v16, "iaddress1":Ljava/net/InetAddress;
    move/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 383
    .end local v16    # "iaddress1":Ljava/net/InetAddress;
    :catch_0
    move-exception v13

    .line 384
    .local v13, "e":Ljava/lang/Exception;
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LG_DATA][Test] lge.test.routetable.add(exception error)"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    .end local v5    # "address1":Ljava/lang/String;
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "networktype_ims1":I
    :cond_1d
    const-string v31, "lge.test.routetable.delete"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 388
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LG_DATA][Test] lge.test.routetable.delete"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v6, "1.2.3.4"

    .line 390
    .local v6, "address2":Ljava/lang/String;
    const/16 v22, 0xb

    .line 391
    .local v22, "networktype_ims2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$100(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v31

    const-string v32, "connectivity"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 393
    .restart local v11    # "cm":Landroid/net/ConnectivityManager;
    :try_start_1
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    .line 394
    .local v17, "iaddress2":Ljava/net/InetAddress;
    move/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/net/ConnectivityManager;->requestRemRouteToHostAddress(ILjava/net/InetAddress;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 395
    .end local v17    # "iaddress2":Ljava/net/InetAddress;
    :catch_1
    move-exception v13

    .line 396
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "[LG_DATA][Test] lge.test.routetable.delete(exception error)"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    .end local v6    # "address2":Ljava/lang/String;
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v22    # "networktype_ims2":I
    :cond_1e
    const-string v31, "com.lge.callingsetmobile"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 403
    const-string v31, "[LGE_DATA][LGDCT] "

    const-string v32, "CallingSetMobileDataEnabled intent receiver"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v31, "CallingPackagesName"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 407
    .local v23, "packname":Ljava/lang/String;
    if-nez v23, :cond_1f

    .line 409
    const-string v23, ""

    .line 412
    :cond_1f
    const-string v31, "enabled"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 413
    .local v14, "enabled":Ljava/lang/Boolean;
    const/16 v19, 0x0

    .line 415
    .local v19, "mobile_enable":I
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_20

    .line 416
    const/16 v19, 0x1

    .line 421
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LgDcTracker$1;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    move-object/from16 v31, v0

    # getter for: Lcom/android/internal/telephony/lgdata/LgDcTracker;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$000(Lcom/android/internal/telephony/lgdata/LgDcTracker;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->callingSetMobileDataEnabled:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 418
    :cond_20
    const/16 v19, 0x0

    goto :goto_5

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
