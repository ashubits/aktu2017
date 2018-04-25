.class public Lcom/brommko/android/spiderman/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/brommko/android/spiderman/util/IabBroadcastReceiver$IabBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;,
        Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;
    }
.end annotation


# static fields
.field private static final FILE_CHOOSER_RESULT_CODE:I = 0x1

.field private static final REQUEST_SELECT_FILE:I = 0x2

.field private static target_url:Ljava/lang/String;

.field private static target_url_prefix:Ljava/lang/String;


# instance fields
.field private ITEM_SKU:Ljava/lang/String;

.field private admob:Lcom/brommko/android/spiderman/AdMob;

.field private contentDisposition:Ljava/lang/String;

.field private currentUrl:Ljava/lang/String;

.field geoLocationCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field geoLocationOrigin:Ljava/lang/String;

.field private isPurchased:Z

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private mBack:Landroid/widget/ImageView;

.field private mBilling:Landroid/widget/ImageView;

.field mBroadcastReceiver:Lcom/brommko/android/spiderman/util/IabBroadcastReceiver;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mForward:Landroid/widget/ImageView;

.field mGotInventoryListener:Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

.field private mImageViewSplash:Landroid/widget/ImageView;

.field mPurchaseFinishedListener:Lcom/brommko/android/spiderman/util/IabHelper$OnIabPurchaseFinishedListener;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWebview:Landroid/webkit/WebView;

.field private mWebviewPop:Landroid/webkit/WebView;

.field private mimeType:Ljava/lang/String;

.field private showToolBar:Z

.field private show_content:Z

.field public uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private urlData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->show_content:Z

    iput-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->showToolBar:Z

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z

    .line 209
    new-instance v0, Lcom/brommko/android/spiderman/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/brommko/android/spiderman/MainActivity$3;-><init>(Lcom/brommko/android/spiderman/MainActivity;)V

    iput-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mGotInventoryListener:Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;

    .line 229
    new-instance v0, Lcom/brommko/android/spiderman/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/brommko/android/spiderman/MainActivity$4;-><init>(Lcom/brommko/android/spiderman/MainActivity;)V

    iput-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mPurchaseFinishedListener:Lcom/brommko/android/spiderman/util/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/brommko/android/spiderman/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brommko/android/spiderman/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/brommko/android/spiderman/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/brommko/android/spiderman/MainActivity;->hideStatusBar()V

    return-void
.end method

