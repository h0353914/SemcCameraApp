.class public Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
    }
.end annotation


# static fields
.field private static final BATTERY_CHECK_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "BatteryChangedReceiver"

.field private static final THRESHOLD_BATTERY_LEVEL:I

.field public static final THRESHOLD_LOW_BATTERY_LEVEL:I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBatteryTemperature:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHealth:I

.field private mIsActive:Z

.field private mIsAlreadyBcl:Z

.field private final mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

.field private mPlugType:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "msm8996"

    .line 53
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-nez v0, :cond_29

    const-string v0, "sdm845"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "lito"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_29

    .line 59
    :cond_22
    sput v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    .line 60
    sput v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    .line 61
    sput-boolean v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    goto :goto_30

    :cond_29
    :goto_29
    const/4 v0, 0x5

    .line 55
    sput v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    .line 56
    sput v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    .line 57
    sput-boolean v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    :goto_30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V
    .registers 6

    .line 86
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    const/16 v2, 0x64

    .line 71
    iput v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 72
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 73
    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 74
    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 75
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .line 89
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    return-object p0
.end method

.method private checkBcl(IZ)Z
    .registers 5

    .line 201
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    if-nez v0, :cond_34

    .line 202
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    sget v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    if-gt p1, v0, :cond_34

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {v0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachBatteryLimit(Z)V

    goto :goto_33

    .line 207
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_33
    return p1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method public static isCheckEnabled()Z
    .registers 1

    .line 237
    sget-boolean v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    return v0
.end method

.method private notifyBatteryLevel(I)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onBatteryLevelChanged(I)V

    return-void
.end method

.method private notifyLowBattery()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachLowBattery()V

    return-void
.end method


# virtual methods
.method public checkStartupStatus()V
    .registers 7

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    const-string v2, "batterymanager"

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    const/4 v2, 0x4

    .line 186
    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 188
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    new-array v2, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStartupStatus() : Battery Capacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 190
    :cond_2f
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 192
    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 193
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    sget v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt v0, v1, :cond_48

    .line 194
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyLowBattery()V

    .line 196
    :cond_48
    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyBatteryLevel(I)V

    :cond_4d
    return-void
.end method

.method public getBatteryLevel()I
    .registers 2

    .line 233
    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    return v0
.end method

.method public isAlreadyBcl()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    return v0
.end method

.method public onCreate()V
    .registers 3

    .line 96
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 97
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 106
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onDestroy"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 123
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onPause"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 131
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    if-eqz p1, :cond_12

    .line 132
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_11

    const-string p1, "Activity is onPause, ignore bcl intent."

    .line 133
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_11
    return-void

    .line 138
    :cond_12
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_34

    new-array p1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 139
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 140
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_161

    .line 141
    iget p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    const-string v2, "level"

    const/16 v3, 0x64

    .line 142
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 143
    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    const-string v3, "status"

    .line 144
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 146
    iget v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    const-string v4, "plugged"

    .line 147
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 148
    iget v4, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    const-string v5, "temperature"

    .line 149
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 150
    iget v5, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    const-string v6, "health"

    .line 151
    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 155
    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    if-eqz p2, :cond_7a

    move p2, v0

    goto :goto_7b

    :cond_7a
    move p2, v1

    :goto_7b
    if-eqz v3, :cond_7e

    goto :goto_7f

    :cond_7e
    move v0, v1

    .line 158
    :goto_7f
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_141

    const-string v6, "BatteryChangedReceiver"

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "level          "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BatteryChangedReceiver"

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status         "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BatteryChangedReceiver"

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugType       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BatteryChangedReceiver"

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugged        "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "BatteryChangedReceiver"

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temperature    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "BatteryChangedReceiver"

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "health         "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_141
    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z

    move-result p2

    if-nez p2, :cond_161

    .line 169
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result p2

    if-eqz p2, :cond_15c

    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    sget v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt p2, v0, :cond_15c

    if-le p1, v0, :cond_15c

    if-eq p1, p2, :cond_15c

    .line 172
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyLowBattery()V

    .line 174
    :cond_15c
    iget p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyBatteryLevel(I)V

    :cond_161
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 114
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onResume"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    return-void
.end method
