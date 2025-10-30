.class public interface abstract Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;
.super Ljava/lang/Object;
.source "TemporaryThumbnailCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultCallback"
.end annotation


# virtual methods
.method public abstract onPreviewThumbnailCreated(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
