.class public Lcom/brommko/android/spiderman/firebase/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MyFirebaseMessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFirebaseMsgService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private sendNotification(Lcom/google/firebase/messaging/RemoteMessage$Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/google/firebase/messaging/RemoteMessage$Notification;

    .prologue
    const/4 v7, 0x0

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/brommko/android/spiderman/MainActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v7, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 71
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 72
    .local v0, "defaultSoundUri":Landroid/net/Uri;
    new-instance v5, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f080042

    .line 73
    invoke-virtual {p0, v6}, Lcom/brommko/android/spiderman/firebase/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 74
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 75
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 76
    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 77
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/NotificationCompat$Builder;

    .line 79
    .local v2, "notificationBuilder":Landroid/support/v7/app/NotificationCompat$Builder;
    const-string v5, "notification"

    .line 80
    invoke-virtual {p0, v5}, Lcom/brommko/android/spiderman/firebase/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 82
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "MyFirebaseMsgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Notification Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method
