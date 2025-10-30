.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$3;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$300(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$300(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    :cond_17
    return-void
.end method
