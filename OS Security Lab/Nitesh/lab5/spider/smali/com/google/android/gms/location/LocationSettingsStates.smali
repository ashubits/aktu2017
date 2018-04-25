.class public final Lcom/google/android/gms/location/LocationSettingsStates;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzbjL:Z

.field private final zzbjM:Z

.field private final zzbjN:Z

.field private final zzbjO:Z

.field private final zzbjP:Z

.field private final zzbjQ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjL:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjM:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjN:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjO:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjP:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjQ:Z

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 2

    const-string v0, "com.google.android.gms.location.LOCATION_SETTINGS_STATES"

    sget-object v1, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationSettingsStates;

    return-object v0
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->mVersionCode:I

    return v0
.end method

.method public isBlePresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjQ:Z

    return v0
.end method

.method public isBleUsable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjN:Z

    return v0
.end method

.method public isGpsPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjO:Z

    return v0
.end method

.method public isGpsUsable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjL:Z

    return v0
.end method

.method public isLocationPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjO:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjP:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationUsable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjL:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjM:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkLocationPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjP:Z

    return v0
.end method

.method public isNetworkLocationUsable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->zzbjM:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzu;->zza(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V

    return-void
.end method
