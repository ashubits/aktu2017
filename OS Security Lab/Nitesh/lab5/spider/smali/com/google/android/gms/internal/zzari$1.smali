.class Lcom/google/android/gms/internal/zzari$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzasb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzasb",
        "<",
        "Lcom/google/android/gms/internal/zzarr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbjW:Lcom/google/android/gms/internal/zzari;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzari;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzari$1;->zzbjW:Lcom/google/android/gms/internal/zzari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzHz()Lcom/google/android/gms/internal/zzarr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzari$1;->zzbjW:Lcom/google/android/gms/internal/zzari;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzari;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarr;

    return-object v0
.end method

.method public zzwV()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzari$1;->zzbjW:Lcom/google/android/gms/internal/zzari;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzari;->zza(Lcom/google/android/gms/internal/zzari;)V

    return-void
.end method

.method public synthetic zzwW()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari$1;->zzHz()Lcom/google/android/gms/internal/zzarr;

    move-result-object v0

    return-object v0
.end method
