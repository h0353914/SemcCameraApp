.class Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;
.super Landroid/os/AsyncTask;
.source "FaultDetectionNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mOrientation:I

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;)V
    .registers 5

    .line 264
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    .line 259
    iput v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mOrientation:I

    .line 260
    iput v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mWidth:I

    .line 261
    iput v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mHeight:I

    .line 265
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mContext:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mUri:Landroid/net/Uri;

    .line 267
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mCallback:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 256
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    const-string p1, "height"

    const-string v0, "width"

    const-string v1, "orientation"

    .line 272
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 274
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 275
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_1a
    const-string v1, "orientation"

    .line 276
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "width"

    .line 277
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    .line 278
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 279
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 280
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mOrientation:I

    .line 281
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mWidth:I

    .line 282
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mHeight:I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_41} :catch_49
    .catchall {:try_start_1a .. :try_end_41} :catchall_47

    if-eqz p1, :cond_46

    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_46
    return-object v0

    :catchall_47
    move-exception v1

    goto :goto_4b

    :catch_49
    move-exception v0

    .line 274
    :try_start_4a
    throw v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_47

    :goto_4b
    if-eqz p1, :cond_5b

    if-eqz v0, :cond_58

    .line 283
    :try_start_4f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_5b

    :catch_53
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5b

    :cond_58
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5b
    :goto_5b
    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 256
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5

    .line 289
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mCallback:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;

    if-eqz p1, :cond_d

    .line 290
    iget v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mOrientation:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mHeight:I

    iget v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$AsyncLoadImageTask;->mWidth:I

    invoke-interface {p1, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView$LoadImageCallback;->onCompleted(III)V

    :cond_d
    return-void
.end method
