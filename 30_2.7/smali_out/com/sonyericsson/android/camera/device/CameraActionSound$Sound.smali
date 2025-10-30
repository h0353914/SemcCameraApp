.class Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;
.super Ljava/lang/Object;
.source "CameraActionSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sound"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;
    }
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private sampleId:I

.field private final soundPool:Landroid/media/SoundPool;

.field private state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

.field private final type:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/SoundPool;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V
    .registers 4

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->applicationContext:Landroid/content/Context;

    .line 359
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->soundPool:Landroid/media/SoundPool;

    .line 360
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->type:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 361
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->initializeState()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/media/SoundPool;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Lcom/sonyericsson/android/camera/device/CameraActionSound$1;)V
    .registers 5

    .line 342
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;-><init>(Landroid/content/Context;Landroid/media/SoundPool;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)I
    .registers 1

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->getSampleId()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V
    .registers 1

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->onLoadSuccess()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V
    .registers 1

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->initializeState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V
    .registers 1

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->load()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V
    .registers 1

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->play()V

    return-void
.end method

.method private declared-synchronized getSampleId()I
    .registers 2

    monitor-enter p0

    .line 365
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->sampleId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initializeState()V
    .registers 2

    monitor-enter p0

    .line 444
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->NOT_LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->sampleId:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 446
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized load()V
    .registers 6

    monitor-enter p0

    .line 372
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraActionSound$Sound$State:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_34

    .line 393
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSound() called with unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->type:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_78

    .line 375
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->type:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->getSoundFile()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->access$500(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 377
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v0, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    goto :goto_51

    .line 379
    :cond_43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->type:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 380
    # getter for: Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->resourceId:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->access$600(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)I

    move-result v4

    .line 379
    invoke-virtual {v0, v3, v4, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    :goto_51
    if-gtz v0, :cond_72

    .line 384
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_78

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->type:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_78

    .line 388
    :cond_72
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->sampleId:I

    .line 389
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_7a

    .line 397
    :cond_78
    :goto_78
    monitor-exit p0

    return-void

    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onLoadSuccess()V
    .registers 5

    monitor-enter p0

    .line 404
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraActionSound$Sound$State:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    const/4 v0, 0x1

    .line 413
    new-array v0, v0, [Ljava/lang/String;

    goto :goto_1f

    .line 409
    :pswitch_12
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    .line 410
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->play()V

    goto :goto_38

    .line 406
    :pswitch_1a
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    goto :goto_38

    :goto_1f
    const/4 v1, 0x0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoaded() called in unexpected state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 416
    :goto_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_12
    .end packed-switch
.end method

.method private declared-synchronized play()V
    .registers 5

    monitor-enter p0

    .line 419
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraActionSound$Sound$State:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    goto :goto_44

    .line 435
    :pswitch_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->sampleId:I

    # invokes: Lcom/sonyericsson/android/camera/device/CameraActionSound;->playSoundBySampleId(Landroid/media/SoundPool;I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->access$400(Landroid/media/SoundPool;I)V

    goto :goto_44

    .line 429
    :pswitch_17
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADING_PLAY_REQUESTED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    goto :goto_44

    .line 421
    :pswitch_1c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->load()V

    .line 422
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->sampleId:I

    if-gtz v0, :cond_40

    const/4 v0, 0x1

    .line 423
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->type:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_44

    .line 425
    :cond_40
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;->LOADING_PLAY_REQUESTED:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->state:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound$State;
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 438
    :goto_44
    :pswitch_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_17
        :pswitch_44
        :pswitch_f
    .end packed-switch
.end method
