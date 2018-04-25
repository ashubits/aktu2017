.class public Lcom/google/android/gms/internal/zzaru;
.super Lcom/google/android/gms/internal/zzari;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaru$zzc;,
        Lcom/google/android/gms/internal/zzaru$zzb;,
        Lcom/google/android/gms/internal/zzaru$zza;
    }
.end annotation


# instance fields
.field private final zzbkm:Lcom/google/android/gms/internal/zzart;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzg;->zzaA(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaru;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzg;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzari;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzg;)V

    new-instance v0, Lcom/google/android/gms/internal/zzart;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzart;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzasb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzart;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzart;->zzHC()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/zzari;->disconnect()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzart;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public zzHB()Lcom/google/android/gms/location/LocationAvailability;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzart;->zzHB()Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method

.method public zza(JLandroid/app/PendingIntent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwV()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/zzarr;->zza(JZLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzart;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaaz$zzb;Lcom/google/android/gms/internal/zzarp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz$zzb",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzarp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzart;->zza(Lcom/google/android/gms/internal/zzaaz$zzb;Lcom/google/android/gms/internal/zzarp;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzarp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzart;->zza(Lcom/google/android/gms/internal/zzarp;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzarv;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzarp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzarv;",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzarp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzart;->zza(Lcom/google/android/gms/internal/zzarv;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzarp;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwV()V

    const-string v0, "geofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzaru$zza;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/zzaru$zza;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarq;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzart;->zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzarp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzarp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzart;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzarp;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwV()V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    :goto_1
    const-string v0, "listener can\'t be null."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaru$zzc;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzaru$zzc;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/zzars;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/location/zzv;Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/zzv;",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwV()V

    const-string v0, "removeGeofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzaru$zzb;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzaru$zzb;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/location/zzv;Lcom/google/android/gms/internal/zzarq;)V

    return-void
.end method

.method public zzaC(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzart;->zzaC(Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaaz$zzb;Lcom/google/android/gms/internal/zzarp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz$zzb",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzarp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzart;->zzb(Lcom/google/android/gms/internal/zzaaz$zzb;Lcom/google/android/gms/internal/zzarp;)V

    return-void
.end method

.method public zzc(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwV()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaru;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzarr;->zzc(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public zzd(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaru;->zzbkm:Lcom/google/android/gms/internal/zzart;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzart;->zzd(Landroid/location/Location;)V

    return-void
.end method
