.class public Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;,
        Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;
    }
.end annotation


# static fields
.field private static final ID_NOT_LOADED:I = 0x0

.field private static final ID_NOT_PLAYED:I = 0x0

.field private static final NUM_SOUND_STREAMS:I = 0x1

.field private static final SOUND_POOL_LOAD_PRIORITY:I = 0x1


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIDPlayed:I

.field private mSoundIDToPlay:I

.field private final mSoundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;",
            "Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDToPlay:I

    .line 50
    iput v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDPlayed:I

    .line 55
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    .line 137
    new-instance v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;-><init>(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mApplicationContext:Landroid/content/Context;

    .line 60
    new-instance p1, Landroid/media/SoundPool$Builder;

    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    .line 61
    invoke-virtual {p1, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    .line 63
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 65
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 62
    invoke-virtual {p1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {p1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 69
    invoke-static {}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->values()[Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    move-result-object p1

    array-length v2, p1

    move v3, v0

    :goto_4f
    if-ge v3, v2, :cond_79

    aget-object v4, p1, v3

    .line 70
    # invokes: Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->getSoundFile()Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->access$000(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 74
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v6, v5, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    goto :goto_6c

    .line 77
    :cond_60
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mApplicationContext:Landroid/content/Context;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->resourceId:I
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->access$100(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)I

    move-result v7

    invoke-virtual {v5, v6, v7, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    .line 80
    :goto_6c
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    new-instance v7, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    invoke-direct {v7, v5, v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;-><init>(IZ)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_79
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Landroid/media/SoundPool;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)I
    .registers 1

    .line 24
    iget p0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDToPlay:I

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDToPlay:I

    return p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDPlayed:I

    return p1
.end method


# virtual methods
.method public declared-synchronized play(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V
    .registers 9

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_88

    if-nez v0, :cond_7

    .line 91
    monitor-exit p0

    return-void

    .line 94
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget v0, v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    const/4 v1, 0x0

    if-nez v0, :cond_51

    .line 96
    # invokes: Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->getSoundFile()Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->access$000(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    .line 99
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v4, v0, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    goto :goto_42

    .line 102
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mApplicationContext:Landroid/content/Context;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->resourceId:I
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->access$100(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    .line 105
    :goto_42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget p1, p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    iput p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDToPlay:I

    .line 106
    iput v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDPlayed:I

    goto :goto_86

    .line 107
    :cond_51
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->isLoaded:Z

    if-nez v0, :cond_6c

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget p1, p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    iput p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDToPlay:I

    .line 110
    iput v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDPlayed:I

    goto :goto_86

    .line 112
    :cond_6c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget v1, p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDPlayed:I
    :try_end_86
    .catchall {:try_start_7 .. :try_end_86} :catchall_88

    .line 114
    :goto_86
    monitor-exit p0

    return-void

    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_12

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 135
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDPlayed:I

    if-eqz v1, :cond_f

    .line 121
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDPlayed:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 124
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
