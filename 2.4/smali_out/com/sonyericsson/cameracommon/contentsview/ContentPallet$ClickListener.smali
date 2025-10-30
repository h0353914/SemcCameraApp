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

    .line 306
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V
    .registers 3

    .line 306
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 309
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 310
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 311
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;->onThumbnailClicked(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    goto :goto_42

    .line 312
    :cond_20
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mTemporaryThumbnail:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 315
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    const/4 v0, 0x1

    # setter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsTemporaryThumbnailClicked:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$402(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Z)Z

    .line 316
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->updateTempThumbnailClickNum()V

    :cond_42
    :goto_42
    return-void
.end method
