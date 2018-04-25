.class public Lcom/google/android/gms/internal/zzari;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzarr;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbjU:Ljava/lang/String;

.field protected final zzbjV:Lcom/google/android/gms/internal/zzasb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzasb",
            "<",
            "Lcom/google/android/gms/internal/zzarr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzg;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/internal/zzari$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzari$1;-><init>(Lcom/google/android/gms/internal/zzari;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzari;->zzbjV:Lcom/google/android/gms/internal/zzasb;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzari;->zzbjU:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzari;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzwV()V

    return-void
.end method


# virtual methods
.method protected zzdf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzarr;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzarr$zza;->zzdi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzarr;

    move-result-object v0

    return-object v0
.end method

.method protected zzeu()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected zzev()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzari;->zzdf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzarr;

    move-result-object v0

    return-object v0
.end method

.method protected zzql()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzari;->zzbjU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
