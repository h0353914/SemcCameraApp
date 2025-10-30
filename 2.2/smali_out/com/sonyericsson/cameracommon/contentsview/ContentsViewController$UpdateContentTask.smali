.class Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContentTask"
.end annotation


# instance fields
.field private final mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field private final mChangedStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V
    .registers 4

    .line 607
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 609
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_7f

    .line 620
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq v0, v1, :cond_39

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq v0, v1, :cond_39

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq v0, v1, :cond_39

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v0, v1, :cond_37

    goto :goto_39

    :cond_37
    const/4 v0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v0, 0x1

    :goto_3a
    if-nez v0, :cond_71

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_71

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 628
    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Landroid/app/Activity;

    move-result-object v1

    .line 627
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v1, :cond_71

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearContents()V

    .line 638
    :cond_71
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 639
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    :cond_7e
    return-void

    :cond_7f
    :goto_7f
    return-void
.end method
