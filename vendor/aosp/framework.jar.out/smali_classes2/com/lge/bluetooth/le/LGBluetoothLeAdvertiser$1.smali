.class Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;
.super Ljava/lang/Object;
.source "LGBluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertiseCallback;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iput-object p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iput p3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iget v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;->val$error:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 412
    return-void
.end method
