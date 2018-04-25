.class final Lhotchemi/android/rate/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field private static final PREF_FILE_NAME:Ljava/lang/String; = "android_rate_pref_file"

.field private static final PREF_KEY_INSTALL_DATE:Ljava/lang/String; = "android_rate_install_date"

.field private static final PREF_KEY_IS_AGREE_SHOW_DIALOG:Ljava/lang/String; = "android_rate_is_agree_show_dialog"

.field private static final PREF_KEY_LAUNCH_TIMES:Ljava/lang/String; = "android_rate_launch_times"

.field private static final PREF_KEY_REMIND_INTERVAL:Ljava/lang/String; = "android_rate_remind_interval"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static clearSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 39
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_install_date"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    const-string v1, "android_rate_launch_times"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    return-void
.end method

.method static getInstallDate(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_install_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getIsAgreeShowDialog(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_is_agree_show_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getLaunchTimes(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_launch_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, "android_rate_pref_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method static getRemindInterval(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_remind_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static isFirstLaunch(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "android_rate_install_date"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setAgreeShowDialog(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isAgree"    # Z

    .prologue
    .line 52
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_is_agree_show_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    return-void
.end method

.method static setInstallDate(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_install_date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    return-void
.end method

.method static setLaunchTimes(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "launchTimes"    # I

    .prologue
    .line 83
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_launch_times"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method static setRemindInterval(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lhotchemi/android/rate/PreferenceHelper;->getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_rate_remind_interval"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    const-string v1, "android_rate_remind_interval"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    return-void
.end method
