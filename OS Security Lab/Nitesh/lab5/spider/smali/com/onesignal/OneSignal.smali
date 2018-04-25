.class public Lcom/onesignal/OneSignal;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignal$IAPUpdateJob;,
        Lcom/onesignal/OneSignal$Builder;,
        Lcom/onesignal/OneSignal$PostNotificationResponseHandler;,
        Lcom/onesignal/OneSignal$GetTagsHandler;,
        Lcom/onesignal/OneSignal$IdsAvailableHandler;,
        Lcom/onesignal/OneSignal$NotificationReceivedHandler;,
        Lcom/onesignal/OneSignal$NotificationOpenedHandler;,
        Lcom/onesignal/OneSignal$OSInFocusDisplayOption;,
        Lcom/onesignal/OneSignal$LOG_LEVEL;
    }
.end annotation


# static fields
.field static final MIN_ON_FOCUS_TIME:J = 0x3cL

.field private static final MIN_ON_SESSION_TIME:J = 0x1eL

.field public static final VERSION:Ljava/lang/String; = "030501"

.field private static androidParamsReties:I

.field static appContext:Landroid/content/Context;

.field static appId:Ljava/lang/String;

.field private static awl:Lorg/json/JSONObject;

.field private static awlFired:Z

.field private static currentPermissionState:Lcom/onesignal/OSPermissionState;

.field private static currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field private static deviceType:I

.field private static foreground:Z

.field private static getTagsCall:Z

.field private static iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

.field private static idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

.field static initDone:Z

.field private static lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;

.field static lastPermissionState:Lcom/onesignal/OSPermissionState;

.field private static lastRegistrationId:Ljava/lang/String;

.field static lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field private static lastTrackedFocusTime:J

.field private static locationFired:Z

.field private static logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field static mEnterp:Z

.field private static mGoogleProjectNumber:Ljava/lang/String;

.field private static mGoogleProjectNumberIsRemote:Z

.field static mInitBuilder:Lcom/onesignal/OneSignal$Builder;

.field private static mainAdIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

.field private static osUtils:Lcom/onesignal/OSUtils;

.field private static pendingGetTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

.field private static permissionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable",
            "<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static postedOpenedNotifIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static promptedLocation:Z

.field private static registerForPushFired:Z

.field public static sdkType:Ljava/lang/String;

.field private static sendAsSession:Z

.field static shareLocation:Z

.field private static subscribableStatus:I

.field private static subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable",
            "<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

.field private static trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

.field private static unSentActiveTime:J

.field private static unprocessedOpenedNotifis:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static userId:Ljava/lang/String;

