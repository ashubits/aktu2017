.class public final Lhotchemi/android/rate/AppRate;
.super Ljava/lang/Object;
.source "AppRate.java"


# static fields
.field private static singleton:Lhotchemi/android/rate/AppRate;


# instance fields
.field private final context:Landroid/content/Context;

.field private installDate:I

.field private isDebug:Z

.field private launchTimes:I

.field private final options:Lhotchemi/android/rate/DialogOptions;

.field private remindInterval:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xa

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lhotchemi/android/rate/DialogOptions;

    invoke-direct {v0}, Lhotchemi/android/rate/DialogOptions;-><init>()V

    iput-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    .line 25
    iput v1, p0, Lhotchemi/android/rate/AppRate;->installDate:I

    .line 27
    iput v1, p0, Lhotchemi/android/rate/AppRate;->launchTimes:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lhotchemi/android/rate/AppRate;->remindInterval:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhotchemi/android/rate/AppRate;->isDebug:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private static isOverDate(JI)Z
    .locals 4
    .param p0, "targetDate"    # J
    .param p2, "threshold"    # I

    .prologue
    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    mul-int/lit8 v2, p2, 0x18

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverInstallDate()Z
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/PreferenceHelper;->getInstallDate(Landroid/content/Context;)J

    move-result-wide v0

    iget v2, p0, Lhotchemi/android/rate/AppRate;->installDate:I

    invoke-static {v0, v1, v2}, Lhotchemi/android/rate/AppRate;->isOverDate(JI)Z

    move-result v0

    return v0
.end method

