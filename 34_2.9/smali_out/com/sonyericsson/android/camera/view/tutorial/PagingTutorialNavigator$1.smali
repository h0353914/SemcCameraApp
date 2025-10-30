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

    .line 132
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->-$$Nest$fgetmController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 140
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    goto :goto_2e

    .line 155
    :sswitch_11
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->-$$Nest$fgetmController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->movePageToBack()V

    goto :goto_2e

    .line 151
    :sswitch_1b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->-$$Nest$fgetmController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->movePageToNext()V

    goto :goto_2e

    .line 147
    :sswitch_25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->-$$Nest$fgetmController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->closeTutorial(Landroid/view/View;)V

    :goto_2e
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x7f090134 -> :sswitch_25
        0x7f090135 -> :sswitch_1b
        0x7f090137 -> :sswitch_11
        0x7f090138 -> :sswitch_25
        0x7f09020e -> :sswitch_25
        0x7f090217 -> :sswitch_25
    .end sparse-switch
.end method
