.class Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;
.super Ljava/lang/Object;
.source "FaultDetectionNotificationView.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(III)V
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # invokes: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setImageInfo(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$000(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;III)V

    .line 55
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mDeviceOrientation:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$100(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)I

    move-result p2

    # invokes: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setPreviewAreaLayout(I)V
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$200(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;I)V

    .line 56
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageOrientation:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$300(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, -0x1

    if-eq p1, p3, :cond_51

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageHeight:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$400(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)I

    move-result p1

    if-eq p1, p3, :cond_51

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mImageWidth:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$500(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)I

    move-result p1

    if-eq p1, p3, :cond_51

    .line 57
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mContainer:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$600(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$700(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$700(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_56

    .line 59
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mMessageView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$700(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_56

    .line 62
    :cond_51
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$1;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    # setter for: Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->mIsShown:Z
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->access$802(Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;Z)Z

    :cond_56
    :goto_56
    return-void
.end method
