.class public Lcom/android/server/connectivity/Tethering$EntitlementCheckService;
.super Landroid/app/Service;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntitlementCheckService"
.end annotation


# static fields
.field public static final BLUETOOTH:I = 0x2

.field public static final ENTITLEMENT_CHECK_HOST:Ljava/lang/String; = "entitlement.mobile.att.net"

.field private static final ENTITLEMENT_FAIL_CAUSE:Ljava/lang/String; = "fail_cause"

.field private static final ENTITLEMENT_SUCCESS:Ljava/lang/String; = "success"

.field public static final FAILURE_CAUSECODE_33:I = 0x63

.field public static final HIPRI_ENABLE_TIMEOUT:I = 0x14

.field public static final HOTSPOT_CHECK_PAGE:Ljava/lang/String; = "entitlement.mobile.att.net/mhs1"

.field public static final HOTSPOT_CHECK_URL:Ljava/lang/String; = "http://entitlement.mobile.att.net/mhs1"

.field public static final TETHERING_CHECK_PAGE:Ljava/lang/String; = "entitlement.mobile.att.net/teth"

.field public static final TETHERING_CHECK_URL:Ljava/lang/String; = "http://entitlement.mobile.att.net/teth"

.field public static final USB:I = 0x1

.field public static final VIDEOCALLING_CHECK_PAGE:Ljava/lang/String; = "entitlement.mobile.att.net/gvc1"

.field public static final VIDEOCALLING_CHECK_URL:Ljava/lang/String; = "http://entitlement.mobile.att.net/gvc1"

.field public static final WIFI:I

.field private static mIsHIPRIConnectOpen:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAPNIntentFilter:Landroid/content/IntentFilter;

.field mCm:Landroid/net/ConnectivityManager;

.field private mEntitleType:I

.field private mEntitlementCheckType:I

.field public mHandler:Landroid/os/Handler;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private timeOutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1645
    const/4 v0, 0x0

    sput v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mIsHIPRIConnectOpen:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1620
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 1621
    const-string v0, "Tethering"

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->TAG:Ljava/lang/String;

    .line 1628
    iput v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    .line 1629
    iput v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    .line 1647
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    .line 1648
    new-instance v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;-><init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    return-void
.end method

.method private SetupMobileConnection()Z
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1820
    const/4 v0, 0x1

    .line 1823
    .local v0, "IsTimeout":I
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1825
    .local v5, "network":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1826
    const-string v9, "Tethering"

    const-string v10, "[EntitlementCheck] TYPE_MOBILE_HIPRI is already enabled, SKIP to enable it"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_0
    :goto_0
    return v8

    .line 1831
    :cond_1
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const-string v11, "enableHIPRI"

    invoke-virtual {v10, v9, v11}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v7

    .line 1832
    .local v7, "resultInt":I
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EntitlementCheck] startUsingNetworkFeature( ), return value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const/4 v10, -0x1

    if-ne v7, v10, :cond_2

    .line 1839
    const-string v8, "Tethering"

    const-string v10, "[EntitlementCheck] Wrong result of startUsingNetworkFeature, maybe problems"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1840
    goto :goto_0

    .line 1842
    :cond_2
    sput v8, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mIsHIPRIConnectOpen:I

    .line 1843
    const-string v4, "entitlement.mobile.att.net"

    .line 1847
    .local v4, "hostname":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "counter":I
    :goto_1
    const/16 v10, 0x14

    if-ge v1, v10, :cond_3

    .line 1848
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1849
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EntitlementCheck] Waiting on HIPRI connection, Count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 1851
    const/4 v0, 0x0

    .line 1861
    :cond_3
    if-ne v0, v8, :cond_5

    .line 1862
    const-string v8, "Tethering"

    const-string v10, "[EntitlementCheck] Timeout on wating mobile network"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1863
    goto :goto_0

    .line 1854
    :cond_4
    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1847
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1856
    :catch_0
    move-exception v2

    .line 1857
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v8, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[EntitlementCheck] Exception on waiting, Except "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1858
    goto/16 :goto_0

    .line 1866
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    const-string v10, "Tethering"

    const-string v11, "start lookupHost()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1869
    .local v3, "hostAddress":Ljava/net/InetAddress;
    if-nez v3, :cond_6

    .line 1870
    const-string v8, "Tethering"

    const-string v10, "[EntitlementCheck] Error on lookupHost()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1871
    goto/16 :goto_0

    .line 1874
    :cond_6
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start requestRouteToHostAddress() with host address = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v13, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v6

    .line 1876
    .local v6, "resultBool":Z
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EntitlementCheck] requestRouteToHost result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    if-nez v6, :cond_0

    .line 1878
    const-string v8, "Tethering"

    const-string v10, "[EntitlementCheck] Wrong requestRouteToHost result: expected true, but was false"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1879
    goto/16 :goto_0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->performServiceLayerEntitlementCheck()I

    move-result v0

    return v0
