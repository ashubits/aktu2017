.class Lcom/google/android/gms/internal/zzarl$zzb;
.super Lcom/google/android/gms/internal/zzarp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzarl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarp$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarl$zzb;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzarm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarl$zzb;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarm;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
