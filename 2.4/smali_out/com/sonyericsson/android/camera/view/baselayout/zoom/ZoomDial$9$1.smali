.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;)V
    .registers 2

    .line 1033
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1039
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1040
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$700(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1041
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1042
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1043
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1047
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1048
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1049
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 1050
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_63

    .line 1053
    :cond_53
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1054
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$1600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    .line 1056
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1058
    :goto_63
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1063
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1064
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 1062
    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3102(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I

    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1067
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3500(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1068
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3600(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 1066
    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->access$3402(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)I

    return-void
.end method
