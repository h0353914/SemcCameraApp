.class public Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
.super Ljava/lang/Object;
.source "StoreDataResult.java"


# instance fields
.field public final savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

.field public final storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 22
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 23
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    goto :goto_12

    .line 25
    :cond_e
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    .line 28
    :goto_12
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mResultCode:I

    return v0
.end method

.method public getTextId()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mTextId:I

    return v0
.end method

.method public isSuccess()Z
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->storeResult:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
