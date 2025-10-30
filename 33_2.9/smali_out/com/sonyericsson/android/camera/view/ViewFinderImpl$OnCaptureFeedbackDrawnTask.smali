.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnCaptureFeedbackDrawnTask;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCaptureFeedbackDrawnTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 1883
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnCaptureFeedbackDrawnTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .registers 3

    .line 1883
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnCaptureFeedbackDrawnTask;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnCaptureFeedbackDrawnTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1887
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnCaptureFeedbackDrawnTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->removeCaptureProgressView()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    :cond_d
    return-void
.end method
