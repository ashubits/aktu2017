.class Lcom/google/android/gms/internal/zzart$zzb;
.super Lcom/google/android/gms/location/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzaBG:Lcom/google/android/gms/internal/zzaaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/zzm$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzart$zzb;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

    return-void
.end method


# virtual methods
.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart$zzb;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

    new-instance v1, Lcom/google/android/gms/internal/zzart$zzb$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzart$zzb$1;-><init>(Lcom/google/android/gms/internal/zzart$zzb;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart$zzb;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaz;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
