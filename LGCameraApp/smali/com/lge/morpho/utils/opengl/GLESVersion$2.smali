.class final enum Lcom/lge/morpho/utils/opengl/GLESVersion$2;
.super Lcom/lge/morpho/utils/opengl/GLESVersion;
.source "GLESVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/utils/opengl/GLESVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/morpho/utils/opengl/GLESVersion;-><init>(Ljava/lang/String;ILcom/lge/morpho/utils/opengl/GLESVersion$1;)V

    return-void
.end method


# virtual methods
.method public getContextAttributeList()[I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    # getter for: Lcom/lge/morpho/utils/opengl/GLESVersion;->EGL_CONTEXT_CLIENT_VERSION:I
    invoke-static {}, Lcom/lge/morpho/utils/opengl/GLESVersion;->access$100()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/16 v1, 0x3038

    aput v1, v0, v3

    return-object v0
.end method
