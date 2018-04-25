.class final Lhotchemi/android/rate/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method static getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lhotchemi/android/rate/Utils;->underHoneyComb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lhotchemi/android/rate/Utils;->getDialogTheme()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static getDialogTheme()I
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lhotchemi/android/rate/Utils;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lhotchemi/android/rate/R$style;->CustomLollipopDialogStyle:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLollipop()Z
    .locals 2

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static underHoneyComb()Z
    .locals 2

    .prologue
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
