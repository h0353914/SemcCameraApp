.class Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 11

    .line 141
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$200(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Landroid/media/SoundPool;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x0

    if-eqz p3, :cond_45

    .line 146
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget v1, v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    if-ne v1, p2, :cond_1a

    .line 148
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iput p1, p2, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    :cond_44
    return-void

    .line 155
    :cond_45
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_53
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget v1, v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    if-ne v1, p2, :cond_53

    .line 157
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundMap:Ljava/util/Map;
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->isLoaded:Z

    .line 162
    :cond_7e
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDToPlay:I
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$400(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)I

    move-result p3

    if-ne p2, p3, :cond_a1

    .line 163
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # setter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDToPlay:I
    invoke-static {p3, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$402(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;I)I

    .line 164
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    # getter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$200(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Landroid/media/SoundPool;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p2

    # setter for: Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mSoundIDPlayed:I
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$502(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;I)I

    :cond_a1
    return-void
.end method
