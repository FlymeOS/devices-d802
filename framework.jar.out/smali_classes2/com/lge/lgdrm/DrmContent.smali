.class public final Lcom/lge/lgdrm/DrmContent;
.super Ljava/lang/Object;
.source "DrmContent.java"


# static fields
.field private static FLIconStatus:I


# instance fields
.field protected agentType:I

.field protected autoRightState:Z

.field private contentInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentSize:J

.field protected contentType:I

.field protected filename:Ljava/lang/String;

.field protected index:I

.field private mediaType:I

.field private metadata:Lcom/lge/lgdrm/DrmContentMetaData;

.field protected permisson:I

.field protected previewContent:I

.field protected rightState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, -0x1

    sput v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 132
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 136
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 146
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "contentType"    # I

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 132
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 136
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 149
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 150
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    .line 151
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 153
    if-nez p3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/16 v0, 0x1800

    if-ne p3, v0, :cond_2

    .line 158
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 159
    :cond_2
    const/16 v0, 0x501

    if-ne p3, v0, :cond_3

    .line 160
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 161
    :cond_3
    const/16 v0, 0x10

    if-le p3, v0, :cond_4

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_4

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 163
    :cond_4
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_5

    .line 164
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 165
    :cond_5
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_6

    .line 166
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 167
    :cond_6
    const/high16 v0, 0x80000

    if-ne p3, v0, :cond_7

    .line 168
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 169
    :cond_7
    const/high16 v0, 0x100000

    and-int/2addr v0, p3

    if-nez v0, :cond_8

    const/high16 v0, 0x800000

    if-ne p3, v0, :cond_0

    .line 170
    :cond_8
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "contentType"    # I
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .param p6, "mediaType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 132
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 136
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 190
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 191
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    .line 192
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 193
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iput p6, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 197
    const/16 v0, 0x1800

    if-ne p3, v0, :cond_1

    .line 198
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/16 v0, 0x501

    if-ne p3, v0, :cond_2

    .line 200
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 201
    :cond_2
    const/16 v0, 0x10

    if-le p3, v0, :cond_3

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_3

    .line 202
    iput v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 203
    :cond_3
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_4

    .line 204
    iput v3, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 205
    :cond_4
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_5

    .line 206
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 207
    :cond_5
    const/high16 v0, 0x80000

    if-ne p3, v0, :cond_6

    .line 208
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 209
    :cond_6
    const/high16 v0, 0x100000

    and-int/2addr v0, p3

    if-nez v0, :cond_7

    const/high16 v0, 0x800000

    if-ne p3, v0, :cond_0

    .line 210
    :cond_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0
.end method

