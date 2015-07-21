.class Lcom/android/internal/telephony/gfit/GfitUtils$3;
.super Ljava/lang/Object;
.source "GfitUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gfit/GfitUtils;->createUiccDetectedNotePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gfit/GfitUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$3;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 749
    packed-switch p2, :pswitch_data_0

    .line 755
    :goto_0
    return-void

    .line 752
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
