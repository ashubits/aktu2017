.class final Lhotchemi/android/rate/DialogManager$1;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhotchemi/android/rate/DialogManager;->create(Landroid/content/Context;Lhotchemi/android/rate/DialogOptions;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lhotchemi/android/rate/OnClickButtonListener;

.field final synthetic val$options:Lhotchemi/android/rate/DialogOptions;


# direct methods
.method constructor <init>(Lhotchemi/android/rate/DialogOptions;Landroid/content/Context;Lhotchemi/android/rate/OnClickButtonListener;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lhotchemi/android/rate/DialogManager$1;->val$options:Lhotchemi/android/rate/DialogOptions;

    iput-object p2, p0, Lhotchemi/android/rate/DialogManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lhotchemi/android/rate/DialogManager$1;->val$listener:Lhotchemi/android/rate/OnClickButtonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lhotchemi/android/rate/DialogManager$1;->val$options:Lhotchemi/android/rate/DialogOptions;

    invoke-virtual {v1}, Lhotchemi/android/rate/DialogOptions;->getStoreType()Lhotchemi/android/rate/StoreType;

    move-result-object v1

    sget-object v2, Lhotchemi/android/rate/StoreType;->GOOGLEPLAY:Lhotchemi/android/rate/StoreType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lhotchemi/android/rate/DialogManager$1;->val$context:Landroid/content/Context;

    .line 38
    invoke-static {v1}, Lhotchemi/android/rate/IntentHelper;->createIntentForGooglePlay(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intentToAppstore":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lhotchemi/android/rate/DialogManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget-object v1, p0, Lhotchemi/android/rate/DialogManager$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhotchemi/android/rate/PreferenceHelper;->setAgreeShowDialog(Landroid/content/Context;Z)V

    .line 41
    iget-object v1, p0, Lhotchemi/android/rate/DialogManager$1;->val$listener:Lhotchemi/android/rate/OnClickButtonListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhotchemi/android/rate/DialogManager$1;->val$listener:Lhotchemi/android/rate/OnClickButtonListener;

    invoke-interface {v1, p2}, Lhotchemi/android/rate/OnClickButtonListener;->onClickButton(I)V

    .line 42
    :cond_0
    return-void

    .line 38
    .end local v0    # "intentToAppstore":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lhotchemi/android/rate/DialogManager$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lhotchemi/android/rate/IntentHelper;->createIntentForAmazonAppstore(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
