.class Lcom/google/android/gms/internal/zzarl$6;
.super Lcom/google/android/gms/internal/zzarl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzarl;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjX:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic zzbjY:Lcom/google/android/gms/location/LocationListener;

.field final synthetic zzbkc:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarl$6;->zzbjX:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzarl$6;->zzbjY:Lcom/google/android/gms/location/LocationListener;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzarl$6;->zzbkc:Landroid/os/Looper;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarl$6;->zza(Lcom/google/android/gms/internal/zzaru;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaru;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzarl$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzarl$zzb;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarl$6;->zzbjX:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarl$6;->zzbjY:Lcom/google/android/gms/location/LocationListener;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzarl$6;->zzbkc:Landroid/os/Looper;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzasn;->zzb(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzaba;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaaz;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzarp;)V

    return-void
.end method
