.class public abstract enum Lcom/lge/morpho/utils/opengl/GLESVersion;
.super Ljava/lang/Enum;
.source "GLESVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/morpho/utils/opengl/GLESVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/morpho/utils/opengl/GLESVersion;

.field private static EGL_CONTEXT_CLIENT_VERSION:I

.field public static final enum GLES10:Lcom/lge/morpho/utils/opengl/GLESVersion;

.field public static final enum GLES20:Lcom/lge/morpho/utils/opengl/GLESVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/lge/morpho/utils/opengl/GLESVersion$1;

    const-string v1, "GLES10"

    invoke-direct {v0, v1, v2}, Lcom/lge/morpho/utils/opengl/GLESVersion$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES10:Lcom/lge/morpho/utils/opengl/GLESVersion;

    .line 12
    new-instance v0, Lcom/lge/morpho/utils/opengl/GLESVersion$2;

    const-string v1, "GLES20"

    invoke-direct {v0, v1, v3}, Lcom/lge/morpho/utils/opengl/GLESVersion$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES20:Lcom/lge/morpho/utils/opengl/GLESVersion;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/morpho/utils/opengl/GLESVersion;

    sget-object v1, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES10:Lcom/lge/morpho/utils/opengl/GLESVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES20:Lcom/lge/morpho/utils/opengl/GLESVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->$VALUES:[Lcom/lge/morpho/utils/opengl/GLESVersion;

    .line 21
    const/16 v0, 0x3098

    sput v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->EGL_CONTEXT_CLIENT_VERSION:I

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/lge/morpho/utils/opengl/GLESVersion$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/lge/morpho/utils/opengl/GLESVersion$1;

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/lge/morpho/utils/opengl/GLESVersion;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 5
    sget v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->EGL_CONTEXT_CLIENT_VERSION:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/morpho/utils/opengl/GLESVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/lge/morpho/utils/opengl/GLESVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/morpho/utils/opengl/GLESVersion;

    return-object v0
.end method

.method public static values()[Lcom/lge/morpho/utils/opengl/GLESVersion;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->$VALUES:[Lcom/lge/morpho/utils/opengl/GLESVersion;

    invoke-virtual {v0}, [Lcom/lge/morpho/utils/opengl/GLESVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/morpho/utils/opengl/GLESVersion;

    return-object v0
.end method


# virtual methods
.method public abstract getContextAttributeList()[I
.end method
