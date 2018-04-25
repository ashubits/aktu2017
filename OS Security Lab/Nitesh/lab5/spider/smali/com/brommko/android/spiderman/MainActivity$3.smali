.class Lcom/brommko/android/spiderman/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;


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
    .line 209
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/brommko/android/spiderman/util/IabResult;Lcom/brommko/android/spiderman/util/Inventory;)V
    .locals 4
    .param p1, "result"    # Lcom/brommko/android/spiderman/util/IabResult;
    .param p2, "inventory"    # Lcom/brommko/android/spiderman/util/Inventory;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v1, v1, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/brommko/android/spiderman/util/IabResult;->isFailure()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$000(Lcom/brommko/android/spiderman/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brommko/android/spiderman/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/brommko/android/spiderman/util/Purchase;

    move-result-object v0

    .line 221
    .local v0, "premiumPurchase":Lcom/brommko/android/spiderman/util/Purchase;
    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    # setter for: Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z
    invoke-static {v2, v1}, Lcom/brommko/android/spiderman/MainActivity;->access$102(Lcom/brommko/android/spiderman/MainActivity;Z)Z

    .line 222
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->ITEM_SKU:Ljava/lang/String;
    invoke-static {v2}, Lcom/brommko/android/spiderman/MainActivity;->access$000(Lcom/brommko/android/spiderman/MainActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z
    invoke-static {v3}, Lcom/brommko/android/spiderman/MainActivity;->access$100(Lcom/brommko/android/spiderman/MainActivity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/brommko/android/spiderman/util/Pref;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 223
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # getter for: Lcom/brommko/android/spiderman/MainActivity;->isPurchased:Z
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$100(Lcom/brommko/android/spiderman/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$3;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    # invokes: Lcom/brommko/android/spiderman/MainActivity;->removeAds()V
    invoke-static {v1}, Lcom/brommko/android/spiderman/MainActivity;->access$200(Lcom/brommko/android/spiderman/MainActivity;)V

    goto :goto_0

    .line 221
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
