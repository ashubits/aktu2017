.class Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brommko/android/spiderman/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UriChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brommko/android/spiderman/MainActivity;


# direct methods
.method constructor <init>(Lcom/brommko/android/spiderman/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 646
    const-string v0, "TEST"

    const-string v1, "onCloseWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v9, 0x13

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 602
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/brommko/android/spiderman/MainActivity;->access$1200(Lcom/brommko/android/spiderman/MainActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1, v2}, Lcom/brommko/android/spiderman/MainActivity;->access$602(Lcom/brommko/android/spiderman/MainActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 603
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 604
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 605
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;

    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {v2, v3, v7}, Lcom/brommko/android/spiderman/MainActivity$UriWebViewClient;-><init>(Lcom/brommko/android/spiderman/MainActivity;Lcom/brommko/android/spiderman/MainActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 606
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 607
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 608
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 609
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 610
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 611
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 612
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 613
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 614
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 615
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v2}, Lcom/brommko/android/spiderman/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/brommko/android/spiderman/WebAppInterface;

    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;
    invoke-static {v4}, Lcom/brommko/android/spiderman/MainActivity;->access$000(Lcom/brommko/android/spiderman/MainActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v5}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/brommko/android/spiderman/WebAppInterface;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 618
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 619
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 620
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$700(Lcom/brommko/android/spiderman/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 624
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 626
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v9, :cond_1

    .line 627
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 632
    :cond_0
    :goto_0
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 633
    .local v0, "transport":Landroid/webkit/WebView$WebViewTransport;
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 634
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 635
    return v6

    .line 628
    .end local v0    # "transport":Landroid/webkit/WebView$WebViewTransport;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v9, :cond_0

    .line 629
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mWebviewPop:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$600(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iput-object p1, v0, Lcom/brommko/android/spiderman/MainActivity;->geoLocationOrigin:Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iput-object p2, v0, Lcom/brommko/android/spiderman/MainActivity;->geoLocationCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 656
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/brommko/android/spiderman/util/PermissionUtil;->geoLocationPermission(Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 657
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 640
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 642
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 9
    .param p1, "mWebView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 683
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v4}, Lcom/brommko/android/spiderman/MainActivity;->access$1300(Lcom/brommko/android/spiderman/MainActivity;)Landroid/webkit/ValueCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 684
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v4, v4, Lcom/brommko/android/spiderman/MainActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 685
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iput-object v8, v4, Lcom/brommko/android/spiderman/MainActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 688
    :cond_0
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iput-object p2, v4, Lcom/brommko/android/spiderman/MainActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 690
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v4}, Lcom/brommko/android/spiderman/MainActivity;->getCameraIntents()Ljava/util/List;

    move-result-object v0

    .line 691
    .local v0, "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 693
    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    :try_start_0
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const v7, 0x7f08004b

    invoke-virtual {v4, v7}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 698
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 699
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const/4 v7, 0x2

    invoke-virtual {v4, v1, v7}, Lcom/brommko/android/spiderman/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 707
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    :goto_0
    return v4

    .line 700
    :catch_0
    move-exception v2

    .line 701
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iput-object v8, v4, Lcom/brommko/android/spiderman/MainActivity;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 702
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v4}, Lcom/brommko/android/spiderman/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f080046

    invoke-static {v4, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 704
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v6

    .line 705
    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v6, 0x1

    .line 712
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # setter for: Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v4, p1}, Lcom/brommko/android/spiderman/MainActivity;->access$1302(Lcom/brommko/android/spiderman/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 713
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v4}, Lcom/brommko/android/spiderman/MainActivity;->getCameraIntents()Ljava/util/List;

    move-result-object v0

    .line 714
    .local v0, "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v4, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    :try_start_0
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const v5, 0x7f08004b

    invoke-virtual {v4, v5}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 720
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 721
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/brommko/android/spiderman/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v2

    .line 723
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v4}, Lcom/brommko/android/spiderman/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080046

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 725
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 7
    .param p1, "uploadMsg"    # Landroid/webkit/ValueCallback;
    .param p2, "acceptType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 661
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # setter for: Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v4, p1}, Lcom/brommko/android/spiderman/MainActivity;->access$1302(Lcom/brommko/android/spiderman/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 662
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v4}, Lcom/brommko/android/spiderman/MainActivity;->getCameraIntents()Ljava/util/List;

    move-result-object v0

    .line 663
    .local v0, "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v4, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    :try_start_0
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const v5, 0x7f08004b

    invoke-virtual {v4, v5}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 669
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 670
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/brommko/android/spiderman/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v2

    .line 672
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v4}, Lcom/brommko/android/spiderman/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080046

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 674
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v6, 0x1

    .line 732
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # setter for: Lcom/brommko/android/spiderman/MainActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v4, p1}, Lcom/brommko/android/spiderman/MainActivity;->access$1302(Lcom/brommko/android/spiderman/MainActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 733
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v4}, Lcom/brommko/android/spiderman/MainActivity;->getCameraIntents()Ljava/util/List;

    move-result-object v0

    .line 734
    .local v0, "cameraIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string v4, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    :try_start_0
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const v5, 0x7f08004b

    invoke-virtual {v4, v5}, Lcom/brommko/android/spiderman/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 740
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 741
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/brommko/android/spiderman/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v2

    .line 743
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/brommko/android/spiderman/MainActivity$UriChromeClient;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-virtual {v4}, Lcom/brommko/android/spiderman/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080046

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 745
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
