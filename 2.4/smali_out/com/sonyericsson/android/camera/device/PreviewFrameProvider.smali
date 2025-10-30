.class public interface abstract Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;
.super Ljava/lang/Object;
.source "PreviewFrameProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;
    }
.end annotation


# virtual methods
.method public abstract registerPreviewFrameCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;Landroid/os/Handler;)V
.end method

.method public abstract unregisterPreviewFrameCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)V
.end method
