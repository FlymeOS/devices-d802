.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field private mSimSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3887
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 3885
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    .line 3888
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 3890
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 3885
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    .line 3891
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 3892
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 18

    .prologue
    .line 3946
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/app/Notification$Builder;->access$1400(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3947
    .local v8, "oldBuilderContentText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v14, 0x0

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v13, v14}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3949
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getInboxLayoutResource()I
    invoke-static {v13}, Landroid/app/Notification$Builder;->access$2000(Landroid/app/Notification$Builder;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 3951
    .local v3, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v13, v8}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const v13, #android:id@text2#t

    const/16 v14, 0x8

    invoke-virtual {v3, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v13, 0x7

    new-array v10, v13, [I

    fill-array-data v10, :array_0

    .local v10, "rowIds":[I
    move-object v2, v10

    .local v2, "arr$":[I
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget v9, v2, v5

    .line 3960
    .local v9, "rowId":I
    const/16 v13, 0x8

    invoke-virtual {v3, v9, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3959
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3963
    .end local v9    # "rowId":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/app/Notification$Builder;->access$1100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    const/4 v6, 0x1

    .line 3965
    .local v6, "largeText":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/app/Notification$Builder;->access$1100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, #android:dimen@notification_subtext_size#t

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v12, v13

    .line 3967
    .local v12, "subTextSize":F
    const/4 v4, 0x0

    .line 3968
    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_3

    array-length v13, v10

    if-ge v4, v13, :cond_3

    .line 3969
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    .line 3970
    .local v11, "str":Ljava/lang/CharSequence;
    if-eqz v11, :cond_1

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 3971
    aget v13, v10, v4

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3972
    aget v13, v10, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v14, v11}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3974
    if-eqz v6, :cond_1

    # getter for: Landroid/app/Notification;->mUIVersion:D
    invoke-static {}, Landroid/app/Notification;->access$400()D

    move-result-wide v14

    const-wide v16, 0x4010cccccccccccdL    # 4.2

    cmpl-double v13, v14, v16

    if-ltz v13, :cond_1

    .line 3975
    aget v13, v10, v4

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14, v12}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 3980
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 3981
    goto :goto_2

    .line 3963
    .end local v4    # "i":I
    .end local v6    # "largeText":Z
    .end local v11    # "str":Ljava/lang/CharSequence;
    .end local v12    # "subTextSize":F
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 3983
    .restart local v4    # "i":I
    .restart local v6    # "largeText":Z
    .restart local v12    # "subTextSize":F
    :cond_3
    const v14, #android:id@inbox_end_pad#t

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v3, v14, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, #android:id@inbox_more#t

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    array-length v15, v10

    if-le v13, v15, :cond_5

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v3, v14, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3989
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Notification$InboxStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 3991
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V
    invoke-static {v13, v3}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 3993
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v14, #android:id@profile_badge_large_template#t

    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v13, v3, v14}, Landroid/app/Notification$Builder;->access$1500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Notification$InboxStyle;->makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V

    return-object v3

    :cond_4
    const/16 v13, 0x8

    goto :goto_3

    :cond_5
    const/16 v13, 0x8

    goto :goto_4

    :array_0
    .array-data 4
        #android:id@inbox_text0#t
        #android:id@inbox_text1#t
        #android:id@inbox_text2#t
        #android:id@inbox_text3#t
        #android:id@inbox_text4#t
        #android:id@inbox_text5#t
        #android:id@inbox_text6#t
    .end array-data
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3923
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 3925
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 3926
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string v2, "android.textLines"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p1}, Landroid/app/Notification$InboxStyle;->putExtrasIntegerArrayList(Landroid/os/Bundle;)V

    .line 3927
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 3915
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$InboxStyle;->addSimSlotHide()V

    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1600(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    const-string v1, "android.textLines"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private addSimSlotHide()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    sget v1, Landroid/app/NotificationBuilderExt;->SIM_SLOT_HIDE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private putExtrasIntegerArrayList(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "android.simSlots"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;I)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "slotId"    # I

    .prologue
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3916
    return-object p0
.end method

.method public makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V
    .locals 18
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    sget v2, Lcom/flyme/internal/R$id;->text2:I

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v2, 0x7

    new-array v14, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/flyme/internal/R$id;->inbox_text0:I

    aput v3, v14, v2

    const/4 v2, 0x1

    sget v3, Lcom/flyme/internal/R$id;->inbox_text1:I

    aput v3, v14, v2

    const/4 v2, 0x2

    sget v3, Lcom/flyme/internal/R$id;->inbox_text2:I

    aput v3, v14, v2

    const/4 v2, 0x3

    sget v3, Lcom/flyme/internal/R$id;->inbox_text3:I

    aput v3, v14, v2

    const/4 v2, 0x4

    sget v3, Lcom/flyme/internal/R$id;->inbox_text4:I

    aput v3, v14, v2

    const/4 v2, 0x5

    sget v3, Lcom/flyme/internal/R$id;->inbox_text5:I

    aput v3, v14, v2

    const/4 v2, 0x6

    sget v3, Lcom/flyme/internal/R$id;->inbox_text6:I

    aput v3, v14, v2

    .local v14, "rowIds":[I
    move-object v8, v14

    .local v8, "arr$":[I
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_0

    aget v13, v8, v10

    .local v13, "rowId":I
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v13    # "rowId":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v11, 0x1

    .local v11, "largeText":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:dimen@notification_subtext_size#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v17, v0

    .local v17, "subTextSize":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_7

    array-length v2, v14

    if-ge v9, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    .local v16, "str":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .local v15, "simSlot":Ljava/lang/Integer;
    if-eqz v16, :cond_2

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget v2, v14, v9

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    aget v2, v14, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->mzInvokeMethodProcessLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v11, :cond_1

    aget v2, v14, v9

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Landroid/app/NotificationBuilderExt;->SIM_SLOT_0:I

    if-ne v2, v3, :cond_4

    aget v3, v14, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/flyme/internal/R$drawable;->sim1_notice_m:I

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v9    # "i":I
    .end local v11    # "largeText":Z
    .end local v15    # "simSlot":Ljava/lang/Integer;
    .end local v16    # "str":Ljava/lang/CharSequence;
    .end local v17    # "subTextSize":F
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v9    # "i":I
    .restart local v11    # "largeText":Z
    .restart local v15    # "simSlot":Ljava/lang/Integer;
    .restart local v16    # "str":Ljava/lang/CharSequence;
    .restart local v17    # "subTextSize":F
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Landroid/app/NotificationBuilderExt;->SIM_SLOT_1:I

    if-ne v2, v3, :cond_5

    aget v3, v14, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/flyme/internal/R$drawable;->sim2_notice_m:I

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    :cond_5
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Landroid/app/NotificationBuilderExt;->SIM_SLOT_UNKNOWN:I

    if-ne v2, v3, :cond_6

    aget v3, v14, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/flyme/internal/R$drawable;->nosim_notice_m:I

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    :cond_6
    aget v3, v14, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    .end local v15    # "simSlot":Ljava/lang/Integer;
    .end local v16    # "str":Ljava/lang/CharSequence;
    :cond_7
    sget v3, Lcom/flyme/internal/R$id;->inbox_end_pad:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/flyme/internal/R$id;->inbox_more:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v4, v14

    if-le v2, v4, :cond_9

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4004
    return-void

    :cond_8
    const/16 v2, 0x8

    goto :goto_4

    :cond_9
    const/16 v2, 0x8

    goto :goto_5
.end method
