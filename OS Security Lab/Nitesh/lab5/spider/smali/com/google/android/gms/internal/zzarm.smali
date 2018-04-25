.class public final Lcom/google/android/gms/internal/zzarm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzarm;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbkd:Lcom/google/android/gms/internal/zzarm;


# instance fields
.field private final mVersionCode:I

.field private final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzarm;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzarm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    sput-object v0, Lcom/google/android/gms/internal/zzarm;->zzbkd:Lcom/google/android/gms/internal/zzarm;

    new-instance v0, Lcom/google/android/gms/internal/zzarn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzarn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzarm;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzarm;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzarm;-><init>(ILcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarm;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzarm;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzarn;->zza(Lcom/google/android/gms/internal/zzarm;Landroid/os/Parcel;I)V

    return-void
.end method
