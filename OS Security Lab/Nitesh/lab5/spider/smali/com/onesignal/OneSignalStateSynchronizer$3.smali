.class final Lcom/onesignal/OneSignalStateSynchronizer$3;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalStateSynchronizer;->syncUserState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dependDiff:Lorg/json/JSONObject;

.field final synthetic val$jsonBody:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/onesignal/OneSignalStateSynchronizer$3;->val$dependDiff:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/onesignal/OneSignalStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 589
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed last request. statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 591
    const-string v0, "No user with this id found"

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->access$900(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->handlePlayerDeletedFromServer()V
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1000()V

    .line 595
    :goto_0
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1100(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->doRetry()V

    goto :goto_0
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 599
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$3;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/OneSignalStateSynchronizer$3;->val$jsonBody:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$800(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 600
    return-void
.end method
