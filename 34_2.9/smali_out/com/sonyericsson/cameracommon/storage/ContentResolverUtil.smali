.class public Lcom/sonyericsson/cameracommon/storage/ContentResolverUtil;
.super Ljava/lang/Object;
.source "ContentResolverUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentResolverUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 2

    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_14

    :catch_9
    move-exception p0

    .line 42
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_13

    const-string p1, "crOpenInputStream failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public static crUpdate(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;)I
    .registers 5

    .line 20
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crUpdate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 23
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->values:Landroid/content/ContentValues;

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->where:Ljava/lang/String;

    iget-object p2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1a .. :try_end_28} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_28} :catch_29

    goto :goto_34

    :catch_29
    move-exception p0

    .line 31
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_33

    const-string p1, "crUpdate failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    const/4 p0, 0x0

    .line 33
    :goto_34
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "crUpdate: result: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4e
    return p0

    :catch_4f
    move-exception p0

    .line 29
    throw p0
.end method
