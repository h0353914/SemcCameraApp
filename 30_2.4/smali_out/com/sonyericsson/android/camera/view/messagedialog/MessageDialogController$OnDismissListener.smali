.class Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;
.super Ljava/lang/Object;
.source "MessageDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDismissListener"
.end annotation


# instance fields
.field private final mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .registers 3

    .line 401
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    const-string p1, "onDismissListener onDismiss()"

    .line 407
    # invokes: Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->access$100(Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    # getter for: Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->access$500(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;->onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    .line 410
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    # getter for: Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->access$600(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 411
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->access$702(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 412
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    # invokes: Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->show()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->access$800(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)V

    return-void
.end method
