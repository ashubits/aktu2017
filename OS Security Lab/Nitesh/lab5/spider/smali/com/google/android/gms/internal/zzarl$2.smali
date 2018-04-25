.class Lcom/google/android/gms/internal/zzarl$2;
.super Lcom/google/android/gms/internal/zzarl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzarl;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjZ:Lcom/google/android/gms/location/LocationCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationCallback;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarl$2;->zzbjZ:Lcom/google/android/gms/location/LocationCallback;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzarl$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaru;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarl$2;->zza(Lcom/google/android/gms/internal/zzaru;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarl$2;->zzbjZ:Lcom/google/android/gms/location/LocationCallback;

    const-class v1, Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaba;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaaz$zzb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzarl$zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzarl$zzb;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaru;->zzb(Lcom/google/android/gms/internal/zzaaz$zzb;Lcom/google/android/gms/internal/zzarp;)V

    return-void
.end method
