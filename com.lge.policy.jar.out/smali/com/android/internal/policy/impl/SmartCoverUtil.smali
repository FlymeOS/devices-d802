.class Lcom/android/internal/policy/impl/SmartCoverUtil;
.super Ljava/lang/Object;
.source "SmartCoverUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SmartCoverUtil$1;,
        Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;
    }
.end annotation


# static fields
.field private static final COVERTYPE_CIRCLE:I = 0x3

.field private static final COVERTYPE_COVER:I = 0x0

.field private static final COVERTYPE_DISNEY:I = 0x6

.field private static final COVERTYPE_LOLLIPOP:I = 0x2

.field private static final COVERTYPE_NONE:I = 0x5

.field private static final COVERTYPE_SLIDE:I = 0x4

.field private static final COVERTYPE_VIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmartCoverUtil"

.field static mCoverType:I

.field static mSmartCoverClosed:Z

.field static mSupportSmartCover:Z

.field static mViewCoverClosed:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSmartCoverReceiver:Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSupportSmartCover:Z

    .line 32
    sput-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    .line 33
    sput-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    .line 34
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;

    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_using_smart_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_using_lollipop_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_using_window_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_using_circle_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_using_slide_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_using_disney_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSupportSmartCover:Z

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mHandler:Landroid/os/Handler;

    .line 51
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSmartCoverNoView()Z
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static isSmartCoverWithView()Z
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 69
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCurrentSmartCoverSettingByCoverStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    sget v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iput-object v4, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    .line 142
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SmartCoverUtil;->setSmartCoverSetting(Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;

    if-nez v0, :cond_2

    .line 146
    new-instance v0, Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;-><init>(Lcom/android/internal/policy/impl/SmartCoverUtil;Lcom/android/internal/policy/impl/SmartCoverUtil$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverReceiver:Lcom/android/internal/policy/impl/SmartCoverUtil$SmartCoverReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 150
    :cond_2
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SmartCoverUtil;->setSmartCoverSetting(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSmartCoverSetting(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "writer":Ljava/io/FileWriter;
    const-string v2, "/sys/devices/virtual/input/lge_touch/use_quick_window"

    .line 79
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    const-string v5, "SmartCoverUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmartCoverSetting("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): file does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    if-eqz v4, :cond_2

    .line 89
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :cond_2
    if-eqz v4, :cond_3

    .line 97
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v3, v4

    .line 100
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 99
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 101
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "SmartCoverUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmartCoverSetting("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): exception occurs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    if-eqz v3, :cond_0

    .line 97
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 99
    :catch_2
    move-exception v5

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 96
    :goto_2
    if-eqz v3, :cond_4

    .line 97
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 100
    :cond_4
    :goto_3
    throw v5

    .line 99
    :catch_3
    move-exception v6

    goto :goto_3

    .line 95
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 92
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method


# virtual methods
.method dumpSmartCoverUtil(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 180
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    const-string v0, " mSupportSmartCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    sget-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSupportSmartCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 183
    return-void
.end method

.method updateSmartCoverStatus(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x5

    .line 106
    sget-boolean v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSupportSmartCover:Z

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "cover_type"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "mSetCoverType":I
    packed-switch v0, :pswitch_data_0

    .line 130
    :pswitch_0
    sput v2, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SmartCoverUtil;->setCurrentSmartCoverSettingByCoverStatus()V

    .line 134
    .end local v0    # "mSetCoverType":I
    :cond_0
    return-void

    .line 110
    .restart local v0    # "mSetCoverType":I
    :pswitch_1
    const-string v1, "quick_cover_enable"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    goto :goto_0

    .line 113
    :cond_1
    sput v2, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v1, "quick_view_enable"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const/4 v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    goto :goto_0

    .line 123
    :cond_2
    sput v2, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    goto :goto_0

    .line 127
    :pswitch_3
    const/4 v1, 0x2

    sput v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
