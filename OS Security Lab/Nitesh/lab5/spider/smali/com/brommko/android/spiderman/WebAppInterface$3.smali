.class Lcom/brommko/android/spiderman/WebAppInterface$3;
.super Ljava/lang/Object;
.source "WebAppInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brommko/android/spiderman/WebAppInterface;->fontSizeLargest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brommko/android/spiderman/WebAppInterface;


# direct methods
.method constructor <init>(Lcom/brommko/android/spiderman/WebAppInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/brommko/android/spiderman/WebAppInterface;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/brommko/android/spiderman/WebAppInterface$3;->this$0:Lcom/brommko/android/spiderman/WebAppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/brommko/android/spiderman/WebAppInterface$3;->this$0:Lcom/brommko/android/spiderman/WebAppInterface;

    # getter for: Lcom/brommko/android/spiderman/WebAppInterface;->mWebview:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/brommko/android/spiderman/WebAppInterface;->access$000(Lcom/brommko/android/spiderman/WebAppInterface;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 84
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 85
    return-void
.end method
