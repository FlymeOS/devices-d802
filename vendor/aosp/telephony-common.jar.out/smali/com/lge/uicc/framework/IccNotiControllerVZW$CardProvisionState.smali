.class final enum Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;
.super Ljava/lang/Enum;
.source "IccNotiControllerVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/framework/IccNotiControllerVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CardProvisionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

.field public static final enum ALREADY_PROVISIONED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

.field public static final enum PROVISIONING:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

.field public static final enum PROVISION_FAILED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

.field public static final enum PROVISION_SUCCESS:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    const-string v1, "PROVISION_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_SUCCESS:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    .line 54
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    const-string v1, "PROVISION_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_FAILED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    .line 55
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    const-string v1, "PROVISIONING"

    invoke-direct {v0, v1, v4}, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISIONING:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    .line 56
    new-instance v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    const-string v1, "ALREADY_PROVISIONED"

    invoke-direct {v0, v1, v5}, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->ALREADY_PROVISIONED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_SUCCESS:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISION_FAILED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->PROVISIONING:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->ALREADY_PROVISIONED:Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->$VALUES:[Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    return-object v0
.end method

.method public static values()[Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->$VALUES:[Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    invoke-virtual {v0}, [Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/uicc/framework/IccNotiControllerVZW$CardProvisionState;

    return-object v0
.end method
