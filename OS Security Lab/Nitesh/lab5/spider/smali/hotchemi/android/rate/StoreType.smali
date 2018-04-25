.class public final enum Lhotchemi/android/rate/StoreType;
.super Ljava/lang/Enum;
.source "StoreType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhotchemi/android/rate/StoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhotchemi/android/rate/StoreType;

.field public static final enum AMAZON:Lhotchemi/android/rate/StoreType;

.field public static final enum GOOGLEPLAY:Lhotchemi/android/rate/StoreType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lhotchemi/android/rate/StoreType;

    const-string v1, "GOOGLEPLAY"

    invoke-direct {v0, v1, v2}, Lhotchemi/android/rate/StoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhotchemi/android/rate/StoreType;->GOOGLEPLAY:Lhotchemi/android/rate/StoreType;

    .line 5
    new-instance v0, Lhotchemi/android/rate/StoreType;

    const-string v1, "AMAZON"

    invoke-direct {v0, v1, v3}, Lhotchemi/android/rate/StoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhotchemi/android/rate/StoreType;->AMAZON:Lhotchemi/android/rate/StoreType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lhotchemi/android/rate/StoreType;

    sget-object v1, Lhotchemi/android/rate/StoreType;->GOOGLEPLAY:Lhotchemi/android/rate/StoreType;

    aput-object v1, v0, v2

    sget-object v1, Lhotchemi/android/rate/StoreType;->AMAZON:Lhotchemi/android/rate/StoreType;

    aput-object v1, v0, v3

    sput-object v0, Lhotchemi/android/rate/StoreType;->$VALUES:[Lhotchemi/android/rate/StoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhotchemi/android/rate/StoreType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lhotchemi/android/rate/StoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhotchemi/android/rate/StoreType;

    return-object v0
.end method

.method public static values()[Lhotchemi/android/rate/StoreType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lhotchemi/android/rate/StoreType;->$VALUES:[Lhotchemi/android/rate/StoreType;

    invoke-virtual {v0}, [Lhotchemi/android/rate/StoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhotchemi/android/rate/StoreType;

    return-object v0
.end method
