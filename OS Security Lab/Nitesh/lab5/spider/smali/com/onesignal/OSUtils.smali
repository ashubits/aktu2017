.class Lcom/onesignal/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# static fields
.field static final UNINITIALIZABLE_STATUS:I = -0x3e7


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static getCorrectedLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const-string v0, "he"

    .line 164
    .end local v0    # "lang":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 155
    .restart local v0    # "lang":Ljava/lang/String;
    :cond_1
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    const-string v0, "id"

    goto :goto_0

    .line 157
    :cond_2
    const-string v1, "ji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    const-string v0, "yi"

    goto :goto_0

    .line 161
    :cond_3
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metaName"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 132
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 133
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 138
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "bodyResId":I
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 146
    .end local p2    # "defaultStr":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method static isValidEmail(Ljava/lang/String;)Z
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 v2, 0x0

    .line 173
    :goto_0
    return v2

    .line 171
    :cond_0
    const-string v0, "^[a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$"

    .line 172
    .local v0, "emRegex":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 173
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method static runOnMainUIThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 189
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 192
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method getCarrierName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 125
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "carrierName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .end local v0    # "carrierName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method getDeviceType()I
    .locals 2

    .prologue
    .line 102
    :try_start_0
    const-string v1, "com.amazon.device.messaging.ADM"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v1, 0x2

    .line 105
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getNetType()Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 110
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 113
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 115
    .local v2, "networkType":I
    if-eq v2, v5, :cond_0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 116
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 120
    .end local v2    # "networkType":I
    :goto_0
    return-object v3

    .line 117
    .restart local v2    # "networkType":I
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 120
    .end local v2    # "networkType":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method initializationChecker(ILjava/lang/String;)I
    .locals 5
    .param p1, "deviceType"    # I
    .param p2, "oneSignalAppId"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v1, 0x1

    .line 55
    .local v1, "subscribableStatus":I
    :try_start_0
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const-string v3, "b2f7f966-d8cc-11e4-bed1-df8f05be55ba"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "5eb5a37e-b458-11e3-ac11-000c2940e62c"

    .line 62
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    :cond_0
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "OneSignal Example AppID detected, please update to your app\'s id found on OneSignal.com"

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 65
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 67
    :try_start_1
    const-string v3, "com.google.android.gms.gcm.GoogleCloudMessaging"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :goto_0
    :try_start_2
    const-string v3, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    :cond_2
    :goto_1
    :try_start_3
    const-string v3, "android.support.v4.view.MenuCompat"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 84
    :try_start_4
    const-string v3, "android.support.v4.content.WakefulBroadcastReceiver"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 85
    const-string v3, "android.support.v4.app.NotificationManagerCompat"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    move v3, v1

    .line 95
    :goto_3
    return v3

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "OneSignal AppId format is invalid.\nExample: \'b2f7f966-d8cc-11e4-bed1-df8f05be55ba\'\n"

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    const/16 v3, -0x3e7

    goto :goto_3

    .line 68
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "The GCM Google Play services client library was not found. Please make sure to include it in your project."

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v1, -0x4

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 76
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "The GooglePlayServicesUtil class part of Google Play services client library was not found. Include this in your project."

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v1, -0x4

    goto :goto_1

    .line 86
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .line 87
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    :try_start_5
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "The included Android Support Library v4 is to old or incomplete. Please update your project\'s android-support-v4.jar to the latest revision."

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 88
    const/4 v1, -0x5

    goto :goto_2

    .line 90
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Could not find the Android Support Library v4. Please make sure android-support-v4.jar has been correctly added to your project."

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    const/4 v1, -0x3

    goto :goto_2
.end method
