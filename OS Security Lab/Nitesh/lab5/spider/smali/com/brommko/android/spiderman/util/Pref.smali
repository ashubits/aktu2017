.class public Lcom/brommko/android/spiderman/util/Pref;
.super Ljava/lang/Object;
.source "Pref.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static fileNameForShare:Ljava/lang/String;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/brommko/android/spiderman/util/Pref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brommko/android/spiderman/util/Pref;->LOG_TAG:Ljava/lang/String;

    .line 12
    const-string v0, "ShareData"

    sput-object v0, Lcom/brommko/android/spiderman/util/Pref;->fileNameForShare:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/brommko/android/spiderman/util/Pref;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeShare()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/brommko/android/spiderman/util/Pref;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/brommko/android/spiderman/util/Pref;->openShare(Landroid/content/Context;)V

    .line 42
    sget-object v1, Lcom/brommko/android/spiderman/util/Pref;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/brommko/android/spiderman/util/Pref;->closeShare()V

    .line 44
    return-object v0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/brommko/android/spiderman/util/Pref;->openShare(Landroid/content/Context;)V

    .line 49
    sget-object v1, Lcom/brommko/android/spiderman/util/Pref;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    .local v0, "result":Z
    invoke-static {}, Lcom/brommko/android/spiderman/util/Pref;->closeShare()V

    .line 51
    return v0
.end method

.method private static openShare(Landroid/content/Context;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v0, Lcom/brommko/android/spiderman/util/Pref;->fileNameForShare:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/brommko/android/spiderman/util/Pref;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/brommko/android/spiderman/util/Pref;->openShare(Landroid/content/Context;)V

    .line 33
    sget-object v1, Lcom/brommko/android/spiderman/util/Pref;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-static {}, Lcom/brommko/android/spiderman/util/Pref;->closeShare()V

    .line 38
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/brommko/android/spiderman/util/Pref;->openShare(Landroid/content/Context;)V

    .line 24
    sget-object v1, Lcom/brommko/android/spiderman/util/Pref;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {}, Lcom/brommko/android/spiderman/util/Pref;->closeShare()V

    .line 29
    return-void
.end method
