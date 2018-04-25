.class public Lcom/google/android/gms/internal/zzarv;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzarv;",
            ">;"
        }
    .end annotation
.end field

.field static final zzbko:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mTag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVersionCode:I

.field zzaVV:Lcom/google/android/gms/location/LocationRequest;

.field zzbiI:Z

.field zzbiU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarj;",
            ">;"
        }
    .end annotation
.end field

.field zzbkp:Z

.field zzbkq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzarv;->zzbko:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzarw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzarw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzarv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/LocationRequest;ZLjava/util/List;Ljava/lang/String;ZZ)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarj;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzarv;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzarv;->zzaVV:Lcom/google/android/gms/location/LocationRequest;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzarv;->zzbiI:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzarv;->zzbiU:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzarv;->mTag:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzarv;->zzbkp:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzarv;->zzbkq:Z

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzarv;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzarv;

    sget-object v4, Lcom/google/android/gms/internal/zzarv;->zzbko:Ljava/util/List;

    move-object v2, p1

    move v3, v1

    move-object v5, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzarv;-><init>(ILcom/google/android/gms/location/LocationRequest;ZLjava/util/List;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzarv;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzarv;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzarv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzarv;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzarv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarv;->zzaVV:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzarv;->zzaVV:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzarv;->zzbiI:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzarv;->zzbiI:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzarv;->zzbkp:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzarv;->zzbkp:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarv;->zzbiU:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzarv;->zzbiU:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzarv;->zzbkq:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzarv;->zzbkq:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzarv;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarv;->zzaVV:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarv;->zzaVV:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarv;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarv;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzarv;->zzbiI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hideAppOps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzarv;->zzbkp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarv;->zzbiU:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " forceCoarseLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzarv;->zzbkq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzarw;->zza(Lcom/google/android/gms/internal/zzarv;Landroid/os/Parcel;I)V

    return-void
.end method