.method static synthetic access$102(Lcom/brommko/android/spiderman/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/brommko/android/spiderman/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/brommko/android/spiderman/MainActivity;->setToolbarButtonColor()V

    return-void
.end method

.method static synthetic access$1200(Lcom/brommko/android/spiderman/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/brommko/android/spiderman/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/brommko/android/spiderman/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/brommko/android/spiderman/MainActivity;->removeAds()V

    return-void
.end method

.method static synthetic access$402(Lcom/brommko/android/spiderman/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity;->urlData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url_prefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/brommko/android/spiderman/MainActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/brommko/android/spiderman/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/brommko/android/spiderman/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity;->currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/brommko/android/spiderman/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->show_content:Z

    return v0
.end method

.method private checkURL(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    if-eqz p1, :cond_1

    .line 119
    const-string v0, "text/plain"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url_prefix:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->currentUrl:Ljava/lang/String;

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    const-string v0, "file:///android_asset/index.html"

    sput-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    .line 131
    const-string v0, "android_asset"

    sput-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url_prefix:Ljava/lang/String;

    .line 136
    :goto_1
    sget-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->currentUrl:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_3
    sget-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brommko/android/spiderman/MainActivity;->target_url_prefix:Ljava/lang/String;

    goto :goto_1
.end method

.method private hideStatusBar()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 276
    const v3, 0x7f080052

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 283
    .local v1, "decorView":Landroid/view/View;
    const/4 v2, 0x4

    .line 284
    .local v2, "uiOptions":I
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 285
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 286
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method private initBrowser(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v9, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 319
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 320
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, v7}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 321
    const v3, 0x7f0e007d

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    .line 322
    const v3, 0x7f0e007b

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 323
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 324
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 325
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 326
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 327
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 328
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 329
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 330
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 331
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 332
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 336
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 337
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 338
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v3}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v0

    .line 339
    .local v0, "a":I
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v4, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;

    invoke-direct {v4, p0, v8}, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;-><init>(Lcom/brommko/android/spiderman/MainActivity;Lcom/brommko/android/spiderman/MainActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 340
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v4, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;

    invoke-direct {v4, p0}, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;-><init>(Lcom/brommko/android/spiderman/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 341
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 342
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v4, Lcom/brommko/android/spiderman/WebAppInterface;

    iget-object v5, p0, Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;

    iget-object v6, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-direct {v4, p0, v5, v6}, Lcom/brommko/android/spiderman/WebAppInterface;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_2

    .line 345
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v8}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 350
    :cond_0
    :goto_0
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 352
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 353
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 355
    :cond_1
    if-eqz p1, :cond_3

    .line 356
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 360
    :goto_1
    return-void

    .line 346
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v9, :cond_0

    .line 347
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v3, v7, v8}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 358
    :cond_3
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    sget-object v4, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initComponents()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 240
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mContext:Landroid/content/Context;

    .line 241
    const v3, 0x7f0e0083

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mImageViewSplash:Landroid/widget/ImageView;

    .line 242
    const v3, 0x7f0e007c

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/AdView;

    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 243
    iget-boolean v3, p0, Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 247
    :cond_0
    const v3, 0x7f080060

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/brommko/android/spiderman/MainActivity;->showToolBar:Z

    .line 251
    :cond_1
    iget-boolean v3, p0, Lcom/brommko/android/spiderman/MainActivity;->showToolBar:Z

    if-eqz v3, :cond_4

    .line 252
    const v3, 0x7f0e007f

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mBack:Landroid/widget/ImageView;

    .line 253
    const v3, 0x7f0e0080

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mForward:Landroid/widget/ImageView;

    .line 254
    const v3, 0x7f0e0082

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 256
    .local v2, "mRefresh":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-boolean v3, p0, Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z

    if-nez v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mBilling:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .end local v2    # "mRefresh":Landroid/widget/ImageView;
    :cond_2
    :goto_0
    return-void

    .line 263
    .restart local v2    # "mRefresh":Landroid/widget/ImageView;
    :cond_3
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mBilling:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 266
    .end local v2    # "mRefresh":Landroid/widget/ImageView;
    :cond_4
    const v3, 0x7f0e007e

    invoke-virtual {p0, v3}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 267
    .local v0, "llToolbarContainer":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 270
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private initPayment()V
    .locals 3

    .prologue
    .line 182
    const v1, 0x7f0e0081

    invoke-virtual {p0, v1}, Lcom/brommko/android/spiderman/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mBilling:Landroid/widget/ImageView;

    .line 183
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/brommko/android/spiderman/util/Pref;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z

    .line 185
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;

    .line 186
    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "base64EncodedPublicKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Lcom/brommko/android/spiderman/util/IabHelper;

    invoke-direct {v1, p0, v0}, Lcom/brommko/android/spiderman/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    .line 189
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    new-instance v2, Lcom/brommko/android/spiderman/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/brommko/android/spiderman/MainActivity$2;-><init>(Lcom/brommko/android/spiderman/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/brommko/android/spiderman/util/IabHelper;->startSetup(Lcom/brommko/android/spiderman/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mBilling:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private removeAds()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 174
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->admob:Lcom/brommko/android/spiderman/AdMob;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->admob:Lcom/brommko/android/spiderman/AdMob;

    invoke-virtual {v0}, Lcom/brommko/android/spiderman/AdMob;->stopRepeatingTask()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mBilling:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    return-void
.end method

.method private setToolbarButtonColor()V
    .locals 4

    .prologue
    const v3, 0x7f0d002f

    const v2, 0x7f0d0014

    .line 508
    iget-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->showToolBar:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mBack:Landroid/widget/ImageView;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mForward:Landroid/widget/ImageView;

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 520
    :cond_0
    :goto_1
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mBack:Landroid/widget/ImageView;

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mForward:Landroid/widget/ImageView;

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCameraIntents()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v0, "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v1, "captureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 754
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 755
    .local v3, "listCam":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 756
    .local v6, "res":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 757
    .local v5, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 758
    .local v2, "i":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 759
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 762
    .end local v2    # "i":Landroid/content/Intent;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "res":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 391
    if-eq p1, v6, :cond_0

    if-ne p1, v7, :cond_9

    .line 392
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_5

    .line 393
    if-ne p1, v7, :cond_1

    .line 394
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v4, :cond_2

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    const/4 v2, 0x0

    .line 398
    .local v2, "uri":[Landroid/net/Uri;
    if-eqz p3, :cond_4

    .line 399
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 400
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    new-array v2, v4, [Landroid/net/Uri;

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 402
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 405
    .end local v0    # "i":I
    :cond_3
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v2

    .line 409
    :cond_4
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 410
    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 412
    .end local v2    # "uri":[Landroid/net/Uri;
    :cond_5
    if-ne p1, v6, :cond_8

    .line 413
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_1

    .line 416
    if-eqz p3, :cond_6

    const/4 v4, -0x1

    if-eq p2, v4, :cond_7

    :cond_6
    move-object v1, v3

    .line 417
    .local v1, "result":Landroid/net/Uri;
    :goto_2
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 418
    iput-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 416
    .end local v1    # "result":Landroid/net/Uri;
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 420
    :cond_8
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08004a

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 423
    :cond_9
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    if-eqz v3, :cond_a

    .line 424
    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/brommko/android/spiderman/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 425
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 428
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    sget-object v1, Lcom/brommko/android/spiderman/MainActivity;->target_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 377
    iget-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->show_content:Z

    if-nez v0, :cond_0

    .line 378
    invoke-static {p0}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->showProgress(Landroid/content/Context;)V

    goto :goto_0

    .line 382
    :pswitch_3
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity;->mPurchaseFinishedListener:Lcom/brommko/android/spiderman/util/IabHelper$OnIabPurchaseFinishedListener;

    const-string v5, ""

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/brommko/android/spiderman/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/brommko/android/spiderman/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x7f0e007f
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/brommko/android/spiderman/MainActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/brommko/android/spiderman/MainActivity;->checkURL(Landroid/content/Intent;)V

    .line 100
    invoke-direct {p0}, Lcom/brommko/android/spiderman/MainActivity;->initPayment()V

    .line 101
    invoke-direct {p0}, Lcom/brommko/android/spiderman/MainActivity;->initComponents()V

    .line 102
    invoke-direct {p0, p1}, Lcom/brommko/android/spiderman/MainActivity;->initBrowser(Landroid/os/Bundle;)V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->showContent()V

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/brommko/android/spiderman/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/brommko/android/spiderman/MainActivity$1;-><init>(Lcom/brommko/android/spiderman/MainActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 446
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 447
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->admob:Lcom/brommko/android/spiderman/AdMob;

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->admob:Lcom/brommko/android/spiderman/AdMob;

    invoke-virtual {v1}, Lcom/brommko/android/spiderman/AdMob;->stopRepeatingTask()V

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mBroadcastReceiver:Lcom/brommko/android/spiderman/util/IabBroadcastReceiver;

    if-eqz v1, :cond_3

    .line 457
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mBroadcastReceiver:Lcom/brommko/android/spiderman/util/IabBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/brommko/android/spiderman/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 459
    :cond_3
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    if-eqz v1, :cond_4

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    invoke-virtual {v1}, Lcom/brommko/android/spiderman/util/IabHelper;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    .line 467
    :cond_4
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "l"    # J

    .prologue
    .line 502
    iput-object p3, p0, Lcom/brommko/android/spiderman/MainActivity;->contentDisposition:Ljava/lang/String;

    .line 503
    iput-object p4, p0, Lcom/brommko/android/spiderman/MainActivity;->mimeType:Ljava/lang/String;

    .line 504
    invoke-static {p0, p1, p3, p4}, Lcom/brommko/android/spiderman/util/UrlHander;->downladLink(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 159
    invoke-static {}, Lcom/brommko/android/spiderman/Spiderman;->activityPaused()V

    .line 160
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 482
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 484
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v3

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->urlData:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/brommko/android/spiderman/util/UrlHander;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 488
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v3

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->urlData:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/brommko/android/spiderman/util/UrlHander;->sms(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_2
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->urlData:Ljava/lang/String;

    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->contentDisposition:Ljava/lang/String;

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity;->mimeType:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/brommko/android/spiderman/util/UrlHander;->download(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_3
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->geoLocationCallback:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->geoLocationCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->geoLocationOrigin:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 151
    invoke-static {}, Lcom/brommko/android/spiderman/Spiderman;->activityResumed()V

    .line 152
    invoke-direct {p0}, Lcom/brommko/android/spiderman/MainActivity;->hideStatusBar()V

    .line 153
    invoke-virtual {p0}, Lcom/brommko/android/spiderman/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/brommko/android/spiderman/MainActivity;->checkURL(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 171
    return-void
.end method

.method public receivedBroadcast()V
    .locals 3

    .prologue
    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity;->mGotInventoryListener:Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2}, Lcom/brommko/android/spiderman/util/IabHelper;->queryInventoryAsync(Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showContent()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 294
    iget-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->show_content:Z

    if-eqz v0, :cond_1

    .line 295
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.BLUETOOTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/brommko/android/spiderman/util/PermissionUtil;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 306
    iput-boolean v3, p0, Lcom/brommko/android/spiderman/MainActivity;->show_content:Z

    .line 307
    iget-boolean v0, p0, Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/brommko/android/spiderman/AdMob;

    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0, v1}, Lcom/brommko/android/spiderman/AdMob;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdView;)V

    iput-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->admob:Lcom/brommko/android/spiderman/AdMob;

    .line 309
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->admob:Lcom/brommko/android/spiderman/AdMob;

    invoke-virtual {v0}, Lcom/brommko/android/spiderman/AdMob;->requestAdMob()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mImageViewSplash:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 313
    invoke-static {}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->dismissProgress()V

    .line 315
    :cond_1
    return-void
.end method
