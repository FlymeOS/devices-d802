.class Lcom/android/server/pm/PackageScanState;
.super Ljava/lang/Object;
.source "PackageScanState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private final mTempPackage:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/io/File;)V
    .locals 0
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p2, "tempPkg"    # Ljava/io/File;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/pm/PackageScanState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 30
    iput-object p2, p0, Lcom/android/server/pm/PackageScanState;->mTempPackage:Ljava/io/File;

    .line 31
    return-void
.end method


# virtual methods
.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/pm/PackageScanState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method public getTempPackage()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/pm/PackageScanState;->mTempPackage:Ljava/io/File;

    return-object v0
.end method
