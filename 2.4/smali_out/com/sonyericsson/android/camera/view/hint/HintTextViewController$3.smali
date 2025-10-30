.class Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;
.super Ljava/lang/Object;
.source "HintTextViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->showInternal(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 510
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionHintTextView:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$600(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_28

    .line 511
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    .line 512
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionPreviewLister:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 513
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mFaultDetectionPreviewLister:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;->onClose()V

    :cond_28
    return-void
.end method
