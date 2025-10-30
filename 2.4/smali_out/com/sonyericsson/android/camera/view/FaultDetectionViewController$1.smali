.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 63
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$000(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setViewFinderGestureDetectorEnabled(ZZ)V

    .line 64
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->hideFaultPreview()V

    return-void
.end method
