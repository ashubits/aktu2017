.class Lcom/onesignal/OneSignalStateSynchronizer;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;,
        Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;,
        Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    }
.end annotation


# static fields
.field private static final LOCATION_FIELDS:[Ljava/lang/String;

.field private static final LOCATION_FIELDS_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static appContext:Landroid/content/Context;

.field private static currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

.field private static final networkHandlerSyncLock:Ljava/lang/Object;

.field static networkHandlerThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private static nextSyncIsSession:Z

.field private static serverSuccess:Z

.field private static final syncLock:Ljava/lang/Object;

.field private static toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

.field private static waitingForSessionResponse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    sput-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    sput-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$1;

    invoke-direct {v0}, Lcom/onesignal/OneSignalStateSynchronizer$1;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lat"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "loc_acc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "loc_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "loc_bg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ad_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS:[Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS_SET:Ljava/util/Set;

    .line 64
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$2;

    invoke-direct {v0}, Lcom/onesignal/OneSignalStateSynchronizer$2;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->handlePlayerDeletedFromServer()V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    return-object v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z

    return p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    return p0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/onesignal/OneSignalStateSynchronizer;->serverSuccess:Z

    return p0
.end method

.method static synthetic access$1800()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->LOCATION_FIELDS_SET:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Ljava/util/Set;

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONArray;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalStateSynchronizer;->response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static clearLocation()V
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    invoke-virtual {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->clearLocation()V

    .line 224
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    goto :goto_0
.end method

.method private static generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "cur"    # Lorg/json/JSONObject;
    .param p1, "changedTo"    # Lorg/json/JSONObject;
    .param p2, "baseOutput"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OneSignalStateSynchronizer;->synchronizedGenerateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;
    .locals 4
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 663
    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 664
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    monitor-exit v1

    return-object v0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getNewUserState()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .locals 5

    .prologue
    .line 560
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v1, Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {v1}, Lcom/onesignal/OneSignalStateSynchronizer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nonPersist"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V

    return-object v0
.end method

.method static getRegistrationId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 756
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v0, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSubscribed()Z
    .locals 1

    .prologue
    .line 751
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->getNotificationTypes()I
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$1600(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getTags(Z)Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;
    .locals 4
    .param p0, "fromServer"    # Z

    .prologue
    .line 770
    if-eqz p0, :cond_0

    .line 771
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer$5;

    invoke-direct {v2}, Lcom/onesignal/OneSignalStateSynchronizer$5;-><init>()V

    invoke-static {v1, v2}, Lcom/onesignal/OneSignalRestClient;->getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 798
    .end local v0    # "userId":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;

    sget-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->serverSuccess:Z

    sget-object v3, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v3, v3, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer;->getTagsWithoutDeletedKeys(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;-><init>(ZLorg/json/JSONObject;)V

    return-object v1
.end method

.method private static getTagsWithoutDeletedKeys(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 181
    const-string v5, "tags"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v3, "toReturn":Lorg/json/JSONObject;
    sget-object v6, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 185
    :try_start_0
    const-string v5, "tags"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 187
    .local v1, "keyValues":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 191
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .local v0, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 195
    .local v4, "value":Ljava/lang/Object;
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 196
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 200
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    monitor-exit v6

    .line 204
    .end local v1    # "keyValues":Lorg/json/JSONObject;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "toReturn":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 201
    .restart local v3    # "toReturn":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 204
    .end local v3    # "toReturn":Lorg/json/JSONObject;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .locals 2

    .prologue
    .line 671
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-nez v0, :cond_0

    .line 672
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    const-string v1, "TOSYNC_STATE"

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->deepClone(Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {v0, v1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$1500(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Ljava/lang/String;)Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .line 674
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->postNewSyncUserState()V

    .line 676
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    return-object v0
.end method

.method static getUserSubscribePreference()Z
    .locals 3

    .prologue
    .line 734
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v0, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "userSubscribePref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "newArray"    # Lorg/json/JSONArray;
    .param p2, "curArray"    # Lorg/json/JSONArray;
    .param p3, "output"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 138
    const-string v6, "_a"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "_d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    :cond_0
    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "arrayStr":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 146
    .local v4, "newOutArray":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 147
    .local v5, "remOutArray":Lorg/json/JSONArray;
    if-nez p2, :cond_5

    const/4 v2, 0x0

    .line 149
    .local v2, "curArrayStr":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 150
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "arrayValue":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 152
    :cond_3
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 149
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 147
    .end local v1    # "arrayValue":Ljava/lang/String;
    .end local v2    # "curArrayStr":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_5
    invoke-static {p2}, Lcom/onesignal/OneSignalStateSynchronizer;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 155
    .restart local v2    # "curArrayStr":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_6
    if-eqz p2, :cond_8

    .line 156
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 157
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1    # "arrayValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 159
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 163
    .end local v1    # "arrayValue":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0
.end method

.method private static handlePlayerDeletedFromServer()V
    .locals 1

    .prologue
    .line 810
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->resetCurrentState()V

    .line 811
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    .line 812
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->postNewSyncUserState()V

    .line 813
    return-void
.end method

.method private static hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "digestInstance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 711
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 712
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 713
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 715
    .local v4, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v3, "hexString":Ljava/lang/StringBuilder;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-byte v0, v4, v5

    .line 717
    .local v0, "aMessageDigest":B
    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 719
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 720
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 722
    .end local v0    # "aMessageDigest":B
    .end local v2    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static initUserState(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    sput-object p0, Lcom/onesignal/OneSignalStateSynchronizer;->appContext:Landroid/content/Context;

    .line 550
    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/OneSignalStateSynchronizer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CURRENT_STATE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .line 554
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v2, Lcom/onesignal/OneSignalStateSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/OneSignalStateSynchronizer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "TOSYNC_STATE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;-><init>(Lcom/onesignal/OneSignalStateSynchronizer;Ljava/lang/String;ZLcom/onesignal/OneSignalStateSynchronizer$1;)V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    .line 556
    :cond_1
    monitor-exit v1

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isSessionCall()Z
    .locals 2

    .prologue
    .line 564
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "userId":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static postNewSyncUserState()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->runNewJob()V

    .line 681
    return-void
.end method

.method static postUpdate(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)V
    .locals 4
    .param p0, "postSession"    # Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    .param p1, "isSession"    # Z

    .prologue
    const/4 v3, 0x0

    .line 684
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v2

    iget-object v1, v2, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 685
    .local v1, "toSync":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    invoke-static {v1, v2, v1, v3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 686
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v2

    iget-object v0, v2, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    .line 687
    .local v0, "dependValues":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-static {v0, v2, v0, v3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 689
    sget-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    .line 690
    return-void

    .line 689
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static resetCurrentState()V
    .locals 2

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 804
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 805
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 806
    const-wide/16 v0, -0xe4c

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 807
    return-void
.end method

.method private static response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "statusCode"    # I
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "contains"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 650
    const/16 v3, 0x190

    if-ne p0, v3, :cond_0

    if-eqz p1, :cond_0

    .line 652
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "responseJson":Lorg/json/JSONObject;
    const-string v3, "errors"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "errors"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 659
    .end local v0    # "responseJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v2

    .line 654
    :catch_0
    move-exception v1

    .line 655
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static sendTags(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "newTags"    # Lorg/json/JSONObject;

    .prologue
    .line 693
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v2

    iget-object v1, v2, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 695
    .local v1, "userStateTags":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "tags"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v1, v3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static setPermission(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 739
    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "androidPermission"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static setSubscription(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 727
    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "userSubscribePref"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static stopAndPersist()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 208
    sget-object v2, Lcom/onesignal/OneSignalStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v0, "handlerThread":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handlerThread":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    .restart local v0    # "handlerThread":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;

    invoke-virtual {v2}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->stopScheduledRunnable()V

    goto :goto_0

    .line 211
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    if-eqz v2, :cond_2

    .line 212
    sget-object v2, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    sget-object v3, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->isSessionCall()Z

    move-result v4

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->generateJsonDiff(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;
    invoke-static {v2, v3, v4}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$000(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 213
    .local v1, "unSynced":Z
    :cond_1
    sget-object v2, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v2}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 216
    .end local v1    # "unSynced":Z
    :cond_2
    return v1
.end method

.method static syncHashedEmail(Ljava/lang/String;)V
    .locals 5
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    iget-object v1, v3, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    .line 702
    .local v1, "syncValues":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 703
    .local v0, "emailFields":Lorg/json/JSONObject;
    const-string v3, "em_m"

    const-string v4, "MD5"

    invoke-static {p0, v4}, Lcom/onesignal/OneSignalStateSynchronizer;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    const-string v3, "em_s"

    const-string v4, "SHA-1"

    invoke-static {p0, v4}, Lcom/onesignal/OneSignalStateSynchronizer;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    const/4 v3, 0x0

    invoke-static {v1, v0, v1, v3}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .end local v0    # "emailFields":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static syncUserState(Z)V
    .locals 8
    .param p0, "fromSyncService"    # Z

    .prologue
    const/4 v7, 0x0

    .line 569
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->isSessionCall()Z

    move-result v1

    .line 572
    .local v1, "isSessionCall":Z
    sget-object v5, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    sget-object v6, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->generateJsonDiff(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;
    invoke-static {v5, v6, v1}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$000(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lcom/onesignal/OneSignalStateSynchronizer$UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 573
    .local v2, "jsonBody":Lorg/json/JSONObject;
    sget-object v5, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v5, v5, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    sget-object v6, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    iget-object v6, v6, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->dependValues:Lorg/json/JSONObject;

    invoke-static {v5, v6, v7, v7}, Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 575
    .local v0, "dependDiff":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 576
    sget-object v5, Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    invoke-static {v5, v0, v7}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$800(Lcom/onesignal/OneSignalStateSynchronizer$UserState;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    sget-object v5, Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$100(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 582
    if-nez v4, :cond_2

    sget-boolean v5, Lcom/onesignal/OneSignalStateSynchronizer;->nextSyncIsSession:Z

    if-eqz v5, :cond_0

    .line 585
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p0, :cond_4

    .line 586
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "players/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/onesignal/OneSignalStateSynchronizer$3;

    invoke-direct {v6, v0, v2}, Lcom/onesignal/OneSignalStateSynchronizer$3;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v5, v2, v6}, Lcom/onesignal/OneSignalRestClient;->putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    goto :goto_0

    .line 605
    :cond_4
    if-nez v4, :cond_5

    .line 606
    const-string v3, "players"

    .line 610
    .local v3, "urlStr":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x1

    sput-boolean v5, Lcom/onesignal/OneSignalStateSynchronizer;->waitingForSessionResponse:Z

    .line 611
    new-instance v5, Lcom/onesignal/OneSignalStateSynchronizer$4;

    invoke-direct {v5, v0, v2}, Lcom/onesignal/OneSignalStateSynchronizer$4;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v3, v2, v5}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    goto :goto_0

    .line 608
    .end local v3    # "urlStr":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "players/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/on_session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "urlStr":Ljava/lang/String;
    goto :goto_1
.end method

.method private static synchronizedGenerateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 16
    .param p0, "cur"    # Lorg/json/JSONObject;
    .param p1, "changedTo"    # Lorg/json/JSONObject;
    .param p2, "baseOutput"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 74
    const/16 p2, 0x0

    .line 134
    .end local p2    # "baseOutput":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object p2

    .line 75
    .restart local p2    # "baseOutput":Lorg/json/JSONObject;
    :cond_1
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 83
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    .line 84
    move-object/from16 v7, p2

    .line 88
    .local v7, "output":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 90
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 91
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 93
    .local v10, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 94
    instance-of v11, v10, Lorg/json/JSONObject;

    if-eqz v11, :cond_5

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 96
    .local v2, "curValue":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 97
    .local v6, "outValue":Lorg/json/JSONObject;
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 98
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 99
    :cond_3
    check-cast v10, Lorg/json/JSONObject;

    .end local v10    # "value":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-static {v2, v10, v6, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->synchronizedGenerateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v8

    .line 100
    .local v8, "returnedJson":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "returnedJsonStr":Ljava/lang/String;
    const-string v11, "{}"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 102
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    .end local v2    # "curValue":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "outValue":Lorg/json/JSONObject;
    .end local v8    # "returnedJson":Lorg/json/JSONObject;
    .end local v9    # "returnedJsonStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 130
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v7    # "output":Lorg/json/JSONObject;
    :cond_4
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .restart local v7    # "output":Lorg/json/JSONObject;
    goto :goto_1

    .line 104
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_5
    :try_start_1
    instance-of v11, v10, Lorg/json/JSONArray;

    if-eqz v11, :cond_6

    .line 105
    check-cast v10, Lorg/json/JSONArray;

    .end local v10    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-static {v4, v10, v11, v7}, Lcom/onesignal/OneSignalStateSynchronizer;->handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 106
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 107
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 109
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    .local v2, "curValue":Ljava/lang/Object;
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 112
    instance-of v11, v2, Ljava/lang/Integer;

    if-eqz v11, :cond_8

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 113
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "curValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    move-object v0, v10

    check-cast v0, Ljava/lang/Number;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_2

    .line 114
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 117
    .restart local v2    # "curValue":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 122
    .end local v2    # "curValue":Ljava/lang/Object;
    :cond_9
    instance-of v11, v10, Lorg/json/JSONObject;

    if-eqz v11, :cond_a

    .line 123
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 124
    :cond_a
    instance-of v11, v10, Lorg/json/JSONArray;

    if-eqz v11, :cond_b

    .line 125
    check-cast v10, Lorg/json/JSONArray;

    .end local v10    # "value":Ljava/lang/Object;
    const/4 v11, 0x0

    invoke-static {v4, v10, v11, v7}, Lcom/onesignal/OneSignalStateSynchronizer;->handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 127
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .end local v4    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_c
    move-object/from16 p2, v7

    .line 134
    goto/16 :goto_0
.end method

.method private static toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 170
    const-string v1, "["

    .line 173
    .local v1, "strArray":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    .line 177
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1
    .param p0, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 746
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserStateForModification()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v0

    .line 747
    .local v0, "userState":Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-virtual {v0, p0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->setLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 748
    return-void
.end method
