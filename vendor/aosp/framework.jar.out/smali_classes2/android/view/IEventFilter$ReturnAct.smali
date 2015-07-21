.class public final enum Landroid/view/IEventFilter$ReturnAct;
.super Ljava/lang/Enum;
.source "IEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReturnAct"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/IEventFilter$ReturnAct;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/IEventFilter$ReturnAct;

.field public static final enum CANCEL:Landroid/view/IEventFilter$ReturnAct;

.field public static final enum IGNORE:Landroid/view/IEventFilter$ReturnAct;

.field public static final enum NONE:Landroid/view/IEventFilter$ReturnAct;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Landroid/view/IEventFilter$ReturnAct;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Landroid/view/IEventFilter$ReturnAct;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    new-instance v0, Landroid/view/IEventFilter$ReturnAct;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v3, v3}, Landroid/view/IEventFilter$ReturnAct;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/IEventFilter$ReturnAct;->IGNORE:Landroid/view/IEventFilter$ReturnAct;

    new-instance v0, Landroid/view/IEventFilter$ReturnAct;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4, v4}, Landroid/view/IEventFilter$ReturnAct;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/IEventFilter$ReturnAct;->CANCEL:Landroid/view/IEventFilter$ReturnAct;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/IEventFilter$ReturnAct;

    sget-object v1, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/IEventFilter$ReturnAct;->IGNORE:Landroid/view/IEventFilter$ReturnAct;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/IEventFilter$ReturnAct;->CANCEL:Landroid/view/IEventFilter$ReturnAct;

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/IEventFilter$ReturnAct;->$VALUES:[Landroid/view/IEventFilter$ReturnAct;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/view/IEventFilter$ReturnAct;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/IEventFilter$ReturnAct;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Landroid/view/IEventFilter$ReturnAct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/IEventFilter$ReturnAct;

    return-object v0
.end method

.method public static values()[Landroid/view/IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/view/IEventFilter$ReturnAct;->$VALUES:[Landroid/view/IEventFilter$ReturnAct;

    invoke-virtual {v0}, [Landroid/view/IEventFilter$ReturnAct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/IEventFilter$ReturnAct;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Landroid/view/IEventFilter$ReturnAct;->value:I

    return v0
.end method
