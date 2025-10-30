.class public interface abstract Lcom/sonyericsson/idd/api/IddFileUploadListener;
.super Ljava/lang/Object;
.source "IddFileUploadListener.java"


# virtual methods
.method public abstract onCompleted(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;I)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onFileUploadManagerCreated(Lcom/sonyericsson/idd/api/IddFileUploadManager;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onStatusUpdated(Ljava/lang/String;II)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
