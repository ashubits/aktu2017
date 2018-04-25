.class Lcom/onesignal/OneSignalStateSynchronizer$UserState;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalStateSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserState"
.end annotation


# instance fields
.field private final NOTIFICATION_TYPES_NO_PERMISSION:I

.field private final NOTIFICATION_TYPES_SUBSCRIBED:I

.field private final NOTIFICATION_TYPES_UNSUBSCRIBE:I

.field dependValues:Lorg/json/JSONObject;

.field private persistKey:Ljava/lang/String;

.field syncValues:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/onesignal/OneSignalStateSynchronizer;


# direct methods
.method private constructor <init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/onesignal/OneSignalStateSynchronizer;
    .param p2, "inPersistKey"    # Ljava/lang/String;
    .param p3, "load"    # Z

    .prologue
    .line 237
    iput-object p1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->this$0:Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->NOTIFICATION_TYPES_SUBSCRIBED:I

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->NOTIFICATION_TYPES_NO_PERMISSION:I

    .line 231
    const/4 v0, -0x2

    iput v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->NOTIFICATION_TYPES_UNSUBSCRIBE:I

    .line 238
    iput-object p2, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    .line 239
    if-eqz p3, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->loadState()V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    .line 243
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/onesignal/OneSignalStateSynchronizer$1;

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p1, "x1"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p2, "x2"    # Z

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->generateJsonDiff(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->deepClone(Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)I
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->getNotificationTypes()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method private addDependFields()V
    .locals 3

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "notification_types"

    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->getNotificationTypes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deepClone(Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .locals 4
    .param p1, "persistKey"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v2, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->this$0:Lcom/onesignal/OneSignalStateSynchronizer;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;Z)V

    .line 251
    .local v0, "clonedUserState":Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    .line 252
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private generateJsonDiff(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;
    .locals 6
    .param p1, "newState"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p2, "isSessionCall"    # Z

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->addDependFields()V

    invoke-direct {p1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->addDependFields()V

    .line 327
    invoke-direct {p0, p1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->getGroupChangeFields(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)Ljava/util/Set;

    move-result-object v1

    .line 328
    .local v1, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    invoke-static {v4, v5, v3, v1}, Lcom/onesignal/OneSignalStateSynchronizer;->access$300(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v2

    .line 330
    .local v2, "sendJson":Lorg/json/JSONObject;
    if-nez p2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 341
    .end local v2    # "sendJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 335
    .restart local v2    # "sendJson":Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    const-string v3, "app_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    const-string v3, "app_id"

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "app_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getGroupChangeFields(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)Ljava/util/Set;
    .locals 4
    .param p1, "changedTo"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OneSignalStateSynchronizer$UserState;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "loc_time_stamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v3, "loc_time_stamp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "lat"

    .line 285
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "lat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "long"

    .line 286
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "long"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_acc"

    .line 287
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "loc_acc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_type"

    .line 288
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 289
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "loc_bg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_bg"

    iget-object v2, p1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v3, "loc_bg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 291
    :cond_1
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS_SET:Ljava/util/Set;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$200()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 295
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationTypes()I
    .locals 7

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    .line 267
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v6, "subscribableStatus"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 268
    .local v1, "subscribableStatus":I
    if-ge v1, v3, :cond_0

    .line 279
    .end local v1    # "subscribableStatus":I
    :goto_0
    return v1

    .line 271
    .restart local v1    # "subscribableStatus":I
    :cond_0
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v6, "androidPermission"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 272
    .local v0, "androidPermission":Z
    if-nez v0, :cond_1

    .line 273
    const/4 v1, 0x0

    goto :goto_0

    .line 275
    :cond_1
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v6, "userSubscribePref"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 276
    .local v2, "userSubscribePref":Z
    if-nez v2, :cond_2

    move v1, v3

    .line 277
    goto :goto_0

    :cond_2
    move v1, v4

    .line 279
    goto :goto_0
.end method

.method private loadState()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 361
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$400()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 363
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "dependValuesStr":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 366
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    .line 369
    const/4 v5, 0x1

    .line 371
    .local v5, "userSubscribePref":Z
    :try_start_0
    iget-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    const-string v7, "CURRENT_STATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 372
    const-string v6, "ONESIGNAL_SUBSCRIPTION"

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 376
    .local v3, "subscribableStatus":I
    :goto_0
    const/4 v6, -0x2

    if-ne v3, v6, :cond_0

    .line 377
    const/4 v3, 0x1

    .line 378
    const/4 v5, 0x0

    .line 381
    :cond_0
    iget-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v7, "subscribableStatus"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    iget-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v7, "userSubscribePref"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 393
    .end local v3    # "subscribableStatus":I
    .end local v5    # "userSubscribePref":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "syncValuesStr":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 396
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 397
    iget-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "identifier"

    const-string v8, "GT_REGISTRATION_ID"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :goto_2
    return-void

    .line 374
    .end local v4    # "syncValuesStr":Ljava/lang/String;
    .restart local v5    # "userSubscribePref":Z
    :cond_1
    :try_start_2
    const-string v6, "ONESIGNAL_SYNCED_SUBSCRIPTION"

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .restart local v3    # "subscribableStatus":I
    goto :goto_0

    .line 387
    .end local v3    # "subscribableStatus":I
    .end local v5    # "userSubscribePref":Z
    :cond_2
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 400
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "syncValuesStr":Ljava/lang/String;
    :cond_3
    :try_start_4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 401
    :catch_1
    move-exception v1

    .line 402
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 383
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "syncValuesStr":Ljava/lang/String;
    .restart local v5    # "userSubscribePref":Z
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method private modifySyncValuesJsonArray(Ljava/lang/String;)V
    .locals 8
    .param p1, "baseKey"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    :goto_0
    return-void

    .line 424
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 425
    .local v2, "orgArray":Lorg/json/JSONArray;
    :goto_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 427
    .local v4, "tempArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 428
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;
    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer;->access$600(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "remArrayStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 430
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 431
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 429
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 424
    .end local v0    # "i":I
    .end local v2    # "orgArray":Lorg/json/JSONArray;
    .end local v3    # "remArrayStr":Ljava/lang/String;
    .end local v4    # "tempArray":Lorg/json/JSONArray;
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    .line 445
    :catch_0
    move-exception v5

    goto :goto_0

    .line 434
    .restart local v2    # "orgArray":Lorg/json/JSONArray;
    .restart local v4    # "tempArray":Lorg/json/JSONArray;
    :cond_3
    move-object v4, v2

    .line 436
    :cond_4
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 437
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 438
    .local v1, "newArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 439
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 442
    .end local v0    # "i":I
    .end local v1    # "newArray":Lorg/json/JSONArray;
    :cond_5
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 444
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private persistState()V
    .locals 5

    .prologue
    .line 407
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 408
    :try_start_0
    const-string v2, "pkgs"

    invoke-direct {p0, v2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->modifySyncValuesJsonArray(Ljava/lang/String;)V

    .line 410
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 411
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    monitor-exit v3

    .line 417
    return-void

    .line 416
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "inDependValues"    # Lorg/json/JSONObject;
    .param p2, "inSyncValues"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    invoke-static {v0, p1, v1, v2}, Lcom/onesignal/OneSignalStateSynchronizer;->access$300(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 452
    :cond_0
    if-eqz p2, :cond_1

    .line 453
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    invoke-static {v0, p2, v1, v2}, Lcom/onesignal/OneSignalStateSynchronizer;->access$300(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 454
    invoke-virtual {p0, p2, v2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 457
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 458
    :cond_2
    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V

    .line 459
    :cond_3
    return-void
.end method


# virtual methods
.method clearLocation()V
    .locals 4

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "lat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "long"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_acc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_bg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "loc_bg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "loc_time_stamp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "inSyncValues"    # Lorg/json/JSONObject;
    .param p2, "omitKeys"    # Lorg/json/JSONObject;

    .prologue
    .line 462
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 463
    :try_start_0
    const-string v5, "tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 467
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    .local v4, "newTags":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string v5, "tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 476
    .local v0, "curTags":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 480
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    .local v2, "key":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 492
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 494
    .end local v0    # "curTags":Lorg/json/JSONObject;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "newTags":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v6

    .line 495
    return-void

    .line 468
    :catch_1
    move-exception v1

    .line 469
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 470
    .restart local v4    # "newTags":Lorg/json/JSONObject;
    goto :goto_0

    .line 473
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "newTags":Lorg/json/JSONObject;
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v4    # "newTags":Lorg/json/JSONObject;
    goto :goto_0

    .line 484
    .restart local v0    # "curTags":Lorg/json/JSONObject;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    if-eqz p2, :cond_4

    :try_start_5
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 485
    :cond_4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 494
    .end local v0    # "curTags":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "newTags":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 488
    .restart local v0    # "curTags":Lorg/json/JSONObject;
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "newTags":Lorg/json/JSONObject;
    :cond_5
    :try_start_7
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "{}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 489
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 491
    :cond_6
    iget-object v5, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method setLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "lat"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->lat:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "long"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->log:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_acc"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->accuracy:Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "loc_type"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "loc_bg"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->bg:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "loc_time_stamp"

    iget-object v3, p1, Lcom/onesignal/LocationGMS$LocationPoint;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method setState(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
