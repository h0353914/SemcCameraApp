.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$36;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showAutoReview(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 3

    .line 11222
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$36;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$36;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 11225
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$36;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsFrontAngleChanging:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 11228
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$36;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$36;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clickAutoReview(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$12100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method
