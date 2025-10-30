.class Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
.super Landroid/os/Handler;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderHander"
.end annotation


# static fields
.field private static final NOTIFY_CONTENT_CREATED:I = 0x1

.field private static final NOTIFY_NO_CONTENT_LOADED:I


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V
    .registers 3

    .line 250
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V
    .registers 3

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->notifyContentLoaded(ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V
    .registers 1

    .line 250
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeAllMessages()V

    return-void
.end method

.method private notifyContentLoaded(ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V
    .registers 5

    .line 283
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "notifyContentLoaded() has been called."

    .line 284
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 287
    :cond_d
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_19

    const/4 v1, 0x1

    .line 289
    iput v1, v0, Landroid/os/Message;->what:I

    .line 290
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1c

    :cond_19
    const/4 p2, 0x0

    .line 292
    iput p2, v0, Landroid/os/Message;->what:I

    .line 294
    :goto_1c
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 295
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private removeAllMessages()V
    .registers 2

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeMessages(I)V

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_45

    .line 260
    :cond_8
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_15

    const-string v0, "handleMessage for content creation."

    .line 261
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 263
    :cond_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 264
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;

    .line 266
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeFuture(J)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$500(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;J)V

    .line 268
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$700(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    move-result-object p0

    .line 269
    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v1

    .line 270
    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->access$600(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 268
    invoke-interface {p0, v0, v1, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V

    goto :goto_45

    .line 274
    :cond_3c
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$700(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onNoContentLoaded()V

    :goto_45
    return-void
.end method
