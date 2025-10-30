.class public final Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PagingTutorialController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeTutorial(Landroid/view/View;)V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->notifyOnDoneClicked(Landroid/view/View;)V

    return-void
.end method

.method public movePageToBack()V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$1100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public movePageToNext()V
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$1100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
