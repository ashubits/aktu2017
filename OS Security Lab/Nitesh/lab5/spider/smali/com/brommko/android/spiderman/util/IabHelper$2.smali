.class Lcom/brommko/android/spiderman/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brommko/android/spiderman/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brommko/android/spiderman/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/brommko/android/spiderman/util/IabHelper;ZLjava/util/List;Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/brommko/android/spiderman/util/IabHelper;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->this$0:Lcom/brommko/android/spiderman/util/IabHelper;

    iput-boolean p2, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->val$listener:Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 614
    new-instance v3, Lcom/brommko/android/spiderman/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/brommko/android/spiderman/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 615
    .local v3, "result":Lcom/brommko/android/spiderman/util/IabResult;
    const/4 v1, 0x0

    .line 617
    .local v1, "inv":Lcom/brommko/android/spiderman/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->this$0:Lcom/brommko/android/spiderman/util/IabHelper;

    iget-boolean v6, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/brommko/android/spiderman/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/brommko/android/spiderman/util/Inventory;
    :try_end_0
    .catch Lcom/brommko/android/spiderman/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 623
    :goto_0
    iget-object v5, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->this$0:Lcom/brommko/android/spiderman/util/IabHelper;

    invoke-virtual {v5}, Lcom/brommko/android/spiderman/util/IabHelper;->flagEndAsync()V

    .line 625
    move-object v4, v3

    .line 626
    .local v4, "result_f":Lcom/brommko/android/spiderman/util/IabResult;
    move-object v2, v1

    .line 627
    .local v2, "inv_f":Lcom/brommko/android/spiderman/util/Inventory;
    iget-object v5, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->this$0:Lcom/brommko/android/spiderman/util/IabHelper;

    iget-boolean v5, v5, Lcom/brommko/android/spiderman/util/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->val$listener:Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 628
    iget-object v5, p0, Lcom/brommko/android/spiderman/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/brommko/android/spiderman/util/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/brommko/android/spiderman/util/IabHelper$2$1;-><init>(Lcom/brommko/android/spiderman/util/IabHelper$2;Lcom/brommko/android/spiderman/util/IabResult;Lcom/brommko/android/spiderman/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    :cond_0
    return-void

    .line 619
    .end local v2    # "inv_f":Lcom/brommko/android/spiderman/util/Inventory;
    .end local v4    # "result_f":Lcom/brommko/android/spiderman/util/IabResult;
    :catch_0
    move-exception v0

    .line 620
    .local v0, "ex":Lcom/brommko/android/spiderman/util/IabException;
    invoke-virtual {v0}, Lcom/brommko/android/spiderman/util/IabException;->getResult()Lcom/brommko/android/spiderman/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method
