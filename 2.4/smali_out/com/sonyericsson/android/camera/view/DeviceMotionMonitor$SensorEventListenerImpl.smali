.class Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "DeviceMotionMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorEventListenerImpl"
.end annotation


# instance fields
.field private mChecker:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;

.field private final mParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;)V
    .registers 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;->mParentRef:Ljava/lang/ref/WeakReference;

    .line 160
    new-instance p1, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;-><init>(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;->mChecker:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;)V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;->clear()V

    return-void
.end method

.method private clear()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;->mChecker:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->clear()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    .line 165
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_49

    new-array v0, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 169
    :cond_49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    if-nez v0, :cond_54

    return-void

    .line 174
    :cond_54
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v3

    float-to-double v8, v8

    .line 175
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    float-to-double v8, p1

    .line 176
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float p1, v4

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$SensorEventListenerImpl;->mChecker:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;

    # invokes: Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->isStable(F)Z
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;->access$200(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChecker;F)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 179
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_99

    if-eqz v1, :cond_99

    .line 181
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect acceleration. sum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 184
    :cond_99
    # invokes: Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->setMoving(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->access$300(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;Z)V

    return-void
.end method
