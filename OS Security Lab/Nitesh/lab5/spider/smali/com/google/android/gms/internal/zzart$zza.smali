.class Lcom/google/android/gms/internal/zzart$zza;
.super Lcom/google/android/gms/location/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzaBG:Lcom/google/android/gms/internal/zzaaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
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
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/zzl$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzart$zza;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart$zza;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

    new-instance v1, Lcom/google/android/gms/internal/zzart$zza$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzart$zza$2;-><init>(Lcom/google/android/gms/internal/zzart$zza;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart$zza;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

    new-instance v1, Lcom/google/android/gms/internal/zzart$zza$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzart$zza$1;-><init>(Lcom/google/android/gms/internal/zzart$zza;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzart$zza;->zzaBG:Lcom/google/android/gms/internal/zzaaz;

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
