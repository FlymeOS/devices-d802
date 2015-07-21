.class final enum Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;
.super Ljava/lang/Enum;
.source "IccNotiControllerVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccNotiControllerVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CardOperatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

.field public static final enum SIM_TYPE_NON_VZW:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

.field public static final enum SIM_TYPE_VZW3G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

.field public static final enum SIM_TYPE_VZW4G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    const-string v1, "SIM_TYPE_VZW4G"

    invoke-direct {v0, v1, v2}, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW4G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    .line 61
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    const-string v1, "SIM_TYPE_VZW3G"

    invoke-direct {v0, v1, v3}, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW3G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    .line 62
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    const-string v1, "SIM_TYPE_NON_VZW"

    invoke-direct {v0, v1, v4}, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_NON_VZW:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW4G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_VZW3G:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->SIM_TYPE_NON_VZW:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->$VALUES:[Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    return-object v0
.end method

.method public static values()[Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->$VALUES:[Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    invoke-virtual {v0}, [Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/uicc/framework/IccNotiControllerVZW$CardOperatorType;

    return-object v0
.end method
