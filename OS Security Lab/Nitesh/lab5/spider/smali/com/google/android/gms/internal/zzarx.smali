.class public Lcom/google/android/gms/internal/zzarx;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzarx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPendingIntent:Landroid/app/PendingIntent;

.field private final mVersionCode:I

.field zzbkr:I

.field zzbks:Lcom/google/android/gms/internal/zzarv;

.field zzbkt:Lcom/google/android/gms/location/zzm;

.field zzbku:Lcom/google/android/gms/location/zzl;

.field zzbkv:Lcom/google/android/gms/internal/zzarp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzary;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzary;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzarx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/internal/zzarv;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzarx;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzarx;->zzbkr:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarx;->zzbks:Lcom/google/android/gms/internal/zzarv;

    if-nez p4, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzarx;->zzbkt:Lcom/google/android/gms/location/zzm;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzarx;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p6, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzarx;->zzbku:Lcom/google/android/gms/location/zzl;

    if-nez p7, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/zzarx;->zzbkv:Lcom/google/android/gms/internal/zzarp;

    return-void

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/location/zzm$zza;->zzde(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzm;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p6}, Lcom/google/android/gms/location/zzl$zza;->zzdd(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzl;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {p7}, Lcom/google/android/gms/internal/zzarp$zza;->zzdg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzarp;

    move-result-object v1

    goto :goto_2
.end method

.method public static zza(Lcom/google/android/gms/internal/zzarv;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/zzarp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzarx;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzarp;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    move v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzarx;-><init>(IILcom/google/android/gms/internal/zzarv;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v7, v4

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzarv;Lcom/google/android/gms/location/zzl;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/zzarp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzarx;

    invoke-interface {p1}, Lcom/google/android/gms/location/zzl;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzarp;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    move v2, v1

    move-object v3, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzarx;-><init>(IILcom/google/android/gms/internal/zzarv;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v7, v4

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzarv;Lcom/google/android/gms/location/zzm;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/zzarp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzarx;

    invoke-interface {p1}, Lcom/google/android/gms/location/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzarp;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    move v2, v1

    move-object v3, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzarx;-><init>(IILcom/google/android/gms/internal/zzarv;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v7, v5

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/location/zzl;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;
    .locals 8
    .param p1    # Lcom/google/android/gms/internal/zzarp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzarx;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/zzl;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzarp;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzarx;-><init>(IILcom/google/android/gms/internal/zzarv;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v7, v3

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/location/zzm;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;
    .locals 8
    .param p1    # Lcom/google/android/gms/internal/zzarp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzarx;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzarp;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzarx;-><init>(IILcom/google/android/gms/internal/zzarv;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v7, v3

    goto :goto_0
.end method

.method public static zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzarp;)Lcom/google/android/gms/internal/zzarx;
    .locals 8
    .param p1    # Lcom/google/android/gms/internal/zzarp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzarx;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzarp;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    move-object v4, v3

    move-object v5, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzarx;-><init>(IILcom/google/android/gms/internal/zzarv;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v7, v3

    goto :goto_0
.end method


# virtual methods
.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzarx;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzary;->zza(Lcom/google/android/gms/internal/zzarx;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzHD()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarx;->zzbkt:Lcom/google/android/gms/location/zzm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarx;->zzbkt:Lcom/google/android/gms/location/zzm;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method zzHE()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarx;->zzbku:Lcom/google/android/gms/location/zzl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarx;->zzbku:Lcom/google/android/gms/location/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method zzHF()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarx;->zzbkv:Lcom/google/android/gms/internal/zzarp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarx;->zzbkv:Lcom/google/android/gms/internal/zzarp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzarp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
