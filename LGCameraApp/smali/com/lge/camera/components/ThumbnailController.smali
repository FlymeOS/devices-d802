.class public Lcom/lge/camera/components/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# instance fields
.field private mButton:Landroid/widget/ImageView;

.field private mCircleRadius:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultImage:I

.field private mResources:Landroid/content/res/Resources;

.field private mShouldAnimateThumb:Z

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "button"    # Landroid/widget/ImageView;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const v2, 0x7f02039e

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ThumbnailController;->mCircleRadius:I

    .line 63
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 64
    iput-object p3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    iput-object p2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902d0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ThumbnailController;->mCircleRadius:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "button"    # Landroid/widget/ImageView;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "isSecureCamera"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const v0, 0x7f02039e

    iput v0, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ThumbnailController;->mCircleRadius:I

    .line 74
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 75
    iput-object p3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    iput-object p2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    invoke-virtual {p0, p4}, Lcom/lge/camera/components/ThumbnailController;->setSecureDefaultImage(Z)V

    .line 79
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902d0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/ThumbnailController;->mCircleRadius:I

    .line 82
    return-void
.end method

.method private setupTransition(Landroid/graphics/Bitmap;Z)V
    .locals 11
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "useTransition"    # Z

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailWidth()I

    move-result v5

    .line 152
    .local v5, "miniThumbWidth":I
    invoke-virtual {p0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailHeight()I

    move-result v4

    .line 154
    .local v4, "miniThumbHeight":I
    const/4 v1, 0x0

    .line 155
    .local v1, "bmpGalleryButton":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 156
    .local v2, "defaultImage":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 158
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez p1, :cond_1

    .line 159
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget v7, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    iget v6, p0, Lcom/lge/camera/components/ThumbnailController;->mCircleRadius:I

    invoke-static {v2, v5, v4, v6}, Lcom/lge/camera/util/Util;->getRoundedImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 161
    const-string v6, "CameraApp"

    const-string v7, "Set thumbnail empty"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 174
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 175
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget v7, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 176
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    .line 178
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v10, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    .line 179
    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 180
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 181
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 189
    :goto_1
    if-nez p1, :cond_3

    .line 190
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    return-void

    .line 163
    :cond_1
    const-string v6, "CameraApp"

    const-string v7, "before Extract from bitmap"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p1, v5, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    iget v6, p0, Lcom/lge/camera/components/ThumbnailController;->mCircleRadius:I

    invoke-static {v0, v5, v4, v6}, Lcom/lge/camera/util/Util;->getRoundedImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 166
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 167
    const-string v6, "CameraApp"

    const-string v7, "after Extract from bitmap(%dx%d) to thumb(%dx%d)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_2
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 184
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v10, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    .line 185
    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 186
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 187
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    goto/16 :goto_1

    .line 192
    :cond_3
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 195
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_5

    .line 196
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 198
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget v7, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    .line 200
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v10, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    .line 201
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 202
    iget-object v6, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    const-string v1, "CameraApp"

    const-string v2, " memory free"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/lge/camera/util/Util;->recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v1, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 103
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 105
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 106
    iput-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 108
    return-void
.end method

.method public getThumbnailHeight()I
    .locals 4

    .prologue
    .line 145
    iget-object v2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 146
    .local v1, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 147
    .local v0, "miniThumbHeight":I
    return v0
.end method

.method public getThumbnailWidth()I
    .locals 4

    .prologue
    .line 139
    iget-object v2, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 140
    .local v1, "param":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v3

    sub-int v0, v2, v3

    .line 141
    .local v0, "miniThumbWidth":I
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 221
    :goto_0
    return v2

    .line 211
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/components/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 212
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 213
    const-string v3, "CameraApp"

    const-string v4, "Fail to open URI."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "CameraApp"

    const-string v4, "IOException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setButton(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/ImageView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    return-void
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "original"    # Landroid/graphics/Bitmap;
    .param p3, "useTransition"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 119
    :cond_0
    const/4 p1, 0x0

    .line 120
    const/4 p2, 0x0

    .line 123
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/components/ThumbnailController;->mUri:Landroid/net/Uri;

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/components/ThumbnailController;->setupTransition(Landroid/graphics/Bitmap;Z)V

    .line 125
    return-void
.end method

.method public setSecureDefaultImage(Z)V
    .locals 1
    .param p1, "isSecureCamera"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    const v0, 0x7f02039f

    :goto_0
    iput v0, p0, Lcom/lge/camera/components/ThumbnailController;->mDefaultImage:I

    .line 87
    return-void

    .line 85
    :cond_0
    const v0, 0x7f02039e

    goto :goto_0
.end method

.method public startTransition(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lge/camera/components/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ThumbnailController;->mShouldAnimateThumb:Z

    .line 136
    :cond_0
    return-void
.end method
