.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendFaultDetectionEvent(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$requestId:I

.field final synthetic val$type:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;ILjava/util/List;)V
    .registers 4

    .line 11486
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->val$requestId:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->val$type:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 11489
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsCoolingUltraLow:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$12200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 11490
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "Stop fault detection notification."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15
    return-void

    .line 11494
    :cond_16
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->val$requestId:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2b

    .line 11495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FAULT_DETECTION_NOTIFICATION:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->val$type:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_41

    .line 11498
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_FAULT_DETECTION_NOTIFICATION_FOR_SNAPSHOT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->val$type:Ljava/util/List;

    aput-object v5, v4, v3

    iget v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->val$requestId:I

    .line 11501
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 11498
    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :goto_41
    return-void
.end method
