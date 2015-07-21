.class final Landroid/view/TouchFilterInputStageHelper;
.super Ljava/lang/Object;
.source "TouchFilterInputStageHelper.java"


# static fields
.field protected static final FINISH_HANDLED:I = 0x1

.field protected static final FINISH_NOT_HANDLED:I = 0x2

.field protected static final FORWARD:I = 0x0

.field private static final PEN_SUPPORT_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/pen_support"


# instance fields
.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field private mIsUsingPenRecognitionFilter:Z

.field private mNewEvent:Landroid/view/MotionEvent;

.field private mPenPalmApplicationPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSavedEventForSplit:Landroid/view/MotionEvent;

.field mTouchEventFilter:Landroid/view/TouchEventFilter;

.field mView:Landroid/view/View;

.field mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/ViewRootImpl$WindowInputEventReceiver;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "inputEventReceiver"    # Landroid/view/ViewRootImpl$WindowInputEventReceiver;
    .param p4, "savedEventForSplit"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mPenPalmApplicationPkgList:Ljava/util/List;

    .line 38
    iput-object p2, p0, Landroid/view/TouchFilterInputStageHelper;->mView:Landroid/view/View;

    .line 39
    iput-object p3, p0, Landroid/view/TouchFilterInputStageHelper;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 40
    iput-object p1, p0, Landroid/view/TouchFilterInputStageHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 41
    iput-object p4, p0, Landroid/view/TouchFilterInputStageHelper;->mSavedEventForSplit:Landroid/view/MotionEvent;

    .line 42
    iput-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mNewEvent:Landroid/view/MotionEvent;

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/TouchFilterInputStageHelper;->mIsUsingPenRecognitionFilter:Z

    .line 45
    iget-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 47
    :try_start_0
    new-instance v1, Landroid/view/TouchEventFilter;

    iget-object v2, p0, Landroid/view/TouchFilterInputStageHelper;->mView:Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/TouchEventFilter;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    .line 48
    iget-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$array;->config_application_list_of_penpalm_event_filter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mPenPalmApplicationPkgList:Ljava/util/List;

    .line 52
    iget-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/view/TouchFilterInputStageHelper;->isPenRecognitionFilterPkg(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/input/lge_touch/pen_support"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/sys/devices/virtual/input/lge_touch/pen_support"

    invoke-direct {p0, v1}, Landroid/view/TouchFilterInputStageHelper;->readPenSupport(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 54
    iget-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    new-instance v2, Landroid/view/PenRecognitionFilter;

    iget-object v3, p0, Landroid/view/TouchFilterInputStageHelper;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/PenRecognitionFilter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/TouchEventFilter;->addTouchEventFilter(Landroid/view/IEventFilter;)V

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/TouchFilterInputStageHelper;->mIsUsingPenRecognitionFilter:Z

    .line 59
    :cond_0
    iget-boolean v1, p0, Landroid/view/TouchFilterInputStageHelper;->mIsUsingPenRecognitionFilter:Z

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    new-instance v2, Landroid/view/PalmRejectionFilter;

    iget-object v3, p0, Landroid/view/TouchFilterInputStageHelper;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/PalmRejectionFilter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/TouchEventFilter;->addTouchEventFilter(Landroid/view/IEventFilter;)V

    .line 61
    iget-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    new-instance v2, Landroid/view/GripSuppressionFilter;

    iget-object v3, p0, Landroid/view/TouchFilterInputStageHelper;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/GripSuppressionFilter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/TouchEventFilter;->addTouchEventFilter(Landroid/view/IEventFilter;)V

    .line 62
    iget-object v1, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/TouchEventFilter;->convertId(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "TouchFilterInputStateHelper"

    const-string v2, "NullPointerException!! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPenRecognitionFilterPkg(Landroid/view/View;)Z
    .locals 5
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    .line 72
    const/4 v3, 0x0

    .line 73
    .local v3, "support":Z
    iget-object v4, p0, Landroid/view/TouchFilterInputStageHelper;->mPenPalmApplicationPkgList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 74
    iget-object v4, p1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/TouchFilterInputStageHelper;->mPenPalmApplicationPkgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    const/4 v3, 0x1

    .line 82
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private processMotionEvent(Landroid/view/MotionEvent;)I
    .locals 5
    .param p1, "inputEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v2, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    iget-object v2, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    invoke-virtual {v2, p1}, Landroid/view/TouchEventFilter;->filtering(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 167
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/view/TouchFilterInputStageHelper;->mTouchEventFilter:Landroid/view/TouchEventFilter;

    invoke-virtual {v2}, Landroid/view/TouchEventFilter;->needToSendAdditionalEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Landroid/view/TouchFilterInputStageHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, p0, Landroid/view/TouchFilterInputStageHelper;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 172
    :cond_2
    if-nez v0, :cond_3

    .line 173
    const/4 v1, 0x1

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSequenceNumber()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 178
    iput-object p1, p0, Landroid/view/TouchFilterInputStageHelper;->mSavedEventForSplit:Landroid/view/MotionEvent;

    .line 179
    iput-object v0, p0, Landroid/view/TouchFilterInputStageHelper;->mNewEvent:Landroid/view/MotionEvent;

    goto :goto_0
.end method

.method private readPenSupport(Ljava/lang/String;)I
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "inReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 88
    .local v4, "lineStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 91
    .local v0, "SupportPenType":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v2    # "inReader":Ljava/io/BufferedReader;
    .local v3, "inReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 102
    if-eqz v3, :cond_0

    .line 103
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 109
    .end local v3    # "inReader":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v0

    .line 105
    .end local v2    # "inReader":Ljava/io/BufferedReader;
    .restart local v3    # "inReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "TouchFilterInputStateHelper"

    const-string v6, "File Close exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 108
    .end local v3    # "inReader":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "TouchFilterInputStateHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "penSupport File Not Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    if-eqz v2, :cond_1

    .line 103
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 105
    :catch_2
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "TouchFilterInputStateHelper"

    const-string v6, "File Close exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v5, "TouchFilterInputStateHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "penSupport IOException e "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    if-eqz v2, :cond_1

    .line 103
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 105
    :catch_4
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "TouchFilterInputStateHelper"

    const-string v6, "File Close exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 102
    if-eqz v2, :cond_1

    .line 103
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 105
    :catch_6
    move-exception v1

    .line 106
    const-string v5, "TouchFilterInputStateHelper"

    const-string v6, "File Close exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 102
    :goto_4
    if-eqz v2, :cond_2

    .line 103
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 107
    :cond_2
    :goto_5
    throw v5

    .line 105
    :catch_7
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "TouchFilterInputStateHelper"

    const-string v7, "File Close exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "inReader":Ljava/io/BufferedReader;
    .restart local v3    # "inReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "inReader":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 98
    .end local v2    # "inReader":Ljava/io/BufferedReader;
    .restart local v3    # "inReader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "inReader":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 96
    .end local v2    # "inReader":Ljava/io/BufferedReader;
    .restart local v3    # "inReader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3    # "inReader":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 94
    .end local v2    # "inReader":Ljava/io/BufferedReader;
    .restart local v3    # "inReader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "inReader":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method


# virtual methods
.method public getNewEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/view/TouchFilterInputStageHelper;->mNewEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getSavedEventForSplit()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/view/TouchFilterInputStageHelper;->mSavedEventForSplit:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public initializeEventForTouchFilter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Landroid/view/TouchFilterInputStageHelper;->mNewEvent:Landroid/view/MotionEvent;

    .line 194
    iput-object v0, p0, Landroid/view/TouchFilterInputStageHelper;->mSavedEventForSplit:Landroid/view/MotionEvent;

    .line 195
    return-void
.end method

.method protected onProcessInner(Landroid/view/InputEvent;)I
    .locals 14
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .prologue
    .line 113
    instance-of v13, p1, Landroid/view/MotionEvent;

    if-eqz v13, :cond_5

    move-object v2, p1

    .line 114
    check-cast v2, Landroid/view/MotionEvent;

    .line 115
    .local v2, "event":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    .line 116
    .local v8, "source":I
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 117
    .local v1, "action":I
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 119
    .local v0, "NI":I
    and-int/lit8 v13, v8, 0x2

    if-nez v13, :cond_3

    const/4 v6, 0x1

    .line 120
    .local v6, "invalidSource":Z
    :goto_0
    const/4 v7, 0x0

    .line 121
    .local v7, "invalidToolType":Z
    const/4 v4, 0x0

    .line 122
    .local v4, "invalidAction":Z
    const/4 v5, 0x0

    .line 124
    .local v5, "invalidEvent":Z
    packed-switch v1, :pswitch_data_0

    .line 134
    :pswitch_0
    const/4 v4, 0x1

    .line 138
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 139
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    .line 140
    .local v9, "toolType":I
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v12

    .line 141
    .local v12, "z":F
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v10

    .line 142
    .local v10, "wM":F
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v11

    .line 144
    .local v11, "wm":F
    if-nez v9, :cond_0

    .line 145
    const/4 v7, 0x1

    .line 148
    :cond_0
    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    invoke-static {v10, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x0

    invoke-static {v11, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-nez v13, :cond_2

    .line 149
    :cond_1
    const/4 v5, 0x1

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 119
    .end local v3    # "i":I
    .end local v4    # "invalidAction":Z
    .end local v5    # "invalidEvent":Z
    .end local v6    # "invalidSource":Z
    .end local v7    # "invalidToolType":Z
    .end local v9    # "toolType":I
    .end local v10    # "wM":F
    .end local v11    # "wm":F
    .end local v12    # "z":F
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 131
    .restart local v4    # "invalidAction":Z
    .restart local v5    # "invalidEvent":Z
    .restart local v6    # "invalidSource":Z
    .restart local v7    # "invalidToolType":Z
    :pswitch_1
    const/4 v4, 0x0

    .line 132
    goto :goto_1

    .line 153
    .restart local v3    # "i":I
    :cond_4
    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 154
    invoke-direct {p0, v2}, Landroid/view/TouchFilterInputStageHelper;->processMotionEvent(Landroid/view/MotionEvent;)I

    move-result v13

    .line 157
    .end local v0    # "NI":I
    .end local v1    # "action":I
    .end local v2    # "event":Landroid/view/MotionEvent;
    .end local v3    # "i":I
    .end local v4    # "invalidAction":Z
    .end local v5    # "invalidEvent":Z
    .end local v6    # "invalidSource":Z
    .end local v7    # "invalidToolType":Z
    .end local v8    # "source":I
    :goto_3
    return v13

    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
