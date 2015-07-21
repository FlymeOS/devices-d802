.class final enum Landroid/view/TouchEventFilter$DoAction;
.super Ljava/lang/Enum;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/TouchEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DoAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/TouchEventFilter$DoAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/TouchEventFilter$DoAction;

.field public static final enum DO_IGNORE:Landroid/view/TouchEventFilter$DoAction;

.field public static final enum DO_NOTHING:Landroid/view/TouchEventFilter$DoAction;

.field public static final enum DO_SPLIT:Landroid/view/TouchEventFilter$DoAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Landroid/view/TouchEventFilter$DoAction;

    const-string v1, "DO_NOTHING"

    invoke-direct {v0, v1, v2}, Landroid/view/TouchEventFilter$DoAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/TouchEventFilter$DoAction;->DO_NOTHING:Landroid/view/TouchEventFilter$DoAction;

    new-instance v0, Landroid/view/TouchEventFilter$DoAction;

    const-string v1, "DO_IGNORE"

    invoke-direct {v0, v1, v3}, Landroid/view/TouchEventFilter$DoAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/TouchEventFilter$DoAction;->DO_IGNORE:Landroid/view/TouchEventFilter$DoAction;

    new-instance v0, Landroid/view/TouchEventFilter$DoAction;

    const-string v1, "DO_SPLIT"

    invoke-direct {v0, v1, v4}, Landroid/view/TouchEventFilter$DoAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/TouchEventFilter$DoAction;->DO_SPLIT:Landroid/view/TouchEventFilter$DoAction;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/TouchEventFilter$DoAction;

    sget-object v1, Landroid/view/TouchEventFilter$DoAction;->DO_NOTHING:Landroid/view/TouchEventFilter$DoAction;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/TouchEventFilter$DoAction;->DO_IGNORE:Landroid/view/TouchEventFilter$DoAction;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/TouchEventFilter$DoAction;->DO_SPLIT:Landroid/view/TouchEventFilter$DoAction;

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/TouchEventFilter$DoAction;->$VALUES:[Landroid/view/TouchEventFilter$DoAction;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/TouchEventFilter$DoAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Landroid/view/TouchEventFilter$DoAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/TouchEventFilter$DoAction;

    return-object v0
.end method

.method public static values()[Landroid/view/TouchEventFilter$DoAction;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/view/TouchEventFilter$DoAction;->$VALUES:[Landroid/view/TouchEventFilter$DoAction;

    invoke-virtual {v0}, [Landroid/view/TouchEventFilter$DoAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/TouchEventFilter$DoAction;

    return-object v0
.end method
