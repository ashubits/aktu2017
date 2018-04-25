.class public Lcom/google/android/gms/internal/zzart;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzart$zza;,
        Lcom/google/android/gms/internal/zzart$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaVF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzaaz$zzb",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzart$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbjV:Lcom/google/android/gms/internal/zzasb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzasb",
            "<",
            "Lcom/google/android/gms/internal/zzarr;",
            ">;"
        }
    .end annotation
.end field

.field private zzbkg:Landroid/content/ContentProviderClient;

.field private zzbkh:Z

.field private final zzbki:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzaaz$zzb",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzart$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzasb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzasb",
            "<",
            "Lcom/google/android/gms/internal/zzarr;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbkg:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzart;->zzbkh:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzart;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    return-void
.end method

.method private zzf(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/internal/zzart$zzb;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;)",
            "Lcom/google/android/gms/internal/zzart$zzb;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaz;->zzwp()Lcom/google/android/gms/internal/zzaaz$zzb;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzart$zzb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzart$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzart$zzb;-><init>(Lcom/google/android/gms/internal/zzaaz;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaz;->zzwp()Lcom/google/android/gms/internal/zzaaz$zzb;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzg(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/internal/zzart$zza;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;)",
            "Lcom/google/android/gms/internal/zzart$zza;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaz;->zzwp()Lcom/google/android/gms/internal/zzaaz$zzb;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzart$zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzart$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzart$zza;-><init>(Lcom/google/android/gms/internal/zzaaz;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaz;->zzwp()Lcom/google/android/gms/internal/zzaaz$zzb;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzart;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzarr;->zzeV(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAllListeners()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzart$zzb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzarr;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/location/zzm;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarx;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    monitor-enter v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzart$zza;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzarr;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/location/zzl;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarx;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void
.end method

.method public zzHB()Lcom/google/android/gms/location/LocationAvailability;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzart;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzarr;->zzeW(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzHC()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzart;->zzbkh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzart;->zzaC(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzarx;->zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarx;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaaz$zzb;Lcom/google/android/gms/internal/zzarp;)V
    .locals 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzaVF:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzart$zzb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzart$zzb;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzarr;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/location/zzm;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarx;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzarp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarp;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzart;->zzg(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/internal/zzart$zza;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-static {p1, v1, p3}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/internal/zzarv;Lcom/google/android/gms/location/zzl;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarx;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzarv;->zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzarv;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/internal/zzarv;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarx;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzarp;)V
    .locals 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzart;->zzf(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/internal/zzart$zzb;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzarv;->zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzarv;

    move-result-object v2

    invoke-static {v2, v1, p3}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/internal/zzarv;Lcom/google/android/gms/location/zzm;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarx;)V

    return-void
.end method

.method public zzaC(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzarr;->zzaC(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzart;->zzbkh:Z

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaaz$zzb;Lcom/google/android/gms/internal/zzarp;)V
    .locals 3
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbki:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzart$zza;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzart$zza;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzarr;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzarx;->zza(Lcom/google/android/gms/location/zzl;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzarr;->zza(Lcom/google/android/gms/internal/zzarx;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzd(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasb;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzarr;->zzd(Landroid/location/Location;)V

    return-void
.end method
