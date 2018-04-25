.class Lcom/brommko/android/spiderman/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/brommko/android/spiderman/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brommko/android/spiderman/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brommko/android/spiderman/MainActivity;


# direct methods
.method constructor <init>(Lcom/brommko/android/spiderman/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/brommko/android/spiderman/MainActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity$4;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/brommko/android/spiderman/util/IabResult;Lcom/brommko/android/spiderman/util/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/brommko/android/spiderman/util/IabResult;
    .param p2, "info"    # Lcom/brommko/android/spiderman/util/Purchase;

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/brommko/android/spiderman/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$4;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$4;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$000(Lcom/brommko/android/spiderman/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/brommko/android/spiderman/util/Pref;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    iget-object v0, p0, Lcom/brommko/android/spiderman/MainActivity$4;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->removeAds()V
    invoke-static {v0}, Lcom/brommko/android/spiderman/MainActivity;->access$200(Lcom/brommko/android/spiderman/MainActivity;)V

    .line 236
    :cond_0
    return-void
.end method
