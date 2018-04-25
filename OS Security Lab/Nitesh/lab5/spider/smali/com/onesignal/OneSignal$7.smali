.class final Lcom/onesignal/OneSignal$7;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 892
    const-string v2, "create notification failed"

    # invokes: Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v2, p1, p3, p2}, Lcom/onesignal/OneSignal;->access$1800(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v2, :cond_1

    .line 895
    if-nez p1, :cond_0

    .line 896
    :try_start_0
    const-string p2, "{\"error\": \"HTTP no response error\"}"

    .line 898
    :cond_0
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :cond_1
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v1

    .line 901
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "{\"error\": \"Unknown response!\"}"

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 902
    :catch_1
    move-exception v0

    .line 903
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 876
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP create notification success: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 877
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v2, :cond_0

    .line 879
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 880
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "errors"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 881
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-interface {v2, v0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 876
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 883
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 884
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 885
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
