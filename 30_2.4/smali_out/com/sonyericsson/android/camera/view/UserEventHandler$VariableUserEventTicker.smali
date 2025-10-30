.class Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableUserEventTicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;
    }
.end annotation


# static fields
.field private static final INTERVAL_30_FPS:I = 0x21

.field private static final INTERVAL_60_FPS:I = 0x10


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterval:I

.field private mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

.field private onceCalled:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2580
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->onceCalled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .registers 2

    .line 2572
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>()V

    return-void
.end method

.method private postSchedule(J)V
    .registers 5

    .line 2597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    if-nez v0, :cond_5

    return-void

    .line 2600
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_14

    .line 2601
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    .line 2603
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2604
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2611
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    invoke-interface {v2, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;->onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V

    const/4 v2, 0x1

    .line 2612
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->onceCalled:Z

    .line 2614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 2615
    iget v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mInterval:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_1a

    const-wide/16 v0, 0x0

    goto :goto_1b

    :cond_1a
    int-to-long v0, v1

    .line 2616
    :goto_1b
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->postSchedule(J)V

    return-void
.end method

.method start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V
    .registers 3

    .line 2583
    iput p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mInterval:I

    .line 2584
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    const-wide/16 p1, 0x0

    .line 2585
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->postSchedule(J)V

    return-void
.end method

.method stop()V
    .registers 2

    .line 2589
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2590
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->onceCalled:Z

    if-nez v0, :cond_e

    .line 2591
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;->onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V

    :cond_e
    const/4 v0, 0x0

    .line 2593
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    return-void
.end method
