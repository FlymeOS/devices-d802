.class Landroid/view/PenRecognitionFilter$PalmRegion;
.super Ljava/lang/Object;
.source "PenRecognitionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PenRecognitionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmRegion"
.end annotation


# instance fields
.field private mLargePalmAreaSize:I

.field private mPalmAreaSize:I

.field private mPalmRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/PenRecognitionFilter;


# direct methods
.method public constructor <init>(Landroid/view/PenRecognitionFilter;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    iput-object p1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->this$0:Landroid/view/PenRecognitionFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmAreaSize:I

    .line 117
    iput v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mLargePalmAreaSize:I

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    .line 121
    invoke-static {}, Landroid/view/RegionInfo;->getLCDRatio()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    # getter for: Landroid/view/PenRecognitionFilter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/view/PenRecognitionFilter;->access$000(Landroid/view/PenRecognitionFilter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v1, v1

    :goto_0
    iput v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mLargePalmAreaSize:I

    .line 122
    iget v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mLargePalmAreaSize:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmAreaSize:I

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "i":I
    :cond_0
    # getter for: Landroid/view/PenRecognitionFilter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/view/PenRecognitionFilter;->access$000(Landroid/view/PenRecognitionFilter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v1, v1

    goto :goto_0

    .line 126
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/view/PenRecognitionFilter$PalmRegion;->init()V

    .line 127
    return-void
.end method


# virtual methods
.method public assignPalm(IIIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "largePalm"    # Z

    .prologue
    .line 137
    if-eqz p4, :cond_0

    iget v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mLargePalmAreaSize:I

    .line 138
    .local v1, "rectSize":I
    :goto_0
    iget-object v2, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 139
    .local v0, "mRect":Landroid/graphics/Rect;
    sub-int v2, p2, v1

    sub-int v3, p3, v1

    add-int v4, p2, v1

    add-int v5, p3, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 140
    return-void

    .line 137
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "rectSize":I
    :cond_0
    iget v1, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmAreaSize:I

    goto :goto_0
.end method

.method public checkPalmRegion(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 144
    iget-object v2, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 145
    .local v1, "mRect":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x1

    .line 149
    .end local v1    # "mRect":Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 143
    .restart local v1    # "mRect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "mRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 131
    iget-object v2, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 132
    .local v1, "mRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "mRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v2, "msg":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 156
    iget-object v3, p0, Landroid/view/PenRecognitionFilter$PalmRegion;->mPalmRectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 157
    .local v1, "mRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "mRect":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
