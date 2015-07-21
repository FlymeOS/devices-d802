.class public final enum Lcom/lge/gles/GLESConfig$DepthLevel;
.super Ljava/lang/Enum;
.source "GLESConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gles/GLESConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/gles/GLESConfig$DepthLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/gles/GLESConfig$DepthLevel;

.field public static final enum DEFAULT_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

.field public static final enum HIGH_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

.field public static final enum LOW_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    const-string v1, "HIGH_LEVEL_DEPTH"

    invoke-direct {v0, v1, v2}, Lcom/lge/gles/GLESConfig$DepthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->HIGH_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    .line 41
    new-instance v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    const-string v1, "DEFAULT_LEVEL_DEPTH"

    invoke-direct {v0, v1, v3}, Lcom/lge/gles/GLESConfig$DepthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->DEFAULT_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    .line 42
    new-instance v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    const-string v1, "LOW_LEVEL_DEPTH"

    invoke-direct {v0, v1, v4}, Lcom/lge/gles/GLESConfig$DepthLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->LOW_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/gles/GLESConfig$DepthLevel;

    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->HIGH_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->DEFAULT_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/gles/GLESConfig$DepthLevel;->LOW_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->$VALUES:[Lcom/lge/gles/GLESConfig$DepthLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static enumToFloat(Lcom/lge/gles/GLESConfig$DepthLevel;)F
    .locals 3
    .param p0, "level"    # Lcom/lge/gles/GLESConfig$DepthLevel;

    .prologue
    const/4 v0, 0x0

    .line 45
    sget-object v1, Lcom/lge/gles/GLESConfig$1;->$SwitchMap$com$lge$gles$GLESConfig$DepthLevel:[I

    invoke-virtual {p0}, Lcom/lge/gles/GLESConfig$DepthLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_0
    :pswitch_0
    return v0

    .line 47
    :pswitch_1
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    .line 51
    :pswitch_2
    const/high16 v0, -0x3d380000    # -100.0f

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/gles/GLESConfig$DepthLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/gles/GLESConfig$DepthLevel;

    return-object v0
.end method

.method public static values()[Lcom/lge/gles/GLESConfig$DepthLevel;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->$VALUES:[Lcom/lge/gles/GLESConfig$DepthLevel;

    invoke-virtual {v0}, [Lcom/lge/gles/GLESConfig$DepthLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/gles/GLESConfig$DepthLevel;

    return-object v0
.end method
