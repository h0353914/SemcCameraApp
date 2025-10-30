.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->addThumbnail(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$originalUri:Landroid/net/Uri;

.field final synthetic val$requestId:I

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field final synthetic val$resultCode:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;IZLandroid/net/Uri;)V
    .registers 6

    .line 10674
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iput p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$requestId:I

    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$resultCode:Z

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$originalUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 10677
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 10678
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getSavedFileType()Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b2

    goto :goto_4a

    .line 10690
    :pswitch_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCurrentLayoutPattern()Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    move-result-object v0

    .line 10691
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    if-eq v0, v1, :cond_2c

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    if-ne v0, v1, :cond_4a

    .line 10693
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startHideThumbnail()V

    goto :goto_4a

    .line 10680
    :pswitch_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isFinalInSavingGroup()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 10684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$requestId:I

    .line 10685
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->requestLastContentLoading(I)V

    goto :goto_b1

    .line 10700
    :cond_4a
    :goto_4a
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$requestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8a

    .line 10701
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$resultCode:Z

    if-eqz v0, :cond_6f

    .line 10702
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 10703
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$requestId:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->val$originalUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContent(ILandroid/net/Uri;)V

    .line 10706
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->THUMBNAIL_SHOW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    goto :goto_b1

    .line 10708
    :cond_6f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 10709
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_b1

    .line 10712
    :cond_8a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    .line 10713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 10714
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    :cond_b1
    :goto_b1
    return-void

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
