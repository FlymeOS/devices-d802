.class public final enum Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;
.super Ljava/lang/Enum;
.source "AlmaCLRShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/almalence/app/clearshot/AlmaCLRShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

.field public static final enum JPEG:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

.field public static final enum YUV420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

.field public static final enum YVU420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->JPEG:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    .line 75
    new-instance v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    const-string v1, "YUV420SP"

    invoke-direct {v0, v1, v3}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->YUV420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    .line 76
    new-instance v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    const-string v1, "YVU420SP"

    invoke-direct {v0, v1, v4}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->YVU420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    sget-object v1, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->JPEG:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->YUV420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->YVU420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->$VALUES:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->$VALUES:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    invoke-virtual {v0}, [Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    return-object v0
.end method