.method private isOverLaunchTimes()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/PreferenceHelper;->getLaunchTimes(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lhotchemi/android/rate/AppRate;->launchTimes:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverRemindDate()Z
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/PreferenceHelper;->getRemindInterval(Landroid/content/Context;)J

    move-result-wide v0

    iget v2, p0, Lhotchemi/android/rate/AppRate;->remindInterval:I

    invoke-static {v0, v1, v2}, Lhotchemi/android/rate/AppRate;->isOverDate(JI)Z

    move-result v0

    return v0
.end method

.method public static showRateDialogIfMeetsConditions(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    sget-object v1, Lhotchemi/android/rate/AppRate;->singleton:Lhotchemi/android/rate/AppRate;

    iget-boolean v1, v1, Lhotchemi/android/rate/AppRate;->isDebug:Z

    if-nez v1, :cond_0

    sget-object v1, Lhotchemi/android/rate/AppRate;->singleton:Lhotchemi/android/rate/AppRate;

    invoke-virtual {v1}, Lhotchemi/android/rate/AppRate;->shouldShowRateDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 50
    .local v0, "isMeetsConditions":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    sget-object v1, Lhotchemi/android/rate/AppRate;->singleton:Lhotchemi/android/rate/AppRate;

    invoke-virtual {v1, p0}, Lhotchemi/android/rate/AppRate;->showRateDialog(Landroid/app/Activity;)V

    .line 53
    :cond_1
    return v0

    .line 49
    .end local v0    # "isMeetsConditions":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static with(Landroid/content/Context;)Lhotchemi/android/rate/AppRate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lhotchemi/android/rate/AppRate;->singleton:Lhotchemi/android/rate/AppRate;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lhotchemi/android/rate/AppRate;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lhotchemi/android/rate/AppRate;->singleton:Lhotchemi/android/rate/AppRate;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lhotchemi/android/rate/AppRate;

    invoke-direct {v0, p0}, Lhotchemi/android/rate/AppRate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhotchemi/android/rate/AppRate;->singleton:Lhotchemi/android/rate/AppRate;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lhotchemi/android/rate/AppRate;->singleton:Lhotchemi/android/rate/AppRate;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearAgreeShowDialog()Lhotchemi/android/rate/AppRate;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhotchemi/android/rate/PreferenceHelper;->setAgreeShowDialog(Landroid/content/Context;Z)V

    .line 92
    return-object p0
.end method

.method public clearSettingsParam()Lhotchemi/android/rate/AppRate;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhotchemi/android/rate/PreferenceHelper;->setAgreeShowDialog(Landroid/content/Context;Z)V

    .line 97
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/PreferenceHelper;->clearSharedPreferences(Landroid/content/Context;)V

    .line 98
    return-object p0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lhotchemi/android/rate/AppRate;->isDebug:Z

    return v0
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/PreferenceHelper;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/PreferenceHelper;->setInstallDate(Landroid/content/Context;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    iget-object v1, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v1}, Lhotchemi/android/rate/PreferenceHelper;->getLaunchTimes(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lhotchemi/android/rate/PreferenceHelper;->setLaunchTimes(Landroid/content/Context;I)V

    .line 181
    return-void
.end method

.method public setAgreeShowDialog(Z)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "clear"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lhotchemi/android/rate/PreferenceHelper;->setAgreeShowDialog(Landroid/content/Context;Z)V

    .line 103
    return-object p0
.end method

.method public setCancelable(Z)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setCancelable(Z)V

    .line 168
    return-object p0
.end method

.method public setDebug(Z)Lhotchemi/android/rate/AppRate;
    .locals 0
    .param p1, "isDebug"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lhotchemi/android/rate/AppRate;->isDebug:Z

    .line 214
    return-object p0
.end method

.method public setInstallDays(I)Lhotchemi/android/rate/AppRate;
    .locals 0
    .param p1, "installDate"    # I

    .prologue
    .line 66
    iput p1, p0, Lhotchemi/android/rate/AppRate;->installDate:I

    .line 67
    return-object p0
.end method

.method public setLaunchTimes(I)Lhotchemi/android/rate/AppRate;
    .locals 0
    .param p1, "launchTimes"    # I

    .prologue
    .line 61
    iput p1, p0, Lhotchemi/android/rate/AppRate;->launchTimes:I

    .line 62
    return-object p0
.end method

.method public setMessage(I)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setMessageResId(I)V

    .line 128
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setMessageText(Ljava/lang/String;)V

    .line 133
    return-object p0
.end method

.method public setOnClickButtonListener(Lhotchemi/android/rate/OnClickButtonListener;)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "listener"    # Lhotchemi/android/rate/OnClickButtonListener;

    .prologue
    .line 112
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setListener(Lhotchemi/android/rate/OnClickButtonListener;)V

    .line 113
    return-object p0
.end method

.method public setRemindInterval(I)Lhotchemi/android/rate/AppRate;
    .locals 0
    .param p1, "remindInterval"    # I

    .prologue
    .line 71
    iput p1, p0, Lhotchemi/android/rate/AppRate;->remindInterval:I

    .line 72
    return-object p0
.end method

.method public setShowLaterButton(Z)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "isShowNeutralButton"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setShowNeutralButton(Z)V

    .line 77
    return-object p0
.end method

.method public setShowNeverButton(Z)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "isShowNeverButton"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setShowNegativeButton(Z)V

    .line 82
    return-object p0
.end method

.method public setShowTitle(Z)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "isShowTitle"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setShowTitle(Z)V

    .line 87
    return-object p0
.end method

.method public setStoreType(Lhotchemi/android/rate/StoreType;)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "appstore"    # Lhotchemi/android/rate/StoreType;

    .prologue
    .line 172
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setStoreType(Lhotchemi/android/rate/StoreType;)V

    .line 173
    return-object p0
.end method

.method public setTextLater(I)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setTextNeutralResId(I)V

    .line 148
    return-object p0
.end method

.method public setTextLater(Ljava/lang/String;)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "neutralText"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setNeutralText(Ljava/lang/String;)V

    .line 153
    return-object p0
.end method

.method public setTextNever(I)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setTextNegativeResId(I)V

    .line 158
    return-object p0
.end method

.method public setTextNever(Ljava/lang/String;)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "negativeText"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setNegativeText(Ljava/lang/String;)V

    .line 163
    return-object p0
.end method

.method public setTextRateNow(I)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setTextPositiveResId(I)V

    .line 138
    return-object p0
.end method

.method public setTextRateNow(Ljava/lang/String;)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "positiveText"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setPositiveText(Ljava/lang/String;)V

    .line 143
    return-object p0
.end method

.method public setTitle(I)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setTitleResId(I)V

    .line 118
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setTitleText(Ljava/lang/String;)V

    .line 123
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lhotchemi/android/rate/AppRate;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v0, p1}, Lhotchemi/android/rate/DialogOptions;->setView(Landroid/view/View;)V

    .line 108
    return-object p0
.end method

.method public shouldShowRateDialog()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->context:Landroid/content/Context;

    invoke-static {v0}, Lhotchemi/android/rate/PreferenceHelper;->getIsAgreeShowDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lhotchemi/android/rate/AppRate;->isOverLaunchTimes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lhotchemi/android/rate/AppRate;->isOverInstallDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lhotchemi/android/rate/AppRate;->isOverRemindDate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRateDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lhotchemi/android/rate/AppRate;->options:Lhotchemi/android/rate/DialogOptions;

    invoke-static {p1, v0}, Lhotchemi/android/rate/DialogManager;->create(Landroid/content/Context;Lhotchemi/android/rate/DialogOptions;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 187
    :cond_0
    return-void
.end method
