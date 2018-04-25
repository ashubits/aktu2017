.class public Lcom/brommko/android/spiderman/util/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# static fields
.field public static final MY_PERMISSIONS_REQUEST_CALL:I = 0xa

.field public static final MY_PERMISSIONS_REQUEST_DOWNLOAD:I = 0xc

.field public static final MY_PERMISSIONS_REQUEST_GEOLOCATION:I = 0xd

.field public static final MY_PERMISSIONS_REQUEST_SMS:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 6
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "needsPermission":Z
    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, p1, v3

    .line 57
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, "permissionCheck":I
    if-eqz v2, :cond_2

    .line 59
    const/4 v0, 0x1

    .line 64
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "permissionCheck":I
    :cond_0
    if-eqz v0, :cond_1

    .line 65
    invoke-static {p0, p1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 67
    :cond_1
    return-void

    .line 56
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v2    # "permissionCheck":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static geoLocationPermission(Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 47
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/brommko/android/spiderman/util/PermissionUtil;->isPermissionAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 50
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/brommko/android/spiderman/util/PermissionUtil;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public static isPermissionAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 26
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 27
    const/4 v1, 0x1

    .line 30
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "permision"    # Ljava/lang/String;
    .param p2, "permisionNumer"    # I

    .prologue
    .line 36
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 44
    return-void
.end method
