.class final Lcom/onesignal/OneSignalStateSynchronizer$4;
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
    .line 611
    iput-object p1, p0, Lcom/onesignal/OneSignalStateSynchronizer$4;->val$dependDiff:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/onesignal/OneSignalStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 614
    # setter for: Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1302(Z)Z

    .line 615
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

    .line 617
    const-string v0, "not a valid device_type"

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->access$900(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->handlePlayerDeletedFromServer()V
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1000()V

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1100(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->doRetry()V

    goto :goto_0
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 625
    const/4 v3, 0x0

    # setter for: Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1302(Z)Z

    move-result v3

    # setter for: Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1402(Z)Z

    .line 626
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$4;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    invoke-static {v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$800(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 629
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, "jsonResponse":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "userId":Ljava/lang/String;
    invoke-static {v2}, Lcom/onesignal/OneSignal;->updateUserIdDependents(Ljava/lang/String;)V

    .line 635
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device registered, UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 640
    .end local v2    # "userId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->updateOnSessionDependents()V

    .line 644
    .end local v0    # "jsonResponse":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 638
    .restart local v0    # "jsonResponse":Lorg/json/JSONObject;
    :cond_0
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session sent, UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v0    # "jsonResponse":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 642
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "ERROR parsing on_session or create JSON Response."

    invoke-static {v3, v4, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
