.class Lcom/google/android/gms/internal/zzart$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzart$zza;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/location/LocationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbkj:Lcom/google/android/gms/location/LocationResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzart$zza;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzart$zza$1;->zzbkj:Lcom/google/android/gms/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/LocationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzart$zza$1;->zzbkj:Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzart$zza$1;->zza(Lcom/google/android/gms/location/LocationCallback;)V

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
