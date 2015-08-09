.class public Lcom/android/server/power/PasswordConverter;
.super Ljava/lang/Object;
.source "PasswordConverter.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mDpi:I

.field private static mOrientations:[Z

.field private static mRotationFixed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 14
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    .line 15
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/PasswordConverter;->DEBUG:Z

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    .line 19
    sput-boolean v1, Lcom/android/server/power/PasswordConverter;->mRotationFixed:Z

    return-void

    :cond_0
    move v0, v1

    .line 15
    goto :goto_0

    .line 18
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertPositionToPassword(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "mPointArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v7, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/EasyKnockPoint;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v6, "password":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 70
    .local v8, "pwSize":I
    new-array v9, v14, [I

    aput v13, v9, v13

    .line 72
    .local v9, "tmp":[I
    const/4 v5, 0x0

    .line 73
    .local v5, "p":Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 74
    .local v3, "isvalid":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 75
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "p":Landroid/graphics/Point;
    check-cast v5, Landroid/graphics/Point;

    .line 78
    .restart local v5    # "p":Landroid/graphics/Point;
    :cond_0
    if-eqz v5, :cond_1

    iget v10, v5, Landroid/graphics/Point;->x:I

    if-lez v10, :cond_1

    iget v10, v5, Landroid/graphics/Point;->y:I

    if-lez v10, :cond_1

    .line 79
    or-int/lit8 v3, v3, 0x1

    .line 74
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    if-eqz v8, :cond_3

    if-nez v3, :cond_4

    .line 84
    :cond_3
    sget-object v10, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    const-string v11, "invalid touch points!"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v10, ""

    .line 108
    :goto_1
    return-object v10

    .line 88
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_5

    .line 89
    new-instance v11, Lcom/android/server/power/EasyKnockPoint;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v12, v10

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-direct {v11, v12, v10}, Lcom/android/server/power/EasyKnockPoint;-><init>(FF)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    :cond_5
    sget v1, Lcom/android/server/power/PasswordConverter;->mDpi:I

    .line 93
    .local v1, "dpi":I
    sget-boolean v10, Lcom/android/server/power/PasswordConverter;->DEBUG:Z

    if-eqz v10, :cond_6

    .line 94
    sget-object v10, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mOrientations : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    aget-boolean v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    aget-boolean v12, v12, v14

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v13, 0x2

    aget-boolean v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v13, 0x3

    aget-boolean v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_6
    sget-object v10, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    sget-boolean v11, Lcom/android/server/power/PasswordConverter;->mRotationFixed:Z

    invoke-static {v7, v10, v1, v11}, Lcom/android/server/power/EasyKnockPassword;->getAnswers(Ljava/util/List;[ZIZ)[I

    move-result-object v0

    .line 98
    .local v0, "answers":[I
    move-object v9, v0

    .line 99
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_3
    array-length v10, v9

    if-ge v4, v10, :cond_8

    .line 100
    aget v10, v9, v4

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    rem-int v10, v4, v8

    if-nez v10, :cond_7

    .line 102
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 105
    :cond_8
    sget-boolean v10, Lcom/android/server/power/PasswordConverter;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 106
    sget-object v10, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Array["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] string["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1
.end method

.method public static resetOrientation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    aput-boolean v2, v0, v2

    .line 57
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x1

    aput-boolean v2, v0, v1

    .line 58
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 59
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 60
    return-void
.end method

.method public static setDisplay(I)V
    .locals 0
    .param p0, "dpi"    # I

    .prologue
    .line 29
    sput p0, Lcom/android/server/power/PasswordConverter;->mDpi:I

    .line 30
    return-void
.end method

.method public static setOrientation(I)V
    .locals 4
    .param p0, "rotation"    # I

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-static {}, Lcom/android/server/power/PasswordConverter;->resetOrientation()V

    .line 37
    packed-switch p0, :pswitch_data_0

    .line 47
    sget-object v0, Lcom/android/server/power/PasswordConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not  supported rotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 42
    :pswitch_0
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/android/server/power/PasswordConverter;->mOrientations:[Z

    aput-boolean v3, v0, p0

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setRotatedVariantPasswordChecking(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 22
    sput-boolean p0, Lcom/android/server/power/PasswordConverter;->mRotationFixed:Z

    .line 23
    return-void
.end method
