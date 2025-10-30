.class public interface abstract Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest$ImageSourceLifeCycleAdapter;
.super Ljava/lang/Object;
.source "PhotoSavingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageSourceLifeCycleAdapter"
.end annotation


# virtual methods
.method public abstract calculateFileSize()I
.end method

.method public abstract capacity()I
.end method

.method public abstract getImageData()Ljava/nio/ByteBuffer;
.end method

.method public abstract onRecycled()V
.end method

.method public abstract releaseImageSource()Z
.end method
