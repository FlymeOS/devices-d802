.class Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGAudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioServiceEx;


# direct methods
.method private constructor <init>(Landroid/media/AudioServiceEx;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioServiceEx;Landroid/media/AudioServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioServiceEx;
    .param p2, "x1"    # Landroid/media/AudioServiceEx$1;

    .prologue
    .line 993
    invoke-direct {p0, p1}, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioServiceEx;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 999
    .local v8, "action":Ljava/lang/String;
    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1000
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_view_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v20, 0x1

    .line 1002
    .local v20, "isQuickCoverEnabled":Z
    :goto_0
    if-eqz v20, :cond_4

    .line 1003
    const-string v1, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1006
    .local v25, "quickCoverMode":I
    const/4 v1, 0x1

    move/from16 v0, v25

    if-ne v0, v1, :cond_2

    .line 1007
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x1

    # setter for: Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$402(Landroid/media/AudioServiceEx;Z)Z

    .line 1135
    .end local v20    # "isQuickCoverEnabled":Z
    .end local v25    # "quickCoverMode":I
    :cond_0
    :goto_1
    return-void

    .line 1000
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 1008
    .restart local v20    # "isQuickCoverEnabled":Z
    .restart local v25    # "quickCoverMode":I
    :cond_2
    if-nez v25, :cond_3

    .line 1009
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$402(Landroid/media/AudioServiceEx;Z)Z

    goto :goto_1

    .line 1011
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$402(Landroid/media/AudioServiceEx;Z)Z

    goto :goto_1

    .line 1014
    .end local v25    # "quickCoverMode":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$402(Landroid/media/AudioServiceEx;Z)Z

    goto :goto_1

    .line 1017
    .end local v20    # "isQuickCoverEnabled":Z
    :cond_5
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1018
    const/4 v15, 0x0

    .line 1020
    .local v15, "file":Ljava/io/FileReader;
    const/16 v1, 0x400

    :try_start_0
    new-array v11, v1, [C

    .line 1021
    .local v11, "buffer":[C
    const/4 v13, 0x0

    .line 1023
    .local v13, "curState":I
    new-instance v16, Ljava/io/FileReader;

    const-string v1, "/sys/class/switch/h2w/state"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1024
    .end local v15    # "file":Ljava/io/FileReader;
    .local v16, "file":Ljava/io/FileReader;
    const/4 v1, 0x0

    const/16 v2, 0x400

    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v21

    .line 1025
    .local v21, "len":I
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-direct {v1, v11, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1028
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_HEADSET_TYPE_EXT:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_8

    .line 1029
    const/16 v17, 0x0

    .line 1031
    .local v17, "file_type":Ljava/io/FileReader;
    const/16 v1, 0x400

    :try_start_2
    new-array v12, v1, [C

    .line 1033
    .local v12, "buffer_name":[C
    new-instance v18, Ljava/io/FileReader;

    const-string v1, "/sys/class/switch/h2w/name"

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1034
    .end local v17    # "file_type":Ljava/io/FileReader;
    .local v18, "file_type":Ljava/io/FileReader;
    const/4 v1, 0x0

    const/16 v2, 0x400

    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v1, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v22

    .line 1035
    .local v22, "len_name":I
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-direct {v1, v12, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 1036
    .local v23, "name":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq v13, v1, :cond_6

    const/4 v1, 0x2

    if-ne v13, v1, :cond_b

    .line 1037
    :cond_6
    const-string v1, "h2w"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1038
    const-string v1, "HeadsetState=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1051
    :cond_7
    :goto_2
    if-eqz v18, :cond_8

    .line 1053
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1062
    .end local v12    # "buffer_name":[C
    .end local v18    # "file_type":Ljava/io/FileReader;
    .end local v22    # "len_name":I
    .end local v23    # "name":Ljava/lang/String;
    :cond_8
    :goto_3
    const/4 v1, 0x1

    if-ne v13, v1, :cond_e

    .line 1063
    const/4 v1, 0x4

    const/4 v2, 0x1

    :try_start_5
    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1075
    :goto_4
    if-eqz v16, :cond_18

    .line 1077
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    move-object/from16 v15, v16

    .line 1080
    .end local v16    # "file":Ljava/io/FileReader;
    .restart local v15    # "file":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 1039
    .end local v15    # "file":Ljava/io/FileReader;
    .restart local v12    # "buffer_name":[C
    .restart local v16    # "file":Ljava/io/FileReader;
    .restart local v18    # "file_type":Ljava/io/FileReader;
    .restart local v22    # "len_name":I
    .restart local v23    # "name":Ljava/lang/String;
    :cond_9
    :try_start_7
    const-string v1, "h2w_advanced"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1040
    const-string v1, "HeadsetState=2"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1046
    .end local v22    # "len_name":I
    .end local v23    # "name":Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object/from16 v17, v18

    .line 1047
    .end local v12    # "buffer_name":[C
    .end local v18    # "file_type":Ljava/io/FileReader;
    .local v14, "e":Ljava/io/FileNotFoundException;
    .restart local v17    # "file_type":Ljava/io/FileReader;
    :goto_5
    :try_start_8
    const-string v1, "AudioServiceEx"

    const-string v2, "/sys/class/switch/h2w/name not found while attempting to determine initial switch state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1051
    if-eqz v17, :cond_8

    .line 1053
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 1054
    :catch_1
    move-exception v14

    .line 1055
    .local v14, "e":Ljava/io/IOException;
    :try_start_a
    const-string v1, "AudioServiceEx"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 1070
    .end local v14    # "e":Ljava/io/IOException;
    .end local v17    # "file_type":Ljava/io/FileReader;
    .end local v21    # "len":I
    :catch_2
    move-exception v14

    move-object/from16 v15, v16

    .line 1071
    .end local v11    # "buffer":[C
    .end local v13    # "curState":I
    .end local v16    # "file":Ljava/io/FileReader;
    .local v14, "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "file":Ljava/io/FileReader;
    :goto_6
    :try_start_b
    const-string v1, "AudioServiceEx"

    const-string v2, "/sys/class/switch/h2w/state not found while attempting to determine initial switch state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1075
    if-eqz v15, :cond_0

    .line 1077
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_1

    .line 1078
    :catch_3
    move-exception v14

    .line 1079
    .local v14, "e":Ljava/io/IOException;
    const-string v1, "AudioServiceEx"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1041
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "file":Ljava/io/FileReader;
    .restart local v11    # "buffer":[C
    .restart local v12    # "buffer_name":[C
    .restart local v13    # "curState":I
    .restart local v16    # "file":Ljava/io/FileReader;
    .restart local v18    # "file_type":Ljava/io/FileReader;
    .restart local v21    # "len":I
    .restart local v22    # "len_name":I
    .restart local v23    # "name":Ljava/lang/String;
    :cond_a
    :try_start_d
    const-string v1, "h2w_aux"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1042
    const-string v1, "HeadsetState=3"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 1048
    .end local v22    # "len_name":I
    .end local v23    # "name":Ljava/lang/String;
    :catch_4
    move-exception v14

    move-object/from16 v17, v18

    .line 1049
    .end local v12    # "buffer_name":[C
    .end local v18    # "file_type":Ljava/io/FileReader;
    .local v14, "e":Ljava/lang/Exception;
    .restart local v17    # "file_type":Ljava/io/FileReader;
    :goto_7
    :try_start_e
    const-string v1, "AudioServiceEx"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1051
    if-eqz v17, :cond_8

    .line 1053
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_3

    .line 1054
    :catch_5
    move-exception v14

    .line 1055
    .local v14, "e":Ljava/io/IOException;
    :try_start_10
    const-string v1, "AudioServiceEx"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_3

    .line 1072
    .end local v14    # "e":Ljava/io/IOException;
    .end local v17    # "file_type":Ljava/io/FileReader;
    .end local v21    # "len":I
    :catch_6
    move-exception v14

    move-object/from16 v15, v16

    .line 1073
    .end local v11    # "buffer":[C
    .end local v13    # "curState":I
    .end local v16    # "file":Ljava/io/FileReader;
    .local v14, "e":Ljava/lang/Exception;
    .restart local v15    # "file":Ljava/io/FileReader;
    :goto_8
    :try_start_11
    const-string v1, "AudioServiceEx"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1075
    if-eqz v15, :cond_0

    .line 1077
    :try_start_12
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_1

    .line 1078
    :catch_7
    move-exception v14

    .line 1079
    .local v14, "e":Ljava/io/IOException;
    const-string v1, "AudioServiceEx"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1044
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "file":Ljava/io/FileReader;
    .restart local v11    # "buffer":[C
    .restart local v12    # "buffer_name":[C
    .restart local v13    # "curState":I
    .restart local v16    # "file":Ljava/io/FileReader;
    .restart local v18    # "file_type":Ljava/io/FileReader;
    .restart local v21    # "len":I
    .restart local v22    # "len_name":I
    .restart local v23    # "name":Ljava/lang/String;
    :cond_b
    :try_start_13
    const-string v1, "HeadsetState=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_2

    .line 1051
    .end local v22    # "len_name":I
    .end local v23    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object/from16 v17, v18

    .end local v12    # "buffer_name":[C
    .end local v18    # "file_type":Ljava/io/FileReader;
    .restart local v17    # "file_type":Ljava/io/FileReader;
    :goto_9
    if-eqz v17, :cond_c

    .line 1053
    :try_start_14
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1056
    :cond_c
    :goto_a
    :try_start_15
    throw v1
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1075
    .end local v17    # "file_type":Ljava/io/FileReader;
    .end local v21    # "len":I
    :catchall_1
    move-exception v1

    move-object/from16 v15, v16

    .end local v11    # "buffer":[C
    .end local v13    # "curState":I
    .end local v16    # "file":Ljava/io/FileReader;
    .restart local v15    # "file":Ljava/io/FileReader;
    :goto_b
    if-eqz v15, :cond_d

    .line 1077
    :try_start_16
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 1080
    :cond_d
    :goto_c
    throw v1

    .line 1054
    .end local v15    # "file":Ljava/io/FileReader;
    .restart local v11    # "buffer":[C
    .restart local v12    # "buffer_name":[C
    .restart local v13    # "curState":I
    .restart local v16    # "file":Ljava/io/FileReader;
    .restart local v18    # "file_type":Ljava/io/FileReader;
    .restart local v21    # "len":I
    .restart local v22    # "len_name":I
    .restart local v23    # "name":Ljava/lang/String;
    :catch_8
    move-exception v14

    .line 1055
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_17
    const-string v1, "AudioServiceEx"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1054
    .end local v12    # "buffer_name":[C
    .end local v14    # "e":Ljava/io/IOException;
    .end local v18    # "file_type":Ljava/io/FileReader;
    .end local v22    # "len_name":I
    .end local v23    # "name":Ljava/lang/String;
    .restart local v17    # "file_type":Ljava/io/FileReader;
    :catch_9
    move-exception v14

    .line 1055
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "AudioServiceEx"

    const-string v3, ""

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1064
    .end local v14    # "e":Ljava/io/IOException;
    .end local v17    # "file_type":Ljava/io/FileReader;
    :cond_e
    const/4 v1, 0x2

    if-ne v13, v1, :cond_f

    .line 1065
    const/16 v1, 0x8

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto/16 :goto_4

    .line 1067
    :cond_f
    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1068
    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_4

    .line 1078
    :catch_a
    move-exception v14

    .line 1079
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v1, "AudioServiceEx"

    const-string v2, ""

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v15, v16

    .line 1080
    .end local v16    # "file":Ljava/io/FileReader;
    .restart local v15    # "file":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 1078
    .end local v11    # "buffer":[C
    .end local v13    # "curState":I
    .end local v14    # "e":Ljava/io/IOException;
    .end local v21    # "len":I
    :catch_b
    move-exception v14

    .line 1079
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v2, "AudioServiceEx"

    const-string v3, ""

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 1085
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "file":Ljava/io/FileReader;
    :cond_10
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1086
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/AudioServiceEx;->mCurrentUserId:I
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$502(Landroid/media/AudioServiceEx;I)I

    .line 1087
    const-string v1, "AudioServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentUserId ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mCurrentUserId:I
    invoke-static {v3}, Landroid/media/AudioServiceEx;->access$500(Landroid/media/AudioServiceEx;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    # invokes: Landroid/media/AudioServiceEx;->readPersistedMABL()V
    invoke-static {v1}, Landroid/media/AudioServiceEx;->access$600(Landroid/media/AudioServiceEx;)V

    goto/16 :goto_1

    .line 1091
    :cond_11
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1092
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 1093
    .local v10, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v10, :cond_0

    .line 1094
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 1095
    .local v9, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v19, 0x1

    .line 1098
    .local v19, "isConnected":Z
    :goto_d
    if-eqz v19, :cond_0

    .line 1099
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v0, v1, Landroid/media/AudioServiceEx;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1100
    :try_start_18
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v23

    .line 1101
    .restart local v23    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1102
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, v23

    iput-object v0, v1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 1103
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    iget-object v1, v1, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1106
    :cond_12
    monitor-exit v26

    goto/16 :goto_1

    .end local v23    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v1

    monitor-exit v26
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    throw v1

    .line 1095
    .end local v19    # "isConnected":Z
    :cond_13
    const/16 v19, 0x0

    goto :goto_d

    .line 1111
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_14
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1112
    const-string v1, "plugged"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1113
    .local v24, "plugType":I
    const/4 v1, 0x1

    move/from16 v0, v24

    if-ne v0, v1, :cond_15

    .line 1114
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mPlugged:Z
    invoke-static {v1}, Landroid/media/AudioServiceEx;->access$700(Landroid/media/AudioServiceEx;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1115
    const-string v1, "AudioServiceEx"

    const-string v2, "AUX: ac_for_aux=true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string v1, "ac_for_aux=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1117
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x1

    # setter for: Landroid/media/AudioServiceEx;->mPlugged:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$702(Landroid/media/AudioServiceEx;Z)Z

    goto/16 :goto_1

    .line 1119
    :cond_15
    if-nez v24, :cond_0

    .line 1120
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mPlugged:Z
    invoke-static {v1}, Landroid/media/AudioServiceEx;->access$700(Landroid/media/AudioServiceEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    const-string v1, "AudioServiceEx"

    const-string v2, "AUX: ac_for_aux=false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v1, "ac_for_aux=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1123
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioServiceEx;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioServiceEx;->mPlugged:Z
    invoke-static {v1, v2}, Landroid/media/AudioServiceEx;->access$702(Landroid/media/AudioServiceEx;Z)Z

    goto/16 :goto_1

    .line 1129
    .end local v24    # "plugType":I
    :cond_16
    const-string v1, "com.lge.mirrorlink.audio.started"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1130
    const-string v1, "isVirtualMirrorLinkDevice=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1131
    :cond_17
    const-string v1, "com.lge.mirrorlink.audio.stopped"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    const-string v1, "isVirtualMirrorLinkDevice=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1075
    .restart local v15    # "file":Ljava/io/FileReader;
    :catchall_3
    move-exception v1

    goto/16 :goto_b

    .line 1072
    :catch_c
    move-exception v14

    goto/16 :goto_8

    .line 1070
    :catch_d
    move-exception v14

    goto/16 :goto_6

    .line 1051
    .end local v15    # "file":Ljava/io/FileReader;
    .restart local v11    # "buffer":[C
    .restart local v13    # "curState":I
    .restart local v16    # "file":Ljava/io/FileReader;
    .restart local v17    # "file_type":Ljava/io/FileReader;
    .restart local v21    # "len":I
    :catchall_4
    move-exception v1

    goto/16 :goto_9

    .line 1048
    :catch_e
    move-exception v14

    goto/16 :goto_7

    .line 1046
    :catch_f
    move-exception v14

    goto/16 :goto_5

    .end local v17    # "file_type":Ljava/io/FileReader;
    :cond_18
    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileReader;
    .restart local v15    # "file":Ljava/io/FileReader;
    goto/16 :goto_1
.end method
