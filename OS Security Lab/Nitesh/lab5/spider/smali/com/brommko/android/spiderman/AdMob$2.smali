.class Lcom/brommko/android/spiderman/AdMob$2;
.super Ljava/lang/Object;
.source "AdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brommko/android/spiderman/AdMob;->requestAdMob()V
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
    .line 111
    iput-object p1, p0, Lcom/brommko/android/spiderman/AdMob$2;->this$0:Lcom/brommko/android/spiderman/AdMob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob$2;->this$0:Lcom/brommko/android/spiderman/AdMob;

    invoke-virtual {v0}, Lcom/brommko/android/spiderman/AdMob;->requestInterstitialAd()V

    .line 115
    iget-object v0, p0, Lcom/brommko/android/spiderman/AdMob$2;->this$0:Lcom/brommko/android/spiderman/AdMob;

    invoke-virtual {v0}, Lcom/brommko/android/spiderman/AdMob;->requestBannerAds()V

    .line 116
    return-void
.end method
