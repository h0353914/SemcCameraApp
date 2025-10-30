.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$2;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;)V
    .registers 2

    .line 795
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$2;->this$1:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$2;->this$1:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$900(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->MEMORY_DELETE_FILE_FAILED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void
.end method
