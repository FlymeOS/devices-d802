.class public final enum Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
.super Ljava/lang/Enum;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcconfig/NfcConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HCEScreenStateList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

.field public static final enum INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

.field private static final LENGTH:I = 0x4

.field public static final enum power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

.field public static final enum screen_locked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

.field public static final enum screen_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

.field public static final enum screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;


# instance fields
.field private final mNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v1, "INITVALUE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v1, "screen_unlocked"

    invoke-direct {v0, v1, v4, v3}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v1, "screen_locked"

    invoke-direct {v0, v1, v5, v4}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_locked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v1, "screen_off"

    invoke-direct {v0, v1, v6, v5}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v1, "power_off"

    invoke-direct {v0, v1, v7, v6}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    .line 294
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_locked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    aput-object v1, v0, v7

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 300
    iput p3, p0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->mNum:I

    .line 301
    return-void
.end method

.method public static getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .locals 5
    .param p0, "num"    # I

    .prologue
    .line 312
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v0

    .local v0, "arr$":[Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 313
    .local v3, "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 317
    .end local v3    # "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    :goto_1
    return-object v3

    .line 312
    .restart local v3    # "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v3    # "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    :cond_1
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    goto :goto_1
.end method

.method public static length()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x4

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    const-class v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    return-object v0
.end method

.method public static values()[Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->$VALUES:[Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {v0}, [Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->mNum:I

    return v0
.end method