.end method

.method private getEntitlementCheckType()I
    .locals 3

    .prologue
    .line 1794
    sget-object v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_entitlement_check_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1801
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1807
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 1808
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_1

    .line 1815
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :cond_0
    :goto_1
    return-object v0

    .line 1802
    :catch_0
    move-exception v2

    .line 1803
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception on getAllByName(), Exception Msg ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1804
    goto :goto_1

    .line 1810
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_1
    instance-of v7, v0, Ljava/net/Inet6Address;

    if-nez v7, :cond_0

    .line 1807
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1814
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_2
    const-string v7, "Tethering"

    const-string v8, "Failed to find inetAddress in lookupHost(), return NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1815
    goto :goto_1
.end method

.method private performServiceLayerEntitlementCheck()I
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1886
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1887
    .local v3, "cur_wifi":Landroid/net/NetworkInfo;
    const/4 v7, 0x3

    .line 1888
    .local v7, "ret_code":I
    const/4 v1, 0x0

    .line 1889
    .local v1, "IsTimeout":I
    const/4 v2, 0x0

    .line 1891
    .local v2, "counter":I
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1893
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] Data enabler off by the setting menu"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/4 v10, 0x3

    .line 1950
    :goto_0
    return v10

    .line 1897
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->SetupMobileConnection()Z

    move-result v6

    .line 1898
    .local v6, "ret":Z
    if-eq v6, v13, :cond_1

    .line 1899
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] SetupMobileConnection(), return false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v7

    .line 1900
    goto :goto_0

    .line 1903
    :cond_1
    const/4 v9, 0x0

    .line 1908
    .local v9, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EntitlementCheck] HTTP Request with mEntitleType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    if-ne v10, v13, :cond_3

    .line 1910
    new-instance v8, Ljava/net/URL;

    const-string v10, "http://entitlement.mobile.att.net/teth"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1917
    .local v8, "url":Ljava/net/URL;
    :goto_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 1918
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1919
    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1920
    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1921
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1924
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 1925
    .local v5, "result":I
    const/16 v10, 0xc8

    if-ne v5, v10, :cond_5

    .line 1926
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] Success"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    const/4 v7, 0x0

    .line 1949
    :goto_2
    if-eqz v9, :cond_2

    .line 1950
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v10, v7

    goto :goto_0

    .line 1911
    .end local v5    # "result":I
    .end local v8    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    iget v10, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 1912
    new-instance v8, Ljava/net/URL;

    const-string v10, "http://entitlement.mobile.att.net/teth"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_1

    .line 1914
    .end local v8    # "url":Ljava/net/URL;
    :cond_4
    new-instance v8, Ljava/net/URL;

    const-string v10, "http://entitlement.mobile.att.net/mhs1"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_1

    .line 1928
    .restart local v5    # "result":I
    :cond_5
    const/16 v10, 0x193

    if-ne v5, v10, :cond_6

    .line 1929
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] fail cause code 33"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    const/16 v7, 0x63

    goto :goto_2

    .line 1932
    :cond_6
    const-string v10, "Tethering"

    const-string v11, "[EntitlementCheck] fail temperal network problem"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1933
    const/4 v7, 0x3

    goto :goto_2

    .line 1936
    .end local v5    # "result":I
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 1937
    .local v4, "e":Ljava/net/UnknownHostException;
    :try_start_2
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Entitlement check - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1938
    const/4 v7, 0x3

    .line 1949
    if-eqz v9, :cond_7

    .line 1950
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move v10, v7

    goto/16 :goto_0

    .line 1940
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v4

    .line 1941
    .local v4, "e":Ljava/net/ConnectException;
    :try_start_3
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Entitlement check - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1942
    const/4 v7, 0x3

    .line 1949
    if-eqz v9, :cond_8

    .line 1950
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move v10, v7

    goto/16 :goto_0

    .line 1944
    .end local v4    # "e":Ljava/net/ConnectException;
    :catch_2
    move-exception v4

    .line 1945
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Entitlement check - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1946
    const/16 v7, 0x63

    .line 1949
    if-eqz v9, :cond_9

    .line 1950
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    move v10, v7

    goto/16 :goto_0

    .line 1949
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_a

    .line 1950
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v10
.end method


