.class public Lcom/brommko/android/spiderman/util/NetworkHandler;
.super Ljava/lang/Object;
.source "NetworkHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 13
    const-string v3, "connectivity"

    .line 14
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 15
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 16
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 17
    .local v0, "isAvailable":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 20
    :cond_0
    return v0
.end method
