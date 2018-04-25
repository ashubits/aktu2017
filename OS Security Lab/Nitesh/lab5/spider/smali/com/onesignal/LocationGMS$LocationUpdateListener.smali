.class Lcom/onesignal/LocationGMS$LocationUpdateListener;
.super Ljava/lang/Object;
.source "LocationGMS.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/LocationGMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationUpdateListener"
.end annotation


# instance fields
.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 4
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/onesignal/LocationGMS$LocationUpdateListener;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 273
    iget-object v1, p0, Lcom/onesignal/LocationGMS$LocationUpdateListener;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v1, p0}, Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 275
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 276
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    .line 277
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 279
    iget-object v1, p0, Lcom/onesignal/LocationGMS$LocationUpdateListener;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v1, v0, p0}, Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 280
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 284
    # invokes: Lcom/onesignal/LocationGMS;->receivedLocationPoint(Landroid/location/Location;)V
    invoke-static {p1}, Lcom/onesignal/LocationGMS;->access$200(Landroid/location/Location;)V

    .line 286
    iget-object v0, p0, Lcom/onesignal/LocationGMS$LocationUpdateListener;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/onesignal/LocationGMS$LocationUpdateListener;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0, p0}, Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 288
    iget-object v0, p0, Lcom/onesignal/LocationGMS$LocationUpdateListener;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 290
    :cond_0
    return-void
.end method
