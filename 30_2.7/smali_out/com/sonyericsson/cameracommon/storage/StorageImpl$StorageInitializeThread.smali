.class Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;
.super Ljava/lang/Thread;
.source "StorageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/StorageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageInitializeThread"
.end annotation


# static fields
.field private static final THREAD_NAME_STORAGE_INITIALIZE:Ljava/lang/String; = "SM#initTask"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    .line 132
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, "SM#initTask"

    .line 133
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 138
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$StorageInitializeThread;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    # invokes: Lcom/sonyericsson/cameracommon/storage/StorageImpl;->initialize()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/StorageImpl;->access$300(Lcom/sonyericsson/cameracommon/storage/StorageImpl;)V

    return-void
.end method
