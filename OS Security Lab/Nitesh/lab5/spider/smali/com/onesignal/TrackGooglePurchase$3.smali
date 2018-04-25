.class Lcom/onesignal/TrackGooglePurchase$3;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "TrackGooglePurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/TrackGooglePurchase;->sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/TrackGooglePurchase;

.field final synthetic val$newPurchaseTokens:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    iput-object p2, p0, Lcom/onesignal/TrackGooglePurchase$3;->val$newPurchaseTokens:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lorg/json/JSONObject;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 228
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "HTTP sendPurchases failed to send."

    invoke-static {v0, v1, p3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v1, 0x0

    # setter for: Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z
    invoke-static {v0, v1}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 230
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$900(Lcom/onesignal/TrackGooglePurchase;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/TrackGooglePurchase$3;->val$newPurchaseTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$1200(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "purchaseTokens"

    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/onesignal/TrackGooglePurchase;->access$900(Lcom/onesignal/TrackGooglePurchase;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$1200(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ExistingPurchases"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$1200(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # setter for: Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z
    invoke-static {v0, v3}, Lcom/onesignal/TrackGooglePurchase;->access$1102(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 238
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$3;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # setter for: Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z
    invoke-static {v0, v3}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 239
    return-void
.end method