# virtual methods
.method public disableTethering()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1758
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] Disable Tethering"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 1760
    .local v4, "mIfaces":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1761
    .local v3, "mIface":Ljava/lang/String;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EntitlementCheck] Untethering  Interface =>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    .line 1763
    const-string v5, "wlan0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1764
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] Disable Mobile Hotspot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1766
    sget-object v5, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 1768
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1769
    sget-object v5, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1760
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1774
    .end local v3    # "mIface":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1744
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 1658
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] onCreate()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    .line 1663
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1664
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->getEntitlementCheckType()I

    move-result v5

    iput v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    .line 1665
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EntitlementCheck] onCreate(), mEntitlementCheckType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 1669
    .local v4, "mIfaces":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1670
    .local v3, "mIface":Ljava/lang/String;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EntitlementCheck] onCreate() Find Interface =>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const-string v5, "wlan0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1672
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    .line 1669
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1673
    :cond_1
    const-string v5, "usb0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1674
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    goto :goto_1

    .line 1675
    :cond_2
    const-string v5, "bt-pan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1676
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitleType:I

    goto :goto_1

    .line 1679
    .end local v3    # "mIface":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1727
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1731
    iget v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    if-ne v0, v3, :cond_1

    .line 1732
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const-string v1, "enableENTITLEMENT"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1739
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    sget v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mIsHIPRIConnectOpen:I

    if-ne v0, v3, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const-string v1, "enableHIPRI"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1736
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] stopUsingNetworkFeature() with Phone.FEATURE_ENABLE_HIPRI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x1

    .line 1682
    iget v2, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mEntitlementCheckType:I

    if-ne v2, v6, :cond_3

    .line 1683
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    const-string v4, "enableHIPRI"

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 1686
    .local v1, "result":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1688
    :cond_0
    const-string v2, "Tethering"

    const-string v3, "[EntitlementCheck] StartUsingNetwork failed   APN_REQUEST_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 1690
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    .line 1723
    .end local v1    # "result":I
    :goto_0
    return v6

    .line 1691
    .restart local v1    # "result":I
    :cond_1
    if-nez v1, :cond_2

    .line 1692
    const-string v2, "Tethering"

    const-string v3, "[EntitlementCheck] StartUsingNetwork APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    goto :goto_0

    .line 1695
    :cond_2
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EntitlementCheck] onCreate  Entitlement Successfully tried ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   Set TIMEOUT 30 sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1701
    .end local v1    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;-><init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1721
    .local v0, "conn":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAlarm_Entitle()V
    .locals 8

    .prologue
    .line 1749
    sget-object v3, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tether_entitlement_check_interval"

    const/16 v5, 0x5a0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1751
    .local v2, "intervalMin":I
    const-string v3, "Tethering"

    const-string v4, "[EntitlementCheck11] setAlarm_Entitle() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const v3, 0xea60

    mul-int/2addr v3, v2

    int-to-long v0, v3

    .line 1754
    .local v0, "interval":J
    # getter for: Lcom/android/server/connectivity/Tethering;->mManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$800()Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mAlarmSender:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$700()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1756
    return-void
.end method
