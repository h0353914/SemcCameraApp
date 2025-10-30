.class Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;
.super Ljava/lang/Object;
.source "SettingMessageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCancelListener"
.end annotation


# instance fields
.field private final mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

.field private final mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V
    .registers 3

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 190
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;->mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    .line 195
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "OnCancelListener onCancel()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 196
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;->mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    .line 197
    # invokes: Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getOnMessageDialogDismissListener()Ljava/util/List;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->access$000(Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)Ljava/util/List;

    move-result-object p1

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;->onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V

    goto :goto_17

    :cond_2a
    return-void
.end method
