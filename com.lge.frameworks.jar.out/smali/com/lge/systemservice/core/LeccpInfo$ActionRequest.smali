.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;,
        Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionType:I

.field public connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

.field public onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

.field public openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

.field public playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

.field public transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1175
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1071
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1077
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1083
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1089
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1095
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1123
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1124
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .prologue
    const/4 v1, 0x0

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1071
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1077
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1083
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1089
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1095
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1098
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1099
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1100
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .prologue
    const/4 v1, 0x0

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1071
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1077
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1083
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1089
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1095
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1118
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1119
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1120
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .prologue
    const/4 v1, 0x0

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1071
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1077
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1083
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1089
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1095
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1113
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1114
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1115
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1071
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1077
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1083
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1089
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1095
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1103
    iput v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1104
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1105
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .prologue
    const/4 v1, 0x0

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1071
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1077
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    .line 1083
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1089
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    .line 1095
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    .line 1108
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1109
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    .line 1110
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    .line 1158
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1159
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    if-nez v0, :cond_2

    .line 1161
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    goto :goto_0

    .line 1162
    :cond_2
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1163
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    goto :goto_0

    .line 1164
    :cond_3
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1165
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    goto :goto_0

    .line 1166
    :cond_4
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1167
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 1142
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->connectRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    if-nez v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->playRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$PlayRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1147
    :cond_2
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    if-ne v0, v2, :cond_3

    .line 1148
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->transferRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$TransferRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1149
    :cond_3
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1150
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->openRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1151
    :cond_4
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->actionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;->onRequest:Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
