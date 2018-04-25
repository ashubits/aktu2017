.class public Lcom/google/android/gms/location/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVersionCode:I

.field private zzaht:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbiH:J

.field private zzbiI:Z

.field private zzbiJ:Landroid/os/WorkSource;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbiK:[I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbiL:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbiM:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJZLandroid/os/WorkSource;Ljava/lang/String;[IZLjava/lang/String;J)V
    .locals 0
    .param p5    # Landroid/os/WorkSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/zza;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/location/zza;->zzbiH:J

    iput-boolean p4, p0, Lcom/google/android/gms/location/zza;->zzbiI:Z

    iput-object p5, p0, Lcom/google/android/gms/location/zza;->zzbiJ:Landroid/os/WorkSource;

    iput-object p6, p0, Lcom/google/android/gms/location/zza;->mTag:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/zza;->zzbiK:[I

    iput-boolean p8, p0, Lcom/google/android/gms/location/zza;->zzbiL:Z

    iput-object p9, p0, Lcom/google/android/gms/location/zza;->zzaht:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/gms/location/zza;->zzbiM:J

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/zza;->zzaht:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/zza;->zzbiH:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/zza;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/zza;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzb;->zza(Lcom/google/android/gms/location/zza;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzHi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/zza;->zzbiI:Z

    return v0
.end method

.method public zzHj()Landroid/os/WorkSource;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/zza;->zzbiJ:Landroid/os/WorkSource;

    return-object v0
.end method

.method public zzHk()[I
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/zza;->zzbiK:[I

    return-object v0
.end method

.method public zzHl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/zza;->zzbiL:Z

    return v0
.end method

.method public zzHm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/zza;->zzbiM:J

    return-wide v0
.end method
