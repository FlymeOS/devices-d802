.class public final enum Lcom/lge/gles/GLESConfig$MeshType;
.super Ljava/lang/Enum;
.source "GLESConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gles/GLESConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeshType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/gles/GLESConfig$MeshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/gles/GLESConfig$MeshType;

.field public static final enum CUSTOM_MESH:Lcom/lge/gles/GLESConfig$MeshType;

.field public static final enum PLANE:Lcom/lge/gles/GLESConfig$MeshType;

.field public static final enum PLANE_MESH:Lcom/lge/gles/GLESConfig$MeshType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/lge/gles/GLESConfig$MeshType;

    const-string v1, "PLANE"

    invoke-direct {v0, v1, v2}, Lcom/lge/gles/GLESConfig$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$MeshType;->PLANE:Lcom/lge/gles/GLESConfig$MeshType;

    new-instance v0, Lcom/lge/gles/GLESConfig$MeshType;

    const-string v1, "PLANE_MESH"

    invoke-direct {v0, v1, v3}, Lcom/lge/gles/GLESConfig$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$MeshType;->PLANE_MESH:Lcom/lge/gles/GLESConfig$MeshType;

    new-instance v0, Lcom/lge/gles/GLESConfig$MeshType;

    const-string v1, "CUSTOM_MESH"

    invoke-direct {v0, v1, v4}, Lcom/lge/gles/GLESConfig$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$MeshType;->CUSTOM_MESH:Lcom/lge/gles/GLESConfig$MeshType;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/gles/GLESConfig$MeshType;

    sget-object v1, Lcom/lge/gles/GLESConfig$MeshType;->PLANE:Lcom/lge/gles/GLESConfig$MeshType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/gles/GLESConfig$MeshType;->PLANE_MESH:Lcom/lge/gles/GLESConfig$MeshType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/gles/GLESConfig$MeshType;->CUSTOM_MESH:Lcom/lge/gles/GLESConfig$MeshType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/gles/GLESConfig$MeshType;->$VALUES:[Lcom/lge/gles/GLESConfig$MeshType;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/gles/GLESConfig$MeshType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/lge/gles/GLESConfig$MeshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/gles/GLESConfig$MeshType;

    return-object v0
.end method

.method public static values()[Lcom/lge/gles/GLESConfig$MeshType;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/lge/gles/GLESConfig$MeshType;->$VALUES:[Lcom/lge/gles/GLESConfig$MeshType;

    invoke-virtual {v0}, [Lcom/lge/gles/GLESConfig$MeshType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/gles/GLESConfig$MeshType;

    return-object v0
.end method
