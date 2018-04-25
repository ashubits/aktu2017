.class public Lcom/brommko/android/spiderman/firebase/MyFirebaseInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "MyFirebaseInstanceIDService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFirebaseIIDService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "refreshedToken":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/brommko/android/spiderman/firebase/MyFirebaseInstanceIDService;->sendRegistrationToServer(Ljava/lang/String;)V

    .line 30
    return-void
.end method
