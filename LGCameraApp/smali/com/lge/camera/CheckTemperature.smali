.class public Lcom/lge/camera/CheckTemperature;
.super Ljava/lang/Object;
.source "CheckTemperature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;
    }
.end annotation


# static fields
.field private static final AP_TEMP_FOR_FIRST_ENTRY:I = 0x39

.field private static final AP_TEMP_FOR_FIRST_ENTRY_INITIALADD:I = 0x0

.field private static final AP_TEMP_FOR_RELIABILITY:I = 0x38

.field private static final BATTERY_TEMP_FOR_RELIABILITY:I = 0x1ea

.field private static final BATTERY_TEMP_FOR_RELIABILITY_NOT_INITIAL:I = 0x1d6

.field private static final CHECK_TIME_INITIAL:I = 0xbb8

.field private static final CHECK_TIME_INTERVAL:I = 0x7530

.field private static final ENSURE_TIME_RUNNING:I = 0x2bf20

.field private static final EXTAP_TEMP_FOR_INITIAL:I = 0x63

.field private static final EXTAP_TEMP_FOR_RELIABILITY:D = 64.0

.field private static final IFPLUGGED_ADD_DEGREE_AP:I = 0x5

.field private static final IFPLUGGED_ADD_DEGREE_EXTAP:D = 6.5

.field private static final WAIT_TIME_FORCED_FINISH:I = 0x1388


# instance fields
.field private iAPTemper:I

.field private iAPTemperLimit:I

.field public iBatteryTemper:I

.field private iEXTAPTemper:D

.field private iEXTAPTemperLimit:D

.field private mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

.field private mHandlerFinishCamera:Landroid/os/Handler;

.field private mHandlerTempCheck:Landroid/os/Handler;

.field private mInitialCheck:Z

.field public mRunFinishCamera:Ljava/lang/Runnable;

.field private mRunState:Z

.field mRunTempCheck:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    .line 44
    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    .line 45
    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 46
    iput-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    .line 47
    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I

    .line 48
    iput-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemper:D

    .line 49
    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    .line 50
    iput-object v1, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    .line 51
    iput-object v1, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    .line 53
    iput-object v1, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    .line 85
    new-instance v0, Lcom/lge/camera/CheckTemperature$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/CheckTemperature$1;-><init>(Lcom/lge/camera/CheckTemperature;)V

    iput-object v0, p0, Lcom/lge/camera/CheckTemperature;->mRunTempCheck:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/lge/camera/CheckTemperature$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/CheckTemperature$2;-><init>(Lcom/lge/camera/CheckTemperature;)V

    iput-object v0, p0, Lcom/lge/camera/CheckTemperature;->mRunFinishCamera:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/CheckTemperature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/CheckTemperature;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/CheckTemperature;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/CheckTemperature;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/CheckTemperature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/CheckTemperature;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/CheckTemperature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/CheckTemperature;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/CheckTemperature;)Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/CheckTemperature;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    return-object v0
.end method


