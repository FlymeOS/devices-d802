.class Lcom/android/server/LGEncryptionService$VoldResponseCode;
.super Ljava/lang/Object;
.source "LGEncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LGEncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoldResponseCode"
.end annotation


# static fields
.field public static final SDCRYPTENCRYPTEDSDCARDINSERTED:I = 0x28e

.field public static final SDCRYPTNEWSDCARDINSERTED:I = 0x28a

.field public static final SDCRYPTNOMEDIA:I = 0x28d

.field public static final SDCRYPTOTHERDEVICEENCRYPTED:I = 0x28b

.field public static final SDCRYPTSUCCESSMOUNTED:I = 0x28c


# instance fields
.field final synthetic this$0:Lcom/android/server/LGEncryptionService;


# direct methods
.method constructor <init>(Lcom/android/server/LGEncryptionService;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/LGEncryptionService$VoldResponseCode;->this$0:Lcom/android/server/LGEncryptionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
