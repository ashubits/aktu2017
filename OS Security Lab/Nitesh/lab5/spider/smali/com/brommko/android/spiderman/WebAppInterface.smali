.class public Lcom/brommko/android/spiderman/WebAppInterface;
.super Ljava/lang/Object;
.source "WebAppInterface.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWebview:Landroid/webkit/WebView;

.field private productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "mWebview"    # Landroid/webkit/WebView;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/brommko/android/spiderman/WebAppInterface;->productId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mWebview:Landroid/webkit/WebView;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/brommko/android/spiderman/WebAppInterface;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/WebAppInterface;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public createNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/brommko/android/spiderman/util/LocalNotification;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public fontSizeLarger()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/brommko/android/spiderman/WebAppInterface$2;

    invoke-direct {v1, p0}, Lcom/brommko/android/spiderman/WebAppInterface$2;-><init>(Lcom/brommko/android/spiderman/WebAppInterface;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public fontSizeLargest()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/brommko/android/spiderman/WebAppInterface$3;

    invoke-direct {v1, p0}, Lcom/brommko/android/spiderman/WebAppInterface$3;-><init>(Lcom/brommko/android/spiderman/WebAppInterface;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public fontSizeNormal()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/brommko/android/spiderman/WebAppInterface$1;

    invoke-direct {v1, p0}, Lcom/brommko/android/spiderman/WebAppInterface$1;-><init>(Lcom/brommko/android/spiderman/WebAppInterface;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public fontSizeSmaller()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/brommko/android/spiderman/WebAppInterface$4;

    invoke-direct {v1, p0}, Lcom/brommko/android/spiderman/WebAppInterface$4;-><init>(Lcom/brommko/android/spiderman/WebAppInterface;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public fontSizeSmallest()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/brommko/android/spiderman/WebAppInterface$5;

    invoke-direct {v1, p0}, Lcom/brommko/android/spiderman/WebAppInterface$5;-><init>(Lcom/brommko/android/spiderman/WebAppInterface;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public getFirebaseToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideLoader()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->dismissProgress()V

    .line 54
    return-void
.end method

.method public isProductPurchased()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/brommko/android/spiderman/WebAppInterface;->productId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/brommko/android/spiderman/util/Pref;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public rateApp()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/AppRate;->with(Landroid/content/Context;)Lhotchemi/android/rate/AppRate;

    move-result-object v1

    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v1, v0}, Lhotchemi/android/rate/AppRate;->showRateDialog(Landroid/app/Activity;)V

    .line 115
    return-void
.end method

.method public showLoader()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/brommko/android/spiderman/WebAppInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->showProgress(Landroid/content/Context;)V

    .line 49
    return-void
.end method