# virtual methods
.method public checkAPTemperature()V
    .locals 20

    .prologue
    .line 171
    const-string v17, "CameraApp"

    const-string v18, "[Camera temperature scenario] checkAPTemperature start"

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v10, "00"

    .line 174
    .local v10, "mReadData":Ljava/lang/String;
    const-string v9, "00"

    .line 176
    .local v9, "mExtReadData":Ljava/lang/String;
    const-string v5, "/sys/bus/i2c/devices/4-004c/temperature"

    .line 177
    .local v5, "TEMPER":Ljava/lang/String;
    const-string v4, "/sys/bus/i2c/devices/4-004c/ext_temperature"

    .line 179
    .local v4, "EXT_TEMPER":Ljava/lang/String;
    const/4 v11, 0x0

    .line 180
    .local v11, "temper":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 181
    .local v7, "exttemper":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 182
    .local v15, "temperFileReader":Ljava/io/FileReader;
    const/4 v13, 0x0

    .line 185
    .local v13, "temperExtFileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v16, Ljava/io/FileReader;

    const-string v17, "/sys/bus/i2c/devices/4-004c/temperature"

    invoke-direct/range {v16 .. v17}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v15    # "temperFileReader":Ljava/io/FileReader;
    .local v16, "temperFileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v12, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 187
    .end local v11    # "temper":Ljava/io/BufferedReader;
    .local v12, "temper":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 189
    if-eqz v10, :cond_0

    .line 190
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/CheckTemperature;->iAPTemper:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 196
    :cond_0
    if-eqz v16, :cond_1

    .line 197
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V

    .line 199
    :cond_1
    if-eqz v12, :cond_2

    .line 200
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object/from16 v15, v16

    .end local v16    # "temperFileReader":Ljava/io/FileReader;
    .restart local v15    # "temperFileReader":Ljava/io/FileReader;
    move-object v11, v12

    .line 209
    .end local v12    # "temper":Ljava/io/BufferedReader;
    .restart local v11    # "temper":Ljava/io/BufferedReader;
    :cond_3
    :goto_0
    :try_start_4
    new-instance v14, Ljava/io/FileReader;

    const-string v17, "/sys/bus/i2c/devices/4-004c/ext_temperature"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    .end local v13    # "temperExtFileReader":Ljava/io/FileReader;
    .local v14, "temperExtFileReader":Ljava/io/FileReader;
    :try_start_5
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 211
    .end local v7    # "exttemper":Ljava/io/BufferedReader;
    .local v8, "exttemper":Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 213
    if-eqz v9, :cond_4

    .line 214
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/camera/CheckTemperature;->iEXTAPTemper:D
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 222
    :cond_4
    if-eqz v14, :cond_5

    .line 223
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    .line 225
    :cond_5
    if-eqz v8, :cond_6

    .line 226
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    move-object v13, v14

    .end local v14    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v13    # "temperExtFileReader":Ljava/io/FileReader;
    move-object v7, v8

    .line 232
    .end local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v7    # "exttemper":Ljava/io/BufferedReader;
    :cond_7
    :goto_1
    return-void

    .line 202
    .end local v11    # "temper":Ljava/io/BufferedReader;
    .end local v15    # "temperFileReader":Ljava/io/FileReader;
    .restart local v12    # "temper":Ljava/io/BufferedReader;
    .restart local v16    # "temperFileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v6

    .line 203
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v15, v16

    .end local v16    # "temperFileReader":Ljava/io/FileReader;
    .restart local v15    # "temperFileReader":Ljava/io/FileReader;
    move-object v11, v12

    .line 205
    .end local v12    # "temper":Ljava/io/BufferedReader;
    .restart local v11    # "temper":Ljava/io/BufferedReader;
    goto :goto_0

    .line 192
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 193
    .restart local v6    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 196
    if-eqz v15, :cond_8

    .line 197
    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V

    .line 199
    :cond_8
    if-eqz v11, :cond_3

    .line 200
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 202
    :catch_2
    move-exception v6

    .line 203
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 196
    :goto_3
    if-eqz v15, :cond_9

    .line 197
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V

    .line 199
    :cond_9
    if-eqz v11, :cond_a

    .line 200
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 204
    :cond_a
    :goto_4
    throw v17

    .line 202
    :catch_3
    move-exception v6

    .line 203
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 228
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "exttemper":Ljava/io/BufferedReader;
    .end local v13    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v14    # "temperExtFileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v6

    .line 229
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v13, v14

    .end local v14    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v13    # "temperExtFileReader":Ljava/io/FileReader;
    move-object v7, v8

    .line 231
    .end local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v7    # "exttemper":Ljava/io/BufferedReader;
    goto :goto_1

    .line 216
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 217
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 222
    if-eqz v13, :cond_b

    .line 223
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    .line 225
    :cond_b
    if-eqz v7, :cond_7

    .line 226
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_1

    .line 228
    :catch_6
    move-exception v6

    .line 229
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 218
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 219
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_d
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 222
    if-eqz v13, :cond_c

    .line 223
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    .line 225
    :cond_c
    if-eqz v7, :cond_7

    .line 226
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_1

    .line 228
    :catch_8
    move-exception v6

    .line 229
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    .line 222
    :goto_7
    if-eqz v13, :cond_d

    .line 223
    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    .line 225
    :cond_d
    if-eqz v7, :cond_e

    .line 226
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 230
    :cond_e
    :goto_8
    throw v17

    .line 228
    :catch_9
    move-exception v6

    .line 229
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 221
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v14    # "temperExtFileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v17

    move-object v13, v14

    .end local v14    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v13    # "temperExtFileReader":Ljava/io/FileReader;
    goto :goto_7

    .end local v7    # "exttemper":Ljava/io/BufferedReader;
    .end local v13    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v14    # "temperExtFileReader":Ljava/io/FileReader;
    :catchall_3
    move-exception v17

    move-object v13, v14

    .end local v14    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v13    # "temperExtFileReader":Ljava/io/FileReader;
    move-object v7, v8

    .end local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v7    # "exttemper":Ljava/io/BufferedReader;
    goto :goto_7

    .line 218
    .end local v13    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v14    # "temperExtFileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v6

    move-object v13, v14

    .end local v14    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v13    # "temperExtFileReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v7    # "exttemper":Ljava/io/BufferedReader;
    .end local v13    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v14    # "temperExtFileReader":Ljava/io/FileReader;
    :catch_b
    move-exception v6

    move-object v13, v14

    .end local v14    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v13    # "temperExtFileReader":Ljava/io/FileReader;
    move-object v7, v8

    .end local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v7    # "exttemper":Ljava/io/BufferedReader;
    goto :goto_6

    .line 216
    .end local v13    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v14    # "temperExtFileReader":Ljava/io/FileReader;
    :catch_c
    move-exception v6

    move-object v13, v14

    .end local v14    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v13    # "temperExtFileReader":Ljava/io/FileReader;
    goto :goto_5

    .end local v7    # "exttemper":Ljava/io/BufferedReader;
    .end local v13    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v14    # "temperExtFileReader":Ljava/io/FileReader;
    :catch_d
    move-exception v6

    move-object v13, v14

    .end local v14    # "temperExtFileReader":Ljava/io/FileReader;
    .restart local v13    # "temperExtFileReader":Ljava/io/FileReader;
    move-object v7, v8

    .end local v8    # "exttemper":Ljava/io/BufferedReader;
    .restart local v7    # "exttemper":Ljava/io/BufferedReader;
    goto :goto_5

    .line 195
    .end local v15    # "temperFileReader":Ljava/io/FileReader;
    .restart local v16    # "temperFileReader":Ljava/io/FileReader;
    :catchall_4
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "temperFileReader":Ljava/io/FileReader;
    .restart local v15    # "temperFileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v11    # "temper":Ljava/io/BufferedReader;
    .end local v15    # "temperFileReader":Ljava/io/FileReader;
    .restart local v12    # "temper":Ljava/io/BufferedReader;
    .restart local v16    # "temperFileReader":Ljava/io/FileReader;
    :catchall_5
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "temperFileReader":Ljava/io/FileReader;
    .restart local v15    # "temperFileReader":Ljava/io/FileReader;
    move-object v11, v12

    .end local v12    # "temper":Ljava/io/BufferedReader;
    .restart local v11    # "temper":Ljava/io/BufferedReader;
    goto :goto_3

    .line 192
    .end local v15    # "temperFileReader":Ljava/io/FileReader;
    .restart local v16    # "temperFileReader":Ljava/io/FileReader;
    :catch_e
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "temperFileReader":Ljava/io/FileReader;
    .restart local v15    # "temperFileReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v11    # "temper":Ljava/io/BufferedReader;
    .end local v15    # "temperFileReader":Ljava/io/FileReader;
    .restart local v12    # "temper":Ljava/io/BufferedReader;
    .restart local v16    # "temperFileReader":Ljava/io/FileReader;
    :catch_f
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "temperFileReader":Ljava/io/FileReader;
    .restart local v15    # "temperFileReader":Ljava/io/FileReader;
    move-object v11, v12

    .end local v12    # "temper":Ljava/io/BufferedReader;
    .restart local v11    # "temper":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public checkAvailablityToRunCameraApp()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    const v5, 0x7f0a02f5

    const/4 v4, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/lge/camera/CheckTemperature;->checkAPTemperature()V

    .line 108
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] checkAPTemperature end, current AP temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] checkAPTemperature end, current battery temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] checkAPTemperature end, current EXTAP temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemper:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    if-eqz v0, :cond_3

    .line 118
    const-string v0, "CameraApp"

    const-string v1, "[Camera temperature scenario] Initial check"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/16 v0, 0x39

    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 120
    const-wide v0, 0x4058c00000000000L    # 99.0

    iput-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v0}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getIsCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    if-eqz v0, :cond_4

    .line 129
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 137
    :cond_0
    :goto_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] limit of AP temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "CameraApp"

    const-string v1, "[Camera temperature scenario] limit of BATTERY temper initial : 490"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] limit of EXTAP temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    if-eqz v0, :cond_6

    .line 144
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I

    iget v1, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    const/16 v1, 0x1ea

    if-le v0, v1, :cond_5

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v0}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunFinishCamera:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_2
    :goto_2
    return-void

    .line 122
    :cond_3
    const/16 v0, 0x38

    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 123
    const-wide/high16 v0, 0x4050000000000000L    # 64.0

    iput-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    goto :goto_0

    .line 131
    :cond_4
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 132
    iget-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    const-wide/high16 v2, 0x401a000000000000L    # 6.5

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    goto :goto_1

    .line 151
    :cond_5
    iput-boolean v4, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    goto :goto_2

    .line 155
    :cond_6
    const-string v0, "CameraApp"

    const-string v1, "[Camera temperature scenario] limit of BATTERY temp not initial : 470"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I

    iget v1, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    if-le v0, v1, :cond_7

    iget-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemper:D

    iget-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    const/16 v1, 0x1d6

    if-le v0, v1, :cond_9

    .line 159
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v0}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunFinishCamera:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 165
    :cond_9
    iput-boolean v4, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    goto :goto_2
.end method

.method public checkTemperatureForKddi()V
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 71
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    .line 79
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunTempCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public releaseCheckTemperature()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    .line 251
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunTempCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunFinishCamera:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    :cond_1
    iput-object v2, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    .line 260
    iput-object v2, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    .line 261
    return-void
.end method

.method public setBatteryTemper(I)V
    .locals 0
    .param p1, "temper"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    .line 236
    return-void
.end method
