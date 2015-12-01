.class public Lcom/lge/camera/components/CameraFocusView;
.super Landroid/widget/RelativeLayout;
.source "CameraFocusView.java"


# static fields
.field public static final STATE_CONTINUOUS_FAIL:I = 0x5

.field public static final STATE_CONTINUOUS_SEARCHING:I = 0x3

.field public static final STATE_CONTINUOUS_SUCCESS:I = 0x4

.field public static final STATE_FAIL:I = 0x2

.field public static final STATE_FRONT_AE:I = 0x9

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_SUCCESS:I = 0x1

.field public static final STATE_TOUCH_FAIL:I = 0x8

.field public static final STATE_TOUCH_NORMAL:I = 0x6

.field public static final STATE_TOUCH_SUCCESS:I = 0x7


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method private setDrawable(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 92
    const v1, 0x7f0d0089

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/CameraFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    .local v0, "rectangle":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraFocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 58
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    packed-switch p1, :pswitch_data_0

    .line 86
    const-string v0, "CameraApp"

    const-string v1, "focus indicator state out of range!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const v0, 0x7f020383

    invoke-direct {p0, v0}, Lcom/lge/camera/components/CameraFocusView;->setDrawable(I)V

    goto :goto_0

    .line 69
    :pswitch_1
    const v0, 0x7f020385

    invoke-direct {p0, v0}, Lcom/lge/camera/components/CameraFocusView;->setDrawable(I)V

    goto :goto_0

    .line 73
    :pswitch_2
    const v0, 0x7f020389

    invoke-direct {p0, v0}, Lcom/lge/camera/components/CameraFocusView;->setDrawable(I)V

    goto :goto_0

    .line 78
    :pswitch_3
    const v0, 0x7f020382

    invoke-direct {p0, v0}, Lcom/lge/camera/components/CameraFocusView;->setDrawable(I)V

    goto :goto_0

    .line 82
    :pswitch_4
    const v0, 0x7f02038a

    invoke-direct {p0, v0}, Lcom/lge/camera/components/CameraFocusView;->setDrawable(I)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
