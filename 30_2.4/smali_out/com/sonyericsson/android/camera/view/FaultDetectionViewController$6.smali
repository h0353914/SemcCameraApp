.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$6;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->showHintTextFaultDetectionSnapshot(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;Landroid/net/Uri;)V
    .registers 3

    .line 573
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$6;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$6;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const-string p1, "DelFile"

    .line 577
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 578
    new-instance v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$6;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$6;->val$uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;Landroid/net/Uri;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 579
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 580
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->deleteMediaFile(Z)V

    .line 581
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$6;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->hideFaultPreview()V

    return-void
.end method
