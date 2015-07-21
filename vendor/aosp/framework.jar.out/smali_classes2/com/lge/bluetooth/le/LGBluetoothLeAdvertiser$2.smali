.class Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;
.super Ljava/lang/Object;
.source "LGBluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertiseCallback;

.field final synthetic val$settings:Landroid/bluetooth/le/AdvertiseSettings;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iput-object p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iput-object p3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 423
    return-void
.end method
