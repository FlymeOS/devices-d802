.class Lcom/android/server/MountServiceEx$VoldResponseCodeEx;
.super Lcom/android/server/MountService$VoldResponseCode;
.source "MountServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoldResponseCodeEx"
.end annotation


# static fields
.field public static final OperationFailed:I = 0x190


# instance fields
.field final synthetic this$0:Lcom/android/server/MountServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/MountServiceEx;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/MountServiceEx$VoldResponseCodeEx;->this$0:Lcom/android/server/MountServiceEx;

    invoke-direct {p0, p1}, Lcom/android/server/MountService$VoldResponseCode;-><init>(Lcom/android/server/MountService;)V

    return-void
.end method
