.class public Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SettingMessageDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnDismissListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickPositiveListener;
    }
.end annotation


# static fields
.field private static final ARGS_MESSAGE_DIALOG_REQUEST:Ljava/lang/String; = "message_dialog_request"


# instance fields
.field private mBuilder:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

.field private mOnMessageDialogCheckConfirmedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

.field private mOnMessageDialogDismissListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)Ljava/util/List;
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getOnMessageDialogDismissListener()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getOnMessageDialogCheckConfirmedListener()Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    move-result-object p0

    return-object p0
.end method

.method private getOnMessageDialogCheckConfirmedListener()Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogCheckConfirmedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    return-object v0
.end method

.method private getOnMessageDialogDismissListener()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;
    .registers 4

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message_dialog_request"

    .line 42
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_dialog_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 52
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2d

    const/4 p1, 0x1

    .line 53
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create setting message dialog : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 56
    :cond_2d
    new-instance v3, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickPositiveListener;

    invoke-direct {v3, v2, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickPositiveListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V

    .line 58
    new-instance v4, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;

    invoke-direct {v4, v2, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V

    .line 60
    new-instance v5, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;

    invoke-direct {v5, v2, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V

    .line 61
    new-instance v6, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnDismissListener;

    invoke-direct {v6}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnDismissListener;-><init>()V

    .line 62
    new-instance v7, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;

    invoke-direct {v7, v2, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V

    .line 65
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mBuilder:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mBuilder:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 66
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->create(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .registers 2

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogCheckConfirmedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 89
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 91
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    if-eqz v1, :cond_14

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 94
    :cond_14
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 97
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_23

    instance-of v3, v2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    if-eqz v3, :cond_23

    .line 98
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    .line 99
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 104
    :cond_41
    :goto_41
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    if-eqz v1, :cond_49

    .line 105
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogCheckConfirmedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    :cond_49
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 80
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mBuilder:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

    if-eqz v0, :cond_14

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->attachCheckBoxIfNeeded(Landroid/content/Context;Landroid/app/AlertDialog;)V

    :cond_14
    return-void
.end method
