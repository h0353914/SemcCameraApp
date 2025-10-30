.class public Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;
.super Ljava/lang/Object;
.source "DeviceMotionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;,
        Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;,
        Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final SAMPLING_PERIOD_MICROS:I = 0x4e20

.field private static final THREAD_NAME:Ljava/lang/String; = "MoveMon"


# instance fields
.field private mIsMonitoring:Z

.field private mIsMoving:Z

.field private final mMotionChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorEventListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mMotionChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorEventListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v1, "MoveMon"

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v0, "sensor"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->setMoving(Z)V

    return-void
.end method

.method private declared-synchronized setMoving(Z)V
    .registers 6

    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMoving:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    if-eqz v0, :cond_2a

    .line 143
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMoving:Z

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mMotionChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;

    if-eqz p1, :cond_26

    .line 146
    invoke-interface {v3, v1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;->onMotionChanged(Z)V

    goto :goto_14

    .line 148
    :cond_26
    invoke-interface {v3, v2}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;->onMotionChanged(Z)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2c

    goto :goto_14

    .line 152
    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized isMoving()Z
    .registers 2

    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMoving:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListener(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;)V
    .registers 3

    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mMotionChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 73
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMonitoring:Z

    if-nez v0, :cond_d

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->startMonitoring()V

    .line 76
    :cond_d
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMoving:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 77
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;->onMotionChanged(Z)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 79
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_19

    .line 60
    :try_start_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_19

    goto :goto_17

    :catch_11
    move-exception v0

    :try_start_12
    const-string v1, "Failed to quit background thread."

    .line 62
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    .line 64
    :goto_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startMonitoring()V
    .registers 9

    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mMotionChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4b

    if-eqz v0, :cond_b

    .line 98
    monitor-exit p0

    return-void

    .line 101
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 103
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    if-eqz v4, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 104
    :goto_1b
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMonitoring:Z

    if-eqz v4, :cond_2f

    .line 106
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorEventListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;

    const/16 v5, 0x4e20

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 107
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 106
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 111
    :cond_2f
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMoving:Z

    if-eqz v0, :cond_49

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mMotionChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;

    .line 113
    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;->onMotionChanged(Z)V
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_4b

    goto :goto_39

    .line 116
    :cond_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring()V
    .registers 4

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMonitoring:Z

    if-eqz v0, :cond_18

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorEventListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mSensorEventListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;->clear()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;->access$000(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;)V

    .line 125
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mIsMonitoring:Z

    .line 128
    :cond_18
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->setMoving(Z)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 129
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterListener(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;)V
    .registers 3

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mMotionChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->mMotionChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->stopMonitoring()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 91
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method
