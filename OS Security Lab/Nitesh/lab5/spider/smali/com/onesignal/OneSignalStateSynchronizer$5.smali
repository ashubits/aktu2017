.class final Lcom/onesignal/OneSignalStateSynchronizer$5;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 775
    const/4 v3, 0x1

    # setter for: Lcom/onesignal/OneSignalStateSynchronizer;->serverSuccess:Z
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1702(Z)Z

    .line 777
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 778
    .local v2, "lastGetTagsResponse":Lorg/json/JSONObject;
    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "tags"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 780
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1800()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v4

    iget-object v4, v4, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "tags"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 779
    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    invoke-static {v3, v4, v5, v6}, Lcom/onesignal/OneSignalStateSynchronizer;->access$300(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 783
    .local v0, "dependDiff":Lorg/json/JSONObject;
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "tags"

    const-string v5, "tags"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 788
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1800()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 789
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1800()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v0    # "dependDiff":Lorg/json/JSONObject;
    .end local v2    # "lastGetTagsResponse":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v1

    .line 792
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
