.class final Lhotchemi/android/rate/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# static fields
.field private static final GOOGLE_PLAY_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method static createIntentForAmazonAppstore(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Lhotchemi/android/rate/UriHelper;->getAmazonAppstore(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method static createIntentForGooglePlay(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Lhotchemi/android/rate/UriHelper;->getGooglePlay(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-static {p0, v2}, Lhotchemi/android/rate/UriHelper;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    :cond_0
    return-object v0
.end method
