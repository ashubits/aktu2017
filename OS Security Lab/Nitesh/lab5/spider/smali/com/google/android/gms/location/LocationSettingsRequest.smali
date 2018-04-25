.class public final Lcom/google/android/gms/location/LocationSettingsRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaVS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbjG:Z

.field private final zzbjH:Z

.field private zzbjI:Lcom/google/android/gms/location/zzq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;ZZLcom/google/android/gms/location/zzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;ZZ",
            "Lcom/google/android/gms/location/zzq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaVS:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzbjG:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzbjH:Z

    iput-object p5, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzbjI:Lcom/google/android/gms/location/zzq;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;ZZLcom/google/android/gms/location/zzq;)V
    .locals 6
    .param p4    # Lcom/google/android/gms/location/zzq;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;ZZ",
            "Lcom/google/android/gms/location/zzq;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(ILjava/util/List;ZZLcom/google/android/gms/location/zzq;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ZZLcom/google/android/gms/location/zzq;Lcom/google/android/gms/location/LocationSettingsRequest$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZLcom/google/android/gms/location/zzq;)V

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzs;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzaVS:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzHv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzbjG:Z

    return v0
.end method

.method public zzHw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzbjH:Z

    return v0
.end method

.method public zzHx()Lcom/google/android/gms/location/zzq;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->zzbjI:Lcom/google/android/gms/location/zzq;

    return-object v0
.end method
