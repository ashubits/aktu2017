.class Lcom/google/android/gms/internal/zzarl$8;
.super Lcom/google/android/gms/internal/zzarl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzarl;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjT:Landroid/app/PendingIntent;

.field final synthetic zzbjX:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarl$8;->zzbjX:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzarl$8;->zzbjT:Landroid/app/PendingIntent;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarl$8;->zza(Lcom/google/android/gms/internal/zzaru;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaru;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzarl$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzarl$zzb;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarl$8;->zzbjX:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarl$8;->zzbjT:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)V

    return-void
.end method