.field private static visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static waitingToPostStateSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 169
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 179
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    .line 186
    new-instance v0, Lcom/onesignal/AdvertisingIdProviderGPS;

    invoke-direct {v0}, Lcom/onesignal/AdvertisingIdProviderGPS;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mainAdIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    .line 189
    const-string v0, "native"

    sput-object v0, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignal;->shareLocation:Z

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    .line 473
    const/4 v0, 0x0

    sput v0, Lcom/onesignal/OneSignal;->androidParamsReties:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetUnsentActiveTime()J
    .locals 6

    .prologue
    .line 1543
    sget-wide v2, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1544
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1545
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "GT_UNSENT_ACTIVE_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    .line 1548
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetUnsentActiveTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1550
    sget-wide v2, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    return-wide v2
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v7, 0x1

    .line 579
    const-string v0, "OneSignal"

    .line 581
    .local v0, "TAG":Ljava/lang/String;
    sget-object v6, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v6}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-ge v6, v7, :cond_0

    .line 582
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v6, :cond_3

    .line 583
    const-string v6, "OneSignal"

    invoke-static {v6, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    :cond_0
    :goto_0
    sget-object v6, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v6}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-ge v6, v7, :cond_2

    sget-object v6, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 596
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "fullMessage":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 600
    .local v4, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 601
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "sw":Ljava/io/StringWriter;
    :cond_1
    move-object v1, v2

    .line 606
    .local v1, "finalFullMessage":Ljava/lang/String;
    new-instance v6, Lcom/onesignal/OneSignal$4;

    invoke-direct {v6, p0, v1}, Lcom/onesignal/OneSignal$4;-><init>(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v1    # "finalFullMessage":Ljava/lang/String;
    .end local v2    # "fullMessage":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 584
    :cond_3
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v6, :cond_4

    .line 585
    const-string v6, "OneSignal"

    invoke-static {v6, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 586
    :cond_4
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v6, :cond_5

    .line 587
    const-string v6, "OneSignal"

    invoke-static {v6, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 588
    :cond_5
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v6, :cond_6

    .line 589
    const-string v6, "OneSignal"

    invoke-static {v6, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 590
    :cond_6
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-eq p0, v6, :cond_7

    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v6, :cond_0

    .line 591
    :cond_7
    const-string v6, "OneSignal"

    invoke-static {v6, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 616
    :catch_0
    move-exception v5

    .line 617
    .local v5, "t":Ljava/lang/Throwable;
    const-string v6, "OneSignal"

    const-string v7, "Error showing logging message."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static SaveAppId(Ljava/lang/String;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 1209
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1211
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1212
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "GT_APP_ID"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static SaveUnsentActiveTime(J)V
    .locals 6
    .param p0, "time"    # J

    .prologue
    .line 1554
    sput-wide p0, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    .line 1555
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1564
    :goto_0
    return-void

    .line 1558
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SaveUnsentActiveTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/onesignal/OneSignal;->unSentActiveTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1560
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1561
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1562
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "GT_UNSENT_ACTIVE_TIME"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1563
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/onesignal/OneSignal$Builder;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/onesignal/OneSignal$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignal$Builder;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/onesignal/OneSignal;->init(Lcom/onesignal/OneSignal$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/onesignal/OneSignal;->androidParamsReties:I

    return v0
.end method

.method static synthetic access$1108()I
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/onesignal/OneSignal;->androidParamsReties:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/onesignal/OneSignal;->androidParamsReties:I

    return v0
.end method

.method static synthetic access$1200()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V

    return-void
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/onesignal/OneSignal;->mGoogleProjectNumberIsRemote:Z

    return p0
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
    sput-object p0, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/onesignal/OneSignal;->awl:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 67
    sput-object p0, Lcom/onesignal/OneSignal;->awl:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/onesignal/OneSignal;->awlFired:Z

    return p0
.end method

.method static synthetic access$1700()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    return-void
.end method

.method static synthetic access$1800(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Throwable;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->SaveUnsentActiveTime(J)V

    return-void
.end method

.method static synthetic access$2000()Lcom/onesignal/AdvertisingIdentifierProvider;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/onesignal/OneSignal;->mainAdIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    return-object v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/onesignal/OneSignal;->getTimeZoneOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/onesignal/OneSignal;->deviceType:I

    return v0
.end method

.method static synthetic access$2300()Lcom/onesignal/OSUtils;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    return-object v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/onesignal/OneSignal;->sendAsSession:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    return p0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return p0
.end method

.method static synthetic access$2800()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireIdsAvailableCallback()V

    return-void
.end method

.method static synthetic access$400()Lcom/onesignal/LocationGMS$LocationPoint;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;

    return-object v0
.end method

.method static synthetic access$402(Lcom/onesignal/LocationGMS$LocationPoint;)Lcom/onesignal/LocationGMS$LocationPoint;
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 67
    sput-object p0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationGMS$LocationPoint;

    return-object p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/onesignal/OneSignal;->locationFired:Z

    return p0
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUser()V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 67
    sput p0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
    sput-object p0, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    return p0
.end method

.method private static addNetType(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 720
    :try_start_0
    const-string v0, "net_type"

    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addPermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSPermissionObserver;

    .prologue
    .line 1488
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1489
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not add permission observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 1495
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSPermissionState;->compare(Lcom/onesignal/OSPermissionState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V

    goto :goto_0
.end method

.method public static addSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSSubscriptionObserver;

    .prologue
    .line 1509
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1510
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not add subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 1516
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSubscriptionState;->compare(Lcom/onesignal/OSSubscriptionState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V

    goto :goto_0
.end method

.method static areNotificationsEnabledForSubscribedState()Z
    .locals 1

    .prologue
    .line 1666
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mUnsubscribeWhenNotificationsAreDisabled:Z

    if-eqz v0, :cond_0

    .line 1667
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z
    .locals 2
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;

    .prologue
    const/4 v0, 0x1

    .line 571
    sget-object v1, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v1}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lt v1, v0, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v1}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelNotification(I)V
    .locals 10
    .param p0, "id"    # I

    .prologue
    .line 1443
    sget-object v7, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 1444
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OneSignal.init has not been called. Could not clear notification id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1477
    :goto_0
    return-void

    .line 1448
    :cond_0
    sget-object v7, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    .line 1449
    .local v0, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v6, 0x0

    .line 1451
    .local v6, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1452
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_notification_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "opened"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = 0 AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dismissed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1458
    .local v5, "whereStr":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1459
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "dismissed"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1461
    const-string v7, "notification"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1463
    .local v2, "records":I
    if-lez v2, :cond_1

    .line 1464
    sget-object v7, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v7, v6, p0}, Lcom/onesignal/NotificationSummaryManager;->updatePossibleDependentSummaryOnDismiss(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 1465
    :cond_1
    sget-object v7, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 1467
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    if-eqz v6, :cond_2

    .line 1472
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1475
    .end local v2    # "records":I
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "whereStr":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v7, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1476
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1468
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v3

    .line 1469
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error marking a notification id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as dismissed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1471
    if-eqz v6, :cond_2

    .line 1472
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1471
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_3

    .line 1472
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v7
.end method

.method public static clearOneSignalNotifications()V
    .locals 16

    .prologue
    .line 1382
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1383
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "OneSignal.init has not been called. Could not clear notifications."

    invoke-static {v1, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1440
    .local v8, "cursor":Landroid/database/Cursor;
    .local v9, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 1387
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v11    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 1389
    .restart local v11    # "notificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v9

    .line 1390
    .restart local v9    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v8, 0x0

    .line 1392
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1394
    .local v0, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "android_notification_id"

    aput-object v3, v2, v1

    .line 1396
    .local v2, "retColumn":[Ljava/lang/String;
    const-string v1, "notification"

    const-string v3, "dismissed = 0 AND opened = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1407
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1409
    :cond_2
    const-string v1, "android_notification_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1410
    .local v10, "existingId":I
    invoke-virtual {v11, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1411
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 1416
    .end local v10    # "existingId":I
    :cond_3
    const/4 v15, 0x0

    .line 1418
    .local v15, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1419
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1421
    const-string v14, "opened = 0"

    .line 1422
    .local v14, "whereStr":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1423
    .local v13, "values":Landroid/content/ContentValues;
    const-string v1, "dismissed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1424
    const-string v1, "notification"

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v13, v14, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1425
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    if-eqz v15, :cond_4

    .line 1430
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1433
    .end local v13    # "values":Landroid/content/ContentValues;
    .end local v14    # "whereStr":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1437
    if-eqz v8, :cond_0

    .line 1438
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1426
    :catch_0
    move-exception v12

    .line 1427
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error marking all notifications as dismissed! "

    invoke-static {v1, v3, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1429
    if-eqz v15, :cond_4

    .line 1430
    :try_start_4
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1434
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "retColumn":[Ljava/lang/String;
    .end local v12    # "t":Ljava/lang/Throwable;
    .end local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v12

    .line 1435
    .restart local v12    # "t":Ljava/lang/Throwable;
    :try_start_5
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error canceling all notifications! "

    invoke-static {v1, v3, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1437
    if-eqz v8, :cond_0

    .line 1438
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1429
    .end local v12    # "t":Ljava/lang/Throwable;
    .restart local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "retColumn":[Ljava/lang/String;
    .restart local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_5

    .line 1430
    :try_start_6
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1437
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "retColumn":[Ljava/lang/String;
    .end local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    if-eqz v8, :cond_6

    .line 1438
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public static deleteTag(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 955
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 956
    .local v0, "tempList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 957
    invoke-static {v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;)V

    .line 958
    return-void
.end method

.method public static deleteTags(Ljava/lang/String;)V
    .locals 6
    .param p0, "jsonArrayString"    # Ljava/lang/String;

    .prologue
    .line 974
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 975
    .local v2, "jsonTags":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 977
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 978
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 980
    :cond_0
    invoke-static {v2}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "jsonTags":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 981
    :catch_0
    move-exception v3

    .line 982
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Failed to generate JSON for deleteTags."

    invoke-static {v4, v5, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static deleteTags(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 963
    .local v0, "jsonTags":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 964
    .local v1, "key":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 967
    .end local v0    # "jsonTags":Lorg/json/JSONObject;
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 968
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Failed to generate JSON for deleteTags."

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 970
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 966
    .restart local v0    # "jsonTags":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static enableSound(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 1288
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1290
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1291
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1292
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "GT_SOUND_ENABLED"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static enableVibrate(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 1272
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1278
    :goto_0
    return-void

    .line 1274
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1275
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "GT_VIBRATE_ENABLED"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static fireCallbackForOpenedNotifications()V
    .locals 4

    .prologue
    .line 533
    sget-object v1, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "dataArray":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dataArray":Lorg/json/JSONArray;
    check-cast v0, Lorg/json/JSONArray;

    .line 534
    .restart local v0    # "dataArray":Lorg/json/JSONArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    goto :goto_0

    .line 536
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 537
    return-void
.end method

.method private static fireIdsAvailableCallback()V
    .locals 1

    .prologue
    .line 994
    sget-object v0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    if-eqz v0, :cond_0

    .line 995
    new-instance v0, Lcom/onesignal/OneSignal$9;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$9;-><init>()V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 1002
    :cond_0
    return-void
.end method

.method private static fireIntentFromNotificationOpen(Landroid/content/Context;)V
    .locals 3
    .param p0, "inContext"    # Landroid/content/Context;

    .prologue
    .line 1169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1171
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1172
    const/high16 v1, 0x10020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1173
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1175
    :cond_0
    return-void
.end method

.method private static fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 1
    .param p0, "openedResult"    # Lcom/onesignal/OSNotificationOpenResult;

    .prologue
    .line 1132
    new-instance v0, Lcom/onesignal/OneSignal$10;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$10;-><init>(Lcom/onesignal/OSNotificationOpenResult;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 1138
    return-void
.end method

.method private static generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;
    .locals 11
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "shown"    # Z
    .param p2, "fromAlert"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1087
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1089
    .local v4, "jsonArraySize":I
    const/4 v2, 0x1

    .line 1091
    .local v2, "firstMessage":Z
    new-instance v6, Lcom/onesignal/OSNotificationOpenResult;

    invoke-direct {v6}, Lcom/onesignal/OSNotificationOpenResult;-><init>()V

    .line 1092
    .local v6, "openResult":Lcom/onesignal/OSNotificationOpenResult;
    new-instance v5, Lcom/onesignal/OSNotification;

    invoke-direct {v5}, Lcom/onesignal/OSNotification;-><init>()V

    .line 1093
    .local v5, "notification":Lcom/onesignal/OSNotification;
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v8

    iput-boolean v8, v5, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    .line 1094
    iput-boolean p1, v5, Lcom/onesignal/OSNotification;->shown:Z

    .line 1095
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "notificationId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/onesignal/OSNotification;->androidNotificationId:I

    .line 1097
    const/4 v0, 0x0

    .line 1099
    .local v0, "actionSelected":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 1101
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1103
    .local v1, "data":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v8

    iput-object v8, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    .line 1104
    if-nez v0, :cond_0

    const-string v8, "actionSelected"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1105
    const-string v8, "actionSelected"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    :cond_0
    if-eqz v2, :cond_1

    .line 1108
    const/4 v2, 0x0

    .line 1099
    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1110
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_1
    iget-object v8, v5, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    if-nez v8, :cond_2

    .line 1111
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    .line 1112
    :cond_2
    iget-object v8, v5, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    iget-object v9, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1114
    .end local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 1115
    .local v7, "t":Ljava/lang/Throwable;
    sget-object v8, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing JSON item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for callback."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1119
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    iput-object v5, v6, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    .line 1120
    new-instance v8, Lcom/onesignal/OSNotificationAction;

    invoke-direct {v8}, Lcom/onesignal/OSNotificationAction;-><init>()V

    iput-object v8, v6, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    .line 1121
    iget-object v8, v6, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iput-object v0, v8, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    .line 1122
    iget-object v9, v6, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    if-eqz v0, :cond_4

    sget-object v8, Lcom/onesignal/OSNotificationAction$ActionType;->ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

    :goto_2
    iput-object v8, v9, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    .line 1123
    if-eqz p2, :cond_5

    .line 1124
    iget-object v8, v6, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object v9, Lcom/onesignal/OSNotification$DisplayType;->InAppAlert:Lcom/onesignal/OSNotification$DisplayType;

    iput-object v9, v8, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    .line 1128
    :goto_3
    return-object v6

    .line 1122
    :cond_4
    sget-object v8, Lcom/onesignal/OSNotificationAction$ActionType;->Opened:Lcom/onesignal/OSNotificationAction$ActionType;

    goto :goto_2

    .line 1126
    :cond_5
    iget-object v8, v6, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object v9, Lcom/onesignal/OSNotification$DisplayType;->Notification:Lcom/onesignal/OSNotification$DisplayType;

    iput-object v9, v8, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    goto :goto_3
.end method

.method private static getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/OneSignal$Builder;-><init>(Lcom/onesignal/OneSignal$1;)V

    sput-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 296
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    return-object v0
.end method

.method private static getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    if-nez p0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    .line 220
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Lcom/onesignal/OSPermissionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    .line 222
    sget-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    iget-object v0, v0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v1, Lcom/onesignal/OSPermissionChangedInternalObserver;

    invoke-direct {v1}, Lcom/onesignal/OSPermissionChangedInternalObserver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 225
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    goto :goto_0
.end method

.method private static getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    .line 253
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 255
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    sget-object v1, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    iget-object v0, v0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v1, Lcom/onesignal/OSSubscriptionChangedInternalObserver;

    invoke-direct {v1}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 259
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    goto :goto_0
.end method

.method static getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1567
    const-class v0, Lcom/onesignal/OneSignal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static getInAppAlertNotificationEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1343
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-nez v1, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getInFocusDisplaying(I)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
    .locals 1
    .param p0, "displayOption"    # I

    .prologue
    .line 1322
    packed-switch p0, :pswitch_data_0

    .line 1331
    if-gez p0, :cond_0

    .line 1332
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 1333
    :goto_0
    return-object v0

    .line 1324
    :pswitch_0
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    goto :goto_0

    .line 1326
    :pswitch_1
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    goto :goto_0

    .line 1328
    :pswitch_2
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    goto :goto_0

    .line 1333
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    goto :goto_0

    .line 1322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 233
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lcom/onesignal/OSPermissionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    .line 236
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    goto :goto_0
.end method

.method private static getLastSessionTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1309
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1310
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "OS_LAST_SESSION_TIME"

    const-wide/16 v2, -0x7918

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    if-nez p0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 267
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 270
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    goto :goto_0
.end method

.method private static getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 548
    packed-switch p0, :pswitch_data_0

    .line 565
    if-gez p0, :cond_0

    .line 566
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 567
    :goto_0
    return-object v0

    .line 550
    :pswitch_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto :goto_0

    .line 552
    :pswitch_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto :goto_0

    .line 554
    :pswitch_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto :goto_0

    .line 556
    :pswitch_3
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto :goto_0

    .line 558
    :pswitch_4
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto :goto_0

    .line 560
    :pswitch_5
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto :goto_0

    .line 562
    :pswitch_6
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto :goto_0

    .line 567
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static getNotificationIdFromGCMBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1616
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1634
    :goto_0
    return-object v2

    .line 1620
    :cond_0
    :try_start_0
    const-string v3, "custom"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1621
    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "custom"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v0, "customJSON":Lorg/json/JSONObject;
    const-string v3, "i"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1624
    const-string v3, "i"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1626
    :cond_1
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Not a OneSignal formatted GCM message. No \'i\' field in custom."

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1630
    .end local v0    # "customJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1631
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Could not parse bundle, probably not a OneSignal notification."

    invoke-static {v3, v4, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1629
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Not a OneSignal formatted GCM message. No \'custom\' field in the bundle."

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getNotificationIdFromGCMJsonPayload(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p0, "jsonPayload"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 1639
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1640
    .local v0, "customJSON":Lorg/json/JSONObject;
    const-string v2, "i"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1642
    .end local v0    # "customJSON":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 1641
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static getNotificationsWhenActiveEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1338
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-nez v1, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable",
            "<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "onOSPermissionChanged"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 243
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;
    .locals 3

    .prologue
    .line 1530
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1531
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not get OSPermissionSubscriptionState"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1532
    const/4 v0, 0x0

    .line 1539
    .local v0, "status":Lcom/onesignal/OSPermissionSubscriptionState;
    :goto_0
    return-object v0

    .line 1535
    .end local v0    # "status":Lcom/onesignal/OSPermissionSubscriptionState;
    :cond_0
    new-instance v0, Lcom/onesignal/OSPermissionSubscriptionState;

    invoke-direct {v0}, Lcom/onesignal/OSPermissionSubscriptionState;-><init>()V

    .line 1536
    .restart local v0    # "status":Lcom/onesignal/OSPermissionSubscriptionState;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    .line 1537
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    goto :goto_0
.end method

.method static getSavedAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1218
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "inContext"    # Landroid/content/Context;

    .prologue
    .line 1222
    if-nez p0, :cond_0

    .line 1223
    const-string v1, ""

    .line 1226
    :goto_0
    return-object v1

    .line 1225
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1226
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "GT_APP_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getSavedUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "inContext"    # Landroid/content/Context;

    .prologue
    .line 1230
    if-nez p0, :cond_0

    .line 1231
    const-string v1, ""

    .line 1233
    :goto_0
    return-object v1

    .line 1232
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1233
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "GT_PLAYER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getSoundEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1297
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1298
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "GT_SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method static getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable",
            "<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "onOSSubscriptionChanged"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 277
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 2
    .param p0, "getTagsHandler"    # Lcom/onesignal/OneSignal$GetTagsHandler;

    .prologue
    .line 922
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 923
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "You must initialize OneSignal before getting tags! Omitting this tag operation."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void

    .line 926
    :cond_0
    if-nez p0, :cond_1

    .line 927
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "getTagsHandler is null!"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 932
    sput-object p0, Lcom/onesignal/OneSignal;->pendingGetTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    goto :goto_0

    .line 935
    :cond_2
    invoke-static {p0}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    goto :goto_0
.end method

.method private static getTimeZoneOffset()I
    .locals 3

    .prologue
    .line 725
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 726
    .local v1, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 728
    .local v0, "offset":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    add-int/2addr v0, v2

    .line 731
    :cond_0
    div-int/lit16 v2, v0, 0x3e8

    return v2
.end method

.method static getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1237
    sget-object v1, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1238
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1239
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "GT_PLAYER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 1241
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v1
.end method

.method static getVibrate(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1281
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1282
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "GT_VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;Z)V
    .locals 4
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONArray;
    .param p2, "fromAlert"    # Z

    .prologue
    .line 1153
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 1155
    const/4 v1, 0x0

    .line 1156
    .local v1, "urlOpened":Z
    const-string v2, "DISABLE"

    const-string v3, "com.onesignal.NotificationOpened.DEFAULT"

    invoke-static {p0, v3}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1158
    .local v0, "defaultOpenActionDisabled":Z
    if-nez v0, :cond_0

    .line 1159
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v1

    .line 1161
    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2, p2}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    .line 1164
    if-nez p2, :cond_1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 1165
    invoke-static {p0}, Lcom/onesignal/OneSignal;->fireIntentFromNotificationOpen(Landroid/content/Context;)V

    .line 1166
    :cond_1
    return-void
.end method

.method static handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    .locals 3
    .param p0, "data"    # Lorg/json/JSONArray;
    .param p1, "displayed"    # Z
    .param p2, "fromAlert"    # Z

    .prologue
    .line 1144
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    if-nez v1, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v0

    .line 1148
    .local v0, "openResult":Lcom/onesignal/OSNotificationOpenResult;
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    iget-object v2, v0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$NotificationReceivedHandler;->notificationReceived(Lcom/onesignal/OSNotification;)V

    goto :goto_0
.end method

.method public static idsAvailable(Lcom/onesignal/OneSignal$IdsAvailableHandler;)V
    .locals 1
    .param p0, "inIdsAvailableHandler"    # Lcom/onesignal/OneSignal$IdsAvailableHandler;

    .prologue
    .line 987
    sput-object p0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    .line 989
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireIdsAvailableCallback()V

    .line 991
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-static {p0, p1, p2, v0, v0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 327
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;
    .param p3, "notificationOpenedHandler"    # Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 331
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;
    .param p3, "notificationOpenedHandler"    # Lcom/onesignal/OneSignal$NotificationOpenedHandler;
    .param p4, "notificationReceivedHandler"    # Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v2

    sput-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 335
    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-boolean v4, v2, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 336
    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p3, v2, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 337
    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p4, v2, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 338
    sget-boolean v2, Lcom/onesignal/OneSignal;->mGoogleProjectNumberIsRemote:Z

    if-nez v2, :cond_0

    .line 339
    sput-object p1, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    .line 341
    :cond_0
    new-instance v2, Lcom/onesignal/OSUtils;

    invoke-direct {v2}, Lcom/onesignal/OSUtils;-><init>()V

    sput-object v2, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    .line 342
    sget-object v2, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v2}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v2

    sput v2, Lcom/onesignal/OneSignal;->deviceType:I

    .line 343
    sget-object v2, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    sget v3, Lcom/onesignal/OneSignal;->deviceType:I

    invoke-virtual {v2, v3, p2}, Lcom/onesignal/OSUtils;->initializationChecker(ILjava/lang/String;)I

    move-result v2

    sput v2, Lcom/onesignal/OneSignal;->subscribableStatus:I

    .line 344
    sget v2, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_2

    .line 414
    .end local p0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 347
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    sget-boolean v2, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v2, :cond_4

    .line 348
    if-eqz p0, :cond_3

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 351
    :cond_3
    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v2, v2, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz v2, :cond_1

    .line 352
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    goto :goto_0

    .line 357
    :cond_4
    instance-of v0, p0, Landroid/app/Activity;

    .line 359
    .local v0, "contextIsActivity":Z
    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 360
    sput-object p2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 363
    if-eqz v0, :cond_a

    .line 364
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 365
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 366
    invoke-static {}, Lcom/onesignal/OneSignal;->startSyncService()V

    .line 371
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    .line 373
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState(Landroid/content/Context;)V

    .line 375
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-le v2, v3, :cond_b

    .line 376
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Application;

    new-instance v3, Lcom/onesignal/ActivityLifecycleListener;

    invoke-direct {v3}, Lcom/onesignal/ActivityLifecycleListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 381
    :goto_2
    :try_start_0
    const-string v2, "com.amazon.device.iap.PurchasingListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 382
    new-instance v2, Lcom/onesignal/TrackAmazonPurchase;

    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/onesignal/TrackAmazonPurchase;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_3
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "oldAppId":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 388
    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 389
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "APP ID changed, clearing user id as it is no longer valid."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 390
    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->SaveAppId(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->resetCurrentState()V

    .line 399
    :cond_5
    :goto_4
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v2

    invoke-static {v2}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    .line 401
    sget-boolean v2, Lcom/onesignal/OneSignal;->foreground:Z

    if-nez v2, :cond_6

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 402
    :cond_6
    invoke-static {}, Lcom/onesignal/OneSignal;->isPastOnSessionTime()Z

    move-result v2

    sput-boolean v2, Lcom/onesignal/OneSignal;->sendAsSession:Z

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 404
    invoke-static {}, Lcom/onesignal/OneSignal;->startRegistrationOrOnSession()V

    .line 407
    :cond_7
    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v2, v2, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz v2, :cond_8

    .line 408
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 410
    :cond_8
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/TrackGooglePurchase;->CanTrack(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 411
    new-instance v2, Lcom/onesignal/TrackGooglePurchase;

    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/onesignal/TrackGooglePurchase;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    .line 413
    :cond_9
    sput-boolean v5, Lcom/onesignal/OneSignal;->initDone:Z

    goto/16 :goto_0

    .line 369
    .end local v1    # "oldAppId":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_a
    sput-boolean v5, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    goto/16 :goto_1

    .line 378
    .end local p0    # "context":Landroid/content/Context;
    :cond_b
    invoke-static {}, Lcom/onesignal/ActivityLifecycleListenerCompat;->startListener()V

    goto :goto_2

    .line 395
    .restart local v1    # "oldAppId":Ljava/lang/String;
    :cond_c
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 396
    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->SaveAppId(Ljava/lang/String;)V

    goto :goto_4

    .line 383
    .end local v1    # "oldAppId":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private static init(Lcom/onesignal/OneSignal$Builder;)V
    .locals 9
    .param p0, "inBuilder"    # Lcom/onesignal/OneSignal$Builder;

    .prologue
    const/4 v8, 0x4

    .line 304
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v5

    iget-boolean v5, v5, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    if-eqz v5, :cond_0

    .line 305
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v5

    iget-object v5, v5, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v5, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 306
    :cond_0
    sput-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 308
    sget-object v5, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v2, v5, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 309
    .local v2, "context":Landroid/content/Context;
    sget-object v5, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 312
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 313
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 315
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "onesignal_google_project_number"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "sender_id":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_1

    .line 317
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    :cond_1
    const-string v5, "onesignal_app_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v6, v6, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    sget-object v7, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v7, v7, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    invoke-static {v2, v3, v5, v6, v7}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "sender_id":Ljava/lang/String;
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v4

    .line 321
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 3
    .param p0, "getTagsHandler"    # Lcom/onesignal/OneSignal$GetTagsHandler;

    .prologue
    .line 939
    if-nez p0, :cond_0

    .line 952
    :goto_0
    return-void

    .line 941
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$8;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$8;-><init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    const-string v2, "OS_GETTAGS_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static declared-synchronized internalFireIdsAvailableCallback()V
    .locals 4

    .prologue
    .line 1005
    const-class v3, Lcom/onesignal/OneSignal;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1020
    .local v0, "regId":Ljava/lang/String;
    .local v1, "userId":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 1008
    .end local v0    # "regId":Ljava/lang/String;
    .end local v1    # "userId":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .restart local v0    # "regId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSubscribed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1010
    const/4 v0, 0x0

    .line 1012
    :cond_2
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .restart local v1    # "userId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1016
    sget-object v2, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    invoke-interface {v2, v1, v0}, Lcom/onesignal/OneSignal$IdsAvailableHandler;->idsAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    if-eqz v0, :cond_0

    .line 1019
    const/4 v2, 0x0

    sput-object v2, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1005
    .end local v1    # "userId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static isAppActive()Z
    .locals 1

    .prologue
    .line 1646
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 14
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1571
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v13

    .line 1607
    :goto_0
    return v1

    .line 1574
    :cond_1
    const/4 v10, 0x0

    .line 1576
    .local v10, "exists":Z
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v9

    .line 1577
    .local v9, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v8, 0x0

    .line 1580
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1582
    .local v0, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "notification_id"

    aput-object v3, v2, v1

    .line 1583
    .local v2, "retColumn":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v4, v1

    .line 1585
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "notification"

    const-string v3, "notification_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1592
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 1598
    if-eqz v8, :cond_2

    .line 1599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1602
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "retColumn":[Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v10, :cond_4

    .line 1603
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate GCM message received, skip processing of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    move v1, v12

    .line 1604
    goto :goto_0

    .line 1594
    :catch_0
    move-exception v11

    .line 1595
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Could not check for duplicate, assuming unique."

    invoke-static {v1, v3, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1598
    if-eqz v8, :cond_2

    .line 1599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1598
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 1599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    move v1, v13

    .line 1607
    goto :goto_0
.end method

.method static isForeground()Z
    .locals 1

    .prologue
    .line 715
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    return v0
.end method

.method private static isPastOnSessionTime()Z
    .locals 4

    .prologue
    .line 1655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getLastSessionTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p0, "errorString"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "errorResponse"    # Ljava/lang/String;

    .prologue
    .line 623
    const-string v0, ""

    .line 624
    .local v0, "jsonError":Ljava/lang/String;
    if-eqz p3, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    return-void
.end method

.method private static makeAndroidParamsRequest()V
    .locals 5

    .prologue
    .line 476
    sget-boolean v3, Lcom/onesignal/OneSignal;->awlFired:Z

    if-eqz v3, :cond_0

    .line 479
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    .line 530
    .local v0, "awl_url":Ljava/lang/String;
    .local v1, "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .local v2, "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 483
    .end local v0    # "awl_url":Ljava/lang/String;
    .end local v1    # "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .end local v2    # "userId":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/onesignal/OneSignal$3;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$3;-><init>()V

    .line 523
    .restart local v1    # "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apps/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/android_params.js"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    .restart local v0    # "awl_url":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 525
    .restart local v2    # "userId":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?player_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    :cond_1
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Starting request to get Android parameters."

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 529
    invoke-static {v0, v1}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    goto :goto_0
.end method

.method static notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 1611
    invoke-static {p1}, Lcom/onesignal/OneSignal;->getNotificationIdFromGCMJsonPayload(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 8
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "dataArray"    # Lorg/json/JSONArray;

    .prologue
    .line 1178
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1180
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1181
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    const-string v6, "custom"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v0, "customJson":Lorg/json/JSONObject;
    const-string v6, "i"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1186
    .local v4, "notificationId":Ljava/lang/String;
    sget-object v6, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1178
    .end local v0    # "customJson":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "notificationId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1188
    .restart local v0    # "customJson":Lorg/json/JSONObject;
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v4    # "notificationId":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1190
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1191
    .local v3, "jsonBody":Lorg/json/JSONObject;
    const-string v6, "app_id"

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1192
    const-string v6, "player_id"

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1193
    const-string v6, "opened"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifications/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/onesignal/OneSignal$11;

    invoke-direct {v7}, Lcom/onesignal/OneSignal$11;-><init>()V

    invoke-static {v6, v3, v7}, Lcom/onesignal/OneSignalRestClient;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1202
    .end local v0    # "customJson":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jsonBody":Lorg/json/JSONObject;
    .end local v4    # "notificationId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1203
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Failed to generate JSON to send notification opened."

    invoke-static {v6, v7, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1206
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method static onAppFocus()V
    .locals 2

    .prologue
    .line 697
    invoke-static {}, Lcom/onesignal/OneSignal;->startSyncService()V

    .line 698
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    .line 701
    invoke-static {}, Lcom/onesignal/OneSignal;->isPastOnSessionTime()Z

    move-result v0

    sput-boolean v0, Lcom/onesignal/OneSignal;->sendAsSession:Z

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 704
    invoke-static {}, Lcom/onesignal/OneSignal;->startRegistrationOrOnSession()V

    .line 706
    sget-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    if-eqz v0, :cond_0

    .line 707
    sget-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    invoke-virtual {v0}, Lcom/onesignal/TrackGooglePurchase;->trackIAP()V

    .line 709
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 711
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    .line 712
    return-void
.end method

.method static onAppLostFocus(Z)Z
    .locals 14
    .param p0, "onlySave"    # Z

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 631
    sput-boolean v7, Lcom/onesignal/OneSignal;->foreground:Z

    .line 633
    sget-boolean v8, Lcom/onesignal/OneSignal;->initDone:Z

    if-nez v8, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v7

    .line 635
    :cond_1
    sget-object v8, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

    if-eqz v8, :cond_2

    .line 636
    sget-object v8, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

    invoke-virtual {v8}, Lcom/onesignal/TrackAmazonPurchase;->checkListener()V

    .line 638
    :cond_2
    sget-wide v8, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v10, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    sub-long/2addr v8, v10

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-long v0, v8

    .line 642
    .local v0, "time_elapsed":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sput-wide v8, Lcom/onesignal/OneSignal;->lastTrackedFocusTime:J

    .line 643
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-ltz v8, :cond_0

    const-wide/32 v8, 0x15180

    cmp-long v8, v0, v8

    if-gtz v8, :cond_0

    .line 645
    sget-object v8, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v8, :cond_3

    .line 646
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "Android Context not found, please call OneSignal.init when your app starts."

    invoke-static {v6, v8}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 652
    invoke-static {}, Lcom/onesignal/OneSignal;->GetUnsentActiveTime()J

    move-result-wide v4

    .line 653
    .local v4, "unSentActiveTime":J
    add-long v2, v4, v0

    .line 655
    .local v2, "totalTimeActive":J
    if-nez p0, :cond_4

    cmp-long v8, v2, v12

    if-ltz v8, :cond_4

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    .line 656
    :cond_4
    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->SaveUnsentActiveTime(J)V

    .line 657
    cmp-long v8, v2, v12

    if-ltz v8, :cond_5

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_1

    .line 660
    :cond_6
    invoke-static {v2, v3, v6}, Lcom/onesignal/OneSignal;->sendOnFocus(JZ)V

    goto :goto_0
.end method

.method private static openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataArray"    # Lorg/json/JSONArray;

    .prologue
    .line 1045
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1047
    .local v4, "jsonArraySize":I
    const/4 v7, 0x0

    .line 1049
    .local v7, "urlOpened":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 1051
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1052
    .local v1, "data":Lorg/json/JSONObject;
    const-string v8, "custom"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1049
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    const-string v8, "custom"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1057
    .local v0, "customJSON":Lorg/json/JSONObject;
    const-string v8, "u"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1058
    const-string v8, "u"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1059
    .local v6, "url":Ljava/lang/String;
    const-string v8, "://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1060
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1062
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1063
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x58080000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1064
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    const/4 v7, 0x1

    goto :goto_1

    .line 1067
    .end local v0    # "customJSON":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1068
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v8, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing JSON item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for launching a web URL."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1072
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    return v7
.end method

.method public static postNotification(Ljava/lang/String;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    .prologue
    .line 862
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid postNotification JSON format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    .prologue
    .line 870
    :try_start_0
    const-string v2, "app_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 871
    const-string v2, "app_id"

    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 873
    :cond_0
    const-string v2, "notifications/"

    new-instance v3, Lcom/onesignal/OneSignal$7;

    invoke-direct {v3, p1}, Lcom/onesignal/OneSignal$7;-><init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V

    invoke-static {v2, p0, v3}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_1
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "HTTP create notification json exception!"

    invoke-static {v2, v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 911
    if-eqz p1, :cond_1

    .line 913
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "{\'error\': \'HTTP create notification json exception!\'}"

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 914
    :catch_1
    move-exception v1

    .line 915
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static promptLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1365
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1366
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not prompt for location."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1379
    :goto_0
    return-void

    .line 1370
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    new-instance v1, Lcom/onesignal/OneSignal$12;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$12;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    .line 1378
    sput-boolean v2, Lcom/onesignal/OneSignal;->promptedLocation:Z

    goto :goto_0
.end method

.method private static registerForPushToken()V
    .locals 4

    .prologue
    .line 445
    sget v1, Lcom/onesignal/OneSignal;->deviceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 446
    new-instance v0, Lcom/onesignal/PushRegistratorADM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorADM;-><init>()V

    .line 450
    .local v0, "pushRegistrator":Lcom/onesignal/PushRegistrator;
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    new-instance v3, Lcom/onesignal/OneSignal$2;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$2;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/PushRegistrator;->registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    .line 471
    return-void

    .line 448
    .end local v0    # "pushRegistrator":Lcom/onesignal/PushRegistrator;
    :cond_0
    new-instance v0, Lcom/onesignal/PushRegistratorGPS;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorGPS;-><init>()V

    .restart local v0    # "pushRegistrator":Lcom/onesignal/PushRegistrator;
    goto :goto_0
.end method

.method private static registerUser()V
    .locals 3

    .prologue
    .line 735
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUser: registerForPushFired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locationFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/onesignal/OneSignal;->locationFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", awlFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/onesignal/OneSignal;->awlFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 737
    sget-boolean v0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/onesignal/OneSignal;->locationFired:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/onesignal/OneSignal;->awlFired:Z

    if-nez v0, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$6;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$6;-><init>()V

    const-string v2, "OS_REG_USER"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static removeNotificationOpenedHandler()V
    .locals 2

    .prologue
    .line 1480
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 1481
    return-void
.end method

.method public static removeNotificationReceivedHandler()V
    .locals 2

    .prologue
    .line 1484
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 1485
    return-void
.end method

.method public static removePermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSPermissionObserver;

    .prologue
    .line 1500
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1501
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not modify permission observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1506
    :goto_0
    return-void

    .line 1505
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static removeSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSSubscriptionObserver;

    .prologue
    .line 1521
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1522
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not modify subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1527
    :goto_0
    return-void

    .line 1526
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V
    .locals 1
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "shown"    # Z
    .param p2, "fromAlert"    # Z

    .prologue
    .line 1076
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-nez v0, :cond_1

    .line 1077
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1082
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V

    goto :goto_0
.end method

.method static saveUserId(Ljava/lang/String;)V
    .locals 4
    .param p0, "inUserId"    # Ljava/lang/String;

    .prologue
    .line 1245
    sput-object p0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 1246
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1248
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1249
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "GT_PLAYER_ID"

    sget-object v3, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static sendOnFocus(JZ)V
    .locals 6
    .param p0, "totalTimeActive"    # J
    .param p2, "synchronous"    # Z

    .prologue
    .line 666
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 668
    .local v0, "jsonBody":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "app_id"

    sget-object v5, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 670
    const-string v4, "state"

    const-string v5, "ping"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v4, "active_time"

    invoke-virtual {v0, v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 672
    invoke-static {v0}, Lcom/onesignal/OneSignal;->addNetType(Lorg/json/JSONObject;)V

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "players/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/on_focus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/onesignal/OneSignal$5;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$5;-><init>()V

    .line 687
    .local v1, "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    if-eqz p2, :cond_0

    .line 688
    invoke-static {v3, v0, v1}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 694
    .end local v1    # "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 690
    .restart local v1    # "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v3, v0, v1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 691
    .end local v1    # "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 692
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Generating on_focus:JSON Failed."

    invoke-static {v4, v5, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 4
    .param p0, "purchases"    # Lorg/json/JSONArray;
    .param p1, "newAsExisting"    # Z
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 1023
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1024
    new-instance v2, Lcom/onesignal/OneSignal$IAPUpdateJob;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignal$IAPUpdateJob;-><init>(Lorg/json/JSONArray;)V

    sput-object v2, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 1025
    sget-object v2, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iput-boolean p1, v2, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    .line 1026
    sget-object v2, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iput-object p2, v2, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 1042
    :goto_0
    return-void

    .line 1032
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1033
    .local v0, "jsonBody":Lorg/json/JSONObject;
    const-string v2, "app_id"

    sget-object v3, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1034
    if-eqz p1, :cond_1

    .line 1035
    const-string v2, "existing"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1036
    :cond_1
    const-string v2, "purchases"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "players/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/on_purchase"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p2}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    .end local v0    # "jsonBody":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1040
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Failed to generate JSON for sendPurchases."

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 810
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    return-void

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "t":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendTags(Ljava/lang/String;)V
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 818
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "t":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Generating JSONObject for sendTags failed!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendTags(Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "keyValues"    # Lorg/json/JSONObject;

    .prologue
    .line 825
    sget-object v5, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 826
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "You must initialize OneSignal before modifying tags! Omitting this tag operation."

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    if-eqz p0, :cond_0

    .line 832
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;

    move-result-object v5

    iget-object v0, v5, Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    .line 834
    .local v0, "existingKeys":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 836
    .local v3, "toSend":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 840
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 841
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 843
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 844
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONArray;

    if-nez v5, :cond_3

    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_4

    .line 845
    :cond_3
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Omitting key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'! sendTags DO NOT supported nested values!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_1

    .line 853
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 846
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 847
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 848
    const-string v5, ""

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 851
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 856
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "{}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 857
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer;->sendTags(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static setInFocusDisplaying(I)V
    .locals 1
    .param p0, "displayOption"    # I

    .prologue
    .line 1318
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getInFocusDisplaying(I)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->setInFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)V

    .line 1319
    return-void
.end method

.method public static setInFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)V
    .locals 2
    .param p0, "displayOption"    # Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .prologue
    .line 1314
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 1315
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    iput-object p0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 1316
    return-void
.end method

.method static setLastSessionTime(J)V
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 1302
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1303
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1304
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "OS_LAST_SESSION_TIME"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1306
    return-void
.end method

.method public static setLocationShared(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 1358
    sput-boolean p0, Lcom/onesignal/OneSignal;->shareLocation:Z

    .line 1359
    if-nez p0, :cond_0

    .line 1360
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->clearLocation()V

    .line 1361
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/onesignal/OneSignal;->shareLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method public static setLogLevel(II)V
    .locals 2
    .param p0, "inLogCatLevel"    # I
    .param p1, "inVisualLogLevel"    # I

    .prologue
    .line 544
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object v0

    invoke-static {p1}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    .line 545
    return-void
.end method

.method public static setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V
    .locals 0
    .param p0, "inLogCatLevel"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "inVisualLogLevel"    # Lcom/onesignal/OneSignal$LOG_LEVEL;

    .prologue
    .line 540
    sput-object p0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object p1, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 541
    return-void
.end method

.method public static setSubscription(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 1348
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1349
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not set subscription."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1355
    :goto_0
    return-void

    .line 1353
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSubscriptionState;->setUserSubscriptionSetting(Z)V

    .line 1354
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->setSubscription(Z)V

    goto :goto_0
.end method

.method public static startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    new-instance v0, Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onesignal/OneSignal$Builder;-><init>(Landroid/content/Context;Lcom/onesignal/OneSignal$1;)V

    return-object v0
.end method

.method private static startLocationUpdate()V
    .locals 3

    .prologue
    .line 433
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/onesignal/OneSignal$1;

    invoke-direct {v2}, Lcom/onesignal/OneSignal$1;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    .line 441
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startRegistrationOrOnSession()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 417
    sget-boolean v2, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    if-eqz v2, :cond_0

    .line 430
    :goto_0
    return-void

    .line 420
    :cond_0
    sput-boolean v1, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    .line 422
    sput-boolean v0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    .line 423
    sget-boolean v2, Lcom/onesignal/OneSignal;->sendAsSession:Z

    if-eqz v2, :cond_1

    .line 424
    sput-boolean v0, Lcom/onesignal/OneSignal;->locationFired:Z

    .line 426
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->startLocationUpdate()V

    .line 427
    invoke-static {}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V

    .line 429
    sget-boolean v2, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v2, v2, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    sput-boolean v0, Lcom/onesignal/OneSignal;->promptedLocation:Z

    goto :goto_0
.end method

.method private static startSyncService()V
    .locals 3

    .prologue
    .line 1659
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-class v2, Lcom/onesignal/SyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1660
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "task"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1661
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1662
    return-void
.end method

.method public static syncHashedEmail(Ljava/lang/String;)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 797
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 798
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "You must initialize OneSignal before calling syncHashedEmail! Omitting this operation."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    invoke-static {p0}, Lcom/onesignal/OSUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 804
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->syncHashedEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static updateOnSessionDependents()V
    .locals 2

    .prologue
    .line 1650
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/OneSignal;->sendAsSession:Z

    .line 1651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 1652
    return-void
.end method

.method static updateUserIdDependents(Ljava/lang/String;)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 1255
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 1256
    invoke-static {}, Lcom/onesignal/OneSignal;->fireIdsAvailableCallback()V

    .line 1257
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallback(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    .line 1259
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSubscriptionState;->setUserId(Ljava/lang/String;)V

    .line 1261
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    if-eqz v0, :cond_0

    .line 1262
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-object v0, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->toReport:Lorg/json/JSONArray;

    sget-object v1, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    sget-object v2, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-object v2, v2, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 1263
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 1266
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/AdvertisingIdProviderGPS;->getLastValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/onesignal/OneSignalChromeTab;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    return-void
.end method
