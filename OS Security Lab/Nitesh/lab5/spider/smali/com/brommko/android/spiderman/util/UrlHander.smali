.class public Lcom/brommko/android/spiderman/util/UrlHander;
.super Ljava/lang/Object;
.source "UrlHander.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "callIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    const-string v1, "android.permission.CALL_PHONE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 23
    .local v0, "uri":Landroid/net/Uri;
    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-static {p0, p1}, Lcom/brommko/android/spiderman/util/UrlHander;->phoneLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 42
    :goto_0
    return v1

    .line 26
    :cond_0
    const-string v2, "sms:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-static {p0, p1}, Lcom/brommko/android/spiderman/util/UrlHander;->smsLink(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_1
    const-string v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-static {p0, p1}, Lcom/brommko/android/spiderman/util/UrlHander;->email(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    const-string v2, "geo:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "maps.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 33
    :cond_3
    const-string v2, "https://maps.google.com/maps?daddr="

    const-string v3, "geo:"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcom/brommko/android/spiderman/util/UrlHander;->map(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_4
    const-string v2, "youtube"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    invoke-static {p0, p1}, Lcom/brommko/android/spiderman/util/UrlHander;->openYoutube(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 40
    invoke-static {p0, p1}, Lcom/brommko/android/spiderman/util/UrlHander;->openGooglePlay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 42
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static downladLink(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentDisposition"    # Ljava/lang/String;
    .param p3, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/brommko/android/spiderman/util/PermissionUtil;->isPermissionAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/brommko/android/spiderman/util/UrlHander;->download(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/brommko/android/spiderman/util/PermissionUtil;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static download(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentDisposition"    # Ljava/lang/String;
    .param p3, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 114
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_0
    const v3, 0x7f080049

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-static {p1, p2, p3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 122
    .local v2, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 123
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 124
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 125
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 126
    const-string v3, "download"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 127
    .local v0, "dm":Landroid/app/DownloadManager;
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto :goto_0
.end method

.method private static email(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "emailIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public static map(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "mapIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 94
    :cond_0
    return-void
.end method

.method private static openGooglePlay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v0, "googlePlayIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    :cond_0
    return-void
.end method

.method private static openYoutube(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "youtubeIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    :cond_0
    return-void
.end method

.method private static phoneLink(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "android.permission.CALL_PHONE"

    invoke-static {p0, v0}, Lcom/brommko/android/spiderman/util/PermissionUtil;->isPermissionAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0, p1}, Lcom/brommko/android/spiderman/util/UrlHander;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v0, "android.permission.CALL_PHONE"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/brommko/android/spiderman/util/PermissionUtil;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static sms(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "smsIntent":Landroid/content/Intent;
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    const-string v1, "android.permission.SEND_SMS"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static smsLink(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "android.permission.SEND_SMS"

    invoke-static {p0, v0}, Lcom/brommko/android/spiderman/util/PermissionUtil;->isPermissionAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Lcom/brommko/android/spiderman/util/UrlHander;->sms(Landroid/app/Activity;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "android.permission.SEND_SMS"

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/brommko/android/spiderman/util/PermissionUtil;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method
