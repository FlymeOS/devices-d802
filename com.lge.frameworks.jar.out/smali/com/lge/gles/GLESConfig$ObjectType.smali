.class public final enum Lcom/lge/gles/GLESConfig$ObjectType;
.super Ljava/lang/Enum;
.source "GLESConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gles/GLESConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/gles/GLESConfig$ObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/gles/GLESConfig$ObjectType;

.field public static final enum ALPHA_TESTED:Lcom/lge/gles/GLESConfig$ObjectType;

.field public static final enum SOLID:Lcom/lge/gles/GLESConfig$ObjectType;

.field public static final enum TRANPARENT:Lcom/lge/gles/GLESConfig$ObjectType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/lge/gles/GLESConfig$ObjectType;

    const-string v1, "SOLID"

    invoke-direct {v0, v1, v2}, Lcom/lge/gles/GLESConfig$ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$ObjectType;->SOLID:Lcom/lge/gles/GLESConfig$ObjectType;

    new-instance v0, Lcom/lge/gles/GLESConfig$ObjectType;

    const-string v1, "ALPHA_TESTED"

    invoke-direct {v0, v1, v3}, Lcom/lge/gles/GLESConfig$ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$ObjectType;->ALPHA_TESTED:Lcom/lge/gles/GLESConfig$ObjectType;

    new-instance v0, Lcom/lge/gles/GLESConfig$ObjectType;

    const-string v1, "TRANPARENT"

    invoke-direct {v0, v1, v4}, Lcom/lge/gles/GLESConfig$ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gles/GLESConfig$ObjectType;->TRANPARENT:Lcom/lge/gles/GLESConfig$ObjectType;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/gles/GLESConfig$ObjectType;

    sget-object v1, Lcom/lge/gles/GLESConfig$ObjectType;->SOLID:Lcom/lge/gles/GLESConfig$ObjectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/gles/GLESConfig$ObjectType;->ALPHA_TESTED:Lcom/lge/gles/GLESConfig$ObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/gles/GLESConfig$ObjectType;->TRANPARENT:Lcom/lge/gles/GLESConfig$ObjectType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/gles/GLESConfig$ObjectType;->$VALUES:[Lcom/lge/gles/GLESConfig$ObjectType;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/gles/GLESConfig$ObjectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/lge/gles/GLESConfig$ObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/gles/GLESConfig$ObjectType;

    return-object v0
.end method

.method public static values()[Lcom/lge/gles/GLESConfig$ObjectType;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/lge/gles/GLESConfig$ObjectType;->$VALUES:[Lcom/lge/gles/GLESConfig$ObjectType;

    invoke-virtual {v0}, [Lcom/lge/gles/GLESConfig$ObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/gles/GLESConfig$ObjectType;

    return-object v0
.end method
