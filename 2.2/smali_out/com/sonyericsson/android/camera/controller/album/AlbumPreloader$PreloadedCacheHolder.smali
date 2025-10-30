.class Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;
.super Ljava/lang/Object;
.source "AlbumPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadedCacheHolder"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$1;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    :cond_c
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public get()Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mUri:Landroid/net/Uri;

    .line 92
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isSameUri(Landroid/net/Uri;)Z
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 119
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mUri:Landroid/net/Uri;

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public update(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->isSameUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mBitmap:Landroid/graphics/Bitmap;

    if-ne p2, v0, :cond_b

    return-void

    .line 74
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->clear()V

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mUri:Landroid/net/Uri;

    .line 77
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
