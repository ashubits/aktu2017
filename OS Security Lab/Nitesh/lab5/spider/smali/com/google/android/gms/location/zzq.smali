.class public final Lcom/google/android/gms/location/zzq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzbjD:Ljava/lang/String;

.field private final zzbjE:Ljava/lang/String;

.field private final zzbjF:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/zzq;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/zzq;->zzbjD:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/zzq;->zzbjE:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/location/zzq;->zzbjF:I

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/zzq;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzr;->zza(Lcom/google/android/gms/location/zzq;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzHs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zzq;->zzbjD:Ljava/lang/String;

    return-object v0
.end method

.method public zzHt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zzq;->zzbjE:Ljava/lang/String;

    return-object v0
.end method

.method public zzHu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/zzq;->zzbjF:I

    return v0
.end method
