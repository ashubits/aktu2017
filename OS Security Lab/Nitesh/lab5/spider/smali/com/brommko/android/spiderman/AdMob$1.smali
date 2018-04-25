.class Lcom/brommko/android/spiderman/AdMob$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brommko/android/spiderman/AdMob;->initInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brommko/android/spiderman/AdMob;


# direct methods
.method constructor <init>(Lcom/brommko/android/spiderman/AdMob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/brommko/android/spiderman/AdMob;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/brommko/android/spiderman/AdMob$1;->this$0:Lcom/brommko/android/spiderman/AdMob;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob$1;->this$0:Lcom/brommko/android/spiderman/AdMob;

    # getter for: Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/brommko/android/spiderman/AdMob;->access$000(Lcom/brommko/android/spiderman/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob$1;->this$0:Lcom/brommko/android/spiderman/AdMob;

    # getter for: Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/brommko/android/spiderman/AdMob;->access$000(Lcom/brommko/android/spiderman/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob$1;->this$0:Lcom/brommko/android/spiderman/AdMob;

    # getter for: Lcom/brommko/android/spiderman/AdMob;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v0}, Lcom/brommko/android/spiderman/AdMob;->access$000(Lcom/brommko/android/spiderman/AdMob;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 55
    :cond_0
    return-void
.end method
