.class public Lcom/lge/os/Build$LGUI_VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LGUI_VERSION"
.end annotation


# static fields
.field public static final RELEASE:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 64
    const-string v0, "ro.lge.lguiversion"

    const-string v3, "4.1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 68
    sput v1, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    .line 70
    :goto_1
    return-void

    .line 64
    :pswitch_0
    const-string v4, "4.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v4, "4.2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    const-string v4, "4.3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 65
    :pswitch_3
    sput v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    goto :goto_1

    .line 66
    :pswitch_4
    const/4 v0, 0x3

    sput v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    goto :goto_1

    .line 67
    :pswitch_5
    const/4 v0, 0x4

    sput v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0xc8f7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
