.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;
.super Ljava/lang/Object;
.source "PagingTutorialNavigator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 142
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    goto :goto_2e

    .line 157
    :sswitch_11
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->movePageToBack()V

    goto :goto_2e

    .line 153
    :sswitch_1b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->movePageToNext()V

    goto :goto_2e

    .line 149
    :sswitch_25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->mController:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->closeTutorial(Landroid/view/View;)V

    :goto_2e
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x7f0900e7 -> :sswitch_25
        0x7f0900e8 -> :sswitch_1b
        0x7f0900ea -> :sswitch_11
        0x7f0900eb -> :sswitch_25
        0x7f0901a4 -> :sswitch_25
        0x7f0901ac -> :sswitch_25
    .end sparse-switch
.end method
