.class final Lhotchemi/android/rate/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static create(Landroid/content/Context;Lhotchemi/android/rate/DialogOptions;)Landroid/app/Dialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lhotchemi/android/rate/DialogOptions;

    .prologue
    .line 22
    invoke-static {p0}, Lhotchemi/android/rate/Utils;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 23
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1, p0}, Lhotchemi/android/rate/DialogOptions;->getMessageText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 25
    invoke-virtual {p1}, Lhotchemi/android/rate/DialogOptions;->shouldShowTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, p0}, Lhotchemi/android/rate/DialogOptions;->getTitleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    :cond_0
    invoke-virtual {p1}, Lhotchemi/android/rate/DialogOptions;->getCancelable()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 29
    invoke-virtual {p1}, Lhotchemi/android/rate/DialogOptions;->getView()Landroid/view/View;

    move-result-object v2

    .line 30
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 32
    :cond_1
    invoke-virtual {p1}, Lhotchemi/android/rate/DialogOptions;->getListener()Lhotchemi/android/rate/OnClickButtonListener;

    move-result-object v1

    .line 34
    .local v1, "listener":Lhotchemi/android/rate/OnClickButtonListener;
    invoke-virtual {p1, p0}, Lhotchemi/android/rate/DialogOptions;->getPositiveText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhotchemi/android/rate/DialogManager$1;

    invoke-direct {v4, p1, p0, v1}, Lhotchemi/android/rate/DialogManager$1;-><init>(Lhotchemi/android/rate/DialogOptions;Landroid/content/Context;Lhotchemi/android/rate/OnClickButtonListener;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {p1}, Lhotchemi/android/rate/DialogOptions;->shouldShowNeutralButton()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {p1, p0}, Lhotchemi/android/rate/DialogOptions;->getNeutralText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhotchemi/android/rate/DialogManager$2;

    invoke-direct {v4, p0, v1}, Lhotchemi/android/rate/DialogManager$2;-><init>(Landroid/content/Context;Lhotchemi/android/rate/OnClickButtonListener;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    :cond_2
    invoke-virtual {p1}, Lhotchemi/android/rate/DialogOptions;->shouldShowNegativeButton()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    invoke-virtual {p1, p0}, Lhotchemi/android/rate/DialogOptions;->getNegativeText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhotchemi/android/rate/DialogManager$3;

    invoke-direct {v4, p0, v1}, Lhotchemi/android/rate/DialogManager$3;-><init>(Landroid/content/Context;Lhotchemi/android/rate/OnClickButtonListener;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
