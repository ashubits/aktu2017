.class Lcom/brommko/android/spiderman/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/brommko/android/spiderman/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brommko/android/spiderman/MainActivity;->initPayment()V
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
    .line 189
    iput-object p1, p0, Lcom/brommko/android/spiderman/MainActivity$2;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/brommko/android/spiderman/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/brommko/android/spiderman/util/IabResult;

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/brommko/android/spiderman/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string v1, "Purches"

    const-string v2, "isFailure"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$2;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    new-instance v2, Lcom/brommko/android/spiderman/util/IabBroadcastReceiver;

    iget-object v3, p0, Lcom/brommko/android/spiderman/MainActivity$2;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {v2, v3}, Lcom/brommko/android/spiderman/util/IabBroadcastReceiver;-><init>(Lcom/brommko/android/spiderman/util/IabBroadcastReceiver$IabBroadcastListener;)V

    iput-object v2, v1, Lcom/brommko/android/spiderman/MainActivity;->mBroadcastReceiver:Lcom/brommko/android/spiderman/util/IabBroadcastReceiver;

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$2;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$2;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v2, v2, Lcom/brommko/android/spiderman/MainActivity;->mBroadcastReceiver:Lcom/brommko/android/spiderman/util/IabBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/brommko/android/spiderman/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$2;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v1, v1, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/brommko/android/spiderman/MainActivity$2;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v1, v1, Lcom/brommko/android/spiderman/MainActivity;->mHelper:Lcom/brommko/android/spiderman/util/IabHelper;

    iget-object v2, p0, Lcom/brommko/android/spiderman/MainActivity$2;->this$0:Lcom/brommko/android/spiderman/MainActivity;

    iget-object v2, v2, Lcom/brommko/android/spiderman/MainActivity;->mGotInventoryListener:Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2}, Lcom/brommko/android/spiderman/util/IabHelper;->queryInventoryAsync(Lcom/brommko/android/spiderman/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