.method public static getContentInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 380
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 395
    :goto_0
    return-object v0

    .line 384
    :cond_0
    if-nez p0, :cond_1

    .line 385
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 v0, 0x6

    if-le p1, v0, :cond_3

    .line 388
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 392
    new-instance v0, Lcom/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_4
    invoke-static {p1, p0, v1, v1}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContentType(Ljava/lang/String;)I
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 275
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    .line 287
    :goto_0
    return v0

    .line 279
    :cond_0
    if-nez p0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 284
    new-instance v0, Lcom/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    invoke-static {p0, v0, v0}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentType(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public static isForwardlockIconVisible()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 548
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_0

    .line 560
    :goto_0
    return v1

    .line 552
    :cond_0
    sget v2, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 553
    invoke-static {}, Lcom/lge/lgdrm/DrmContent;->nativeIsForwardlockIconVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    sput v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    .line 560
    :cond_1
    :goto_1
    sget v2, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    if-ne v2, v0, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    .line 556
    :cond_2
    sput v1, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 560
    goto :goto_2
.end method

.method private native nativeCheckPreviewContent(Ljava/lang/String;I)Z
.end method

.method private static native nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;
.end method

.method private native nativeGetContentSize(Ljava/lang/String;II)J
.end method

.method private static native nativeGetContentType(Ljava/lang/String;II)I
.end method

.method private native nativeGetMetaData(Lcom/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeIsForwardlockIconVisible()Z
.end method

.method private setBasicInfo(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "contentType"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .param p5, "mediaType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 621
    iput p1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    .line 622
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 623
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iput p5, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 627
    const/16 v0, 0x1800

    if-ne p2, v0, :cond_1

    .line 628
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    const/16 v0, 0x501

    if-ne p2, v0, :cond_2

    .line 630
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 631
    :cond_2
    const/16 v0, 0x10

    if-le p2, v0, :cond_3

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_3

    .line 632
    iput v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 633
    :cond_3
    const/16 v0, 0x3000

    if-ne p2, v0, :cond_4

    .line 634
    iput v3, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 635
    :cond_4
    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_5

    .line 636
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 637
    :cond_5
    const/high16 v0, 0x80000

    if-ne p2, v0, :cond_6

    .line 638
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 639
    :cond_6
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    const/high16 v0, 0x800000

    if-ne p2, v0, :cond_0

    .line 640
    :cond_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0
.end method

.method private setBasicInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "mediaType"    # I

    .prologue
    .line 654
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 657
    return-void
.end method


# virtual methods
.method public checkPreviewContent()Z
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmContent;->nativeCheckPreviewContent(Ljava/lang/String;I)Z

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInfo(I)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, "value":Ljava/lang/String;
    if-lt p1, v3, :cond_0

    if-le p1, v5, :cond_1

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_4

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    :cond_3
    :goto_0
    return-object v1

    .line 321
    :cond_4
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v4, :cond_5

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v6, :cond_5

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 326
    :cond_5
    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-ne p1, v2, :cond_8

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 328
    .restart local v0    # "value":Ljava/lang/String;
    if-eqz v0, :cond_7

    move-object v1, v0

    .line 329
    goto :goto_0

    .line 331
    :cond_7
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v3, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v1, v2, v3}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 333
    goto :goto_0

    .line 337
    :cond_8
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v2, v4, :cond_9

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v2, v6, :cond_3

    .line 341
    :cond_9
    const/4 v2, 0x5

    if-eq p1, v2, :cond_a

    if-ne p1, v5, :cond_3

    .line 342
    :cond_a
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 343
    .restart local v0    # "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    move-object v1, v0

    .line 344
    goto :goto_0

    .line 346
    :cond_b
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v3, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v1, v2, v3}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContent;->contentInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 348
    goto :goto_0
.end method

.method public getContentSize()J
    .locals 4

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 406
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 410
    :goto_0
    return-wide v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentSize(Ljava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 410
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    return v0
.end method

.method public getDrmContentType()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    return v0
.end method

.method public getMetaData()Lcom/lge/lgdrm/DrmContentMetaData;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 473
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    move-object v0, v1

    .line 495
    :cond_0
    :goto_0
    return-object v0

    .line 479
    :cond_1
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    if-eqz v2, :cond_2

    .line 481
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    goto :goto_0

    .line 484
    :cond_2
    new-instance v0, Lcom/lge/lgdrm/DrmContentMetaData;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmContentMetaData;-><init>()V

    .line 486
    .local v0, "meta":Lcom/lge/lgdrm/DrmContentMetaData;
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmContent;->nativeGetMetaData(Lcom/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 487
    goto :goto_0

    .line 490
    :cond_3
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContent;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    goto :goto_0
.end method

.method public isActionSupported(I)Z
    .locals 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 454
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isIdentical(Lcom/lge/lgdrm/DrmContent;)Z
    .locals 3
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    const/4 v0, 0x0

    .line 593
    if-nez p1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 601
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    if-ne v1, v2, :cond_0

    .line 604
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSibling(Lcom/lge/lgdrm/DrmContent;)Z
    .locals 3
    .param p1, "content"    # Lcom/lge/lgdrm/DrmContent;

    .prologue
    const/4 v0, 0x0

    .line 573
    if-nez p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 578
    :cond_1
    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 581
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetMetaData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectPreviewContent(Z)V
    .locals 1
    .param p1, "reset"    # Z

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    goto :goto_0
.end method

.method public setMetaData(Lcom/lge/lgdrm/DrmContentMetaData;)I
    .locals 2
    .param p1, "metaData"    # Lcom/lge/lgdrm/DrmContentMetaData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter metaData is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
