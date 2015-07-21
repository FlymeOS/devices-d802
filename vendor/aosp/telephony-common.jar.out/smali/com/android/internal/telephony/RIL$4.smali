.class Lcom/android/internal/telephony/RIL$4;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL;->responseUnSolLGEUnSol(Landroid/os/Parcel;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;

.field final synthetic val$keycode:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 0

    .prologue
    .line 8824
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$4;->this$0:Lcom/android/internal/telephony/RIL;

    iput p2, p0, Lcom/android/internal/telephony/RIL$4;->val$keycode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8826
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/RIL$4;->val$keycode:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 8827
    return-void
.end method
