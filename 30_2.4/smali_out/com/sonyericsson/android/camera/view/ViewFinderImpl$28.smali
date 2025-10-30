.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setupApplicationNavigator(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/NavigatorContents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 8362
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 8365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFaultDetectionViewController:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 8366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFaultDetectionViewController:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->hideFaultPreview()V

    .line 8368
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsSettingChangeAcceptable:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_32

    .line 8371
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->transitionModeOnNavigator(I)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)V

    return-void

    :cond_32
    :goto_32
    return-void
.end method
