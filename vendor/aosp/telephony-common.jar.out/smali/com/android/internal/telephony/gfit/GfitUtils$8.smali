.class Lcom/android/internal/telephony/gfit/GfitUtils$8;
.super Ljava/lang/Object;
.source "GfitUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gfit/GfitUtils;
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
    .line 847
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$8;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v4, 0x6d

    .line 850
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$8;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$8;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    .line 854
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$8;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v3, v3, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$8;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v3, v3, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getRAT()Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, "operatorRat":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$8;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    iget-object v3, v3, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "operatorAlphaLong":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils$8;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 859
    return-void
.end method
