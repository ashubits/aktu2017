.class public Lcom/brommko/android/spiderman/Spiderman;
.super Landroid/app/Application;
.source "Spiderman.java"

# interfaces
.implements Lcom/onesignal/OneSignal$NotificationOpenedHandler;


# static fields
.field private static activityVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static activityPaused()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/brommko/android/spiderman/Spiderman;->activityVisible:Z

    .line 48
    return-void
.end method

.method public static activityResumed()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/brommko/android/spiderman/Spiderman;->activityVisible:Z

    .line 44
    return-void
.end method

.method public static isActivityVisible()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/brommko/android/spiderman/Spiderman;->activityVisible:Z

    return v0
.end method


# virtual methods
.method public notificationOpened(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 3
    .param p1, "result"    # Lcom/onesignal/OSNotificationOpenResult;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    iget-object v1, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v1, v1, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v1, v1, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v2, v2, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v2, v2, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Lcom/brommko/android/spiderman/Spiderman;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/onesignal/OneSignal$Builder;->setNotificationOpenedHandler(Lcom/onesignal/OneSignal$NotificationOpenedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 23
    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$Builder;->inFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/onesignal/OneSignal$Builder;->init()V

    .line 25
    return-void
.end method
