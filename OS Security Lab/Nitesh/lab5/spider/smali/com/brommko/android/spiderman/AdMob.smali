.class public Lcom/brommko/android/spiderman/AdMob;
.super Ljava/lang/Object;
.source "AdMob.java"


# static fields
.field private static INTERVAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ADMOB"


# instance fields
.field private adView:Lcom/google/android/gms/ads/AdView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerTask:Ljava/lang/Runnable;

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x1d4c0

    sput v0, Lcom/brommko/android/spiderman/AdMob;->INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdView;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "adView"    # Lcom/google/android/gms/ads/AdView;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/brommko/android/spiderman/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    .line 30
    const v2, 0x7f080055

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "interval":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/brommko/android/spiderman/AdMob;->INTERVAL:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/AdMob;->initInterstitialAd()V

    .line 39
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/AdMob;->initBannerAds()V

    .line 40
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "ADMOB"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/brommko/android/spiderman/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/AdMob;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method private getAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    const v2, 0x7f08005f

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initBannerAds()V
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    const v3, 0x7f080041

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    const v2, 0x7f080044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "bannerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 75
    .end local v0    # "bannerId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "bannerId":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initInterstitialAd()V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "interstitialId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v2, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 46
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v2, Lcom/brommko/android/spiderman/AdMob$1;

    invoke-direct {v2, p0}, Lcom/brommko/android/spiderman/AdMob$1;-><init>(Lcom/brommko/android/spiderman/AdMob;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method public requestAdMob()V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/brommko/android/spiderman/AdMob;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/AdMob;->requestBannerAds()V

    .line 111
    new-instance v0, Lcom/brommko/android/spiderman/AdMob$2;

    invoke-direct {v0, p0}, Lcom/brommko/android/spiderman/AdMob$2;-><init>(Lcom/brommko/android/spiderman/AdMob;)V

    iput-object v0, p0, Lcom/brommko/android/spiderman/AdMob;->mHandlerTask:Ljava/lang/Runnable;

    .line 118
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mHandlerTask:Ljava/lang/Runnable;

    sget v2, Lcom/brommko/android/spiderman/AdMob;->INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method

.method public requestBannerAds()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    const v2, 0x7f080044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "bannerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/brommko/android/spiderman/AdMob;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 99
    .end local v0    # "bannerId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public requestInterstitialAd()V
    .locals 6

    .prologue
    .line 78
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mContext:Landroid/content/Context;

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "interstitialId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-static {}, Lcom/brommko/android/spiderman/Spiderman;->isActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/brommko/android/spiderman/AdMob;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 90
    .end local v0    # "interstitialId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0    # "interstitialId":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/brommko/android/spiderman/AdMob;->mHandlerTask:Ljava/lang/Runnable;

    sget v3, Lcom/brommko/android/spiderman/AdMob;->INTERVAL:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stopRepeatingTask()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/brommko/android/spiderman/AdMob;->mHandlerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    :cond_0
    return-void
.end method
