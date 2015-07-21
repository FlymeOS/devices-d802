.class public Lcom/lge/lgdrm/DrmDldClient$FailInfo;
.super Ljava/lang/Object;
.source "DrmDldClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdrm/DrmDldClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FailInfo"
.end annotation


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public redirectURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/lgdrm/DrmDldClient;


# direct methods
.method public constructor <init>(Lcom/lge/lgdrm/DrmDldClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "redirectURL"    # Ljava/lang/String;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient$FailInfo;->this$0:Lcom/lge/lgdrm/DrmDldClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput p2, p0, Lcom/lge/lgdrm/DrmDldClient$FailInfo;->errorCode:I

    .line 820
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient$FailInfo;->errorMsg:Ljava/lang/String;

    .line 821
    iput-object p4, p0, Lcom/lge/lgdrm/DrmDldClient$FailInfo;->redirectURL:Ljava/lang/String;

    .line 822
    return-void
.end method
