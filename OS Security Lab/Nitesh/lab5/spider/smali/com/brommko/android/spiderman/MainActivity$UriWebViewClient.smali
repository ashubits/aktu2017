.class Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brommko/android/spiderman/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UriWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brommko/android/spiderman/MainActivity;


# direct methods
.method private constructor <init>(Lcom/brommko/android/spiderman/MainActivity;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brommko/android/spiderman/MainActivity;Lcom/brommko/android/spiderman/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/brommko/android/spiderman/MainActivity;
    .param p2, "x1"    # Lcom/brommko/android/spiderman/MainActivity$1;

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;-><init>(Lcom/brommko/android/spiderman/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->setToolbarButtonColor()V
    invoke-static {v0}, Lcom/brommko/android/spiderman/MainActivity;->access$1100(Lcom/brommko/android/spiderman/MainActivity;)V

    .line 591
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->hideStatusBar()V
    invoke-static {v0}, Lcom/brommko/android/spiderman/MainActivity;->access$1000(Lcom/brommko/android/spiderman/MainActivity;)V

    .line 592
    invoke-static {}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->dismissProgress()V

    .line 593
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v0}, Lcom/brommko/android/spiderman/MainActivity;->showContent()V

    .line 582
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->setToolbarButtonColor()V
    invoke-static {v0}, Lcom/brommko/android/spiderman/MainActivity;->access$1100(Lcom/brommko/android/spiderman/MainActivity;)V

    .line 583
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->hideStatusBar()V
    invoke-static {v0}, Lcom/brommko/android/spiderman/MainActivity;->access$1000(Lcom/brommko/android/spiderman/MainActivity;)V

    .line 584
    invoke-static {}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->dismissProgress()V

    .line 585
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 560
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/brommko/android/spiderman/util/NetworkHandler;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    const-string v0, "file:///android_asset/NoInternet.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->hideStatusBar()V
    invoke-static {v0}, Lcom/brommko/android/spiderman/MainActivity;->access$1000(Lcom/brommko/android/spiderman/MainActivity;)V

    .line 565
    invoke-static {}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->dismissProgress()V

    .line 566
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .prologue
    .line 570
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 571
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/brommko/android/spiderman/util/NetworkHandler;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    const-string v0, "file:///android_asset/NoInternet.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->hideStatusBar()V
    invoke-static {v0}, Lcom/brommko/android/spiderman/MainActivity;->access$1000(Lcom/brommko/android/spiderman/MainActivity;)V

    .line 575
    invoke-static {}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->dismissProgress()V

    .line 576
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/brommko/android/spiderman/util/NetworkHandler;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const-string v0, "file:///android_asset/NoInternet.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->hideStatusBar()V
    invoke-static {v0}, Lcom/brommko/android/spiderman/MainActivity;->access$1000(Lcom/brommko/android/spiderman/MainActivity;)V

    .line 555
    invoke-static {}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->dismissProgress()V

    .line 556
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "host":Ljava/lang/String;
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # setter for: Lcom/brommko/android/spiderman/MainActivity;->urlData:Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/brommko/android/spiderman/MainActivity;->access$402(Lcom/brommko/android/spiderman/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    # getter for: Lcom/brommko/android/spiderman/MainActivity;->target_url_prefix:Ljava/lang/String;
    invoke-static {}, Lcom/brommko/android/spiderman/MainActivity;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 531
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/brommko/android/spiderman/MainActivity;->access$700(Lcom/brommko/android/spiderman/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v3}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 532
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const/4 v3, 0x0

    # setter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v2, v3}, Lcom/brommko/android/spiderman/MainActivity;->access$602(Lcom/brommko/android/spiderman/MainActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 534
    :cond_0
    const/4 v1, 0x0

    .line 546
    :cond_1
    :goto_0
    return v1

    .line 537
    :cond_2
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-static {v2, p2}, Lcom/brommko/android/spiderman/util/UrlHander;->checkUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 538
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 539
    invoke-static {}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->dismissProgress()V

    goto :goto_0

    .line 541
    :cond_3
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # setter for: Lcom/brommko/android/spiderman/MainActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/brommko/android/spiderman/MainActivity;->access$802(Lcom/brommko/android/spiderman/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->show_content:Z
    invoke-static {v2}, Lcom/brommko/android/spiderman/MainActivity;->access$900(Lcom/brommko/android/spiderman/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-static {v2}, Lcom/brommko/android/spiderman/util/ProgressDialogHelper;->showProgress(Landroid/content/Context;)V

    goto :goto_0
.end method
