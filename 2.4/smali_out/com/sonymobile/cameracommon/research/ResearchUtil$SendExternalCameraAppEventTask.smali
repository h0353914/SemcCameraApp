.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendExternalCameraAppEventTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModeTo:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    .line 2227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    .line 2229
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    .line 2230
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mModeTo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 5

    .line 2216
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2235
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 2241
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a8

    :cond_18
    const/4 v1, 0x0

    :try_start_19
    const-string v2, "data"

    .line 2244
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "created_at"

    .line 2245
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2246
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2247
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mModeTo:Ljava/lang/String;

    if-eqz v2, :cond_3d

    const-string v2, "to"

    .line 2248
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mModeTo:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2250
    :cond_3d
    invoke-static {v5, v3, v4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendExternalCameraAppEvent(Lorg/json/JSONObject;J)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_40} :catch_50
    .catchall {:try_start_19 .. :try_end_40} :catchall_4e

    .line 2254
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_61

    :catchall_4e
    move-exception v2

    goto :goto_81

    :catch_50
    move-exception v2

    .line 2252
    :try_start_51
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    .line 2254
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_61
    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    .line 2256
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2254
    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2259
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_a8

    .line 2254
    :goto_81
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    .line 2256
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2254
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2258
    throw v2

    .line 2261
    :cond_a8
    :goto_a8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_ab
    return-void
.end method
