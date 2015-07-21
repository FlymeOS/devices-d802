.class public interface abstract Lcom/android/internal/telephony/uicc/ILGSmsSimUtils;
.super Ljava/lang/Object;
.source "ILGSmsSimUtils.java"


# static fields
.field public static final ALL_ICC_DS_URI:Landroid/net/Uri;

.field public static final ICC_URI:Landroid/net/Uri;

.field public static final SMS_CONCAT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/ILGSmsSimUtils;->ICC_URI:Landroid/net/Uri;

    .line 14
    const-string v0, "content://sms/concatpart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/ILGSmsSimUtils;->SMS_CONCAT_URI:Landroid/net/Uri;

    .line 15
    const-string v0, "content://sms/icc_ds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/ILGSmsSimUtils;->ALL_ICC_DS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract handleSimSmses(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I)V"
        }
    .end annotation
.end method

.method public abstract initSimSmsUpdate(I)V
.end method
