.class public final enum Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
.super Ljava/lang/Enum;
.source "LockPatternUtilsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtilsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockScreenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

.field public static final enum KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

.field public static final enum NONE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

.field public static final enum PASSWORD:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

.field public static final enum PATTERN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

.field public static final enum PIN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 535
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    const-string v1, "NONE"

    const-string/jumbo v2, "unlock_set_none"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->NONE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 536
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    const-string v1, "KNOCKCODE"

    const-string/jumbo v2, "unlock_set_knockcode"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 537
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    const-string v1, "PATTERN"

    const-string/jumbo v2, "unlock_set_pattern"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PATTERN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 538
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    const-string v1, "PIN"

    const-string/jumbo v2, "unlock_set_pin"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PIN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 539
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    const-string v1, "PASSWORD"

    const-string/jumbo v2, "unlock_set_password"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PASSWORD:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 534
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->NONE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PATTERN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PIN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PASSWORD:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->$VALUES:[Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 543
    iput-object p3, p0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->description:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 534
    const-class v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->$VALUES:[Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->description:Ljava/lang/String;

    return-object v0
.end method
