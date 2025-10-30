.class Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;
.super Ljava/lang/Object;
.source "ContentPallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V
    .registers 3

    .line 286
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-lez p1, :cond_30

    .line 290
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 291
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;->onThumbnailClicked(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    :cond_30
    return-void
.end method
