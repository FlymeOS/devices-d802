.class public final enum Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;
.super Ljava/lang/Enum;
.source "PayPopup_Korea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/PayPopup_Korea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayPopupFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

.field public static final enum PayPopupforKT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

.field public static final enum PayPopupforLGT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

.field public static final enum PayPopupforSKT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

.field public static final enum showDialog:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

.field public static final enum showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 665
    new-instance v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const-string v1, "PayPopupforSKT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->PayPopupforSKT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    .line 666
    new-instance v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const-string v1, "PayPopupforKT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->PayPopupforKT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    .line 667
    new-instance v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const-string v1, "PayPopupforLGT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->PayPopupforLGT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    .line 669
    new-instance v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const-string v1, "showToast"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    .line 670
    new-instance v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    const-string v1, "showDialog"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    .line 664
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    sget-object v1, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->PayPopupforSKT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->PayPopupforKT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->PayPopupforLGT:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->$VALUES:[Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

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
    .line 664
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 664
    const-class v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;
    .locals 1

    .prologue
    .line 664
    sget-object v0, Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->$VALUES:[Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/lgdata/PayPopup_Korea$PayPopupFunction;

    return-object v0
.end method
