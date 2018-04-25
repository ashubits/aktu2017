.class public Lcom/onesignal/PushRegistratorGPS;
.super Ljava/lang/Object;
.source "PushRegistratorGPS.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator;


# static fields
.field private static GCM_RETRY_COUNT:I


# instance fields
.field private appContext:Landroid/content/Context;

.field private registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x5

    sput v0, Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ShowUpdateGPSDialog()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/onesignal/PushRegistratorGPS$1;

    invoke-direct {v0, p0}, Lcom/onesignal/PushRegistratorGPS$1;-><init>(Lcom/onesignal/PushRegistratorGPS;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/PushRegistratorGPS;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/PushRegistratorGPS;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I

    return v0
.end method

.method static synthetic access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/PushRegistratorGPS;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    return-object v0
.end method

.method private internalRegisterForPush(Ljava/lang/String;)V
    .locals 5
    .param p1, "googleProjectNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/PushRegistratorGPS;->isGMSInstalledAndEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/onesignal/PushRegistratorGPS;->registerInBackground(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "\'Google Play services\' app not installed or disabled on the device."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v2, 0x0

    const/4 v3, -0x7

    invoke-interface {v1, v2, v3}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Could not register with GCM due to an error with the AndroidManifest.xml file or with \'Google Play services\'."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    iget-object v1, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v2, -0x8

    invoke-interface {v1, v4, v2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isGMSInstalledAndEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 96
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.google.android.gms"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 98
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/onesignal/PushRegistratorGPS;->isGooglePlayStoreInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "GT_DO_NOT_SHOW_MISSING_GPS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v3

    .line 104
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/onesignal/PushRegistratorGPS;->ShowUpdateGPSDialog()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 105
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 109
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private isGooglePlayStoreInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    :try_start_0
    iget-object v5, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 85
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.vending"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 86
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "Market"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 90
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "label":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v3, v4

    .line 87
    goto :goto_0

    .line 88
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    move v3, v4

    .line 90
    goto :goto_0
.end method

.method private registerInBackground(Ljava/lang/String;)V
    .locals 2
    .param p1, "googleProjectNumber"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/PushRegistratorGPS$2;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/PushRegistratorGPS$2;-><init>(Lcom/onesignal/PushRegistratorGPS;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    return-void
.end method


# virtual methods
.method public registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "googleProjectNumber"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 59
    if-nez p2, :cond_0

    .line 60
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Missing Google Project number!\nPlease enter a Google Project number / Sender ID on under App Settings > Android > Configuration on the OneSignal dashboard."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v1, 0x0

    const/4 v2, -0x6

    invoke-interface {v0, v1, v2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0, p2}, Lcom/onesignal/PushRegistratorGPS;->internalRegisterForPush(Ljava/lang/String;)V

    goto :goto_0
.end method
